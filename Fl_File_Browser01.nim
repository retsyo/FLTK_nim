import os, posix
import fltk_main

#test of:
# class Fl_Browser_     extends Fl_Group    http://www.fltk.org/doc-1.3/classFl__Browser__.html
# class Fl_Browser      extends Fl_Browser_ http://www.fltk.org/doc-1.3/classFl__Browser.html
# class Fl_File_Browser extends Fl_Browser  http://www.fltk.org/doc-1.3/classFl__File__Browser.html

# Fl_Browser_SetHasScrollbar
# Fl_File_BrowserSetFilter
# Fl_File_BrowserLoad
# Fl_BrowserGetSize
# Fl_BrowserGetText

var Win = Fl_WindowNew(320,200,"Fl_File_Browser")
var fbr = Fl_File_BrowserNew(10,10,320-20,200-20)
Fl_Browser_SetHasScrollbar fbr, FL_SCROLL_BOTH

Fl_File_BrowserSetFilter fbr,"*.nim"
Fl_File_BrowserLoad fbr, getAppDir()
Fl_File_BrowserSetFiletype fbr,FL_FILES

var nItems = Fl_BrowserGetSize(fbr)
var item = 0
if nItems > 0 :
  for item in 1 .. nItems:
    echo $Fl_BrowserGetText(fbr,item)


Fl_WindowShow Win
Fl_Run()
