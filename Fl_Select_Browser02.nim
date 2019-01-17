import fltk_main

#test of:
# class Fl_Select_Browser extends Fl_Browser http://www.fltk.org/doc-1.3/classFl__Select__Browser.html
# Fl_Browser_SetHasScrollbar
# Fl_BrowserAdd
# Fl_BrowserGetValue
# Fl_BrowserGetText

proc BrowserCB (self: ptr Fl_Widget, browser: ptr Fl_Select_Browser) {.cdecl.} =
  var index = Fl_BrowserGetValue(browser)
  Fl_WidgetCopyLabel browser, Fl_BrowserGetText(browser, index)

#
# main
#
var win = Fl_WindowNew(320, 140, "Fl_Select_Browser02.nim")
var box = Fl_BoxNew(100, 50, 150, 24, "select an item")
var sbr = Fl_Select_BrowserNew(10, 10, 80, 100, "?")
Fl_Browser_SetHasScrollbar sbr, FL_SCROLL_VERTICAL_ALWAYS
Fl_WidgetSetCallbackArg    sbr, BrowserCB, sbr

Fl_BrowserAdd sbr, "item 1"
Fl_BrowserAdd sbr, "item 2"
Fl_BrowserAdd sbr, "item 3"
Fl_BrowserAdd sbr, "item 4"
Fl_BrowserAdd sbr, "item 5"
Fl_BrowserAdd sbr, "item 6"
Fl_BrowserAdd sbr, "item 7"
Fl_BrowserAdd sbr, "item 8"

Fl_WindowShow win
Fl_Run()
