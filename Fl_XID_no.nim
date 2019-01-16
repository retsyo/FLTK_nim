import strformat
import fltk_main


proc ShowCB  (self: ptr Fl_Widget, box: ptr Fl_BOX) {.cdecl.} =
  var win = Fl_WidgetWindow(self)
  var t = Fl_XID(win)
  Fl_WidgetCopyLabel(box, $cast[string](t[]))
  Fl_WidgetDeactivate self



var win = Fl_WindowNew(320,52,"Fl_XID()")
var btn = Fl_ButtonNew( 10,10,150,32,"show handle")
var box = Fl_BoxNew(170,10,150,32)
Fl_WidgetSetLabelSize  box,20
Fl_WidgetSetLabelColor box, 0x0000AA00
Fl_WidgetSetCallbackArg btn, ShowCB, box
Fl_WindowShow win
Fl_Run()



