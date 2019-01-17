import random
import fltk_main

proc DrawCB(self: ptr Fl_Widget, SaveButton: ptr Fl_Button){. cdecl .}=
  Fl_WindowMakeCurrent(Fl_WidgetWindow(self))
  var i: int
  for i in 1 .. 100:
    DrawSetRGBColor(ubyte(rand(256)), ubyte(rand(256)), ubyte(rand(256)))
    DrawLine((rand(128)), (rand(128)), (rand(128)), (rand(128)))

  Fl_WidgetActivate SaveButton


proc SaveCB(self: ptr Fl_Widget, LoadButton: ptr Fl_Button){. cdecl .}=
  Fl_WindowMakeCurrent(Fl_WidgetWindow(self))
  #~ ScreenRes 128, 128, 32, , -1
  #~ var p: ptr ubyte  = ImageCreate(128, 128)
  #~ var pixels: ptr ubyte   = p+32
  #~ DrawReadImage pixels, 0, 0, 128, 128, 255
  #~ # BGRA->RGBA
  #~ var i: int
  #~ for i in 0 .. 128*128-1:
    #~ var tmp: ptr ubyte = pixels[i*4+0]
    #~ pixels[i*4+0]=pixels[i*4+2]
    #~ pixels[i*4+2]=tmp

  #~ bsave "media/temp.bmp", p
  #~ ImageDestroy p
  #~ Screen 0
  Fl_WidgetActivate LoadButton


proc LoadCB(self: ptr Fl_Widget, RightBox: ptr Fl_Box){. cdecl .}=
  Fl_WidgetSetImage RightBox, Fl_BMP_ImageNew("media/temp.bmp")
  Fl_WidgetRedraw RightBox


#
# main
#
#~ chdir exepath
var MainWindow = Fl_WindowNew(128 * 3, 128, "")
var LeftBox    = Fl_BoxNew(  0, 0, 128, 128)
var RightBox   = Fl_BoxNew(256, 0, 128, 128)
var DrawButton = Fl_ButtonNew(128 + 32, 10   , 64, 24, "Draw")
var SaveButton = Fl_ButtonNew(128 + 32, 10 + 32, 64, 24, "Save")
var LoadButton = Fl_ButtonNew(128 + 32, 10 + 64, 64, 24, "Load")

Fl_WidgetSetImage LeftBox, Fl_BMP_ImageNew("media/renata.bmp")
Fl_WidgetSetCallbackArg(DrawButton, DrawCB, SaveButton)
Fl_WidgetSetCallbackArg(SaveButton, SaveCB, LoadButton)
Fl_WidgetSetCallbackArg(LoadButton, LoadCB, RightBox)
Fl_WidgetDeactivate SaveButton
Fl_WidgetDeactivate LoadButton
Fl_WindowShow       MainWindow
Fl_Run()
