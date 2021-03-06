import fltk_main

proc CounterCB  (self: ptr FL_WIDGET, valuator: pointer) {.cdecl.} =
  echo Fl_WidgetGetLabel(self)
  #~ & " value = " &
  echo Fl_ValuatorGetValue(cast[ptr Fl_Valuator](valuator))


var win = Fl_WindowNew(212,112,"Fl_Counter02.bas")
var cnt1 = Fl_CounterNew(10,10,192,24,"counter 1")
var cnt2 = Fl_Simple_CounterNew(10,64,192,24,"counter 2")
Fl_WidgetSetCallbackArg cast[ptr FL_WIDGET](cnt1), CounterCB, cnt1
Fl_WidgetSetCallbackArg cast[ptr FL_WIDGET](cnt2), CounterCB, cnt2
Fl_GroupSetResizable win,win
Fl_WindowShow win
Fl_Run()

