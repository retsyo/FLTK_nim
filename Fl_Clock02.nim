import fltk_main

#~ ' test of:
#~ ' Fl_Clock       http://www.fltk.org/doc-1.3/classFl__Clock.html

proc `/`(x:long; y: long): long = long(x.float / y.float)

#~ ' centered window
var win = Fl_Double_WindowNew2(Fl_GetW()/2-300, Fl_GetH()/2-150, 600, 300,"FL_CLOCK")
var w = Fl_WidgetGetW(win)/2
var h = Fl_WidgetGetH(win)
Fl_WidgetSetType Fl_ClockNew(0, 0, w, h), FL_CLOCK_SQUARE
Fl_WidgetSetType Fl_ClockNew(w, 0, w, h), FL_CLOCK_ROUND

Fl_WindowShow win
Fl_Run()
