-- Begin of auto-script
loadMesh("Data/WTF/cloudpath.wtf")
loadTexture("Data/WTF/world/land01.png")
loadTexture("Data/WTF/world/land02.png")
loadTexture("Data/WTF/world/land03.png")
loadTexture("Data/WTF/world/land04.png")
loadTexture("Data/WTF/world/house01.png")
loadTexture("Data/WTF/world/house02.png")
loadTexture("Data/WTF/world/house03.png")
loadTexture("Data/WTF/world/house04.png")
loadTexture("Data/WTF/world/house05.png")
loadTexture("Data/WTF/sky_box/skyboss.png")
loadTexture("Data/WTF/fighter/fighter.png")
loadTexture("Data/WTF/fighter/fighter3.png")
loadTexture("Data/WTF/fighter/fighter2.png")
loadTexture("Data/WTF/fighter/fighter4.png")
loadTexture("Data/WTF/fighter/fighter5.png")
loadTexture("Data/WTF/fighter/fighter6.png")
loadTexture("Data/WTF/fighter/fighter8.png")
loadTexture("Data/WTF/fighter/fighter7.png")
loadTexture("Data/WTF/boss/boss01.png")
loadTexture("Data/WTF/boss/boss02.png")
loadTexture("Data/WTF/boss/boss03.png")
loadTexture("Data/WTF/boss/boss04.png")
loadTexture("Data/WTF/boss/boss05.png")
loadTexture("Data/WTF/boss/boss06.png")
loadTexture("Data/WTF/boss/boss07.png")
loadTexture("Data/WTF/boss/boss08.png")
loadTexture("Data/WTF/boss/boss09.png")
loadTexture("Data/WTF/boss/boss10.png")
loadTexture("Data/WTF/boss/boss11.png")
loadTexture("Data/WTF/boss/boss12.png")
loadTexture("Data/WTF/boss/boss13.png")
loadTexture("Data/WTF/boss/boss14.png")
loadTexture("Data/WTF/boss/boss15.png")
loadTexture("Data/WTF/boss/boss16.png")
loadTexture("Data/WTF/fighter/fighte10.png")
loadTexture("Data/Images/skyboss2.png")
loadTexture("Data/Images/fighter.png")
loadTexture("Data/Images/fighter3.png")
loadTexture("Data/Images/fighter2.png")
loadTexture("Data/Images/fighter4.png")
loadTexture("Data/Images/fighter5.png")
loadTexture("Data/Images/fighter6.png")
loadTexture("Data/Images/fighter8.png")
loadTexture("Data/Images/fighter9.png")
loadTexture("Data/Images/fighter7.png")
loadTexture("Data/FontPngs/monaco32_1.png")
loadTexture("Data/FontPngs/monaco32_2.png")
loadSound("Data/Sounds/planehit.ogg")
loadSound("Data/Sounds/planefly.ogg")
loadSound("Data/Sounds/exp.ogg")
loadSound("Data/Sounds/turret.ogg")
loadFont("Data/FontPngs/monaco32_1.png", "Data/FontPngs/monaco32_2.png")
loadFont("Data/FontPngs/crosshairs32_1.png", "Data/FontPngs/crosshairs32_2.png")
setCameraInfo(IG3D_POSITION, 500.0, 100, -500.0)
setCameraInfo(IG3D_ROTATION, 63.333374, -78.208923, 17.004272)
gObjects={}
gNumObjects=39
gObjects[1]={}
gObjects[1].cObj=make(ig3d_object, "avatarp1.wtf")
setObjectInfo(gObjects[1].cObj, IG3D_NAME, "ship")
setObjectInfo(gObjects[1].cObj, IG3D_POSITION, 500.0, 100, -500.0)
setObjectInfo(gObjects[1].cObj, IG3D_ROTATION, 0, 0, 0)
setObjectInfo(gObjects[1].cObj, IG3D_SIZE, 100.000000,100.000000,100.000000)
gObjects[2]={}
gObjects[2].cObj=make(ig3d_object, "airfrigatep1.wtf")
setObjectInfo(gObjects[2].cObj, IG3D_NAME, "EnemyMothership")
setObjectInfo(gObjects[2].cObj, IG3D_POSITION, -0, 650, -0)
setObjectInfo(gObjects[2].cObj, IG3D_ROTATION, 0.000000, 0.000000, 0.000000)
setObjectInfo(gObjects[2].cObj, IG3D_SIZE, 100.00,100.00,100.00)--800
gObjects[3]={}
gObjects[3].cObj=make(ig3d_object, "powerup.wtf")
setObjectInfo(gObjects[3].cObj, IG3D_NAME, "StrafingPowerUp")
setObjectInfo(gObjects[3].cObj, IG3D_POSITION, 0, -10000, 0.000000)
setObjectInfo(gObjects[3].cObj, IG3D_ROTATION, 0.000000, 0.000000, 0.000000)
setObjectInfo(gObjects[3].cObj, IG3D_SIZE, 100.000000,100.000000,100.000000)
gObjects[4]={}
gObjects[4].cObj=make(ig3d_object, "waterplane.wtf")
setObjectInfo(gObjects[4].cObj, IG3D_NAME, "water")
setObjectInfo(gObjects[4].cObj, IG3D_POSITION, 0, 0, 0.000000)
setObjectInfo(gObjects[4].cObj, IG3D_ROTATION, 0.000000, 0.000000, 0.000000)
setObjectInfo(gObjects[4].cObj, IG3D_SIZE, 8000.000000,8000.000000,8000.000000)
gObjects[5]={}
gObjects[5].cObj=make(ig3d_object, "avatarp1a.wtf")
setObjectInfo(gObjects[5].cObj, IG3D_NAME, "Friend1")
setObjectInfo(gObjects[5].cObj, IG3D_POSITION, 490.0, 100.0, -490.0)
setObjectInfo(gObjects[5].cObj, IG3D_ROTATION, 0.000000, 0.000000, 0.000000)
setObjectInfo(gObjects[5].cObj, IG3D_SIZE, 100.000000,100.000000,100.000000)
gObjects[6]={}
gObjects[6].cObj=make(ig3d_object, "avatarp1a.wtf")
setObjectInfo(gObjects[6].cObj, IG3D_NAME, "Friend2")
setObjectInfo(gObjects[6].cObj, IG3D_POSITION, 510.0, 100.0, -490.0)
setObjectInfo(gObjects[6].cObj, IG3D_ROTATION, 0.000000, 0.000000, 0.000000)
setObjectInfo(gObjects[6].cObj, IG3D_SIZE, 100.000000,100.000000,100.000000)
gObjects[7]={}
gObjects[7].cObj=make(ig3d_object, "afterburner.wtf")
setObjectInfo(gObjects[7].cObj, IG3D_NAME, "PlayerAfterburner")
setObjectInfo(gObjects[7].cObj, IG3D_POSITION, -2100, -250, -1000)
setObjectInfo(gObjects[7].cObj, IG3D_ROTATION, 0.000000, 0.000000, 0.000000)
setObjectInfo(gObjects[7].cObj, IG3D_SIZE, 100.00, 100.00, 100.00)
gObjects[8]={}
gObjects[8].cObj=make(ig3d_object, "enemyfighter.wtf")
setObjectInfo(gObjects[8].cObj, IG3D_NAME, "enemy1")
setObjectInfo(gObjects[8].cObj, IG3D_POSITION, 0.000000, 333.984467, -88.000000)
setObjectInfo(gObjects[8].cObj, IG3D_ROTATION, 180.000000, 175.000000, 180.000000)
setObjectInfo(gObjects[8].cObj, IG3D_SIZE, 100.000000,100.000000,100.000000)
gObjects[9]={}
gObjects[9].cObj=make(ig3d_object, "enemyfighter.wtf")
setObjectInfo(gObjects[9].cObj, IG3D_NAME, "enemy2")
setObjectInfo(gObjects[9].cObj, IG3D_POSITION, -100.000000, 333.984467, -88.000000)
setObjectInfo(gObjects[9].cObj, IG3D_ROTATION, 180.000000, 175.000000, 180.000000)
setObjectInfo(gObjects[9].cObj, IG3D_SIZE, 100.000000,100.000000,100.000000)
gObjects[10]={}
gObjects[10].cObj=make(ig3d_object, "enemyfighter.wtf")
setObjectInfo(gObjects[10].cObj, IG3D_NAME, "enemy3")
setObjectInfo(gObjects[10].cObj, IG3D_POSITION, 0.000000, 200.984467, -88.000000)
setObjectInfo(gObjects[10].cObj, IG3D_ROTATION, 180.000000, 175.000000, 180.000000)
setObjectInfo(gObjects[10].cObj, IG3D_SIZE, 100.000000,100.000000,100.000000)
gObjects[11]={}
gObjects[11].cObj=make(ig3d_object, "enemyfighter.wtf")
setObjectInfo(gObjects[11].cObj, IG3D_NAME, "enemy4")
setObjectInfo(gObjects[11].cObj, IG3D_POSITION, 100.000000, 250.0, -88.000000)
setObjectInfo(gObjects[11].cObj, IG3D_ROTATION, 180.000000, 175.000000, 180.000000)
setObjectInfo(gObjects[11].cObj, IG3D_SIZE, 100.000000,100.000000,100.000000)
gObjects[12]={}
gObjects[12].cObj=make(ig3d_object, "enemyfighter.wtf")
setObjectInfo(gObjects[12].cObj, IG3D_NAME, "enemy5")
setObjectInfo(gObjects[12].cObj, IG3D_POSITION, -10, 100, 1500)
setObjectInfo(gObjects[12].cObj, IG3D_ROTATION, 0.000000, 100.000000, 0.000000)
setObjectInfo(gObjects[12].cObj, IG3D_SIZE, 100.000000,100.000000,100.000000)
gObjects[13]={}
gObjects[13].cObj=make(ig3d_object, "enemyfighter.wtf")
setObjectInfo(gObjects[13].cObj, IG3D_NAME, "enemy6")
setObjectInfo(gObjects[13].cObj, IG3D_POSITION, -5, 100, 2000)
setObjectInfo(gObjects[13].cObj, IG3D_ROTATION, 0.000000, 100.000000, 0.000000)
setObjectInfo(gObjects[13].cObj, IG3D_SIZE, 100.000000,100.000000,100.000000)
gObjects[14]={}
gObjects[14].cObj=make(ig3d_object, "enemyfighter.wtf")
setObjectInfo(gObjects[14].cObj, IG3D_NAME, "enemy7")
setObjectInfo(gObjects[14].cObj, IG3D_POSITION, 0, 118.884407, 1800)
setObjectInfo(gObjects[14].cObj, IG3D_ROTATION, 0.000000, 100.000000, 0.000000)
setObjectInfo(gObjects[14].cObj, IG3D_SIZE, 100.000000,100.000000,100.000000)
gObjects[15]={}
gObjects[15].cObj=make(ig3d_object, "enemyfighter.wtf")
setObjectInfo(gObjects[15].cObj, IG3D_NAME, "enemy8")
setObjectInfo(gObjects[15].cObj, IG3D_POSITION, 5, 118.884407, 2050)
setObjectInfo(gObjects[15].cObj, IG3D_ROTATION, 0.000000, 100.000000, 0.000000)
setObjectInfo(gObjects[15].cObj, IG3D_SIZE, 100.000000,100.000000,100.000000)
gObjects[16]={}
gObjects[16].cObj=make(ig3d_object, "enemyfighter.wtf")
setObjectInfo(gObjects[16].cObj, IG3D_NAME, "enemy9")
setObjectInfo(gObjects[16].cObj, IG3D_POSITION, 0.000000, 400, -1000)
setObjectInfo(gObjects[16].cObj, IG3D_ROTATION, 180.000000, 175.000000, 180.000000)
setObjectInfo(gObjects[16].cObj, IG3D_SIZE, 100.000000,100.000000,100.000000)
gObjects[17]={}
gObjects[17].cObj=make(ig3d_object, "enemyfighter.wtf")
setObjectInfo(gObjects[17].cObj, IG3D_NAME, "enemy10")
setObjectInfo(gObjects[17].cObj, IG3D_POSITION, -20.000000, 333.984467, -900.000000)
setObjectInfo(gObjects[17].cObj, IG3D_ROTATION, 180.000000, 175.000000, 180.000000)
setObjectInfo(gObjects[17].cObj, IG3D_SIZE, 100.000000,100.000000,100.000000)
gObjects[18]={}
gObjects[18].cObj=make(ig3d_object, "enemyfighter.wtf")
setObjectInfo(gObjects[18].cObj, IG3D_NAME, "enemy11")
setObjectInfo(gObjects[18].cObj, IG3D_POSITION, 50.000000, 290, -1050.000000)
setObjectInfo(gObjects[18].cObj, IG3D_ROTATION, 180.000000, 175.000000, 180.000000)
setObjectInfo(gObjects[18].cObj, IG3D_SIZE, 100.000000,100.000000,100.000000)
gObjects[19]={}
gObjects[19].cObj=make(ig3d_object, "enemyfighter.wtf")
setObjectInfo(gObjects[19].cObj, IG3D_NAME, "enemy12")
setObjectInfo(gObjects[19].cObj, IG3D_POSITION, 100.000000, 250.0, -800.000000)
setObjectInfo(gObjects[19].cObj, IG3D_ROTATION, 180.000000, 175.000000, 180.000000)
setObjectInfo(gObjects[19].cObj, IG3D_SIZE, 100.000000,100.000000,100.000000)
gObjects[20]={}
gObjects[20].cObj=make(ig3d_object, "enemyfighter.wtf")
setObjectInfo(gObjects[20].cObj, IG3D_NAME, "enemy13")
setObjectInfo(gObjects[20].cObj, IG3D_POSITION, -122.599998, 118.884407, -500.000000)
setObjectInfo(gObjects[20].cObj, IG3D_ROTATION, 0.000000, 100.000000, 0.000000)
setObjectInfo(gObjects[20].cObj, IG3D_SIZE, 100.000000,100.000000,100.000000)
gObjects[21]={}
gObjects[21].cObj=make(ig3d_object, "enemyfighter.wtf")
setObjectInfo(gObjects[21].cObj, IG3D_NAME, "enemy14")
setObjectInfo(gObjects[21].cObj, IG3D_POSITION, -1.599998, 118.884407, 650.000000)
setObjectInfo(gObjects[21].cObj, IG3D_ROTATION, 0.000000, 100.000000, 0.000000)
setObjectInfo(gObjects[21].cObj, IG3D_SIZE, 100.000000,100.000000,100.000000)
gObjects[22]={}
gObjects[22].cObj=make(ig3d_object, "enemyfighter.wtf")
setObjectInfo(gObjects[22].cObj, IG3D_NAME, "enemy15")
setObjectInfo(gObjects[22].cObj, IG3D_POSITION, -800, 50, 80.000000)
setObjectInfo(gObjects[22].cObj, IG3D_ROTATION, 0.000000, 100.000000, 0.000000)
setObjectInfo(gObjects[22].cObj, IG3D_SIZE, 100.000000,100.000000,100.000000)
gObjects[23]={}
gObjects[23].cObj=make(ig3d_object, "enemyfighter.wtf")
setObjectInfo(gObjects[23].cObj, IG3D_NAME, "enemy16")
setObjectInfo(gObjects[23].cObj, IG3D_POSITION, -700.599998, 190, 0.000000)
setObjectInfo(gObjects[23].cObj, IG3D_ROTATION, 0.000000, 100.000000, 0.000000)
setObjectInfo(gObjects[23].cObj, IG3D_SIZE, 100.000000,100.000000,100.000000)
gObjects[24]={}
gObjects[24].cObj=make(ig3d_object, "afterburner.wtf")
setObjectInfo(gObjects[24].cObj, IG3D_NAME, "afterburner1")
setObjectInfo(gObjects[24].cObj, IG3D_POSITION, -700.599998, 190, 0.000000)
setObjectInfo(gObjects[24].cObj, IG3D_ROTATION, 0.000000, 100.000000, 0.000000)
setObjectInfo(gObjects[24].cObj, IG3D_SIZE, 100.000000,100.000000,100.000000)
gObjects[25]={}
gObjects[25].cObj=make(ig3d_object, "afterburner.wtf")
setObjectInfo(gObjects[25].cObj, IG3D_NAME, "afterburner2")
setObjectInfo(gObjects[25].cObj, IG3D_POSITION, -700.599998, 190, 0.000000)
setObjectInfo(gObjects[25].cObj, IG3D_ROTATION, 0.000000, 100.000000, 0.000000)
setObjectInfo(gObjects[25].cObj, IG3D_SIZE, 100.000000,100.000000,100.000000)
gObjects[26]={}
gObjects[26].cObj=make(ig3d_object, "afterburner.wtf")
setObjectInfo(gObjects[26].cObj, IG3D_NAME, "afterburner3")
setObjectInfo(gObjects[26].cObj, IG3D_POSITION, -700.599998, 190, 0.000000)
setObjectInfo(gObjects[26].cObj, IG3D_ROTATION, 0.000000, 100.000000, 0.000000)
setObjectInfo(gObjects[26].cObj, IG3D_SIZE, 100.000000,100.000000,100.000000)
gObjects[27]={}
gObjects[27].cObj=make(ig3d_object, "afterburner.wtf")
setObjectInfo(gObjects[27].cObj, IG3D_NAME, "afterburner4")
setObjectInfo(gObjects[27].cObj, IG3D_POSITION, -700.599998, 190, 0.000000)
setObjectInfo(gObjects[27].cObj, IG3D_ROTATION, 0.000000, 100.000000, 0.000000)
setObjectInfo(gObjects[27].cObj, IG3D_SIZE, 100.000000,100.000000,100.000000)
gObjects[28]={}
gObjects[28].cObj=make(ig3d_object, "afterburner.wtf")
setObjectInfo(gObjects[28].cObj, IG3D_NAME, "afterburner5")
setObjectInfo(gObjects[28].cObj, IG3D_POSITION, -700.599998, 190, 0.000000)
setObjectInfo(gObjects[28].cObj, IG3D_ROTATION, 0.000000, 100.000000, 0.000000)
setObjectInfo(gObjects[28].cObj, IG3D_SIZE, 100.000000,100.000000,100.000000)
gObjects[29]={}
gObjects[29].cObj=make(ig3d_object, "afterburner.wtf")
setObjectInfo(gObjects[29].cObj, IG3D_NAME, "afterburner6")
setObjectInfo(gObjects[29].cObj, IG3D_POSITION, -700.599998, 190, 0.000000)
setObjectInfo(gObjects[29].cObj, IG3D_ROTATION, 0.000000, 100.000000, 0.000000)
setObjectInfo(gObjects[29].cObj, IG3D_SIZE, 100.000000,100.000000,100.000000)
gObjects[30]={}
gObjects[30].cObj=make(ig3d_object, "afterburner.wtf")
setObjectInfo(gObjects[30].cObj, IG3D_NAME, "afterburner7")
setObjectInfo(gObjects[30].cObj, IG3D_POSITION, -700.599998, 190, 0.000000)
setObjectInfo(gObjects[30].cObj, IG3D_ROTATION, 0.000000, 100.000000, 0.000000)
setObjectInfo(gObjects[30].cObj, IG3D_SIZE, 100.000000,100.000000,100.000000)
gObjects[31]={}
gObjects[31].cObj=make(ig3d_object, "afterburner.wtf")
setObjectInfo(gObjects[31].cObj, IG3D_NAME, "afterburner8")
setObjectInfo(gObjects[31].cObj, IG3D_POSITION, -700.599998, 190, 0.000000)
setObjectInfo(gObjects[31].cObj, IG3D_ROTATION, 0.000000, 100.000000, 0.000000)
setObjectInfo(gObjects[31].cObj, IG3D_SIZE, 100.000000,100.000000,100.000000)
gObjects[32]={}
gObjects[32].cObj=make(ig3d_object, "afterburner.wtf")
setObjectInfo(gObjects[32].cObj, IG3D_NAME, "afterburner9")
setObjectInfo(gObjects[32].cObj, IG3D_POSITION, -700.599998, 190, 0.000000)
setObjectInfo(gObjects[32].cObj, IG3D_ROTATION, 0.000000, 100.000000, 0.000000)
setObjectInfo(gObjects[32].cObj, IG3D_SIZE, 100.000000,100.000000,100.000000)
gObjects[33]={}
gObjects[33].cObj=make(ig3d_object, "afterburner.wtf")
setObjectInfo(gObjects[33].cObj, IG3D_NAME, "afterburner10")
setObjectInfo(gObjects[33].cObj, IG3D_POSITION, -700.599998, 190, 0.000000)
setObjectInfo(gObjects[33].cObj, IG3D_ROTATION, 0.000000, 100.000000, 0.000000)
setObjectInfo(gObjects[33].cObj, IG3D_SIZE, 100.000000,100.000000,100.000000)
gObjects[34]={}
gObjects[34].cObj=make(ig3d_object, "afterburner.wtf")
setObjectInfo(gObjects[34].cObj, IG3D_NAME, "afterburner11")
setObjectInfo(gObjects[34].cObj, IG3D_POSITION, -700.599998, 190, 0.000000)
setObjectInfo(gObjects[34].cObj, IG3D_ROTATION, 0.000000, 100.000000, 0.000000)
setObjectInfo(gObjects[34].cObj, IG3D_SIZE, 100.000000,100.000000,100.000000)
gObjects[35]={}
gObjects[35].cObj=make(ig3d_object, "afterburner.wtf")
setObjectInfo(gObjects[35].cObj, IG3D_NAME, "afterburner12")
setObjectInfo(gObjects[35].cObj, IG3D_POSITION, -700.599998, 190, 0.000000)
setObjectInfo(gObjects[35].cObj, IG3D_ROTATION, 0.000000, 100.000000, 0.000000)
setObjectInfo(gObjects[35].cObj, IG3D_SIZE, 100.000000,100.000000,100.000000)
gObjects[36]={}
gObjects[36].cObj=make(ig3d_object, "afterburner.wtf")
setObjectInfo(gObjects[36].cObj, IG3D_NAME, "afterburner13")
setObjectInfo(gObjects[36].cObj, IG3D_POSITION, -700.599998, 190, 0.000000)
setObjectInfo(gObjects[36].cObj, IG3D_ROTATION, 0.000000, 100.000000, 0.000000)
setObjectInfo(gObjects[36].cObj, IG3D_SIZE, 100.000000,100.000000,100.000000)
gObjects[37]={}
gObjects[37].cObj=make(ig3d_object, "afterburner.wtf")
setObjectInfo(gObjects[37].cObj, IG3D_NAME, "afterburner14")
setObjectInfo(gObjects[37].cObj, IG3D_POSITION, -700.599998, 190, 0.000000)
setObjectInfo(gObjects[37].cObj, IG3D_ROTATION, 0.000000, 100.000000, 0.000000)
setObjectInfo(gObjects[37].cObj, IG3D_SIZE, 100.000000,100.000000,100.000000)
gObjects[38]={}
gObjects[38].cObj=make(ig3d_object, "afterburner.wtf")
setObjectInfo(gObjects[38].cObj, IG3D_NAME, "afterburner15")
setObjectInfo(gObjects[38].cObj, IG3D_POSITION, -700.599998, 190, 0.000000)
setObjectInfo(gObjects[38].cObj, IG3D_ROTATION, 0.000000, 100.000000, 0.000000)
setObjectInfo(gObjects[38].cObj, IG3D_SIZE, 100.000000,100.000000,100.000000)
gObjects[39]={}
gObjects[39].cObj=make(ig3d_object, "afterburner.wtf")
setObjectInfo(gObjects[39].cObj, IG3D_NAME, "afterburner16")
setObjectInfo(gObjects[39].cObj, IG3D_POSITION, -700.599998, 190, 0.000000)
setObjectInfo(gObjects[39].cObj, IG3D_ROTATION, 0.000000, 100.000000, 0.000000)
setObjectInfo(gObjects[39].cObj, IG3D_SIZE, 100.000000,100.000000,100.000000)
gParticleEmitters={}
gNumParticleEmitters=48
gParticleEmitters[1]=make(ig3d_particle_emitter, "BoardGun","Data/emitters/tracer.emt")
setParticle_emitterInfo(gParticleEmitters[1], IG3D_POSITION, 0.000000,0.000000,0.000000)
setParticle_emitterInfo(gParticleEmitters[1], IG3D_ROTATION, 0.000000,0.000000,0.000000)
gParticleEmitters[2]=make(ig3d_particle_emitter, "Fire","Data/emitters/explosion.emt")
setParticle_emitterInfo(gParticleEmitters[2], IG3D_POSITION, 0.000000,0.000000,0.000000)
setParticle_emitterInfo(gParticleEmitters[2], IG3D_ROTATION, 0.000000,0.000000,0.000000)
gParticleEmitters[3]=make(ig3d_particle_emitter, "PlayerShrabnel","Data/emitters/playerexplode.emt")
setParticle_emitterInfo(gParticleEmitters[3], IG3D_POSITION, 0.000000,0.000000,0.000000)
setParticle_emitterInfo(gParticleEmitters[3], IG3D_ROTATION, 0.000000,0.000000,0.000000)
gParticleEmitters[4]=make(ig3d_particle_emitter, "BiggerFire","Data/emitters/fire.emt")
setParticle_emitterInfo(gParticleEmitters[4], IG3D_POSITION, 0.000000,0.000000,0.000000)
setParticle_emitterInfo(gParticleEmitters[4], IG3D_ROTATION, 0.000000,0.000000,0.000000)
gParticleEmitters[5]=make(ig3d_particle_emitter, "FighterShrabnel","Data/emitters/fighterexplode.emt")
setParticle_emitterInfo(gParticleEmitters[5], IG3D_POSITION, 0.000000,0.000000,0.000000)
setParticle_emitterInfo(gParticleEmitters[5], IG3D_ROTATION, 0.000000,0.000000,0.000000)
gParticleEmitters[6]=make(ig3d_particle_emitter, "Smoke","Data/emitters/smoke.emt")
setParticle_emitterInfo(gParticleEmitters[6], IG3D_POSITION, 0.000000,0.000000,0.000000)
setParticle_emitterInfo(gParticleEmitters[6], IG3D_ROTATION, 0.000000,0.000000,0.000000)
gParticleEmitters[7]=make(ig3d_particle_emitter, "Splash","Data/emitters/seasplash.emt")
setParticle_emitterInfo(gParticleEmitters[7], IG3D_POSITION, 0.000000,0.000000,0.000000)
setParticle_emitterInfo(gParticleEmitters[7], IG3D_ROTATION, -90.000000,0.000000,0.000000)
gParticleEmitters[8]=make(ig3d_particle_emitter, "Clouds","Data/emitters/cloud.emt")
setParticle_emitterInfo(gParticleEmitters[8], IG3D_POSITION, 0.000000,250.000000,0.000000)
setParticle_emitterInfo(gParticleEmitters[8], IG3D_ROTATION, 0.000000,0.000000,0.000000)
gParticleEmitters[9]=make(ig3d_particle_emitter, "FriendShrabnel","Data/emitters/friendexplode.emt")
setParticle_emitterInfo(gParticleEmitters[9], IG3D_POSITION, 0.000000,0.000000,0.000000)
setParticle_emitterInfo(gParticleEmitters[9], IG3D_ROTATION, 0.000000,0.000000,0.000000)
gParticleEmitters[10]=make(ig3d_particle_emitter, "FriendGun1","Data/emitters/tracer.emt")
setParticle_emitterInfo(gParticleEmitters[10], IG3D_POSITION, 0.000000,0.000000,0.000000)
setParticle_emitterInfo(gParticleEmitters[10], IG3D_ROTATION, 0.000000,0.000000,0.000000)
gParticleEmitters[11]=make(ig3d_particle_emitter, "FriendGun2","Data/emitters/tracer.emt")
setParticle_emitterInfo(gParticleEmitters[11], IG3D_POSITION, 0.000000,0.000000,0.000000)
setParticle_emitterInfo(gParticleEmitters[11], IG3D_ROTATION, 0.000000,0.000000,0.000000)
gParticleEmitters[12]=make(ig3d_particle_emitter, "LittleSplash","Data/emitters/lilsplash.emt")
setParticle_emitterInfo(gParticleEmitters[12], IG3D_POSITION, 0.000000,0.000000,0.000000)
setParticle_emitterInfo(gParticleEmitters[12], IG3D_ROTATION, -90.000000,0.000000,0.000000)
gParticleEmitters[13]=make(ig3d_particle_emitter, "Atomic","Data/emitters/atomic.emt")
setParticle_emitterInfo(gParticleEmitters[13], IG3D_POSITION, 0.000000,0.000000,0.000000)
setParticle_emitterInfo(gParticleEmitters[13], IG3D_ROTATION, -90.000000,0.000000,0.000000)
gParticleEmitters[14]=make(ig3d_particle_emitter, "Atomic2","Data/emitters/atomic2.emt")
setParticle_emitterInfo(gParticleEmitters[14], IG3D_POSITION, 0.000000,20.000000,0.000000)
setParticle_emitterInfo(gParticleEmitters[14], IG3D_ROTATION, -90.000000,0.000000,0.000000)
gParticleEmitters[15]=make(ig3d_particle_emitter, "abomb","Data/emitters/abomb.emt")
setParticle_emitterInfo(gParticleEmitters[15], IG3D_POSITION, 0.000000,0.000000,0.000000)
setParticle_emitterInfo(gParticleEmitters[15], IG3D_ROTATION, 90.000000,0.000000,0.000000)
gParticleEmitters[16]=make(ig3d_particle_emitter, "MotherEngine","Data/emitters/engine.emt")
setParticle_emitterInfo(gParticleEmitters[16], IG3D_POSITION, 0.000000,0.000000,0.000000)
setParticle_emitterInfo(gParticleEmitters[16], IG3D_ROTATION, 0.000000,0.000000,0.000000)
gParticleEmitters[17]=make(ig3d_particle_emitter, "EnemyGun1","Data/emitters/tracer.emt")
setParticle_emitterInfo(gParticleEmitters[17], IG3D_POSITION, 0.000000,0.000000,0.000000)
setParticle_emitterInfo(gParticleEmitters[17], IG3D_ROTATION, 0.000000,0.000000,0.000000)
gParticleEmitters[18]=make(ig3d_particle_emitter, "EnemyGun2","Data/emitters/tracer.emt")
setParticle_emitterInfo(gParticleEmitters[18], IG3D_POSITION, 0.000000,0.000000,0.000000)
setParticle_emitterInfo(gParticleEmitters[18], IG3D_ROTATION, 0.000000,0.000000,0.000000)
gParticleEmitters[19]=make(ig3d_particle_emitter, "EnemyGun3","Data/emitters/tracer.emt")
setParticle_emitterInfo(gParticleEmitters[19], IG3D_POSITION, 0.000000,0.000000,0.000000)
setParticle_emitterInfo(gParticleEmitters[19], IG3D_ROTATION, 0.000000,0.000000,0.000000)
gParticleEmitters[20]=make(ig3d_particle_emitter, "EnemyGun4","Data/emitters/tracer.emt")
setParticle_emitterInfo(gParticleEmitters[20], IG3D_POSITION, 0.000000,0.000000,0.000000)
setParticle_emitterInfo(gParticleEmitters[20], IG3D_ROTATION, 0.000000,0.000000,0.000000)
gParticleEmitters[21]=make(ig3d_particle_emitter, "EnemyGun5","Data/emitters/tracer.emt")
setParticle_emitterInfo(gParticleEmitters[21], IG3D_POSITION, 0.000000,0.000000,0.000000)
setParticle_emitterInfo(gParticleEmitters[21], IG3D_ROTATION, 0.000000,0.000000,0.000000)
gParticleEmitters[22]=make(ig3d_particle_emitter, "EnemyGun6","Data/emitters/tracer.emt")
setParticle_emitterInfo(gParticleEmitters[22], IG3D_POSITION, 0.000000,0.000000,0.000000)
setParticle_emitterInfo(gParticleEmitters[22], IG3D_ROTATION, 0.000000,0.000000,0.000000)
gParticleEmitters[23]=make(ig3d_particle_emitter, "EnemyGun7","Data/emitters/tracer.emt")
setParticle_emitterInfo(gParticleEmitters[23], IG3D_POSITION, 0.000000,0.000000,0.000000)
setParticle_emitterInfo(gParticleEmitters[23], IG3D_ROTATION, 0.000000,0.000000,0.000000)
gParticleEmitters[24]=make(ig3d_particle_emitter, "EnemyGun8","Data/emitters/tracer.emt")
setParticle_emitterInfo(gParticleEmitters[24], IG3D_POSITION, 0.000000,0.000000,0.000000)
setParticle_emitterInfo(gParticleEmitters[24], IG3D_ROTATION, 0.000000,0.000000,0.000000)
gParticleEmitters[25]=make(ig3d_particle_emitter, "EnemyGun9","Data/emitters/tracer.emt")
setParticle_emitterInfo(gParticleEmitters[25], IG3D_POSITION, 0.000000,0.000000,0.000000)
setParticle_emitterInfo(gParticleEmitters[25], IG3D_ROTATION, 0.000000,0.000000,0.000000)
gParticleEmitters[26]=make(ig3d_particle_emitter, "EnemyGun10","Data/emitters/tracer.emt")
setParticle_emitterInfo(gParticleEmitters[26], IG3D_POSITION, 0.000000,0.000000,0.000000)
setParticle_emitterInfo(gParticleEmitters[26], IG3D_ROTATION, 0.000000,0.000000,0.000000)
gParticleEmitters[27]=make(ig3d_particle_emitter, "EnemyGun11","Data/emitters/tracer.emt")
setParticle_emitterInfo(gParticleEmitters[27], IG3D_POSITION, 0.000000,0.000000,0.000000)
setParticle_emitterInfo(gParticleEmitters[27], IG3D_ROTATION, 0.000000,0.000000,0.000000)
gParticleEmitters[28]=make(ig3d_particle_emitter, "EnemyGun12","Data/emitters/tracer.emt")
setParticle_emitterInfo(gParticleEmitters[28], IG3D_POSITION, 0.000000,0.000000,0.000000)
setParticle_emitterInfo(gParticleEmitters[28], IG3D_ROTATION, 0.000000,0.000000,0.000000)
gParticleEmitters[29]=make(ig3d_particle_emitter, "EnemyGun13","Data/emitters/tracer.emt")
setParticle_emitterInfo(gParticleEmitters[29], IG3D_POSITION, 0.000000,0.000000,0.000000)
setParticle_emitterInfo(gParticleEmitters[29], IG3D_ROTATION, 0.000000,0.000000,0.000000)
gParticleEmitters[30]=make(ig3d_particle_emitter, "EnemyGun14","Data/emitters/tracer.emt")
setParticle_emitterInfo(gParticleEmitters[30], IG3D_POSITION, 0.000000,0.000000,0.000000)
setParticle_emitterInfo(gParticleEmitters[30], IG3D_ROTATION, 0.000000,0.000000,0.000000)
gParticleEmitters[31]=make(ig3d_particle_emitter, "EnemyGun15","Data/emitters/tracer.emt")
setParticle_emitterInfo(gParticleEmitters[31], IG3D_POSITION, 0.000000,0.000000,0.000000)
setParticle_emitterInfo(gParticleEmitters[31], IG3D_ROTATION, 0.000000,0.000000,0.000000)
gParticleEmitters[32]=make(ig3d_particle_emitter, "EnemyGun16","Data/emitters/tracer.emt")
setParticle_emitterInfo(gParticleEmitters[32], IG3D_POSITION, 0.000000,0.000000,0.000000)
setParticle_emitterInfo(gParticleEmitters[32], IG3D_ROTATION, 0.000000,0.000000,0.000000)
gParticleEmitters[33]=make(ig3d_particle_emitter, "EnemyTracer16","Data/emitters/tracer.emt")
setParticle_emitterInfo(gParticleEmitters[33], IG3D_POSITION, 0.000000,0.000000,0.000000)
setParticle_emitterInfo(gParticleEmitters[33], IG3D_ROTATION, 0.000000,0.000000,0.000000)
gParticleEmitters[34]=make(ig3d_particle_emitter, "EnemyTracer1","Data/emitters/tracer.emt")
setParticle_emitterInfo(gParticleEmitters[34], IG3D_POSITION, 0.000000,0.000000,0.000000)
setParticle_emitterInfo(gParticleEmitters[34], IG3D_ROTATION, 0.000000,0.000000,0.000000)
gParticleEmitters[35]=make(ig3d_particle_emitter, "EnemyTracer2","Data/emitters/tracer.emt")
setParticle_emitterInfo(gParticleEmitters[35], IG3D_POSITION, 0.000000,0.000000,0.000000)
setParticle_emitterInfo(gParticleEmitters[35], IG3D_ROTATION, 0.000000,0.000000,0.000000)
gParticleEmitters[36]=make(ig3d_particle_emitter, "EnemyTracer3","Data/emitters/tracer.emt")
setParticle_emitterInfo(gParticleEmitters[36], IG3D_POSITION, 0.000000,0.000000,0.000000)
setParticle_emitterInfo(gParticleEmitters[36], IG3D_ROTATION, 0.000000,0.000000,0.000000)
gParticleEmitters[37]=make(ig3d_particle_emitter, "EnemyTracer4","Data/emitters/tracer.emt")
setParticle_emitterInfo(gParticleEmitters[37], IG3D_POSITION, 0.000000,0.000000,0.000000)
setParticle_emitterInfo(gParticleEmitters[37], IG3D_ROTATION, 0.000000,0.000000,0.000000)
gParticleEmitters[38]=make(ig3d_particle_emitter, "EnemyTracer5","Data/emitters/tracer.emt")
setParticle_emitterInfo(gParticleEmitters[38], IG3D_POSITION, 0.000000,0.000000,0.000000)
setParticle_emitterInfo(gParticleEmitters[38], IG3D_ROTATION, 0.000000,0.000000,0.000000)
gParticleEmitters[39]=make(ig3d_particle_emitter, "EnemyTracer6","Data/emitters/tracer.emt")
setParticle_emitterInfo(gParticleEmitters[39], IG3D_POSITION, 0.000000,0.000000,0.000000)
setParticle_emitterInfo(gParticleEmitters[39], IG3D_ROTATION, 0.000000,0.000000,0.000000)
gParticleEmitters[40]=make(ig3d_particle_emitter, "EnemyTracer7","Data/emitters/tracer.emt")
setParticle_emitterInfo(gParticleEmitters[40], IG3D_POSITION, 0.000000,0.000000,0.000000)
setParticle_emitterInfo(gParticleEmitters[40], IG3D_ROTATION, 0.000000,0.000000,0.000000)
gParticleEmitters[41]=make(ig3d_particle_emitter, "EnemyTracer8","Data/emitters/tracer.emt")
setParticle_emitterInfo(gParticleEmitters[41], IG3D_POSITION, 0.000000,0.000000,0.000000)
setParticle_emitterInfo(gParticleEmitters[41], IG3D_ROTATION, 0.000000,0.000000,0.000000)
gParticleEmitters[42]=make(ig3d_particle_emitter, "EnemyTracer9","Data/emitters/tracer.emt")
setParticle_emitterInfo(gParticleEmitters[42], IG3D_POSITION, 0.000000,0.000000,0.000000)
setParticle_emitterInfo(gParticleEmitters[42], IG3D_ROTATION, 0.000000,0.000000,0.000000)
gParticleEmitters[43]=make(ig3d_particle_emitter, "EnemyTracer10","Data/emitters/tracer.emt")
setParticle_emitterInfo(gParticleEmitters[43], IG3D_POSITION, 0.000000,0.000000,0.000000)
setParticle_emitterInfo(gParticleEmitters[43], IG3D_ROTATION, 0.000000,0.000000,0.000000)
gParticleEmitters[44]=make(ig3d_particle_emitter, "EnemyTracer11","Data/emitters/tracer.emt")
setParticle_emitterInfo(gParticleEmitters[44], IG3D_POSITION, 0.000000,0.000000,0.000000)
setParticle_emitterInfo(gParticleEmitters[44], IG3D_ROTATION, 0.000000,0.000000,0.000000)
gParticleEmitters[45]=make(ig3d_particle_emitter, "EnemyTracer12","Data/emitters/tracer.emt")
setParticle_emitterInfo(gParticleEmitters[45], IG3D_POSITION, 0.000000,0.000000,0.000000)
setParticle_emitterInfo(gParticleEmitters[45], IG3D_ROTATION, 0.000000,0.000000,0.000000)
gParticleEmitters[46]=make(ig3d_particle_emitter, "EnemyTracer13","Data/emitters/tracer.emt")
setParticle_emitterInfo(gParticleEmitters[46], IG3D_POSITION, 0.000000,0.000000,0.000000)
setParticle_emitterInfo(gParticleEmitters[46], IG3D_ROTATION, 0.000000,0.000000,0.000000)
gParticleEmitters[47]=make(ig3d_particle_emitter, "EnemyTracer14","Data/emitters/tracer.emt")
setParticle_emitterInfo(gParticleEmitters[47], IG3D_POSITION, 0.000000,0.000000,0.000000)
setParticle_emitterInfo(gParticleEmitters[47], IG3D_ROTATION, 0.000000,0.000000,0.000000)
gParticleEmitters[48]=make(ig3d_particle_emitter, "EnemyTracer15","Data/emitters/tracer.emt")
setParticle_emitterInfo(gParticleEmitters[48], IG3D_POSITION, 0.000000,0.000000,0.000000)
setParticle_emitterInfo(gParticleEmitters[48], IG3D_ROTATION, 0.000000,0.000000,0.000000)
gSoundEmitters={}
gSoundEmitters[1]=make(ig3d_sound_emitter, "Snd1")
setSound_emitterInfo(gSoundEmitters[1], IG3D_POSITION, 0.000000, 0.000000, 0.000000)
gSoundEmitters[2]=make(ig3d_sound_emitter, "Engine")
setSound_emitterInfo(gSoundEmitters[2], IG3D_POSITION, 0.000000, 0.000000, 0.000000)
gSoundEmitters[3]=make(ig3d_sound_emitter, "friend1")
setSound_emitterInfo(gSoundEmitters[3], IG3D_POSITION, 0.000000, 0.000000, 0.000000)
gSoundEmitters[4]=make(ig3d_sound_emitter, "friend2")
setSound_emitterInfo(gSoundEmitters[4], IG3D_POSITION, 0.000000, 0.000000, 0.000000)
gSoundEmitters[5]=make(ig3d_sound_emitter, "enemy1")
setSound_emitterInfo(gSoundEmitters[5], IG3D_POSITION, 0.000000, 0.000000, 0.000000)
gSoundEmitters[6]=make(ig3d_sound_emitter, "enemy2")
setSound_emitterInfo(gSoundEmitters[6], IG3D_POSITION, 0.000000, 0.000000, 0.000000)
gSoundEmitters[7]=make(ig3d_sound_emitter, "enemy3")
setSound_emitterInfo(gSoundEmitters[7], IG3D_POSITION, 0.000000, 0.000000, 0.000000)
gSoundEmitters[8]=make(ig3d_sound_emitter, "enemy4")
setSound_emitterInfo(gSoundEmitters[8], IG3D_POSITION, 0.000000, 0.000000, 0.000000)
gSoundEmitters[9]=make(ig3d_sound_emitter, "enemy5")
setSound_emitterInfo(gSoundEmitters[9], IG3D_POSITION, 0.000000, 0.000000, 0.000000)
gSoundEmitters[10]=make(ig3d_sound_emitter, "enemy6")
setSound_emitterInfo(gSoundEmitters[10], IG3D_POSITION, 0.000000, 0.000000, 0.000000)
gSoundEmitters[11]=make(ig3d_sound_emitter, "enemy7")
setSound_emitterInfo(gSoundEmitters[11], IG3D_POSITION, 0.000000, 0.000000, 0.000000)
gSoundEmitters[12]=make(ig3d_sound_emitter, "enemy8")
setSound_emitterInfo(gSoundEmitters[12], IG3D_POSITION, 0.000000, 0.000000, 0.000000)
gSoundEmitters[13]=make(ig3d_sound_emitter, "enemy9")
setSound_emitterInfo(gSoundEmitters[13], IG3D_POSITION, 0.000000, 0.000000, 0.000000)
gSoundEmitters[14]=make(ig3d_sound_emitter, "enemy10")
setSound_emitterInfo(gSoundEmitters[14], IG3D_POSITION, 0.000000, 0.000000, 0.000000)
gSoundEmitters[15]=make(ig3d_sound_emitter, "enemy11")
setSound_emitterInfo(gSoundEmitters[15], IG3D_POSITION, 0.000000, 0.000000, 0.000000)
gSoundEmitters[16]=make(ig3d_sound_emitter, "enemy12")
setSound_emitterInfo(gSoundEmitters[16], IG3D_POSITION, 0.000000, 0.000000, 0.000000)
gSoundEmitters[17]=make(ig3d_sound_emitter, "enemy13")
setSound_emitterInfo(gSoundEmitters[17], IG3D_POSITION, 0.000000, 0.000000, 0.000000)
gSoundEmitters[18]=make(ig3d_sound_emitter, "enemy14")
setSound_emitterInfo(gSoundEmitters[18], IG3D_POSITION, 0.000000, 0.000000, 0.000000)
gSoundEmitters[19]=make(ig3d_sound_emitter, "enemy15")
setSound_emitterInfo(gSoundEmitters[19], IG3D_POSITION, 0.000000, 0.000000, 0.000000)
gSoundEmitters[20]=make(ig3d_sound_emitter, "enemy16")
setSound_emitterInfo(gSoundEmitters[20], IG3D_POSITION, 0.000000, 0.000000, 0.000000)
gSoundEmitters[21]=make(ig3d_sound_emitter, "playergun")
setSound_emitterInfo(gSoundEmitters[20], IG3D_POSITION, 0.000000, 0.000000, 0.000000)
gNumSoundEmitters=21
gGroups={}
gNumGroups=0
gTextboxes={}
gNumTextboxes=17
gTextboxes[1]=make(ig3d_text_box, "Data/FontPngs/monaco32_1.png")
setText_boxInfo(gTextboxes[1], IG3D_POSITION, 0, 0)
setText_boxInfo(gTextboxes[1], IG3D_SIZE, 24)
setText_boxInfo(gTextboxes[1], IG3D_COLOR, 1.000000, 0.000000, 0.000000, 1.000000)
gTextboxes[2]=make(ig3d_text_box, "Data/FontPngs/crosshairs32_1.png")
setText_boxInfo(gTextboxes[2], IG3D_POSITION, 0, 0)
setText_boxInfo(gTextboxes[2], IG3D_SIZE, 30)
setText_boxInfo(gTextboxes[2], IG3D_COLOR, 1.000000, 0.000000, 0.000000, 0.500000)
gTextboxes[3]=make(ig3d_text_box, "Data/FontPngs/crosshairs32_1.png")
setText_boxInfo(gTextboxes[3], IG3D_POSITION, 0, 0)
setText_boxInfo(gTextboxes[3], IG3D_SIZE, 30)
setText_boxInfo(gTextboxes[3], IG3D_COLOR, 1.000000, 0.000000, 0.000000, 0.500000)
gTextboxes[4]=make(ig3d_text_box, "Data/FontPngs/crosshairs32_1.png")
setText_boxInfo(gTextboxes[4], IG3D_POSITION, 0, 0)
setText_boxInfo(gTextboxes[4], IG3D_SIZE, 30)
setText_boxInfo(gTextboxes[4], IG3D_COLOR, 1.000000, 0.000000, 0.000000, 0.500000)
gTextboxes[5]=make(ig3d_text_box, "Data/FontPngs/crosshairs32_1.png")
setText_boxInfo(gTextboxes[5], IG3D_POSITION, 0, 0)
setText_boxInfo(gTextboxes[5], IG3D_SIZE, 30)
setText_boxInfo(gTextboxes[5], IG3D_COLOR, 1.000000, 0.000000, 0.000000, 0.500000)
gTextboxes[6]=make(ig3d_text_box, "Data/FontPngs/crosshairs32_1.png")
setText_boxInfo(gTextboxes[6], IG3D_POSITION, 0, 0)
setText_boxInfo(gTextboxes[6], IG3D_SIZE, 30)
setText_boxInfo(gTextboxes[6], IG3D_COLOR, 1.000000, 0.000000, 0.000000, 0.500000)
gTextboxes[7]=make(ig3d_text_box, "Data/FontPngs/crosshairs32_1.png")
setText_boxInfo(gTextboxes[7], IG3D_POSITION, 0, 0)
setText_boxInfo(gTextboxes[7], IG3D_SIZE, 30)
setText_boxInfo(gTextboxes[7], IG3D_COLOR, 1.000000, 0.000000, 0.000000, 0.500000)
gTextboxes[8]=make(ig3d_text_box, "Data/FontPngs/crosshairs32_1.png")
setText_boxInfo(gTextboxes[8], IG3D_POSITION, 0, 0)
setText_boxInfo(gTextboxes[8], IG3D_SIZE, 30)
setText_boxInfo(gTextboxes[8], IG3D_COLOR, 1.000000, 0.000000, 0.000000, 0.500000)
gTextboxes[9]=make(ig3d_text_box, "Data/FontPngs/crosshairs32_1.png")
setText_boxInfo(gTextboxes[9], IG3D_POSITION, 0, 0)
setText_boxInfo(gTextboxes[9], IG3D_SIZE, 30)
setText_boxInfo(gTextboxes[9], IG3D_COLOR, 1.000000, 0.000000, 0.000000, 0.500000)
gTextboxes[10]=make(ig3d_text_box, "Data/FontPngs/crosshairs32_1.png")
setText_boxInfo(gTextboxes[10], IG3D_POSITION, 0, 0)
setText_boxInfo(gTextboxes[10], IG3D_SIZE, 30)
setText_boxInfo(gTextboxes[10], IG3D_COLOR, 1.000000, 0.000000, 0.000000, 0.500000)
gTextboxes[11]=make(ig3d_text_box, "Data/FontPngs/crosshairs32_1.png")
setText_boxInfo(gTextboxes[11], IG3D_POSITION, 0, 0)
setText_boxInfo(gTextboxes[11], IG3D_SIZE, 30)
setText_boxInfo(gTextboxes[11], IG3D_COLOR, 1.000000, 0.000000, 0.000000, 0.500000)
gTextboxes[12]=make(ig3d_text_box, "Data/FontPngs/crosshairs32_1.png")
setText_boxInfo(gTextboxes[12], IG3D_POSITION, 0, 0)
setText_boxInfo(gTextboxes[12], IG3D_SIZE, 30)
setText_boxInfo(gTextboxes[12], IG3D_COLOR, 1.000000, 0.000000, 0.000000, 0.500000)
gTextboxes[13]=make(ig3d_text_box, "Data/FontPngs/crosshairs32_1.png")
setText_boxInfo(gTextboxes[13], IG3D_POSITION, 0, 0)
setText_boxInfo(gTextboxes[13], IG3D_SIZE, 30)
setText_boxInfo(gTextboxes[13], IG3D_COLOR, 1.000000, 0.000000, 0.000000, 0.500000)
gTextboxes[14]=make(ig3d_text_box, "Data/FontPngs/crosshairs32_1.png")
setText_boxInfo(gTextboxes[14], IG3D_POSITION, 0, 0)
setText_boxInfo(gTextboxes[14], IG3D_SIZE, 30)
setText_boxInfo(gTextboxes[14], IG3D_COLOR, 1.000000, 0.000000, 0.000000, 0.500000)
gTextboxes[15]=make(ig3d_text_box, "Data/FontPngs/crosshairs32_1.png")
setText_boxInfo(gTextboxes[15], IG3D_POSITION, 0, 0)
setText_boxInfo(gTextboxes[15], IG3D_SIZE, 30)
setText_boxInfo(gTextboxes[15], IG3D_COLOR, 1.000000, 0.000000, 0.000000, 0.500000)
gTextboxes[16]=make(ig3d_text_box, "Data/FontPngs/crosshairs32_1.png")
setText_boxInfo(gTextboxes[16], IG3D_POSITION, 0, 0)
setText_boxInfo(gTextboxes[16], IG3D_SIZE, 30)
setText_boxInfo(gTextboxes[16], IG3D_COLOR, 1.000000, 0.000000, 0.000000, 0.500000)
gTextboxes[17]=make(ig3d_text_box, "Data/FontPngs/crosshairs32_1.png")
setText_boxInfo(gTextboxes[17], IG3D_POSITION, 0, 0)
setText_boxInfo(gTextboxes[17], IG3D_SIZE, 30)
setText_boxInfo(gTextboxes[17], IG3D_COLOR, 1.000000, 0.000000, 0.000000, 0.500000)
setSceneInfo(IG3D_TINT_COLOR, 1.000000,1.000000,1.000000)
setSceneInfo(IG3D_FOG, true,0.859000,0.906000,0.949000,0.000000,8000.000000)
--setSceneInfo(IG3D_FOG, true,0.984000,0.643000,0.090000,0.000000,8000.000000)
setSceneInfo(IG3D_BACKGROUND_COLOR, 0,0,0)
setSceneInfo(IG3D_FOV, true, 90.000000)
setSceneInfo(IG3D_SKYBOX, "newskydesert.wtf")
setLightInfo(1, IG3D_ENABLED, true)
setLightInfo(1, IG3D_POSITION, 0.000000,1.000000,0.000000,0.000000)
setLightInfo(1, IG3D_AMBIENT, 0.4,0.4,0.4,1.000000)
setLightInfo(1, IG3D_DIFFUSE, 1,1,1,1)
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


math.randomseed(os.time())


--m=get(ig3d_material, -1, 2)
--setMaterialInfo(m, IG3D_SMOOTH, true)
--for i=2,10,1 do
--m=get(ig3d_material, -1, i)
--setMaterialInfo(m, IG3D_SHADER, "Data/Shaders/radius/")
--end

--setSceneInfo(IG3D_SHADER_PARAM, 1, 0, 0, 0, 0)
--setSceneInfo(IG3D_SHADER_PARAM, 2, 1/1000, 1/1000, 1/1000, 1)

--includings
dofile(getSceneInfo(IG3D_ROOT).."Data/Scripts/Airforce/af_math.lua") --contains some common math
dofile(getSceneInfo(IG3D_ROOT).."Data/Scripts/Airforce/af_plane.lua") --contains flight control stuff

--setup controls:
controls={}
i=1
for line in io.lines(getSceneInfo(IG3D_ROOT).."Data/controls.txt","r") do
if i % 2 == 1 then
controls[(i-1)/2 +1]=line
end
i=i+1
end


--setup options:
options={}
i=1
for line in io.lines(getSceneInfo(IG3D_ROOT).."Data/options.txt","r") do
if i % 2 == 1 then
options[(i-1)/2 +1]=line
end
i=i+1
end

gShadows=1
gClouds=2
gMouseSpeed=controls[7]*0.007

--enemy table building
gEnemies={gObjects[8], gObjects[9], gObjects[10], gObjects[11], gObjects[12], gObjects[13], gObjects[14], gObjects[15], gObjects[16], gObjects[17], gObjects[18], gObjects[19], gObjects[20], gObjects[21], gObjects[22], gObjects[23]}
gEnemySndEmitters={gSoundEmitters[5], gSoundEmitters[6], gSoundEmitters[7], gSoundEmitters[8], gSoundEmitters[9], gSoundEmitters[10], gSoundEmitters[11], gSoundEmitters[12], gSoundEmitters[13], gSoundEmitters[14], gSoundEmitters[15], gSoundEmitters[16], gSoundEmitters[17], gSoundEmitters[18], gSoundEmitters[19], gSoundEmitters[20]}
gEnemyParticleEmitters1={gParticleEmitters[17], gParticleEmitters[18], gParticleEmitters[19], gParticleEmitters[20], gParticleEmitters[21], gParticleEmitters[22], gParticleEmitters[23], gParticleEmitters[24], gParticleEmitters[25], gParticleEmitters[26], gParticleEmitters[27], gParticleEmitters[28], gParticleEmitters[29], gParticleEmitters[30], gParticleEmitters[31], gParticleEmitters[32]}
gEnemyTextboxes={gTextboxes[2], gTextboxes[3], gTextboxes[4], gTextboxes[5], gTextboxes[6], gTextboxes[7], gTextboxes[8], gTextboxes[9], gTextboxes[10], gTextboxes[11], gTextboxes[12], gTextboxes[13], gTextboxes[14], gTextboxes[15], gTextboxes[16], gTextboxes[17]}
gEnemyAfterburners={gObjects[24], gObjects[25], gObjects[26], gObjects[27], gObjects[28], gObjects[29], gObjects[30], gObjects[31], gObjects[32], gObjects[33], gObjects[34], gObjects[35], gObjects[36], gObjects[37], gObjects[38], gObjects[39]}
gEnemyParticleEmitters2={gParticleEmitters[33],gParticleEmitters[34],gParticleEmitters[35],gParticleEmitters[36],gParticleEmitters[37],gParticleEmitters[38],gParticleEmitters[39],gParticleEmitters[40],gParticleEmitters[41],gParticleEmitters[42],gParticleEmitters[43],gParticleEmitters[44],gParticleEmitters[45],gParticleEmitters[46],gParticleEmitters[47],gParticleEmitters[48]}
gNumEnemies=16

--friend table building
gFriends={gObjects[5], gObjects[6]}
gFriendSndEmitters={gSoundEmitters[3], gSoundEmitters[4]}
gFriendParticleEmitters={gParticleEmitters[10], gParticleEmitters[11]}
gNumFriends=2

--Global variables and constants
gPowerUpsStart=3
gPowerUpsEnd=3

gPickupDistance=2
gReachDistance=10	--052206: distance to the path point to make the point considered "reached"
gProtectionDistance=250--350
gMaxThrottle=60
gMinThrottle=10
gEnemyThrottle=20
gTimeToImpact=20
gNumDeadEnemies=0

gCamVector={x=0,y=1.3,z=-4}
gCamRot={x=10,y=0,z=0}
gNumAttackPaths=3
gNumDefendPaths=3
gTimedLevelLoad=false
gTimedLevelLoadTime=0
firstFrame=true




--some functions



function init_enemies()
for i=1,gNumEnemies,1 do
init_plane(gEnemies[i])
gEnemies[i].muzzlestart=0
gEnemies[i].muzzle=0
gEnemies[i].active=true
gEnemies[i].shooting=false
gEnemies[i].life=100
gEnemies[i].shootUpdate=0
gEnemies[i].defend=true
gEnemies[i].afterburner=gEnemyAfterburners[i]
gEnemies[i].emitter1=gEnemyParticleEmitters1[i]
gEnemies[i].emitter2=gEnemyParticleEmitters2[i]
gEnemies[i].snd=gEnemySndEmitters[i]
gEnemies[i].textbox=gEnemyTextboxes[i]
gEnemies[i].target=ship --target object
gEnemies[i].mothership=mother --mothership object
gEnemies[i].powerup=nil
gEnemies[i].primPath=get(ig3d_path, gEnemies[i].mothership.cObj, "defend"..math.random(gNumDefendPaths)) --set primary path
gEnemies[i].secPath=get(ig3d_path, gEnemies[i].target.cObj, "attack"..math.random(gNumAttackPaths)) --set secondary (attack path)
gEnemies[i].curDefendPoint=math.random(getPathInfo(gEnemies[i].primPath, IG3D_COUNT))
gEnemies[i].curAttackPoint=math.random(getPathInfo(gEnemies[i].secPath, IG3D_COUNT))

setParticle_emitterInfo(gEnemies[i].emitter1, IG3D_IGNORE_COLL, true, ig3d_particle_emitter, gEnemies[i].emitter1) --dont shoot self
setParticle_emitterInfo(gEnemies[i].emitter2, IG3D_IGNORE_COLL, true, ig3d_particle_emitter, gEnemies[i].emitter2) --dont shoot self
setParticle_emitterInfo(gEnemies[i].emitter1, IG3D_IGNORE_COLL, true, ig3d_particle_emitter, gEnemies[i].emitter2) --dont shoot self
setParticle_emitterInfo(gEnemies[i].emitter1, IG3D_BILLBOARD_Z, true)
setParticle_emitterInfo(gEnemies[i].emitter2, IG3D_BILLBOARD_Z, true)

setObjectInfo(gEnemies[i].cObj, IG3D_IGNORE_COLL, true, ig3d_particle_emitter, gEnemies[i].emitter1) --dont shoot self
setObjectInfo(gEnemies[i].cObj, IG3D_IGNORE_COLL, true, ig3d_particle_emitter, gEnemies[i].emitter2) --dont shoot self
setObjectInfo(gEnemies[i].afterburner.cObj, IG3D_COLL, false) --turret doesn't collide with anything
end
end

function enemies_in_range(obj)
	for i=1,gNumEnemies,1 do
		if distance_object_to_object(obj, gEnemies[i])<gProtectionDistance then
			return true
		end
	end
	return false
end


function friends_in_range(obj)

	if distance_object_to_object(obj, ship)<gProtectionDistance then
	return true
	end
	
	for i=1,gNumFriends,1 do
		if distance_object_to_object(obj, gFriends[i])<gProtectionDistance then
			return true
		end
	end
	return false
end


function init_friends()
local xstart=-10+gNumFriends*20.0
for i=1,gNumFriends,1 do
init_plane(gFriends[i])
gFriends[i].mothership=ship
gFriends[i].life=20
gFriends[i].active=true
gFriends[i].offset={x=xstart+(i-1)*20.0, y=-2+math.random()*4, z=50}
gFriends[i].snd=gFriendSndEmitters[i]
gFriends[i].emitter=gFriendParticleEmitters[i]
gFriends[i].shooting=false
setObjectInfo(gFriends[i].cObj, IG3D_IGNORE_COLL, true, ig3d_particle_emitter, gFriends[i].emitter)--dont shoot self
end
end



function handle_friends()
for i=1,gNumFriends,1 do
if gFriends[i].active== true then

if gFriends[i].life<=0 then
--does friendly plane die?
setSound_emitterInfo(gFriends[i].snd, IG3D_STOP)
setSound_emitterInfo(gFriends[i].snd, IG3D_POSITION, getObjectInfo(gFriends[i].cObj, IG3D_POSITION))
setSound_emitterInfo(gFriends[i].snd, IG3D_SAMPLE, "Data/Sounds/exp.ogg")
setSound_emitterInfo(gFriends[i].snd, IG3D_START, true)

if gFriends[i].watercoll == true then
setParticle_emitterInfo(splash, IG3D_POSITION, getObjectInfo(gFriends[i].cObj, IG3D_POSITION))
setParticle_emitterInfo(splash, IG3D_START)
else
setParticle_emitterInfo(friendshrabnel, IG3D_BONE_TRAVERSAL, true, 0)
setParticle_emitterInfo(friendshrabnel, IG3D_POSITION, getObjectInfo(gFriends[i].cObj, IG3D_POSITION))
setParticle_emitterInfo(friendshrabnel, IG3D_ROTATION, getObjectInfo(gFriends[i].cObj, IG3D_ROTATION))
setParticle_emitterInfo(friendshrabnel, IG3D_VELOCITY, getObjectInfo(gFriends[i].cObj, IG3D_VELOCITY))
setParticle_emitterInfo(friendshrabnel, IG3D_FORCE, 0,-6,0)
setParticle_emitterInfo(friendshrabnel, IG3D_TORQUE, 0,0,-70)
setParticle_emitterInfo(bigFire, IG3D_POSITION, getObjectInfo(gFriends[i].cObj, IG3D_POSITION))
setParticle_emitterInfo(bigFire, IG3D_VELOCITY, getObjectInfo(gFriends[i].cObj, IG3D_VELOCITY))
setParticle_emitterInfo(bigFire, IG3D_START)
setParticle_emitterInfo(friendshrabnel, IG3D_START)
end

setObjectInfo(gFriends[i].cObj, IG3D_POSITION, 0,-10000,0)
setObjectInfo(gFriends[i].cObj, IG3D_COLL, false)
gFriends[i].active=false
gFriends[i].shooting=false
setParticle_emitterInfo(gFriends[i].emitter, IG3D_STOP)
return
end

setParticle_emitterInfo(gFriends[i].emitter, IG3D_POSITION, getObjectInfo(gFriends[i].cObj, IG3D_POSITION))
setParticle_emitterInfo(gFriends[i].emitter, IG3D_ROTATION, getObjectInfo(gFriends[i].cObj, IG3D_ROTATION))
setParticle_emitterInfo(gFriends[i].emitter, IG3D_VELOCITY, getObjectInfo(gFriends[i].cObj, IG3D_VELOCITY))
if gFriends[i].shooting==false then
if enemies_in_range(gFriends[i]) then
gFriends[i].shooting=true
setParticle_emitterInfo(gFriends[i].emitter, IG3D_START)
end
end
if gFriends[i].shooting==true then
if enemies_in_range(gFriends[i]) == false then
gFriends[i].shooting=false
setParticle_emitterInfo(gFriends[i].emitter, IG3D_STOP)
end
end

--handle only active objects
if gFriends[i].mothership.active then
x,y,z=getObjectInfo(gFriends[i].mothership.cObj, IG3D_POSITION)
a11,a12,a13,a14, a21,a22,a23,a24, a31,a32,a33,a34, a41,a42,a43,a44=getObjectInfo(gFriends[i].mothership.cObj, IG3D_ROTATION_MATRIX)

a21=0
a22=1
a23=0
a11,a12,a13=normalized(cross(a21,a22,a23, a31,a32,a33))
a21,a22,a23=normalized(cross(a11,a12,a13, a31,a32,a33))

x=x+a11*gFriends[i].offset.x+a21*gFriends[i].offset.y+a31*gFriends[i].offset.z
y=y+a12*gFriends[i].offset.x+a22*gFriends[i].offset.y+a32*gFriends[i].offset.z
z=z+a13*gFriends[i].offset.x+a23*gFriends[i].offset.y+a33*gFriends[i].offset.z

y=math.max(y, 50)

plane_control2(gFriends[i], x,y,z) -- control the plane in the correct direction
end
apply_plane_physicsnew(gFriends[i], 0,0, gFriends[i].throttle, gFriends[i].pitch, gFriends[i].yaw, gFriends[i].roll) -- set C object Data

end
end
end




function handle_enemies()

--make sure mothership does not turn or move in wrong direction after things collided with it
setObjectInfo(mother.cObj, IG3D_OMEGA, 0,0,0)
setObjectInfo(mother.cObj, IG3D_VELOCITY, 0,0,13)
b=get(ig3d_bone, mother.cObj, "Engine")
setParticle_emitterInfo(motherengine, IG3D_POSITION, getBoneInfo(b, IG3D_POSITION))

if gTimedLevelLoad==false then
if gNumDeadEnemies>=gNumEnemies then
mother.active=false
gTimedLevel="Data/Levels/Success"
gTimedLevelLoad=true
gTimedLevelLoadTime=time()+2.0
end
end

for i=1,gNumEnemies,1 do

--crazy positioning of the plane turret:
b=get(ig3d_bone, gEnemies[i].cObj, "Turret1")
setParticle_emitterInfo(gEnemies[i].emitter1, IG3D_POSITION, getBoneInfo(b, IG3D_POSITION))
setParticle_emitterInfo(gEnemies[i].emitter1, IG3D_ROTATION, getObjectInfo(gEnemies[i].cObj, IG3D_ROTATION))
setParticle_emitterInfo(gEnemies[i].emitter1, IG3D_VELOCITY, getObjectInfo(gEnemies[i].cObj, IG3D_VELOCITY))

b=get(ig3d_bone, gEnemies[i].cObj, "Turret2")
setParticle_emitterInfo(gEnemies[i].emitter2, IG3D_POSITION, getBoneInfo(b, IG3D_POSITION))
setParticle_emitterInfo(gEnemies[i].emitter2, IG3D_ROTATION, getObjectInfo(gEnemies[i].cObj, IG3D_ROTATION))
setParticle_emitterInfo(gEnemies[i].emitter2, IG3D_VELOCITY, getObjectInfo(gEnemies[i].cObj, IG3D_VELOCITY))
----------------------------------------



if gEnemies[i].active==true then


--position the textbox (used for crosshair triangle at the moment)
setText_boxInfo(gEnemies[i].textbox, IG3D_TEXT, "a")
--x,y,z=getSceneInfo(IG3D_WINDOW_COORDS, getBoneInfo(b, IG3D_POSITION))
x,y,z=getSceneInfo(IG3D_WINDOW_COORDS, gEnemies[i].x, gEnemies[i].y, gEnemies[i].z)
setText_boxInfo(gEnemies[i].textbox, IG3D_POSITION, x-15, y-32)
if z>1 then --ie behind camera
setText_boxInfo(gEnemies[i].textbox, IG3D_TEXT, "")
end



if friends_in_range(gEnemies[i])  then
---if there are one of our planes within the enemy range
--pick nearest target, if current target out of range
local d=distance_object_to_object(gEnemies[i], ship)
if ship.active then
gEnemies[i].target=ship
end
for j=1,gNumFriends,1 do
local d2=distance_object_to_object(gEnemies[i], gFriends[j])
if d2<d and gFriends[j].active then
d=d2
gEnemies[i].target=gFriends[j]
end
end
---
end





--does the object die?
if gEnemies[i].life<= 0 then
setText_boxInfo(gEnemies[i].textbox, IG3D_TEXT, "")
gEnemies[i].active=false
gEnemies[i].shooting=false

gNumDeadEnemies=gNumDeadEnemies+1
setSound_emitterInfo(gEnemies[i].snd, IG3D_STOP)
setSound_emitterInfo(gEnemies[i].snd, IG3D_POSITION, getObjectInfo(gEnemies[i].cObj, IG3D_POSITION))
setSound_emitterInfo(gEnemies[i].snd, IG3D_SAMPLE, "Data/Sounds/exp.ogg")
setSound_emitterInfo(gEnemies[i].snd, IG3D_START, true)
setParticle_emitterInfo(gEnemies[i].emitter1, IG3D_STOP)
setParticle_emitterInfo(gEnemies[i].emitter2, IG3D_STOP)

if gEnemies[i].watercoll == true then
setParticle_emitterInfo(splash, IG3D_POSITION, getObjectInfo(gEnemies[i].cObj, IG3D_POSITION))
setParticle_emitterInfo(splash, IG3D_START)
else
setParticle_emitterInfo(fshrabnel, IG3D_BONE_TRAVERSAL, true, 0)
setParticle_emitterInfo(fshrabnel, IG3D_POSITION, getObjectInfo(gEnemies[i].cObj, IG3D_POSITION))
setParticle_emitterInfo(fshrabnel, IG3D_ROTATION, getObjectInfo(gEnemies[i].cObj, IG3D_ROTATION))
setParticle_emitterInfo(fshrabnel, IG3D_VELOCITY, getObjectInfo(gEnemies[i].cObj, IG3D_VELOCITY))
setParticle_emitterInfo(fshrabnel, IG3D_FORCE, 0,-6,0)
setParticle_emitterInfo(fshrabnel, IG3D_TORQUE, 0,0,-70)
setParticle_emitterInfo(bigFire, IG3D_POSITION, getObjectInfo(gEnemies[i].cObj, IG3D_POSITION))
setParticle_emitterInfo(bigFire, IG3D_VELOCITY, getObjectInfo(gEnemies[i].cObj, IG3D_VELOCITY))
setParticle_emitterInfo(bigFire, IG3D_START)
setParticle_emitterInfo(fshrabnel, IG3D_START)
end


if gEnemies[i].powerup ~= nil then
setObjectInfo(gEnemies[i].powerup.cObj, IG3D_POSITION, getObjectInfo(gEnemies[i].cObj, IG3D_POSITION))
setObjectInfo(gEnemies[i].powerup.cObj, IG3D_COLL, false)
setObjectInfo(gEnemies[i].powerup.cObj, IG3D_FORCE, 0,-1,0)
setObjectInfo(gEnemies[i].powerup.cObj, IG3D_ROTATION, 0,0,0)
setObjectInfo(gEnemies[i].powerup.cObj, IG3D_TORQUE, 0,0,0)
end

setObjectInfo(gEnemies[i].cObj, IG3D_POSITION, 0,-10000,0)
setObjectInfo(gEnemies[i].cObj, IG3D_TORQUE, 0,0,0)
setObjectInfo(gEnemies[i].cObj, IG3D_FORCE, 0,-10,0)
setObjectInfo(gEnemies[i].afterburner.cObj, IG3D_POSITION, 0,-10000,0)

return
end
b=get(ig3d_bone, gEnemies[i].cObj, "Contrail")
setParticle_emitterInfo(smoke, IG3D_POSITION, getBoneInfo(b, IG3D_POSITION))
setParticle_emitterInfo(smoke, IG3D_LIFE_TIME, math.min( (100/gEnemies[i].life)*(100/gEnemies[i].life) * 0.3, 3))
setParticle_emitterInfo(smoke, IG3D_SIZE, math.min( (100/gEnemies[i].life) * 0.5, 1))
setParticle_emitterInfo(smoke, IG3D_START)



gEnemies[i].defend=true--default
if distance_object_to_object(gEnemies[i], gEnemies[i].target) < gProtectionDistance then
gEnemies[i].defend=false
end


--am I too far away from mothership?
if gEnemies[i].defend==true then
x,y,z=getPathInfo(gEnemies[i].primPath, IG3D_POSITION, gEnemies[i].curDefendPoint)
dx,dy,dz=getObjectInfo(gEnemies[i].mothership.cObj, IG3D_SIZE)
x=math.max(0.01*dx,1)*x+gEnemies[i].mothership.x
y=math.max(0.01*dy,1)*y+gEnemies[i].mothership.y
z=math.max(0.01*dz,1)*z+gEnemies[i].mothership.z
tx,ty,tz=getObjectInfo(gEnemies[i].mothership.cObj, IG3D_VELOCITY)


--pick next defend path point
if vecLength(gEnemies[i].x-x, gEnemies[i].y-y, gEnemies[i].z-z) < gReachDistance then
gEnemies[i].curDefendPoint =gEnemies[i].curDefendPoint +1
if gEnemies[i].curDefendPoint >getPathInfo(gEnemies[i].primPath, IG3D_COUNT) then
gEnemies[i].curDefendPoint =1
end
end
--
else
x,y,z=getPathInfo(gEnemies[i].secPath, IG3D_POSITION, gEnemies[i].curAttackPoint)
x=x+gEnemies[i].target.x
y=y+gEnemies[i].target.y
z=z+gEnemies[i].target.z

tx,ty,tz=getObjectInfo(gEnemies[i].target.cObj, IG3D_VELOCITY)
a11,a12,a13,a14,a21,a22,a23,a24,a31,a32,a33,a34,a41,a42,a43,a44=getObjectInfo(gEnemies[i].target.cObj, IG3D_ROTATION_MATRIX)
x=x+a31*10--+
y=y+a32*10
z=z+a33*10




--pick next attack path point
if vecLength(gEnemies[i].x-x, gEnemies[i].y-y, gEnemies[i].z-z) < gReachDistance then
gEnemies[i].curAttackPoint=gEnemies[i].curAttackPoint+1
if gEnemies[i].curAttackPoint >getPathInfo(gEnemies[i].secPath, IG3D_COUNT) then
gEnemies[i].curAttackPoint =1
end
end
--

end
-----



a11,a12,a13,a14,a21,a22,a23,a24,a31,a32,a33,a34,a41,a42,a43,a44=getObjectInfo(gEnemies[i].cObj, IG3D_ROTATION_MATRIX)
dx= x-gEnemies[i].x
dy= y-gEnemies[i].y
dz= z-gEnemies[i].z
dx,dy,dz=normalized(dx,dy,dz)


dist=distance_object_to_point(gEnemies[i], x,y,z)

t=math.min( math.max(dist, vecLength(tx,ty,tz)*1.1), 60)
setObjectInfo(gEnemies[i].cObj, IG3D_VELOCITY, a31*t, a32*t, a33*t)
tx,ty,tz=cross(a31,a32,a33, dx,dy,dz)
setObjectInfo(gEnemies[i].cObj, IG3D_OMEGA, tx*3,ty*3,tz*3)

setObjectInfo(gEnemies[i].afterburner.cObj, IG3D_POSITION, getBoneInfo(get(ig3d_bone, gEnemies[i].cObj, "Contrail"), IG3D_POSITION))
setObjectInfo(gEnemies[i].afterburner.cObj, IG3D_ROTATION, getObjectInfo(gEnemies[i].cObj, IG3D_ROTATION))--REMOVE


m=get(ig3d_material, gEnemies[i].cObj, 2)--get the muzzle flash material
if gEnemies[i].shooting == true then
if time()>=gEnemies[i].muzzlestart then
gEnemies[i].muzzle=1-gEnemies[i].muzzle
gEnemies[i].muzzlestart=time()+0.025
setMaterialInfo(m, IG3D_COLOR, 1,1,1,gEnemies[i].muzzle)
end
end


if distance_object_to_object(gEnemies[i], gEnemies[i].target) <= gProtectionDistance then


if time() >= gEnemies[i].shootUpdate then
if gEnemies[i].shooting~=true then
gEnemies[i].shooting=true
setParticle_emitterInfo(gEnemies[i].emitter1, IG3D_START)
setParticle_emitterInfo(gEnemies[i].emitter2, IG3D_START)
gEnemies[i].shootUpdate=time() + math.random()*4.0
gEnemies[i].muzzlestart=time()+0.05
gEnemies[i].muzzle=1
setMaterialInfo(m, IG3D_COLOR, 1,1,1,gEnemies[i].muzzle)
else
gEnemies[i].shooting=false
setParticle_emitterInfo(gEnemies[i].emitter1, IG3D_STOP)
setParticle_emitterInfo(gEnemies[i].emitter2, IG3D_STOP)
gEnemies[i].shootUpdate=time() + math.random()*1.0
setMaterialInfo(m, IG3D_COLOR, 1,1,1,0)
end

end
else
gEnemies[i].shooting=false
setParticle_emitterInfo(gEnemies[i].emitter1, IG3D_STOP)
setParticle_emitterInfo(gEnemies[i].emitter2, IG3D_STOP)
setMaterialInfo(m, IG3D_COLOR, 1,1,1,0)
end

end



end
end





function handle_powerups()
for i=gPowerUpsStart,gPowerUpsEnd,1 do
if distance_object_to_object(ship, gObjects[i]) < gPickupDistance then
ship.strafing=math.max(ship.strafing+10,10)
setObjectInfo(gObjects[i].cObj, IG3D_POSITION, 0,-10000,0)
end
end
end


function position_camera()
a11,a12,a13,a14, a21,a22,a23,a24, a31,a32,a33,a34, a41,a42,a43,a44=getObjectInfo(ship.cObj, IG3D_ROTATION_MATRIX)


x,y,z=getCameraInfo(IG3D_POSITION)
tx=a11*x+a12*y+a13*z
ty=a21*x+a22*y+a23*z
tz=a31*x+a32*y+a33*z

--ship.x, ship.y, ship.z=getObjectInfo(ship.cObj, IG3D_POSITION)

x,y,z=getCameraInfo(IG3D_POSITION)
dx=ship.x-a31*2.5+a21 -x
dy=ship.y-a32*2.5+a22 -y
dz=ship.z-a33*2.5+a23 -z


local vx,vy,vz=getObjectInfo(ship.cObj, IG3D_VELOCITY)
local vmag=vecLength(vx, vy, vz)
vx,vy,vz=normalized(vx,vy,vz)

local dmag=vecLength(dx,dy,dz)

--what part of the camera move direction is aligned with velocity?
local mag=dot(vx,vy,vz, dx,dy,dz)

--calculate lateral component
local lx=dx-vx*mag
local ly=dy-vy*mag
local lz=dz-vz*mag

local longmag=1
local latmag=0.15

--longitudinal part
x=x+dx*longmag-lx
y=y+dy*longmag-ly
z=z+dz*longmag-lz


--lateral part
x=x +lx *latmag
y=y +ly *latmag
z=z +lz *latmag

setCameraInfo(IG3D_ROTATION, getObjectInfo(ship.cObj, IG3D_ROTATION) )
setCameraInfo(IG3D_POSITION, x,y,z)


--setLightInfo(2, IG3D_POSITION, 0,1.0,-0.5,0)
setLightInfo(2, IG3D_POSITION, ship.x-a31*50, ship.y+50 -a32*50, ship.z-a33*50, 1)
end


function formattedTime(n)
local m=math.floor(n/60)
local s=n-(m*60)
if s<10 then
s="0"..s
end
return m..":"..s
end

function make_cloud(path, emitter, x,y,z, xsize,ysize,zsize)
local px,py,pz
n=getPathInfo(path, IG3D_COUNT)
for i=1,n,1 do
px,py,pz=getPathInfo(path, IG3D_POSITION, i)
setParticle_emitterInfo(emitter, IG3D_POSITION, x+px*xsize, y+py*ysize, z+pz*zsize)
setParticle_emitterInfo(emitter, IG3D_SIZE, 7*xsize)--10*xsize
setParticle_emitterInfo(emitter, IG3D_START)
end
end


------ init ------
ship=gObjects[1] -- we are flying this thing!
mother=gObjects[2]
water=gObjects[4]

gun=gParticleEmitters[1] -- we shoot with this thing!
fire=gParticleEmitters[2] -- this is our explosion spawner
shrabnel=gParticleEmitters[3]
bigFire=gParticleEmitters[4]
fshrabnel=gParticleEmitters[5]
smoke=gParticleEmitters[6]
splash=gParticleEmitters[7]
lilsplash=gParticleEmitters[12]
motherengine=gParticleEmitters[16]

clouds=gParticleEmitters[8]
friendshrabnel=gParticleEmitters[9]
atomic1=gParticleEmitters[13]
atomic2=gParticleEmitters[14]
abomb=gParticleEmitters[15]
cloudpath=get(ig3d_path, -1, "p1")
atomtime=-1
muzzle=0
muzzlestart=0
ship.afterburner=gObjects[7]
ship.dx=0
ship.dy=0
ship.dz=0
ship.active=true
ship.life=100
ship.rolling=false --if true, rolling is performed
--the 4 power-ups are: strafing, repair, stealth, wing gun
ship.strafing=10
ship.stealth=false
ship.winggun=false
ship.sidethrottle=0
hitSnd=gSoundEmitters[1]
engineSnd=gSoundEmitters[2]
gunSnd=gSoundEmitters[21]
setObjectInfo(mother.cObj, IG3D_MASS, 20000,20000,20000,20000)
setObjectInfo(mother.cObj, IG3D_BONE_COLL, true)


setObjectInfo(ship.afterburner.cObj, IG3D_COLL, false)
setObjectInfo(ship.afterburner.cObj, IG3D_SIZE, 40,40,40)



mother.active=true
mother.life=2000
mother.turretlifes={15,15}
setParticle_emitterInfo(motherengine, IG3D_START)

setObjectInfo(ship.cObj, IG3D_IGNORE_COLL, true, ig3d_particle_emitter, gun) --dont shoot self
setObjectInfo(mother.cObj, IG3D_IGNORE_COLL, true, ig3d_particle_emitter, abomb) --dont shoot self

setParticle_emitterInfo(gun, IG3D_BILLBOARD_Z, true)


setSound_emitterInfo(hitSnd, IG3D_SAMPLE, "Data/Sounds/planehit.ogg")
setSound_emitterInfo(engineSnd, IG3D_SAMPLE, "Data/Sounds/planefly.ogg")

setSound_emitterInfo(gunSnd, IG3D_SAMPLE, "Data/Sounds/turret.ogg")
setSound_emitterInfo(engineSnd, IG3D_POSITION, getObjectInfo(ship.cObj, IG3D_POSITION))

setObjectInfo(water.cObj, IG3D_REPEAT, true)--oh oh
setObjectInfo(water.cObj, IG3D_MASS, 0,0,0,0)--infinite mass

if options[gClouds]=="YES" then
for i=1,10,1 do
--near clouds
s=math.random()*2.0
make_cloud(cloudpath, clouds, -250+math.random(500),450+math.random(300),-250+math.random(500),s,s,s)
end
end

updateFromVisualCamera()

camera.oldxang=camera.xang
camera.oldyang=camera.yang
camera.oldzang=camera.zang


init_plane(ship)
init_enemies()
init_friends()

gObjects[2].powerup=gObjects[11]--remove


------ game ------

function airforce()

char, code, name=input(false)
if name=="Escape" then
gTimedLevel="Data/Levels/GUI"
gTimedLevelLoad=true
gTimedLevelLoadTime=time()
end




setSceneInfo(IG3D_MOUSE_VIEW, true, 1.0)
setSceneInfo(IG3D_FULLSCREEN, true)
updateFromAllVisualObjects()
updateFromVisualCamera()


--engine sound
setSound_emitterInfo(engineSnd, IG3D_POSITION, camera.x, camera.y, camera.z)
setSound_emitterInfo(gunSnd, IG3D_POSITION, camera.x, camera.y, camera.z)

--handle enemy AI
handle_enemies()

--handle friendly AI
handle_friends()


if firstFrame== true then
firstFrame=false
setSound_emitterInfo(engineSnd, IG3D_LOOP, true)
setSound_emitterInfo(engineSnd, IG3D_START)
gStartTime=time()
return
end


if options[gShadows]== "YES" then
setObjectInfo(water.cObj, IG3D_RECEIVE_SHADOW, true)
setObjectInfo(mother.cObj, IG3D_RECEIVE_SHADOW, true)
setObjectInfo(ship.cObj, IG3D_CAST_SHADOW, true, "avatarp1shadow.wtf")
setSceneInfo(IG3D_RECEIVE_SHADOW, true)
end

if ship.active==true then



handle_powerups()

x,y,z=getObjectInfo(ship.cObj, IG3D_VELOCITY)
setSound_emitterInfo(engineSnd, IG3D_PITCH, 75.0+vecLength(x,y,z))

--is ship dying?
if ship.life<= 0 then
ship.active=false
setObjectInfo(ship.cObj, IG3D_FORCE, 0,0,0)
if ship.watercoll == true then
setParticle_emitterInfo(splash, IG3D_POSITION, getObjectInfo(ship.cObj, IG3D_POSITION))
setParticle_emitterInfo(splash, IG3D_START)
else
setParticle_emitterInfo(shrabnel, IG3D_BONE_TRAVERSAL, true, 0)
setParticle_emitterInfo(shrabnel, IG3D_POSITION, getObjectInfo(ship.cObj, IG3D_POSITION))
setParticle_emitterInfo(shrabnel, IG3D_ROTATION, getObjectInfo(ship.cObj, IG3D_ROTATION))
setParticle_emitterInfo(shrabnel, IG3D_VELOCITY, getObjectInfo(ship.cObj, IG3D_VELOCITY))
setParticle_emitterInfo(shrabnel, IG3D_FORCE, 0,-6,0)
setParticle_emitterInfo(shrabnel, IG3D_TORQUE, 0,0,-70)
setParticle_emitterInfo(bigFire, IG3D_POSITION, getObjectInfo(ship.cObj, IG3D_POSITION))
setParticle_emitterInfo(bigFire, IG3D_VELOCITY, getObjectInfo(ship.cObj, IG3D_VELOCITY))
setParticle_emitterInfo(bigFire, IG3D_START)
setParticle_emitterInfo(shrabnel, IG3D_START)
end

x,y,z=getObjectInfo(ship.cObj, IG3D_POSITION)
setObjectInfo(ship.cObj, IG3D_POSITION, x,y-10000,z)--move ship out of view
setSound_emitterInfo(engineSnd, IG3D_STOP)
setSound_emitterInfo(engineSnd, IG3D_SAMPLE, "Data/Sounds/exp.ogg")
setSound_emitterInfo(engineSnd, IG3D_PITCH, 100)
setSound_emitterInfo(engineSnd, IG3D_START, true)
setSound_emitterInfo(gunSnd, IG3D_LOOP, false)
setSound_emitterInfo(engineSnd, IG3D_LOOP, false)


setParticle_emitterInfo(gun, IG3D_STOP)
gTimedLevel="Data/Levels/TurretTest"
gTimedLevelLoad=true
gTimedLevelLoadTime=time()+4.0
return
end


m=get(ig3d_material, ship.cObj, 2)--get the muzzle flash material

--handle player input etc.
if click("n") then
	setParticle_emitterInfo(gun, IG3D_START)
	setMaterialInfo(m, IG3D_COLOR, 1,1,1,muzzle)
	muzzlestart=time()+0.025
	muzzle=1
	setSound_emitterInfo(gunSnd, IG3D_LOOP, true)
	setSound_emitterInfo(gunSnd, IG3D_START)
end

if click("o") then
	setParticle_emitterInfo(gun, IG3D_STOP)
	setSound_emitterInfo(gunSnd, IG3D_LOOP, false)
	setMaterialInfo(m, IG3D_COLOR, 1,1,1,0)
end

if click("-") then
	if time()>=muzzlestart then
		muzzle=1-muzzle
		muzzlestart=time()+0.025
		setMaterialInfo(m, IG3D_COLOR, 1,1,1,muzzle)
	end
end



ship.throttle=10
if key(controls[1],"-") then
	ship.throttle=120
	--ship.throttle=ship.throttle+50*passed()	
end

if key(controls[2],"-") then
	ship.throttle=0
	--ship.throttle=ship.throttle-50*passed()	
end

--handle atom bomb
if atomtime>0 and time()>atomtime then
	--setParticle_emitterInfo(atomic2, IG3D_START)
	atomtime=-1
end
-------

--handle player strafing (available through power-up)
ship.sidethrottle=0
if ship.strafing > 0 then
if key(controls[5],"-") then
	ship.sidethrottle=gMaxThrottle
	--ship.strafing=ship.strafing-1
end
if key(controls[6],"-") then
	ship.sidethrottle=-gMaxThrottle
	--ship.strafing=ship.strafing-1
end
end

---allow rolling
ship.roll=0
ship.rolling=false
if key(controls[3],"-") then
	ship.rolling=true
	ship.roll=ship.roll-2
end
if key(controls[4],"-") then
	ship.rolling=true
	ship.roll=ship.roll+2
end



if ship.throttle<gMinThrottle then
--ship.throttle=gMinThrottle
end

if ship.throttle>gMaxThrottle then
ship.throttle=gMaxThrottle
end

if time()>gStartTime+0.5 then
ship.yaw,ship.pitch=getSceneInfo(IG3D_MOUSE_DELTA)
ship.pitch=ship.pitch*gMouseSpeed
ship.yaw=ship.yaw*gMouseSpeed
end

--all the magic is in this function here now:
apply_plane_physicsnew(ship, ship.sidethrottle, 0, ship.throttle, ship.pitch, ship.yaw, ship.roll)--30

--apply_plane_physicsnew(ship, ship.sidethrottle*0.02, 0, ship.throttle*0.02, ship.pitch, ship.yaw, ship.roll)--30


ship.dx=a31
ship.dy=a32
ship.dz=a33


--camera transformations:
position_camera()


--position the board gun
b=get(ig3d_bone, ship.cObj, "Gun")
setParticle_emitterInfo(gun, IG3D_POSITION, getBoneInfo(b, IG3D_POSITION))
--setParticle_emitterInfo(gun, IG3D_POSITION, getObjectInfo(ship.cObj, IG3D_POSITION))
setParticle_emitterInfo(gun, IG3D_ROTATION, getObjectInfo(ship.cObj, IG3D_ROTATION) )
setParticle_emitterInfo(gun, IG3D_VELOCITY, getObjectInfo(ship.cObj, IG3D_VELOCITY))


b=get(ig3d_bone, ship.cObj, "Contrail")
setParticle_emitterInfo(smoke, IG3D_POSITION, getBoneInfo(b, IG3D_POSITION))
setParticle_emitterInfo(smoke, IG3D_LIFE_TIME, math.min( (100/ship.life)*(100/ship.life) * 0.3, 3))
setParticle_emitterInfo(smoke, IG3D_SIZE, math.min( (100/ship.life) * 0.5, 1))
--setParticle_emitterInfo(smoke, IG3D_START)

else

dx=ship.x-camera.x
dy=ship.y+10000-camera.y
dz=ship.z-camera.z
--setCameraInfo(IG3D_ROTATION, dirToAngles(dx,dy,dz))

setParticle_emitterInfo(shrabnel, IG3D_TORQUE, 0,0,0)
x=vecLength(dx,dy,dz)
dx,dy,dz=normalized(dx,dy,dz)

end--controllable part


--position and rotate player afterburner and setup its transparency
setObjectInfo(ship.afterburner.cObj, IG3D_POSITION, getBoneInfo(get(ig3d_bone, ship.cObj, "Contrail"), IG3D_POSITION))
setObjectInfo(ship.afterburner.cObj, IG3D_ROTATION, getObjectInfo(ship.cObj, IG3D_ROTATION))
m=get(ig3d_material, ship.afterburner.cObj, 1)
setMaterialInfo(m, IG3D_DIFFUSE, 1,1,1, math.min(0.01* vecLength(getObjectInfo(ship.cObj, IG3D_VELOCITY)), 1.0) )
setMaterialInfo(m, IG3D_COLOR, 1,1,1, math.min(0.01* vecLength(getObjectInfo(ship.cObj, IG3D_VELOCITY)), 1.0) )

setText_boxInfo(gTextboxes[1], IG3D_TEXT, "FPS:"..getSceneInfo(IG3D_FPS).."\nTIME:"..formattedTime(math.ceil(time()-gStartTime)).."\nLIFE:"..ship.life)


if gTimedLevelLoad==true then
if time() > gTimedLevelLoadTime then
	gTimedLevelLoad=false
	setSound_emitterInfo(engineSnd, IG3D_STOP)
	loadLevel(gTimedLevel)
	return
end
end

end


function particlesAgainstMesh(psys, x,y,z)
if y<-0.1 then
setParticle_emitterInfo(lilsplash, IG3D_POSITION,x,y,z)
setParticle_emitterInfo(lilsplash, IG3D_START)
else
setParticle_emitterInfo(fire, IG3D_POSITION,x,y,z)
setParticle_emitterInfo(fire, IG3D_VELOCITY, 0,0,0)
setParticle_emitterInfo(fire, IG3D_START)
end


if psys=="abomb" then
setParticle_emitterInfo(atomic1, IG3D_POSITION, x,y,z)
setParticle_emitterInfo(atomic1, IG3D_START)
atomtime=time()+0.5
end

end

function objectsAgainstMesh(obj, bone, x,y,z)
if obj.active==true then
setParticle_emitterInfo(fire, IG3D_POSITION,x,y,z)
setParticle_emitterInfo(fire, IG3D_VELOCITY, 0,0,0)
setParticle_emitterInfo(fire, IG3D_START)

setSound_emitterInfo(hitSnd, IG3D_POSITION, x,y,z)
setSound_emitterInfo(hitSnd, IG3D_START)
obj.life=obj.life-100
if y<-0.1 then
--obj.watercoll=true
end

end
end

function objectsAgainstParticles(obj, bone, psys, x,y,z)
if obj.active==true then
setParticle_emitterInfo(fire, IG3D_POSITION, x,y,z)
setParticle_emitterInfo(fire, IG3D_VELOCITY, getObjectInfo(obj.cObj, IG3D_VELOCITY))
setParticle_emitterInfo(fire, IG3D_START)

setSound_emitterInfo(hitSnd, IG3D_POSITION, x,y,z)
setSound_emitterInfo(hitSnd, IG3D_START)

if obj==mother then
--handle mothership
if bone~= 0 then
b=get(ig3d_bone, obj.cObj, bone)
local str=getBoneInfo(b, IG3D_NAME)
if string.sub(str, 1,6) == "Turret" then
n=string.sub(str, 7, #str)+0 --the +0 makes n an integer
mother.turretlifes[n]=mother.turretlifes[n]-1
if mother.turretlifes[n]<=0 then
setBoneInfo(b, IG3D_ENABLED, false)
setParticle_emitterInfo(bigFire, IG3D_POSITION, x,y,z)
setParticle_emitterInfo(bigFire, IG3D_VELOCITY, getObjectInfo(obj.cObj, IG3D_VELOCITY))
setParticle_emitterInfo(bigFire, IG3D_START)
end
end
end

else
--handle other objects
obj.life=obj.life-1
end



end
end

function objectsAgainstObjects(obj1, bone1, obj2, bone2, x,y,z)

if obj1==mother or obj2==mother or obj1==water or obj2==mother then
setParticle_emitterInfo(fire, IG3D_POSITION, x,y,z)
setParticle_emitterInfo(fire, IG3D_VELOCITY, 0,0,0)
setParticle_emitterInfo(fire, IG3D_START)

setSound_emitterInfo(hitSnd, IG3D_POSITION, x,y,z)
setSound_emitterInfo(hitSnd, IG3D_START)
if obj1.life ~= nil then
obj1.life=obj1.life-5
end
if obj2.life ~= nil then
obj2.life=obj2.life-5
end

end

end


game_func=airforce
coll_p_m=particlesAgainstMesh
coll_o_m=objectsAgainstMesh
coll_o_p=objectsAgainstParticles
coll_o_o=objectsAgainstObjects