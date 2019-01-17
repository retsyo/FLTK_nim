import fltk_main

#~ 'test of:
#~ ' Fl_Menu_Bar  http://www.fltk.org/doc-1.3/classFl__Menu__Bar.html
#~ ' Fl_Menu_Add
#~ ' flChoice

proc QuitCB (self: ptr Fl_Widget, userdata: ptr Fl_Menu_Bar) {.cdecl.} =
    if flChoice("Do you really want to exit ?","no","yes") != 0:
        Fl_WindowHide Fl_WidgetWindow(self)

proc EditCB (self: ptr Fl_Widget, userdata: ptr Fl_Menu_Bar) {.cdecl.} =
    echo "EditCB "

proc MenuCB (self: ptr Fl_Widget, userdata: ptr Fl_Menu_Bar) {.cdecl.} =
    echo "MenuCB "


var win = Fl_WindowNew(320,200,"Fl_Menu_Bar01")
Fl_BoxNew(5,35,310,160,"Hello, World!")
var mnb = Fl_Menu_BarNew(0,0,320,30)
Fl_Menu_Add(mnb,"File/Quit" , FL_CTRL+ord('q')), QuitCB)
Fl_Menu_Add(mnb,"Edit/Cut"  , FL_CTRL+ord('x'), EditCB)
Fl_Menu_Add(mnb,"Edit/Copy" , FL_CTRL+ord('c'), EditCB)
Fl_Menu_Add(mnb,"Edit/Paste", FL_CTRL+ord('v'), EditCB)
Fl_Menu_Add(mnb,"Menu/Item 1",FL_CTRL+ord('m'), MenuCB)
Fl_Menu_Add3(mnb,"Menu/Submenu/Item 2")
Fl_Menu_Add3(mnb,"Menu/Submenu/Item 3")

Fl_WindowEnd win
Fl_WindowShow win
Fl_Run()
