import strutils
import fltk_main

proc ShowCB(self: ptr Fl_Widget, box: pointer) {.cdecl.}=
  # get HWND or XLib window ID from Fl_Window
  var xid = Fl_XID(Fl_WidgetWindow(self))
  # get Fl_Window from HWND or XLib window ID
  var win = Fl_Find(xid)
  Fl_WidgetCopyLabel(box, "Fl_XID(win) = 0x" & toHex(cast[long](xid), 8) & " Fl_Find(xid) = 0x" & toHex(cast[long](win), 8 ))
  Fl_WidgetDeactivate self

#
# main
#
var win = Fl_WindowNew(500,80,"Fl_Find() and Fl_XID()")
var btn = Fl_ButtonNew(10,10,480,24,"show")
var box = Fl_BoxNew(10,44,480,32)
Fl_WidgetSetLabelSize  box,20
Fl_WidgetSetLabelColor box, 0X0000AA00
Fl_WidgetSetCallbackArg btn, ShowCB,box
Fl_WindowShow win
Fl_Run()



