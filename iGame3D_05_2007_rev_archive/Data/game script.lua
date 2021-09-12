function browseImages(w)
 fltk.fl_register_images()
fname = getSceneInfo(IG3D_ROOT).."Data/Images/"..w:text()
img = Fl_Shared_Image.get(fname)
imagePreview:color(FL_BLACK)
imagePreview:image(img)
imagePreview:size(128,128)
imagePreview:redraw()
end

function show_inspector(w)
	objectList:add(ig3d_GetObjectsList__s())
	inspector:show()
end

function wheelX(w)
local x,y,z
	x,y,z=getObjectInfo(gCurObject, IG3D_ROTATION)
	setObjectInfo(gCurObject, IG3D_ROTATION, w:value(), y, z)
end

function wheelY(w)
local x,y,z
	x,y,z=getObjectInfo(gCurObject, IG3D_ROTATION)
	setObjectInfo(gCurObject, IG3D_ROTATION, x, w:value(), z)
end

function wheelZ(w)
local x,y,z
	x,y,z=getObjectInfo(gCurObject, IG3D_ROTATION)
	setObjectInfo(gCurObject, IG3D_ROTATION, x, y, w:value())
end

function moveObjectX(w)
	local x,y,z
	x,y,z=getObjectInfo(gCurObject, IG3D_POSITION)
	setObjectInfo(gCurObject, IG3D_POSITION, w:value(), y, z)
end

function moveObjectY(w)
	local x,y,z
	x,y,z=getObjectInfo(gCurObject, IG3D_POSITION)
	setObjectInfo(gCurObject, IG3D_POSITION, x,w:value(), z)
end

function moveObjectZ(w)
	local x,y,z
	x,y,z=getObjectInfo(gCurObject, IG3D_POSITION)
	setObjectInfo(gCurObject, IG3D_POSITION, x,y,w:value())
end

--set up the file list
function setupLists()
-- Read directory entries.
directoryEntries = murgaLua.readDirectory(getSceneInfo(IG3D_ROOT).."Data/WTF" );
-- For each entry
for i=0,table.getn(directoryEntries) do
	if string.sub(directoryEntries[i], 1, 1) ~= "." then
		myWTF:add(directoryEntries[i])
	end
end
myWTF:value(0)

-- Read directory entries.
directoryEntries = murgaLua.readDirectory(getSceneInfo(IG3D_ROOT).."Data/Images" );
-- For each entry
for i=0,table.getn(directoryEntries) do
	if string.sub(directoryEntries[i], 1, 1) ~= "." then
		myImages:add(directoryEntries[i])
	end
end
myImages:value(0)

end

function quitter(w)
window:hide()
os.exit()
end

function addObject(w)
gNumObjects=gNumObjects+1
table.insert(gObjects, {cObj=make(ig3d_object, myWTF:text() )})
gCurObject=gObjects[gNumObjects].cObj
end

function loadIt(w)
loadMesh("Data/WTF/"..myWTF:text())
end

 --------------	insert murgaLua code here  

  do local object = fltk:Fl_Double_Window(677, 244, "Inspector");
    window = object;
    do local object = fltk:Fl_Button(200, 170, 105, 25, "Quit");
      object:callback(quitter);
    end -- Fl_Button* o
    do local object = fltk:Fl_Choice(60, 5, 120, 25, "WTF:");
      object:down_box(fltk.FL_BORDER_BOX);
      object:when(fltk.FL_WHEN_CHANGED);
      myWTF=object
    end -- Fl_Choice* o
    do local object = fltk:Fl_Button(185, 5, 85, 25, "Add object");
      object:callback(addObject);
    end -- Fl_Button* o
    do local object = fltk:Fl_Button(275, 5, 80, 25, "Load mesh");
      object:callback(loadIt);
    end -- Fl_Button* o
    do local object = fltk:Fl_Choice(60, 35, 120, 25, "Images:");
      object:down_box(fltk.FL_BORDER_BOX);
      object:callback(browseImages);
      object:when(fltk.FL_WHEN_CHANGED);
      myImages=object
    end -- Fl_Choice* o
    do local object = fltk:Fl_Button(185, 35, 85, 25, "Load texture");
      object:callback(loadTex);
    end -- Fl_Button* o
     do imagePreview=fltk:Fl_Button(60, 105, 128, 128);
     end
     do local object = fltk:Fl_Adjuster(340, 75, 130, 25, "x:");
      object:minimum(-20);
      object:maximum(20);
      object:callback(moveObjectX);
      object:align(fltk.FL_ALIGN_LEFT);
    end -- Fl_Adjuster* o
    do local object = fltk:Fl_Adjuster(340, 105, 130, 25, "y:");
      object:minimum(-20);
      object:maximum(20);
      object:callback(moveObjectY);
      object:align(fltk.FL_ALIGN_LEFT);
    end -- Fl_Adjuster* o
    do local object = fltk:Fl_Adjuster(340, 135, 130, 25, "z:");
      object:minimum(-20);
      object:maximum(20);
      object:callback(moveObjectZ);
      object:align(fltk.FL_ALIGN_LEFT);
    end -- Fl_Adjuster* o
    do local object = fltk:Fl_Roller(475, 75, 130, 25);
      object:type(1);
      object:minimum(-180);
      object:maximum(180);
      object:step(0.1);
      object:callback(wheelX);
    end -- Fl_Roller* o
    do local object = fltk:Fl_Roller(475, 105, 130, 25);
      object:type(1);
      object:minimum(-180);
      object:maximum(180);
      object:step(0.1);
      object:callback(wheelY);
    end -- Fl_Roller* o
    do local object = fltk:Fl_Roller(475, 135, 130, 25);
      object:type(1);
      object:minimum(-180);
      object:maximum(180);
      object:step(0.1);
      object:callback(wheelZ);
    end -- Fl_Roller* o
	do local object = fltk:Fl_Button(440, 5, 105, 25, "Inspector");
      object:callback(show_inspector);
    end -- Fl_Button* o
  end
 ----------------------------
 do local object = fltk:Fl_Double_Window(481, 205);
    inspector = object;
    do local object=fltk:Fl_Browser(20, 35, 130, 130);
    	objectList=object
    end -- Fl_Browser* o
    do fltk:Fl_Browser(155, 35, 130, 130);
    end -- Fl_Browser* o
    do fltk:Fl_Browser(290, 35, 130, 130);
    end -- Fl_Browser* o
  end
  ----------------------------

 setupLists()
 
  Fl:scheme("plastic")
  window:show();



function run()
ig3d_SetMode_i(1)
ig3d_TellFocus_b(false)
if not click("-") then
	Fl:wait(0)
end

char,code,name=input(false)
if char~= nil then
	if name == "Control" then
		gMouse= not gMouse
		ig3d_SetMouseView_b(gMouse)
	end
end

end

setCameraInfo(IG3D_POSITION, 0,5,10)
game_func=run
gObjects={}
gNumObjects=0
gCurObject=-1
gMouse=false