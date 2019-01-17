import random
import fltk_main

#test of:
# DrawSetFont
# DrawStr
# DrawStrRot

proc DrawCB (self: ptr Fl_Double_WindowEx): long{.cdecl.} =
  var
    w: long =Fl_WidgetGetW(self)
    h: long =Fl_WidgetGetH(self)
    deg: long = 180

    i, size, x, y: long

    font: FL_FONT

  DrawPushClip(0, 0, w, h)
  DrawRectFillRGBColor(0, 0, w, h, ubyte(rand(255)), ubyte(rand(255)), ubyte(rand(255)))
  for font in 0 .. 15:
    size = long(6 + rand(70))
    DrawSetFont(cast[FL_FONT](font), size)
    for i in 0 .. 1:
      DrawSetRGBColor(ubyte(rand(255)), ubyte(rand(255)), ubyte(rand(255)))
      x = long(rand(int(w)))
      y = long(rand(int(h)))
      if i == 1 :
        DrawStr("DrawStr()", x, y)
      else:
        DrawStrRot(deg, "DrawStrRot()", x, y)
        deg += 5

  DrawPopClip()
  return 1


#
# main
#
# for drawing it#s a good idea to use a flicker free double buffered window
var win = Fl_Double_WindowExNew(640, 480, "Drawing02.bas resize me ...")
Fl_Double_WindowExSetDrawCB win, DrawCB
Fl_GroupSetResizable win, win
Fl_WindowShow win
Fl_Run()
