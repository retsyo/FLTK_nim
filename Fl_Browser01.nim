import fltk_main

#test of:
# class Fl_Browser_ extends Fl_Group    http://www.fltk.org/doc-1.3/classFl__Browser__.html
# class Fl_Browser  extends Fl_Browser_ http://www.fltk.org/doc-1.3/classFl__Browser.html

# Fl_Browser_SetHasScrollbar

# Fl_BrowserNew
# Fl_BrowserAdd
# Fl_BrowserInsert
# Fl_BrowserSelect
# Fl_BrowserGetSize
# Fl_BrowserGetText

#
# main
#
var win = Fl_WindowNew(160, 100)
var brw = Fl_BrowserNew(10, 10, Fl_WidgetGetW(win)-20, Fl_WidgetGetH(win)-20)
# add some items
var i = 0
for i in 1 .. 5:
  Fl_BrowserAdd brw, "item " & $i

# insert an item
Fl_BrowserInsert brw, 3, "item 2b"
# select as item
Fl_BrowserSelect brw, 3

var item: int
for item in 1 .. Fl_BrowserGetSize(brw):
  echo $Fl_BrowserGetText(brw, item)


Fl_WindowShow win
Fl_Run()
