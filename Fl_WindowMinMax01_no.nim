import fltk_main


proc MinCB (button: ptr Fl_Widget) {.cdecl.} =
  var win = Fl_WidgetWindow(button)
  echo "minimize cb " & $win[0]
  Fl_Handle(FL_EVENT_UNFOCUS, win)
  Fl_Handle(FL_EVENT_HIDE, win)
  Fl_WidgetRedraw(win)


proc MaxCB (button: ptr Fl_Widget) {.cdecl.} =
  var win = Fl_WidgetWindow(button)
  echo "maximize cb " &  win[]
  Fl_Handle(FL_EVENT_SHOW, win)
  Fl_Handle(FL_EVENT_FOCUS, win)
  Fl_WidgetRedraw(win)



var win = Fl_WindowNew(320,200)
var ButtonMin = Fl_ButtonNew(10,10,64,24,"min")
var ButtonMax = Fl_ButtonNew(84,10,64,24,"max")
Fl_WidgetSetCallback0 ButtonMin,MinCB
Fl_WidgetSetCallback0 ButtonMax,MaxCB

Fl_GroupSetResizable win, win

Fl_WindowShow win
Fl_Run()
