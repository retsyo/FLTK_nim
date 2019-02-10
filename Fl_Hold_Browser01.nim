import fltk_main

#test of:
# class Fl_Hold_Browser extends Fl_Browser http://www.fltk.org/doc-1.3/classFl__Hold__Browser.html
# Fl_Browser_SetHasScrollbar
# Fl_BrowserAdd
# Fl_BrowserInsert
# Fl_BrowserGetValue
# Fl_BrowserGetText

proc BrowserCB  (self: ptr FL_WIDGET, browser: pointer){.cdecl.}=
  echo "BrowserCB " & $Fl_BrowserGetText(browser, Fl_BrowserGetValue(browser))


var win = Fl_WindowNew(200,100,"Fl_Hold_Browser")
var brw = Fl_Hold_BrowserNew(10,10,1800,80)
Fl_WidgetSetCallbackArg brw,BrowserCB,brw
Fl_Browser_SetHasScrollbar brw, FL_SCROLL_VERTICAL_ALWAYS

Fl_BrowserAdd brw,"item 1"
Fl_BrowserAdd brw,"item 2"
Fl_BrowserAdd brw,"item 3"
Fl_BrowserAdd brw,"item 4"
Fl_BrowserAdd brw,"item 5"
Fl_BrowserAdd brw,"item 6"
Fl_BrowserAdd brw,"item 7"
Fl_BrowserAdd brw,"item 8"

Fl_BrowserInsert brw,3,"item 2b"

Fl_WindowShow win
Fl_Run()
