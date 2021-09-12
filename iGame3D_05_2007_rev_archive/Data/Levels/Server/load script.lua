-------------------------------------------
-------------------------------------------
-------------------------------------------
-------------------------------------------
-------------------------------------------
-------------------------------------------
-------------------------------------------
-------------------------------------------
-------------------------------------------
-------------------------------------------
-------------------------------------------
-------------------------------------------
-------------------------------------------
-------------------------------------------
function removeLines(text, n)
	local i
	for i=1,n,1 do
		text=string.sub(text, string.find(text, "\n")+1, -1)
	end
	return text
end
-------------------------------------------
function toConsole(text)
	local tmp = getText_boxInfo(console, IG3D_TEXT)..text
	setText_boxInfo(console, IG3D_TEXT, removeLines(tmp, countLines(tmp)-gMaxLines) )
end
-------------------------------------------
function countLines(str)
	n=0
	local i=0
	while 1 do
		i=string.find(str, "\n", i+1)
		if i == nil then
			break
		else
			n=n+1
		end
	end
	return n
end
-------------------------------------------
function delitems(t, n)
	--deletes n items from the start of text
	ret = t
	if n<1 then
		return t
	end
	
	local i
	for i=1,n,1 do
		j=string.find(ret, itemDel)
		if j== nil then
			return ""
		else
			ret=string.sub(ret, j+1, -1)	
		end
	end
	return ret
end
--------------------------------------------
function item(t, n)
	ret = t
	if n<1 then
		return t
	end
	
	local i
	for i=1,n,1 do
		j=string.find(ret, itemDel)
		if j== nil then
			it=ret
			break
		else
			it=string.sub(ret, 1, j-1)
			ret=string.sub(ret, j+1, -1)
			
		end
	end
	return it
end
--------------------------------------------
function extractVectorFromString(s)
i=string.find(s, ",", 1)
j=string.find(s, ",", i+1)
local x= string.sub(s, 1, i-1)
local y=string.sub(s, i+1, j-1)
local z=string.sub(s, j+1, -1)
return x,y,z
end
--------------------------------------------
function sgn(val)
	if val>= 0 then
		return 1
	end
	return -1
end
--------------------------------------------
function copysign(val1, val2)
	return math.abs(val1)*sgn(val2)
end
--------------------------------------------
function quaternionFromMatrix(m11,m12,m13,m14, m21,m22,m23,m24, m31,m32,m33,m34, m41,m42,m43,m44)
	qw = math.sqrt( math.max(0, 1+m11+m22+m33) ) *0.5
	qx = math.sqrt( math.max(0, 1+m11-m22-m33) ) *0.5
	qy = math.sqrt( math.max(0, 1-m11+m22-m33) ) *0.5
	qz = math.sqrt( math.max(0, 1-m11-m22+m33) ) *0.5
	qx = copysign( qx,m32-m23)
	qy = copysign( qy,m13-m31)
	qz = copysign( qz,m21-m12)
	
	return qw,qx,qy,qz
end
--------------------------------------------
function matrixFromQuaternion(W,X,Y,Z)
	--returns a 3x3 matrix from a given unit quaternion
	
	
	local	xx      = X * X;
	local    xy      = X * Y;
	local    xz      = X * Z;
	local    xw      = X * W;

	local    yy      = Y * Y;
	local    yz      = Y * Z;
	local    yw      = Y * W;

	local    zz      = Z * Z;
	local    zw      = Z * W;

	local	m00  = 1 - 2 * ( yy + zz );
	local	m01  =     2 * ( xy - zw );
	local	m02 =     2 * ( xz + yw );

	local	m10  =     2 * ( xy + zw );
	local	m11  = 1 - 2 * ( xx + zz );
	local	m12  =     2 * ( yz - xw );

	local	m20  =     2 * ( xz - yw );
	local	m21  =     2 * ( yz + xw );
	local	m22 = 1 - 2 * ( xx + yy );

	return m00,m01,m02,	m10,m11,m12, m20,m21,m22
end
--------------------------------------------
function slerp(pw,px,py,pz,  qw,qx,qy,qz,   t)
	
	cosphi=( pw*qw + px*qx + py*qy + pz*qz );
	
	if (cosphi<0.0) then
		cosphi=-cosphi
		qw=-qw
		qx=-qx
		qy=-qy
		qz=-qz
	end
		
	if cosphi>(0.9999) then
		return qw,qx,qy,qz
	end
		
		
	local phi=math.acos(cosphi)
	local recsinphi=1.0 / math.sin(phi)
	
	
	local sinphioneminust=math.sin(phi*(1-t))
	local sinphit=math.sin(phi*t)
	local rw = ( pw*sinphioneminust + qw*sinphit ) * recsinphi
	local rx = ( px*sinphioneminust + qx*sinphit ) * recsinphi
	local ry = ( py*sinphioneminust + qy*sinphit ) * recsinphi
	local rz = ( pz*sinphioneminust + qz*sinphit ) * recsinphi
	return rw,rx,ry,rz
end
--------------------------------------------
function quaternionMult(qw,qx,qy,qz,  pw,px,py,pz)
	local rw=(qw*pw)-(qx*px)-(qy*py)-(qz*pz)
	local rx=(qw*px)+(qx*pw)+(qy*pz)-(qz*py)
	local ry=(qw*py)-(qx*pz)+(qy*pw)+(qz*px)
	local rz=(qw*pz)+(qx*py)-(qy*px)+(qz*pw)
	return rw,rx,ry,rz
end
-------------------------------------------
function sendall(t)
	for j=1,numplayers,1 do
    	if players[j]~= nil then
    		players[j].tcpsocket:send(t);
    	end
    end 
end
-------------------------------------------
function sendallwithtime(text)
	for j=1,numplayers,1 do
    	if players[j]~= nil then
    	   	if players[j].client_time ~= -1 then
    			t = players[j].client_time + ( time()-players[j].server_time);
    			toConsole(players[j].client_time..","..players[j].server_time..","..time()..","..t.."\n");--quick test
    			--players[j].tcpsocket:send(t..","..text);
    			players[j].buffers[ players[j].curBuffer ]={ t1=time()+ gTestPing , t2=t..","..text};
    			players[j].curBuffer= ((players[j].curBuffer) % 64)+1
    		end
    	end
    end 
end
-------------------------------------------
function sendbufferedmessages()
	for j=1,numplayers,1 do
    	if players[j]~= nil then
    		for k=1,64,1 do
    			if players[j].buffers[k]~= nil then
    				if time()>=players[j].buffers[k].t1  then
    					players[j].tcpsocket:send(players[j].buffers[k].t2);
    					players[j].buffers[k]=nil
    				end
    			end
    		end	
    	end
    end 
end
-------------------------------------------
function setupObjects(tmp)
	gNumObjects=tonumber( item(tmp, 1) )
	local tmp=delitems(tmp, 1)
	local i
	for i=1,gNumObjects,1 do
		gObjects[i]={}
		gObjects[i].cObj=make(ig3d_object, "avatarp1")
		gObjects[i].id=i
		gObjects[i].forw=0
		gObjects[i].turn=0
		players[tonumber(item(tmp,1))].obj=gObjects[i]
		setObjectInfo( gObjects[i].cObj, IG3D_POSITION, item(tmp, 2), item(tmp, 3), item(tmp, 4) )
		tmp=delitems(tmp, 4)
	end
end
-------------------------------------------
function handle_gathering()
	control = server:accept();
    
    if control~=nil then
        numplayers = numplayers + 1

    	toConsole("A new player wants to connect, sending him/her the init prompt.\n"); 
    
    	players[numplayers]={tcpsocket=control, uninited=true, pingTime=time(), client_time=-1, server_time=-1}
    	players[numplayers].tcpsocket:settimeout(0.0)
    	players[numplayers].tcpsocket:send("OK. ID="..numplayers..", show me what you got!\n");
    	players[numplayers].buffers={}
    	players[numplayers].curBuffer=1
    end
    
    for i=1,numplayers,1 do
    	if players[i]~= nil then
    		result="arsch"
    		while result~= nil do
    		result,e =players[i].tcpsocket:receive();
    		sendSomething=true
    		message=nil
    		
    		--interpret these escape text as close messages
    		if result == "/exit" or result == "/quit" or result == "/logout" then
    			result=nil
    			e="closed"
    			players[i].tcpsocket:close();
    		end
    		
    		--shall we disconnect?
    		if result == nil then
    			sendSomething=false
    			if e == "closed" then
    				sendSomething=true
    				message=players[i].name.." has quit.\n"
    				players[i]=nil
    			end
    		end
    		
    		--do we have something to send?
    		if sendSomething then
    			--the user sent text, let's see if it was his name or a chat message
    			if message==nil then
    				if players[i].uninited then
    					--user is submitting his name
    					players[i].uninited=false
    					--players[i].client_time=tonumber(item(result, 1))
    					--players[i].server_time=time()
    					players[i].name=item(result,2)
						players[i].ping=time()-players[i].pingTime;
    					message=players[i].name.." logged in with ping: "..players[i].ping.."\n"
    				else
    					--ignore non-quit messages
    					--message=players[i].name..": "..result.."\n"
    				end
    			end
    			
    			if message~=nil then
    				--send the message to all connected users
    				sendall(message)
    				toConsole(message) 			
    			end
    			
       		end
       		end
    	end
    end

	if click("n") and numplayers>=1 then
		--there was a click, now start the game!
		text=""
		j=0
		for i=1,numplayers,1 do
			if players[i]~= nil then
				text=text..i..",0,0,"..(j*3)..","
				j=j+1
			end
		end
		text=j..","..text.."\n"
		sendall("SETUP:"..text);
		setupObjects(text);
		server:close()
		toConsole("Sending setup data to all clients.\n")
		gServerMode=sm_gameplay
	end
end
-------------------------------------------
function handle_client_message(pindex, text)
	local cmd=nil;
	
	players[pindex].client_time=item(text, 1)
	players[pindex].server_time=time()
	
		
	mess=tonumber( item(text, 2) )
	text=delitems(text, 2)
	
	if mess == cm_time then
		--should be in sync now
		beep()
	end
	
	
	if mess == cm_restart then
		local i
		for i=1,numplayers,1 do
			players[i].tcpsocket:close();
		end
	loadLevel("Data/Levels/Server")	
	end
		
	if mess == cm_forward then
		mode=tonumber( item(text, 1))
		if mode==0 then
			print("Server: Attempt to move forward at client_time:", players[pindex].client_time, "and server_time:", players[pindex].server_time, "pos:",getObjectInfo(players[pindex].obj.cObj, IG3D_POSITION))
			players[pindex].obj.forw=players[pindex].obj.forw+gSpeed
		else
			players[pindex].obj.forw=players[pindex].obj.forw-gSpeed
		end
	end
	
	if mess == cm_backward then
		mode=tonumber( item(text, 1))
		if mode==0 then
			players[pindex].obj.forw=players[pindex].obj.forw-gSpeed
		else
			players[pindex].obj.forw=players[pindex].obj.forw+gSpeed
		end
	end
	
	if mess == cm_left then
		mode=tonumber( item(text, 1))
		if mode==0 then
			players[pindex].obj.turn=players[pindex].obj.turn+gSpeed
		else
			players[pindex].obj.turn=players[pindex].obj.turn-gSpeed
		end		
	end
	
	if mess == cm_right then
		mode=tonumber( item(text, 1))
		if mode==0 then
			players[pindex].obj.turn=players[pindex].obj.turn-gSpeed
		else
			players[pindex].obj.turn=players[pindex].obj.turn+gSpeed
		end		
	end
		
end
-------------------------------------------
function handle_gameplay()

---------- do the actual movement
    m=passed()
    for i=1,gNumObjects,1 do
    	a11,a12,a13,a14, a21,a22,a23,a24, a31,a32,a33,a34, a41,a42,a43,a44=getObjectInfo(gObjects[i].cObj, IG3D_ROTATION_MATRIX)
    	--setObjectInfo(gObjects[i].cObj, IG3D_VELOCITY, a31*gObjects[i].forw*m, a32*gObjects[i].forw*m, a33*gObjects[i].forw*m)
    	--setObjectInfo(gObjects[i].cObj, IG3D_OMEGA, a21*gObjects[i].turn*m, a22*gObjects[i].turn*m, a23*gObjects[i].turn*m)
    	
    	--for testing use our own position stuff:
    	x,y,z=getObjectInfo(gObjects[i].cObj, IG3D_POSITION)
    	x=x+gObjects[i].forw*m*a31;
    	y=y+gObjects[i].forw*m*a32;
    	z=z+gObjects[i].forw*m*a33;
    	setObjectInfo(gObjects[i].cObj, IG3D_POSITION, x,y,z)
    	
    	pw,px,py,pz=quaternionFromMatrix(a11,a12,a13,a14, a21,a22,a23,a24, a31,a32,a33,a34, a41,a42,a43,a44)
    	phi=-gObjects[i].turn/(180/math.pi) * m * 10
    	qw=math.cos(phi*0.5)
    	qx=a21 * math.sin(phi*0.5)
    	qy=a22 * math.sin(phi*0.5)
    	qz=a23 * math.sin(phi*0.5)
    	pw,px,py,pz=quaternionMult(pw,px,py,pz,  qw,qx,qy,qz)
    	
    	a11,a12,a13,a14, a21,a22,a23,a24, a31,a32,a33,a34, a41,a42,a43,a44=getObjectInfo(gObjects[i].cObj, IG3D_ROTATION_MATRIX)
    	    	    	
    	b11,b12,b13, b21,b22,b23, b31,b32,b33=matrixFromQuaternion(pw,px,py,pz)
    	setObjectInfo(gObjects[i].cObj, IG3D_ROTATION_MATRIX, b11,b12,b13,a14, b21,b22,b23,a24, b31,b32,b33,a34, a41,a42,a43,a44 )    	
    end
    ----------




-----handle network traffic
for i=1,numplayers,1 do
    	if players[i]~= nil then
    		result,e =players[i].tcpsocket:receive();
    		sendSomething=true
    		message=nil
    		
    		--interpret these escape text as close messages
    		if result == "/exit" or result == "/quit" or result == "/logout" then
    			result=nil
    			e="closed"
    			players[i].tcpsocket:close();
    		end
    		
    		--shall we disconnect?
    		if result == nil then
    			sendSomething=false
    			if e == "closed" then
    				sendSomething=true
    				--message=players[i].name.." has quit.\n"
    				--delete(ig3d_object, players[i].cObj)
    				players[i]=nil
    			end
    		
    		else	
    			--What does the client want?
    			handle_client_message(i, result)
    		end
    		
    		--do we have something to send?
    		if sendSomething then
    			
    			
    		---something to send	
    		end
    	end
    end
    
    
    
    
    
    
    
    

	
   --now take care of the repeated position update
    if time()>=(gNextTime+gSnapshotInterval) then
    	
    	
    	cmd=srvr_multiple..","..gNumObjects..","
    	
    	
    	for i=1,gNumObjects,1 do
    		x,y,z=getObjectInfo(gObjects[i].cObj, IG3D_POSITION)
    		xa,ya,za=getObjectInfo(gObjects[i].cObj, IG3D_ROTATION)
    		cmd=cmd..srvr_pos_and_rot..","..i..","..x..","..y..","..z..","..xa..","..ya..","..za.."?"
    	end
    	
    print("Server:Send update at server_time:", time(), "pos:", getObjectInfo(players[1].obj.cObj, IG3D_POSITION))
    	
    gNextTime = time()	
    	
	sendallwithtime(cmd.."\n");
    end

sendbufferedmessages()
end
-------------------------------------------
function quaternionMult(qw,qx,qy,qz,  pw,px,py,pz)
	local rw=qw*pw-qx*px-qy*py-qz*pz
	local rx=qw*px+qx*pw+qy*pz-qz*py
	local ry=qw*py+qy*pw+qz*px-qx*pz
	local rz=qw*pz+qz*pw+qx*py-qy*px
	return rw,rx,ry,rz
end
-------------------------------------------
function ig3d_doit()
	if gServerMode==sm_gathering then
		--we are waiting for users to connect
		handle_gathering()
	else
		handle_gameplay()
	end     
end
-------------------------------------------
-------------------------------------------
-------------------------------------------
-------------------------------------------
-------------------------------------------
-------------------------------------------
-------------------------------------------
-------------------------------------------
-------------------------------------------
-------------------------------------------
-------------------------------------------
-------------------------------------------
game_func=ig3d_doit

host = "*"		--"localhost";
port = "8383";
server = assert(socket.bind(host, port));
server:settimeout(0.0)
ack = "\n";

console=make(ig3d_text_box, "Data/FontPngs/default32_1.png")
setText_boxInfo(console, IG3D_POSITION, 20,20)
setText_boxInfo(console, IG3D_COLOR, 1,0,0,1)
setText_boxInfo(console, IG3D_SIZE, 12)
setText_boxInfo(console, IG3D_TEXT, "Waiting for players. Click to start the game...\n")
gMaxLines=10

numplayers=0
players={}

--server modes:
sm_gathering=1
sm_gameplay=2

gSnapshotInterval=2.0 --send update event to clients every 0.1 seconds

gServerMode=sm_gathering --default

itemDel=","

gObjects={}

setCameraInfo(IG3D_POSITION, 0,10,0)
setCameraInfo(IG3D_ROTATION, 90,0,0)

gTestPing=0.5

setSceneInfo(IG3D_RUN_IN_BACKGROUND, true)

oldz=0

gSpeed=10

gNextTime=-1.0


--list of client messages
cm_exit=0
cm_forward=1
cm_backward=2
cm_left=3
cm_right=4
cm_shoot=5
cm_mouse=6
cm_chat=7
cm_restart=8
cm_time=9

--list of server messages
srvr_exit=0
srvr_setObjectInfo=1
srvr_multiple=2
srvr_pos_and_rot=3