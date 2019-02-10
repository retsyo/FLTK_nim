import fltk_main
#~ import fltk_tools
# test of:

# Fl_WidgetSetSelectionColor()
# Fl_Browser_ScrollbarLeft()

proc BrowserCB (self: ptr FL_WIDGET, box: pointer) {.cdecl.}=
  var brw = cast[ptr Fl_Browser ](self)
  Fl_WidgetCopyLabel box,Fl_BrowserGetText(brw,Fl_BrowserGetValue(brw))
  Fl_WidgetRedrawLabel box

# main
#
var win = Fl_WindowNew(160,160,"")
var box = Fl_BoxNew(10,0,140,24,"select an item")
var brw = Fl_BrowserNew(10,24,140,116,"FL_HOLDBROWSER")
Fl_Browser_ScrollbarLeft brw
#~ Fl_WidgetSetType brw,FL_HOLDBROWSER
Fl_WidgetSetType brw, 2
Fl_WidgetSetCallbackArg brw,BrowserCB,box
Fl_WidgetSetSelectionColor brw,FL_RED
var i = 0
for i in 1 .. 8:
  Fl_BrowserAdd brw,"item " & $i

Fl_BrowserInsert brw,3,"item 2b"
Fl_BrowserSelect brw,3

Fl_WindowShow win
Fl_Run()
