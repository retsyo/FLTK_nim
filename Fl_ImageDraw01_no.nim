import os, posix
import fltk_main

proc ButtonCB(button: ptr Fl_Widget, box: ptr Fl_Box) {.cdecl.}=
  # get the parent of the box (the window)
  var win = Fl_WidgetWindow(box)
  var img: ptr Fl_RGB_Image = cast[ptr Fl_RGB_Image](Fl_WidgetGetUserData(win))
  # make the window the current target for all kinds of drawing
  Fl_WindowMakeCurrent(win)
  # do it like a boss :-)
  Fl_ImageDraw2 img, 0, 0,64,64, 0, 0
  Fl_ImageDraw2 img,84, 0,64,64,64, 0
  Fl_ImageDraw2 img, 0,84,64,64, 0,64
  Fl_ImageDraw2 img,84,84,64,64,64,64
  Fl_WidgetRedraw button


#
# main
#
discard chDir getAppDir()

Fl_Register_Images()

var img = Fl_JPG_ImageNew("media/renata.jpg")
var win = Fl_Double_WindowNew(148,148+32)
var box = Fl_BoxNew(0,0,148,148)
Fl_WidgetSetImage box,img
Fl_WidgetSetUserData win,img
var btn = Fl_ButtonNew(20,156,108,24,"Draw")
Fl_WindowEnd win
Fl_WidgetSetCallbackArg btn,ButtonCB,box

Fl_WindowShow win
Fl_Run()




