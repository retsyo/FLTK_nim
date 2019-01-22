import lenientops
import random
import fltk_main

#test of:
# Fl_WindowShown()
# Fl_WindowMakeCurrent()
# Fl_Wait2()

proc `\` (x: long; y: long): long = long(x.float / y.float)


proc DrawMe(win: ptr Fl_Window) =
  var gfxPrimitive{.global.}: long = 0
  # select the window as curent drawing target
  Fl_WindowMakeCurrent win
  # from here you can use any DrawXYZ commands take a look at "fltk-c.bi"

  # get position and size of the window
  var
    x: int = 10
    y: int= 10
    w: int= int(Fl_WidgetGetW(win)-20)
    h: int = int(Fl_WidgetGetH(win)-20)

  DrawPushClip x, y, w, h # any drawing outside this clip region are ingnored

  DrawRectFillColor x, y, w, h, FL_WHITE # fill the whole background

  var
    r: long
    i: int

  for i in 1 .. 10:
    DrawSetRGBColor rand(255), rand(255), rand(255)
    case gfxPrimitive:
      of 0 :
        DrawPoint rand(w), rand(h)
      of 1 :
        DrawLine  rand(w), rand(h), rand(w), rand(h)
      of 2 :
        DrawRect  rand(w), rand(h), rand(w), rand(h)
      of 3 :
        r = rand(h)\2
        DrawArc rand(w), rand(h), r, r, 0, 360 # circle
      of 4 :
        DrawRectFill rand(w), rand(h), rand(w), rand(h)
      of 5 :
        var bt = FL_BOXTYPE(1 + rand(15))
        DrawBox bt, rand(w), rand(h), rand(w), rand(h), Fl_RGB_Color(rand(255), rand(255), rand(255))
      of 6 :
        DrawArc rand(w), rand(h), rand(w), rand(h), 0, 360 # oval
      else:
        discard

  DrawPopClip() # restore old clip region
  gfxPrimitive = (gfxPrimitive + 1) mod 7

#
# main
#
var win = Fl_Double_WindowNew(640, 480, "Drawing03.nim")
Fl_WindowShow win
while(true):
  # wait for any event with a timeout value
  var t = Fl_Wait2(0.05)
  if Fl_WindowShown(win) == 0 :
    break
  DrawMe win

