import fltk_main
import fltk_tools


# class Fl_Browser_ extends Fl_Group    http://www.fltk.org/doc-1.3/classFl__Browser__.html
# class Fl_Browser  extends Fl_Browser_ http://www.fltk.org/doc-1.3/classFl__Browser.html

#test of: FL_HOLDBROWSER with callback


proc BrowserCB (self: ptr FL_WIDGET,box: ptr Fl_Browser) {.cdecl.}=
  var brw = cast[ptr Fl_Browser ](self)
  Fl_WidgetCopyLabel box,Fl_BrowserGetText(brw,Fl_BrowserGetValue(brw))
  Fl_WidgetRedrawLabel box


#
# main
#
var win = Fl_WindowNew(160,160,"")
var box = Fl_BoxNew(10,0,140,24,"select an item")
var brw = Fl_BrowserNew(10,24,140,116,"FL_HOLDBROWSER")
#~ Fl_WidgetSetType brw, FL_HOLDBROWSER
Fl_WidgetSetType brw, 2
Fl_WidgetSetCallbackArg  brw, BrowserCB, box

var item: int
for item in 1 .. 10:
  Fl_BrowserAdd brw,"item " & $item

Fl_WindowShow win
Fl_Run()
