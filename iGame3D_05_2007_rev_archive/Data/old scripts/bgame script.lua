--loadLevel("data/Levels/TurretTest")
a=make(ig3d_object, "TinyBoss")--room
setObjectInfo(a, IG3D_POSITION, 0,0,0)
sx=0.5
sy=0.5
sz=0.5

for i=1,9,1 do
m=get(ig3d_material, a, i)

setMaterialInfo(m, IG3D_LUX, true)
setMaterialInfo(m, IG3D_SHADER, "data/Shaders/radius/")

end

setSceneInfo(IG3D_BACKGROUND_COLOR, 0,0,0)
setCameraInfo(IG3D_POSITION, 0,0,0)

setSceneInfo(IG3D_SHADER_PARAM, 2, sx,sy,sz,1)--set light circle size
setLightInfo(1, IG3D_POSITION, 0.2,1,1,0)


function turn()
setSceneInfo(IG3D_MOUSE_VIEW, true)

x,y,z=getCameraInfo(IG3D_ROTATION)
sy,sx=getSceneInfo(IG3D_MOUSE_DELTA)

y=y-sy*0.2
x=x+sx*0.2

setCameraInfo(IG3D_ROTATION, x,y,z)

a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16=getCameraInfo(IG3D_ROTATION_MATRIX)
x,y,z=getCameraInfo(IG3D_POSITION)

d=passed()*2

if key("w","-") then
x=x+ a9*d
y=y+a10*d
z=z+a11*d
end

if key("s","-") then
x=x- a9*d
y=y-a10*d
z=z-a11*d
end

if key("a","-") then
x=x+ a1*d
y=y+a2*d
z=z+a3*d
end

if key("d","-") then
x=x-a1*d
y=y-a2*d
z=z-a3*d
end


setCameraInfo(IG3D_POSITION, x,y,z)
setLightInfo(1, IG3D_POSITION, x, y, z, 1)
setSceneInfo(IG3D_SHADER_PARAM, 1, x, y, z, 0)



end


game_func=turn


