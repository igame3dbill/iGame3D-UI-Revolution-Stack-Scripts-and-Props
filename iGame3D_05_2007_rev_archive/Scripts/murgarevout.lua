window =  fltk:Fl_Window(408,632,"myFirstRevFLTK.app")firstButton = fltk:Fl_Button(6,20,392,27,"Button1")fltk:Fl_Button(308,54,82,23,"Button2")fltk:Fl_Button(308,82,82,23,"Button3")fltk:Fl_Button(10,72,170,32,"Tab Menu")fltk:Fl_Button(226,82,82,23,"Check")fltk:Fl_Button(222,58,82,23,"Radio")fltk:Fl_Button(2,208,394,26,"doshell1")fltk:Fl_Button(2,234,394,26,"doshell2")slider = fltk:Fl_Slider(6,284,382,24,"Scrollbar")slider:type(1)slider:range(5, 55)slider:step(1)slider:value(firstButton:labelsize())slider:callback(function(slider)firstButton:labelsize(slider:value())firstButton:label("My size is " .. slider:value())firstButton:redraw()end)window:show()-- Fl:run() -- replace with external command below
 function myrunner()
Fl:wait(0)
end


game_func=myrunner