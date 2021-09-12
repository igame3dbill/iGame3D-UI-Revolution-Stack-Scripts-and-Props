-- This code uses a time out of 0.0, which is a very bad approach, yet it works for testing until there are threads!


print("iGame3D Test Program for "..socket._VERSION)
host = "*"		--"localhost";
port = "8383";
server = assert(socket.bind(host, port));
server:settimeout(0.0)
ack = "\n";

numConnections=0
connections={}





function ig3d_doit()
    control = server:accept();
    
    if control~=nil then
        numConnections = numConnections + 1

    print("A new chatter wants to connect, sending him/her the name prompt.\n"); 
    
    connections[numConnections]={tcpsocket=control, unnamed=true}
    connections[numConnections].tcpsocket:settimeout(0.0)
    connections[numConnections].tcpsocket:send("Welcome to the server! Please enter your name:\n");
    
    
    end
    
    for i=1,numConnections,1 do
    	if connections[i]~= nil then
    		result,e =connections[i].tcpsocket:receive();
    		sendSomething=true
    		message=nil
    		
    		--interpret these escape text as close messages
    		if result == "/exit" or result == "/quit" or result == "/logout" then
    			result=nil
    			e="closed"
    			connections[i].tcpsocket:close();
    		end
    		
    		--shall we disconnect?
    		if result == nil then
    			sendSomething=false
    			if e == "closed" then
    				sendSomething=true
    				message=connections[i].name.." has quit.\n"
    				connections[i]=nil
    			end
    		end
    		
    		--do we have something to send?
    		if sendSomething then
    			--the user sent text, let's see if it was his name or a chat message
    			if message==nil then
    				if connections[i].unnamed then
    					--user is submitting his name
    					connections[i].unnamed=false
    					connections[i].name=result
    					message=connections[i].name.." logged in.\n"
    				else
    					--user is submitting chat text
    					message=connections[i].name..": "..result.."\n"
    				end
    			end
    			
    				--send the message to all connected users    		
    				for j=1,numConnections,1 do
    					if connections[j]~= nil then
    						connections[j].tcpsocket:send(message);
    					end
    				end  			
    			
    			print(message)
    		end
    	end
    end
    
end

game_func=ig3d_doit