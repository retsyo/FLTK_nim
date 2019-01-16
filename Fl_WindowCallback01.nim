import fltk_main

proc WindowCB  (self: ptr Fl_Window) {.cdecl.} =
  Fl_WindowHide Fl_WidgetAsWindow(self)
  echo "window closed !"
  #~ beep:sleep 1000


var Win = Fl_WindowNew(320,200)
Fl_WidgetSetCallback0 Win, WindowCB
Fl_WindowShow Win
Fl_Run()