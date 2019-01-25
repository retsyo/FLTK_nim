import fltk_main

#test of:
# Fl_Double_WindowExNew
# Fl_Double_WindowExSetDrawCB
# DrawPushClip
# DrawPopClip
# DrawSetColor
# DrawRectFill
# DrawYXLine
# DrawXYLine

proc DrawCB (self: pointer): long{.cdecl.} =
  var x:long  = 0
  var y:long  = 0
  var w:long  = Fl_WidgetGetW(self)
  var h:long  = Fl_WidgetGetH(self)
  var x2:long = x+w
  var y2:long = y+h

  var
    xx:long = 0
    yy:long = 0

  # any drawing outside this clip region are ingnored
  DrawPushClip x, y, w, h

  DrawSetColor(FL_WHITE)
  DrawRectFill(x, y, w, h)

  DrawSetColor(FL_RED)
  for xx in  countUp(x, x2, 10):
    DrawYXLine(xx, y, h)


  DrawSetColor(FL_BLUE)
  for yy in countUp(y, y2, 10):
    DrawXYLine(x, yy, w)


  # restore old clip region
  DrawPopClip()
  return 1


#
# main
#
# for drawing it#s a good idea to use a flicker free double buffered window
var win = Fl_Double_WindowExNew(640, 480, "Drawing01.nim resize me ...")
Fl_Double_WindowExSetDrawCB win, DrawCB
Fl_GroupSetResizable win, win
Fl_WindowShow win
Fl_Run()
