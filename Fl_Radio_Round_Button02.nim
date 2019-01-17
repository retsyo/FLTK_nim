import fltk_main


#~ 'test of:
#~ ' Fl_Radio_Round_ButtonNew http://www.fltk.org/doc-1.3/classFl__Radio__Round__Button.html
#~ ' Fl_WidgetSetCallback0

template Button(x, c:untyped) =
    Fl_WidgetSetCallback0 Fl_Radio_Round_ButtonNew(x, 10, 90, 30, c), ButtonCB

proc ButtonCB  (self: ptr Fl_Widget){.cdecl.} =
  echo "ButtonCB: " & $Fl_WidgetGetLabel(self)

var win = Fl_WindowNew(350, 50, "Radio Round Button")
Fl_WindowBegin win
Button( 10, "Radio A")
Button(110, "Radio B")
Button(210, "Radio C")
Fl_WindowEnd win
Fl_WindowShow win
Fl_Run()
