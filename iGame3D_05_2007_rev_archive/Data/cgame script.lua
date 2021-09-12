gNumObjects=3
gObjects={}
gObjects[1]={}
gObjects[2]={}
gObjects[3]={}

gMaxThrottle=60
gMinThrottle=10
gEnemyThrottle=20

dofile(getSceneInfo(IG3D_ROOT).."Data/Scripts/Airforce/af_math.lua")
dofile(getSceneInfo(IG3D_ROOT).."Data/Scripts/Airforce/af_plane.lua")

gObjects[1].cObj=make(ig3d_object, "avatarp1.wtf")
gObjects[2].cObj=make(ig3d_object, "enemyfighter.wtf")
gObjects[3].cObj=make(ig3d_object, "bullet.wtf")

ship=gObjects[1]
marker=gObjects[2]
bullet=gObjects[3]
setObjectInfo(bullet.cObj, IG3D_COLL, false)

setObjectInfo(marker.cObj, IG3D_POSITION, -30+math.random()*60,0,-30+math.random()*60.0)
setObjectInfo(marker.cObj, IG3D_ROTATION, -180+math.random()*360,-180+math.random()*360,-180+math.random()*360)

setObjectInfo(marker.cObj, IG3D_POSITION, -30,-50,40)
setObjectInfo(marker.cObj, IG3D_ROTATION, 0,90,0)

setCameraInfo(IG3D_POSITION, 0,50,0)
setCameraInfo(IG3D_ROTATION, 90,0,0)



t=time()+1
t2=t

vel1={x=0, y=0, z=40}


setObjectInfo(ship.cObj, IG3D_VELOCITY, vel1.x, vel1.y, vel1.z)

i=1

init_plane(ship)
init_plane(marker)

function loop()
updateFromAllVisualObjects()


ship.yaw=0
if key("d","-") then
ship.yaw=5
end

if key("a","-") then
ship.yaw=-5
end

apply_plane_physicsnew(ship, 0, 0, gEnemyThrottle, ship.pitch, ship.yaw, ship.roll)

x=ship.x
y=ship.y
z=ship.z

tx,ty,tz=getObjectInfo(ship.cObj, IG3D_VELOCITY)
x=x-tx
y=y-ty
z=z-tz


a11,a12,a13,a14,a21,a22,a23,a24,a31,a32,a33,a34,a41,a42,a43,a44=getObjectInfo(marker.cObj, IG3D_ROTATION_MATRIX)
plane_control(marker, x,y,z)
dx=x-marker.x
dy=y-marker.y
dz=z-marker.z
dx,dy,dz=normalized(dx,dy,dz)
cosalpha=math.max(dot(dx,dy,dz, a31,a32,a33),0.25)
dist=distance_object_to_point(marker, x,y,z)
marker.throttle=math.max(gMinThrottle, math.min( 0.5*dist*cosalpha, 60))--hack

t=math.max(vecLength(getObjectInfo(marker.cObj, IG3D_VELOCITY)) / 40,1)

--apply_plane_physicsnew(marker, 0, 0, marker.throttle, marker.pitch/t, marker.yaw/t, marker.roll/t)


t=vecLength(tx,ty,tz)

t=math.min( math.max(dist, t*1.1), 60)
setObjectInfo(marker.cObj, IG3D_VELOCITY, a31*t, a32*t, a33*t)
tx,ty,tz=cross(a31,a32,a33, dx,dy,dz)
setObjectInfo(marker.cObj, IG3D_OMEGA, tx*3,ty*3,tz*3)

--setObjectInfo(marker.cObj, IG3D_ROTATION, dirToAngles(dx,dy,dz))

setCameraInfo(IG3D_POSITION, ship.x, ship.y+50, ship.z)


end


game_func=loop