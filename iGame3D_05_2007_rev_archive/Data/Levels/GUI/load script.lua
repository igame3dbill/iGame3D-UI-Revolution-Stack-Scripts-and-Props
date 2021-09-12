--compute center
loadTexture("Data/Images/airforce.png")
loadFont("Data/FontPngs/monaco32_1.png","Data/FontPngs/monaco32_2.png")
setCameraInfo(IG3D_POSITION, 0,0,0)
setCameraInfo(IG3D_ROTATION, 0,180,0)
x,y,z=getSceneInfo(IG3D_WINDOW_COORDS, 0,2,-10)

setSceneInfo(IG3D_BACKGROUND_COLOR, 0,0,0)
a=make(ig3d_object, "square")
setObjectInfo(a, IG3D_ROTATION, 90,0,0)
setObjectInfo(a, IG3D_POSITION, 0,0,-145)
setObjectInfo(a, IG3D_SIZE, 320,100,240)

gNumBoxes=6
gSelBox=0

load=false

boxes={}

setSceneInfo(IG3D_MOUSE_VIEW, false)

labels={"New Game","Continue","Options","Controls","About","Quit"}
levels={"Data/Levels/EnterName","Data/Levels/Briefing","Data/Levels/Options","Data/Levels/Controls","blah","Data/Levels/Quit"}

for i=1,gNumBoxes,1 do
boxes[i]=make(ig3d_text_box, "Data/FontPngs/monaco32_1.png")
setText_boxInfo(boxes[i], IG3D_POSITION, x-(#labels[i]*7), y+i*30)
setText_boxInfo(boxes[i], IG3D_SIZE, 24)
setText_boxInfo(boxes[i], IG3D_TEXT, labels[i])
setText_boxInfo(boxes[i], IG3D_COLOR, 0.400000, 4.000000, 1.000000, 1.000000)
end



function mouseInBox(x1,y1, x2,y2, mx,my)
if mx>=x1 and mx<=x2 and my>=y1 and my<=y2 then
return true
end
return false
end

function mouseCoords()
local x,y,z=getSceneInfo(IG3D_MOUSE_LINE)
x,y,z=getSceneInfo(IG3D_WINDOW_COORDS, x,y,z)
return x,y,z
end


function loop()

if load== false then
for i=1,gNumBoxes,1 do
x,y,z=getSceneInfo(IG3D_WINDOW_COORDS, 0,2,-10)
if i~=gSelBox then
setText_boxInfo(boxes[i], IG3D_COLOR, 0.4,0.4,1,1)
end
setText_boxInfo(boxes[i], IG3D_POSITION, x-(#labels[i]*7), y+i*30)
end
else
loadLevel(levels[gSelBox])
end

if click("n") then
x,y=mouseCoords()
gSelBox=0

for i=1,gNumBoxes,1 do
x1,y1=getText_boxInfo(boxes[i], IG3D_POSITION)
x2=x1+200
y2=y1+24
if mouseInBox(x1,y1, x2,y2, x,y) then
setText_boxInfo(boxes[i], IG3D_COLOR, 1,0,0,1)
gSelBox=i
if levels[gSelBox]~= "" then
load=true
end
end
end



end
end



game_func=loop