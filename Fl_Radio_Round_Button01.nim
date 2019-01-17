import fltk_main

#test of:
# Fl_Radio_Round_ButtonNew http://www.fltk.org/doc-1.3/classFl__Radio__Round__Button.html
# Fl_WidgetSetCallback0

#define Button(x, c) Fl_WidgetSetCallback0 Fl_Radio_Round_ButtonNew(x, 10, 90, 30, c), ButtonCB

proc ButtonCB(self: ptr FL_WIDGET) {.cdecl.} =
  echo "ButtonCB: " & $Fl_WidgetGetLabel(self)

var win = Fl_WindowNew(350, 50, "Radio Round Button")
Fl_WindowBegin win
var btn1 = Fl_Radio_Round_ButtonNew( 10, 10, 90, 30, "Radio A")
var btn2 = Fl_Radio_Round_ButtonNew(110, 10, 90, 30, "Radio B")
var btn3 = Fl_Radio_Round_ButtonNew(210, 10, 90, 30, "Radio C")
Fl_WidgetSetCallback0 btn1, ButtonCB
Fl_WidgetSetCallback0 btn2, ButtonCB
Fl_WidgetSetCallback0 btn3, ButtonCB
Fl_WindowEnd win
Fl_WindowShow win
Fl_Run()
