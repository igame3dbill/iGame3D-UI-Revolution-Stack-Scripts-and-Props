--------------------------------------------
--------------------------------------------
--------------------------------------------
--------------------------------------------
--------------------------------------------
--------------------------------------------
--------------------------------------------
--------------------------------------------
--------------------------------------------
--------------------------------------------
--------------------------------------------
function senddelayed(text)
	buffers[curBuffer]={ t1=time()+ gTestPing , t2=text};
    curBuffer= ((curBuffer) % 64)+1
end
-------------------------------------------
function sendbufferedmessages()
   	for k=1,64,1 do
   		if buffers[k]~= nil then
  			if time()>=buffers[k].t1  then
  				client:send(buffers[k].t2);
   				buffers[k]=nil
   			end
   		end
   	end	
end
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
function delitems(text, n)
	--deletes n items from the start of text
	ret = text
	if n<1 then
		return text
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
function item(text, n)
	ret = text
	if n<1 then
		return text
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
function setupObjects(text)
	gNumObjects=tonumber(item(text, 1))
	text=delitems(text, 1)
	local i
	for i=1,gNumObjects,1 do
		gObjects[i]={ numFrames=0 }
		gObjects[i].cObj=make(ig3d_object, "avatarp1")
		
		gObjects[i].id=tonumber( item(text,1) )
		if gObjects[i].id == myID then
			myObj=i
		end
		setObjectInfo( gObjects[i].cObj, IG3D_POSITION, item(text, 2), item(text, 3), item(text, 4) )
		setObjectInfo(gObjects[i].cObj, IG3D_COLL, false)
		gObjects[i].oldx, gObjects[i].oldy, gObjects[i].oldz = getObjectInfo(gObjects[i].cObj, IG3D_POSITION)
		gObjects[i].newx, gObjects[i].newy, gObjects[i].newz = getObjectInfo(gObjects[i].cObj, IG3D_POSITION)
		gObjects[i].oldxa, gObjects[i].oldya, gObjects[i].oldza = getObjectInfo(gObjects[i].cObj, IG3D_ROTATION)
		gObjects[i].newxa, gObjects[i].newya, gObjects[i].newza = getObjectInfo(gObjects[i].cObj, IG3D_ROTATION)
		gObjects[i].forw=0
		gObjects[i].turn=0
		gObjects[i].interpolate=false
		gObjects[i].oldtime=time()
		gObjects[i].curFrame=nil
		gObjects[i].oldestFrame=nil
		text=delitems(text, 4)
	end
	
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
function handle_gathering()
	result, e=client:receive()
	if result ~= nil then
		toConsole("From server: "..result.."\n")
		if string.find(result, "SETUP")~= nil then
			setupObjects(string.sub(result, 7, -1))
			gServerMode=sm_gameplay
		end
	else
		if e=="closed" then
			toConsole("The server closed the connection.\n")
		end		
	end
end
--------------------------------------------
function getObjectFrameForTime(idx, tim)
	local tmp=gObjects[idx].curFrame
	while tmp~=nil do
		if tostring(tmp.stamp)== tostring(tim) then
			return tmp
		end
		tmp=tmp.past;
	end
	return nil
end
--------------------------------------------
function getObjectFrameForTimeBestMatch(idx, tim)
	local tmp=gObjects[idx].curFrame
	while tmp~=nil do
	
		if tonumber(tmp.stamp) <= tonumber(tim) then
			if tmp.future==nil then
				return tmp
			else
				if tonumber(tmp.future.stamp) >= tonumber(tim) then
					return tmp
				end
			end
		end
		tmp=tmp.past;
	end
	return nil
end
--------------------------------------------
function handleMovementAndRotation(x,y,z, velx,vely,velz, pw,px,py,pz, velxa,velya,velza, t)
	x=x+frm.velx*t
	y=y+frm.vely*t
	z=z+frm.velz*t

	phi=-frm.velxa/(180/math.pi) * t *10
    qw=math.cos(phi*0.5)
    qx=a11 * math.sin(phi*0.5)
    qy=a12 * math.sin(phi*0.5)
    qz=a13 * math.sin(phi*0.5)
    pw,px,py,pz=quaternionMult(pw,px,py,pz,  qw,qx,qy,qz)
    			
    phi=(-frm.velya/(180/math.pi)) * t * 10
    qw=math.cos(phi*0.5)
    qx=a21 * math.sin(phi*0.5)
    qy=a22 * math.sin(phi*0.5)
    qz=a23 * math.sin(phi*0.5)
    pw,px,py,pz=quaternionMult(pw,px,py,pz,  qw,qx,qy,qz)
    	
    phi=(-frm.velza/(180/math.pi)) * t * 10
    qw=math.cos(phi*0.5)
    qx=a31 * math.sin(phi*0.5)
    qy=a32 * math.sin(phi*0.5)
    qz=a33 * math.sin(phi*0.5)
    pw,px,py,pz=quaternionMult(pw,px,py,pz,  qw,qx,qy,qz)	
	return x,y,z, pw,px,py,pz
end
--------------------------------------------
function handle_server_message(msg, outer)
	

	
	if outer==true then
		gServerTimeStamp=item(msg, 1)
		msg=delitems(msg, 1)
	end
	
	local mess=tonumber( item(msg, 1))
	
	if mess == srvr_pos_and_rot then
		local i=tonumber(item(msg, 2))
		gObjects[i].newx=tonumber(item(msg,3))
		gObjects[i].newy=tonumber(item(msg,4))
		gObjects[i].newz=tonumber(item(msg,5))
		gObjects[i].newxa=tonumber(item(msg,6))
		gObjects[i].newya=tonumber(item(msg,7))
		gObjects[i].newza=tonumber(item(msg,8))
				
				--print("Now it is:", time(), "POSITION:", getObjectInfo(gObjects[i].cObj, IG3D_POSITION))
								
			frm= getObjectFrameForTimeBestMatch(i, gServerTimeStamp)
			if frm== nil then
				toConsole("BUG: "..gServerTimeStamp..","..gObjects[i].curFrame.stamp..","..time().."\n")
			end
			
			local offset= gServerTimeStamp-frm.stamp
						
			toConsole("Server sagt: Position bei t="..gServerTimeStamp.." ist bei "..gObjects[i].newz.."\n")
			toConsole("Clien1 sagt: Position bei t="..frm.stamp.." ist bei "..frm.z.."\n")
			toConsole("Clien2 sagt: Position bei t="..frm.stamp+offset.." ist bei "..frm.z+(frm.velz*offset).."\n")
			
			x=gObjects[i].newx
			y=gObjects[i].newy
			z=gObjects[i].newz
			
			setObjectInfo(gObjects[i].cObj, IG3D_ROTATION, gObjects[i].newxa, gObjects[i].newya, gObjects[i].newza)
			
			
			
			---handle the past
			while frm ~= nil do
				if frm==gObjects[i].curFrame then
    				t=time()-frm.stamp-offset
    			else
    				t=frm.future.stamp-frm.stamp-offset
    			end
    			offset=0
    			
				a11,a12,a13,a14, a21,a22,a23,a24, a31,a32,a33,a34, a41,a42,a43,a44=getObjectInfo(gObjects[i].cObj, IG3D_ROTATION_MATRIX)
    			pw,px,py,pz=quaternionFromMatrix(a11,a12,a13,a14, a21,a22,a23,a24, a31,a32,a33,a34, a41,a42,a43,a44)
				x,y,z, pw,px,py,pz = handleMovementAndRotation(x,y,z, frm.velx,frm.vely,frm.velz, pw,px,py,pz, frm.velxa,frm.velya,frm.velza, t)
				b11,b12,b13, b21,b22,b23, b31,b32,b33=matrixFromQuaternion(pw,px,py,pz)
    			setObjectInfo(gObjects[i].cObj, IG3D_ROTATION_MATRIX, b11,b12,b13,a14, b21,b22,b23,a24, b31,b32,b33,a34, a41,a42,a43,a44 )
				frm=frm.future
			end
			
			---handle the present again (silly huh ?)
			if offset>0 then
				frm=gObjects[i].curFrame
				a11,a12,a13,a14, a21,a22,a23,a24, a31,a32,a33,a34, a41,a42,a43,a44=getObjectInfo(gObjects[i].cObj, IG3D_ROTATION_MATRIX)
    			pw,px,py,pz=quaternionFromMatrix(a11,a12,a13,a14, a21,a22,a23,a24, a31,a32,a33,a34, a41,a42,a43,a44)
				x,y,z, pw,px,py,pz = handleMovementAndRotation(x,y,z, frm.velx,frm.vely,frm.velz, pw,px,py,pz, frm.velxa,frm.velya,frm.velza, offset)
				b11,b12,b13, b21,b22,b23, b31,b32,b33=matrixFromQuaternion(pw,px,py,pz)
    			setObjectInfo(gObjects[i].cObj, IG3D_ROTATION_MATRIX, b11,b12,b13,a14, b21,b22,b23,a24, b31,b32,b33,a34, a41,a42,a43,a44 )
    		end
			setObjectInfo(gObjects[i].cObj, IG3D_POSITION, x,y,z)
	end
	
		
	if mess == srvr_multiple then
	
	
		local n=item(msg, 2)
		msg=delitems(msg, 2)
		local i
		
			
		for i=1,n,1 do
			itemDel="?"
			recursiveCommand=item(msg, i)
			itemDel=","
			handle_server_message(recursiveCommand, false)
		end
		
	end
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
	--print(pw..","..px..","..py..","..pz.."\n")
	--print(qw..","..qx..","..qy..","..qz.."\n")

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
function handle_gameplay()
	local i
		
		
	
	---------- do the actual movement
	m=passed()
	for i=1,gNumObjects,1 do
    	a11,a12,a13,a14, a21,a22,a23,a24, a31,a32,a33,a34, a41,a42,a43,a44=getObjectInfo(gObjects[i].cObj, IG3D_ROTATION_MATRIX)
    	--setObjectInfo(gObjects[i].cObj, IG3D_VELOCITY, a31*gObjects[i].forw*m, a32*gObjects[i].forw*m, a33*gObjects[i].forw*m)
    	--setObjectInfo(gObjects[i].cObj, IG3D_OMEGA, a21*gObjects[i].turn*m, a22*gObjects[i].turn*m, a23*gObjects[i].turn*m)
    	x,y,z=getObjectInfo(gObjects[i].cObj, IG3D_POSITION)
    	x=x+gObjects[i].forw*m*a31
    	y=y+gObjects[i].forw*m*a32
    	z=z+gObjects[i].forw*m*a33
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
	
		
		
	if lastFrame == 0.0 then
		--print("Sending time:", time() )
		client:send(time()..","..cm_time.."\n")
	end
		
	createFrame=false
	if time()>lastFrame+0.01 then
		createFrame=true
		lastFrame=time()
	end
	--first handle keyboard events and tell the server about them
	if key("w","n")  then --or gObjects[myObj].forw==0 then
		--print("Attempting to move forward at time:", time(), "and pos:", getObjectInfo(gObjects[myObj].cObj, IG3D_POSITION))
		senddelayed(time()..","..cm_forward..",0\n")
		gObjects[myObj].forw=gObjects[myObj].forw+gSpeed
		createFrame=true
	end
	if key("w","o") then
		senddelayed(time()..","..cm_forward..",1\n")
		gObjects[myObj].forw=gObjects[myObj].forw-gSpeed
		createFrame=true
	end
	
	if key("s","n") then
		senddelayed(time()..","..cm_backward..",0\n")
		gObjects[myObj].forw=gObjects[myObj].forw-gSpeed
		createFrame=true
	end
	if key("s","o") then
		senddelayed(time()..","..cm_backward..",1\n")
		gObjects[myObj].forw=gObjects[myObj].forw+gSpeed
		createFrame=true
	end
	
	if key("a","n") then
		senddelayed(time()..","..cm_left..",0\n")
		gObjects[myObj].turn=gObjects[myObj].turn+gSpeed
		createFrame=true
	end
	if key("a","o") then
		senddelayed(time()..","..cm_left..",1\n")
		gObjects[myObj].turn=gObjects[myObj].turn-gSpeed
		createFrame=true
	end
	
	if key("d","n") then
		gObjects[myObj].turn=gObjects[myObj].turn-gSpeed
		senddelayed(time()..","..cm_right..",0\n")
		createFrame=true
	end
	if key("d","o") then
		gObjects[myObj].turn=gObjects[myObj].turn+gSpeed
		senddelayed(time()..","..cm_right..",1\n")
		createFrame=true
	end
	if key(" ","n") then
		client:send(gNextFrameTime..","..cm_restart.."\n")
		createFrame=true
	end
	
	if key("p","n") then
		tmp=gObjects[myObj].curFrame
		local i=0
		while tmp~=nil do
			print(i, tmp.stamp, tmp.x, tmp.y, tmp.z)
			i=i+1
			tmp=tmp.past
		end
	end
	
	
	

	
	
	
	
	--------handle the move history
	if createFrame==true then --might need a condition here later
		for i=1,gNumObjects,1 do
			tmp=gObjects[i].curFrame
			gObjects[i].curFrame={ stamp= time(), past=tmp, future=nil}
			gObjects[i].curFrame.x, gObjects[i].curFrame.y, gObjects[i].curFrame.z = getObjectInfo(gObjects[i].cObj, IG3D_POSITION)
			a11,a12,a13,a14, a21,a22,a23,a24, a31,a32,a33,a34, a41,a42,a43,a44=getObjectInfo(gObjects[i].cObj, IG3D_ROTATION_MATRIX)
			gObjects[i].curFrame.velx = a31*gObjects[i].forw
			gObjects[i].curFrame.vely = a32*gObjects[i].forw
			gObjects[i].curFrame.velz = a33*gObjects[i].forw
		
			gObjects[i].curFrame.xa, gObjects[i].curFrame.ya, gObjects[i].curFrame.za = getObjectInfo(gObjects[i].cObj, IG3D_ROTATION)
			gObjects[i].curFrame.velxa = a21*gObjects[i].turn
			gObjects[i].curFrame.velya = a22*gObjects[i].turn
			gObjects[i].curFrame.velza = a23*gObjects[i].turn
		
		
			if tmp~= nil then
				tmp.future=gObjects[i].curFrame
			end
		
	
			if gObjects[i].numFrames == 0 then
				gObjects[i].oldestFrame=gObjects[i].curFrame
				gObjects[i].numFrames=gObjects[i].numFrames+1
			else
				if gObjects[i].numFrames >= gFrameHistorySize then
					gObjects[i].oldestFrame=gObjects[i].oldestFrame.future;--FIFO
					gObjects[i].oldestFrame.past=nil
				else
					gObjects[i].numFrames=gObjects[i].numFrames+1	
				end
			end
		end
	end
	----------
	
	
	
	
	
	--now do what the server says
	result,e=client:receive()
	
	if result~=nil then
		handle_server_message(result, true)
	end
	
	
	
	sendbufferedmessages()---now send what we saved earlier
end
--------------------------------------------
function ig3d_doit()
	if connected then
		if gServerMode== sm_gathering then
			handle_gathering()			
		else
			handle_gameplay()
		end

		
	end
    
end
--------------------------------------------
--------------------------------------------
--------------------------------------------
--------------------------------------------
--------------------------------------------
--------------------------------------------
--------------------------------------------
--------------------------------------------

host = "127.0.0.1"		--ig3d.homeip.net"	--"192.168.2.33"
port = "8383";
client = socket.tcp()
client:settimeout(5.0)--"connection attempt may not take longer than 5 seconds"
ack = "\n";

console=make(ig3d_text_box, "Data/FontPngs/default32_1.png")
setText_boxInfo(console, IG3D_POSITION, 20,20)
setText_boxInfo(console, IG3D_COLOR, 1,0,0,1)
setText_boxInfo(console, IG3D_SIZE, 12)
setText_boxInfo(console, IG3D_TEXT, "Trying to connect to "..host.."...\n")
gMaxLines=10


sm_gathering=1
sm_gameplay=2
gServerMode=sm_gathering

gObjects={}

setCameraInfo(IG3D_POSITION, 0,10,0)
setCameraInfo(IG3D_ROTATION, 90,0,0)


connected,error=client:connect(host, port)
if (connected) then
	--yes, we first need to find out what the server says!
	val,e=client:receive()
	myID=tonumber( string.sub(val, 8, string.find(val, ",")-1) );

	client:settimeout(0);
	client:send(time()..",Temp\n");
	game_func=ig3d_doit
	toConsole("Connection established. Waiting for host to start game...\n")
else
	toConsole("Connection refused!\n")
end

itemDel=","

setSceneInfo(IG3D_RUN_IN_BACKGROUND, true)

gSnapshotInterval=0--0.1
gNextFrameTime=0.0
gServerTimeStamp=0.0

lastFrame=0

buffers={}
curBuffer=1

gTestPing=0.5

gSpeed=10

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

M_EPSILON=0.002

gNumFrames=0
gFrameHistorySize=256

srvr_exit=0
srvr_setObjectInfo=1
srvr_multiple=2 --seperated by ? character
srvr_pos_and_rot=3

dofile(getSceneInfo(IG3D_ROOT).."Data/Scripts/Airforce/af_math.lua")