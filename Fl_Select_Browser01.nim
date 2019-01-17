import fltk_main

#test of:
# class Fl_Select_Browser extends Fl_Browser http://www.fltk.org/doc-1.3/classFl__Select__Browser.html
# Fl_Browser_SetHasScrollbar
# Fl_BrowserAdd
# Fl_BrowserInsert
# Fl_BrowserGetSize
# Fl_BrowserGetText
#
# main
#
var Win = Fl_WindowNew(320, 120, "Fl_Select_Browser01.nim")
var sbr = Fl_Select_BrowserNew(10, 10, 80, 100)
Fl_Browser_SetHasScrollbar sbr,  FL_SCROLL_VERTICAL_ALWAYS

Fl_BrowserAdd sbr, "item 1"
Fl_BrowserAdd sbr, "item 2"
Fl_BrowserAdd sbr, "item 3"
Fl_BrowserAdd sbr, "item 4"
Fl_BrowserAdd sbr, "item 5"
Fl_BrowserAdd sbr, "item 6"
Fl_BrowserAdd sbr, "item 7"
Fl_BrowserAdd sbr, "item 8"

Fl_BrowserInsert sbr, 3, "item 2b"

var
    nItems = Fl_BrowserGetSize(sbr)
    item: int
if nItems>0 :
  for item in 1 .. nItems:
    echo $Fl_BrowserGetText(sbr, item)

Fl_WindowShow Win
Fl_Run()
