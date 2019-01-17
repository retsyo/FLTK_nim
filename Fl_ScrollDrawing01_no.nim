import random
import fltk_main

proc `\` (x: long; y: long): long = long(x.float / y.float)

proc DrawCB (box: ptr):long {.cdecl.}=
  var x1 = Fl_WidgetGetX(box)
  var y1 = Fl_WidgetGetY(box)
  var w = Fl_WidgetGetW(box)
  var h = Fl_WidgetGetH(box)
  var x2=x1+w-1
  var y2=y1+h-1
  DrawSetColor FL_WHITE
  DrawRectFill x1, y1, w, h
  DrawSetColor FL_RED
  DrawLine(x1, y1, x2, y2)
  DrawLine(x1, y2, x2, y1)
  return 1


#
# main
#
var sx, sy, sw, sh: long
Fl_ScreenXYWH sx, sy, sw, sh # get screen resolution
var win = Fl_Double_WindowNew(sw\2, sh\2, "Fl_Scroll widget")
var scr = Fl_ScrollNew(0, 0, Fl_WidgetGetW(win), Fl_WidgetGetH(win))
Fl_BoxExSetDrawCB Fl_BoxExNew (0, 0, sw, sh), DrawCB
Fl_GroupEnd scr
Fl_GroupSetResizable win, scr
Fl_WindowShow win
Fl_Run()