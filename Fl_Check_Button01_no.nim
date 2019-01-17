import fltk_main

proc CheckCB  (self: ptr FL_WIDGET, CheckButton: ptr Fl_Check_Button){.cdecl.} =
  echo $Fl_WidgetGetLabel(self) & "[" & $Fl_ButtonGetValue(CheckButton) & "]"


var win = Fl_WindowNew(320,40,"Fl_CheckButton01.bas")

var cb1 = Fl_Check_ButtonNew( 10,10,90,30,"Button 1")
var cb2 = Fl_Check_ButtonNew(110,10,90,30,"Button 2")
var cb3 = Fl_Check_ButtonNew(210,10,90,30,"Button 3")

Fl_WidgetSetCallbackArg cb1,CheckCB,cb1
Fl_WidgetSetCallbackArg cb2,CheckCB,cb2
Fl_WidgetSetCallbackArg cb3,CheckCB,cb3

Fl_WindowShow win
Fl_Run()