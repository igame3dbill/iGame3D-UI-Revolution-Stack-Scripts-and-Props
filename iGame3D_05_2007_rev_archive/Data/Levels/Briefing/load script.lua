-- Begin of auto-script
loadMesh("Data/WTF/rollfield.wtf")
loadTexture("Data/Images/rollfield.png")
loadTexture("Data/Images/grass.png")
loadTexture("Data/Images/drewjetfighter.png")
loadTexture("Data/WTF/fighter/fighter.png")
loadTexture("Data/WTF/fighter/fighter3.png")
loadTexture("Data/WTF/fighter/fighter2.png")
loadTexture("Data/WTF/fighter/fighter4.png")
loadTexture("Data/WTF/fighter/fighter5.png")
loadTexture("Data/WTF/fighter/fighter6.png")
loadTexture("Data/WTF/fighter/fighter8.png")
loadTexture("Data/WTF/fighter/fighte10.png")
loadTexture("Data/WTF/fighter/fighter7.png")
loadTexture("Data/FontPngs/monaco32_1.png")
loadTexture("Data/FontPngs/monaco32_2.png")
loadFont("Data/FontPngs/monaco32_1.png", "Data/FontPngs/monaco32_2.png")
setCameraInfo(IG3D_POSITION, 0.478085, 5.897385, 24.126522)
setCameraInfo(IG3D_ROTATION, 69.999992, 1.666718, -0.000000)
gObjects={}
gNumObjects=2
gObjects[1]={}
gObjects[1].cObj=make(ig3d_object, "avatarp1.wtf")
setObjectInfo(gObjects[1].cObj, IG3D_NAME, "avatarp11")
setObjectInfo(gObjects[1].cObj, IG3D_POSITION, -2.734422, 0.645847, 25.779594)
setObjectInfo(gObjects[1].cObj, IG3D_ROTATION, 0.000000, 70.000000, 0.000000)
setObjectInfo(gObjects[1].cObj, IG3D_SIZE, 100.000000,100.000000,100.000000)
gObjects[2]={}
gObjects[2].cObj=make(ig3d_object, "avatarp1.wtf")
setObjectInfo(gObjects[2].cObj, IG3D_NAME, "avatarp12")
setObjectInfo(gObjects[2].cObj, IG3D_POSITION, 0.258888, 0.436259, 29.563126)
setObjectInfo(gObjects[2].cObj, IG3D_ROTATION, 0.000000, 0.000000, 0.000000)
setObjectInfo(gObjects[2].cObj, IG3D_SIZE, 100.000000,100.000000,100.000000)
gParticleEmitters={}
gNumParticleEmitters=0
gSoundEmitters={}
gNumSoundEmitters=0
gGroups={}
gNumGroups=0
gTextboxes={}
gNumTextboxes=1
gTextboxes[1]=make(ig3d_text_box, "Data/FontPngs/monaco32_1.png")
setText_boxInfo(gTextboxes[1], IG3D_POSITION, 20, 20)
setText_boxInfo(gTextboxes[1], IG3D_SIZE, 14)
setText_boxInfo(gTextboxes[1], IG3D_COLOR, 1.000000, 1.000000, 1.000000, 1.000000)
setSceneInfo(IG3D_TINT_COLOR, 1.000000,1.000000,1.000000)
setSceneInfo(IG3D_FOG, false,0.500000,0.500000,0.500000,0.000000,200.000000)
setSceneInfo(IG3D_BACKGROUND_COLOR, 0.650000,0.650000,0.650000)
setSceneInfo(IG3D_FOV, true, 90.000000)
setLightInfo(1, IG3D_ENABLED, true)
setLightInfo(1, IG3D_POSITION, -0.500000,2.000000,-1.000000,0.000000)
setLightInfo(1, IG3D_AMBIENT, 0.400000,0.400000,0.400000,1.000000)
setLightInfo(1, IG3D_DIFFUSE, 1.000000,1.000000,1.000000,1.000000)
setLightInfo(1, IG3D_SPECULAR, 1.000000,1.000000,1.000000,1.000000)
setLightInfo(1, IG3D_CONSTANT_ATTENUATION, 1.000000)
setLightInfo(1, IG3D_LINEAR_ATTENUATION, 0.000000)
setLightInfo(1, IG3D_QUADRATIC_ATTENUATION, 0.000000)
setLightInfo(1, IG3D_SPOTLIGHT, 0.000000,0.000000,0.000000,180.000000,0.000000)
setLightInfo(2, IG3D_ENABLED, false)
setLightInfo(3, IG3D_ENABLED, false)
setLightInfo(4, IG3D_ENABLED, false)
setLightInfo(5, IG3D_ENABLED, false)
setLightInfo(6, IG3D_ENABLED, false)
setLightInfo(7, IG3D_ENABLED, false)
setLightInfo(8, IG3D_ENABLED, false)
-- End of auto-script

f=io.open(getSceneInfo(IG3D_ROOT).."Data/name.txt","r")
playerName=f:read("*line")
f:close()


briefing="MISSION BRIEFING\n\nAttention, "..playerName..",\nOur sensors have detected a large enemy air frigate\nin sector Z42. It is heading towards one of their outposts\nin the south. Since it is heavily guarded and it's flighing a\ndifferent route than the standard weapon transport convoys\nwe believe it to carry some unusual cargo.\n\nObjectives:\n- Destroy all enemies escorting that frigate\n- Force the frigate to stop and land\n  You may destroy its engines if they don't cooperate\n\nDO NOT ENTER the enemy frigate under any circumstances!\nWe will be sending a special investigation team for any further\nactions."


setText_boxInfo(gTextboxes[1], IG3D_TEXT, briefing)

setSceneInfo(IG3D_MOUSE_VIEW, true)

setSceneInfo(IG3D_RECEIVE_SHADOW, true)
setObjectInfo(gObjects[1].cObj, IG3D_CAST_SHADOW, true, "avatarp1shadow.wtf")
setObjectInfo(gObjects[2].cObj, IG3D_CAST_SHADOW, true, "avatarp1shadow.wtf")
setLightInfo(2, IG3D_POSITION, 1,1,0,0)

theLevel="Data/Levels/TurretTest"
loadtime=0

function loop()
if loadtime~=0 then
if time()>=loadtime then
loadLevel(theLevel)
end
else

if click("n") then
loadtime=time()+2
setObjectInfo(gObjects[2].cObj, IG3D_FORCE, 0,0,2)
end
end
end

game_func=loop