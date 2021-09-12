--loadLevel("data/Levels/TurretTest")
a=make(ig3d_object, "cube")--room
setObjectInfo(a, IG3D_POSITION, 0,0,0)

dofile(getSceneInfo(IG3D_ROOT).."data/Scripts/Airforce/af_math.lua")

setCameraInfo(IG3D_POSITION, 1.5,1.5,1.5)

setLightInfo(1, IG3D_POSITION, 0, 3, 5, 1)

m=get(ig3d_material, a, 1)
setMaterialInfo(m, IG3D_SHADER, "data/Shaders/bump/")
--setMaterialInfo(m, IG3D_TEXTURE, 1, "")
--setMaterialInfo(m, IG3D_TEXTURE, 2, "data/images/bump.png")

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
x=x-a9*d
y=y-a10*d
z=z-a11*d
end

if key("a","-") then
x=x+a1*d
y=y+a2*d
z=z+a3*d
end

if key("d","-") then
x=x-a1*d
y=y-a2*d
z=z-a3*d
end


setCameraInfo(IG3D_POSITION, x,y,z)
setLightInfo(1, IG3D_POSITION, x,y,z, 1)

end


game_func=turn


