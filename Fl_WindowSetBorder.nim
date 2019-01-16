import fltk_main


#~ ' test of:
#~ ' Fl_WindowSetBorder() http://www.fltk.org/doc-1.3/classFl__Window.html#a72f5733f13cb6d8b646f1e7ffcd92333
#~ ' Fl_WidgetSetCallback0

proc `//` (x: long; y: long): long = long(x.float / y.float)

proc ButtonCB  (self: ptr FL_WIDGET) {.cdecl.} =
  Fl_WindowHide Fl_WidgetWindow(self)



var win = Fl_WindowNew2(Fl_GetW()//2-160, Fl_GetH()//2-100, 320, 200)
Fl_WindowSetBorder win, 0
Fl_BoxNew(10, 10, 300, 90, "a window without decoration")
Fl_WidgetSetCallback0 Fl_ButtonNew(100, 100, 120, 24, "close"), ButtonCB
Fl_WindowShow win
Fl_Run()