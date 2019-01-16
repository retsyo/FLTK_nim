import fltk_main
#~ ' test of:
#~ ' Fl_Window  http://www.fltk.org/doc-1.3/classFl__Window.html
#~ ' Fl_Button  http://www.fltk.org/doc-1.3/classFl__Button.html

proc ButtonCB (button: ptr FL_WIDGET) {.cdecl.} =
  var Pushed {.global .}=1
  Fl_WidgetCopyLabel button, "push me:\n" & $Pushed & " times pushed"
  Pushed+=1


var Win = Fl_WindowNew(320,200,"FL_BUTTON")
var Btn = Fl_ButtonNew(10,10,320-20,200-20,"push me:")
Fl_WidgetSetCallback0 Btn,ButtonCB
Fl_WindowShow Win
Fl_Run()
