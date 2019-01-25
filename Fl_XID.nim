import strUtils
import fltk_main


proc ShowCB  (self: ptr Fl_Widget, box: pointer) {.cdecl.} =
  var win = Fl_WidgetWindow(self)
  Fl_WidgetCopyLabel(box, "0x" & toHex(cast[long](Fl_XID(win)), 8))
  Fl_WidgetDeactivate self



var win = Fl_WindowNew(320,52,"Fl_XID()")
var btn = Fl_ButtonNew( 10,10,150,32,"show handle")
var box = Fl_BoxNew(170,10,150,32)
Fl_WidgetSetLabelSize  box,20
Fl_WidgetSetLabelColor box, 0x0000AA00
Fl_WidgetSetCallbackArg btn, ShowCB, box
Fl_WindowShow win
Fl_Run()



