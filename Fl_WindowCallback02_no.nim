import fltk_main

proc WindowCB  (self: ptr Fl_Window) {.cdecl.} =
  if ((Fl_EventNumber() == FL_EVENT_SHORTCUT) and (Fl_EventKey() == FL_Escape)):
    return # ignore Escape


  #~ beep
  echo "beep"
  Fl_WindowHide Fl_WidgetAsWindow(self)


var Win = Fl_WindowNew(320,200)
Fl_WidgetSetCallback0 Win, WindowCB
Fl_WindowShow Win
Fl_Run()