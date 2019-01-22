import fltk_main

#test of:
# class Fl_Hold_Browser extends Fl_Browser http://www.fltk.org/doc-1.3/classFl__Hold__Browser.html
# Fl_WidgetSetType class, FL_MULTIBROWSER
# Fl_BrowserAdd
# Fl_BrowserInsert
# Fl_BrowserGetSize
# Fl_BrowserGetText

var win = Fl_WindowNew(320,100,"Fl_Hold_Browser (multi selection)")
var br = Fl_Hold_BrowserNew(10,10,320-20,100-20)
Fl_Browser_SetHasScrollbar cast[ptr FL_WIDGET](br), FL_SCROLL_VERTICAL_ALWAYS

#~ Fl_WidgetSetType br, ubyte(FL_MULTIBROWSER)
Fl_WidgetSetType br, 3

Fl_BrowserAdd br,"item 1"
Fl_BrowserAdd br,"item 2"
Fl_BrowserAdd br,"item 3"
Fl_BrowserAdd br,"item 4"
Fl_BrowserAdd br,"item 5"
Fl_BrowserAdd br,"item 6"
Fl_BrowserAdd br,"item 7"
Fl_BrowserAdd br,"item 8"

Fl_BrowserInsert br,3,"item 2b"

var
    nitems = Fl_BrowserGetSize(br)
    item = 0
if nItems > 0 :
  for item in 1 .. nItems:
    echo $Fl_BrowserGetText(br,item)


Fl_WindowShow win
Fl_Run()
