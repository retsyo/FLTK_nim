import fltk_main

proc LinkCB  (self: ptr Fl_Widget, uri: cstring) : cstring {.cdecl.} =
  echo "LinkCB: uri  " & $uri
  echo "LinkCB: file " & $flFilenameName(uri)
  return flFilenameName(uri)


Fl_Register_Images()
var win = Fl_Double_WindowNew(640,480, "Fl_Help_View04")
var hv  = Fl_Help_ViewNew(10,10,620,460)
Fl_Help_ViewLink hv, LinkCB
Fl_Help_ViewLoad hv, "http://www.freebasic.net/forum/index.php"
Fl_GroupSetResizable win,hv
Fl_WindowShow win
Fl_Run()
