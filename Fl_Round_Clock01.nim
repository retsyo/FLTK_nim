import fltk_main

# test of:
# Fl_Round_Clock http://www.fltk.org/doc-1.3/classFl__Round__Clock.html

var win = Fl_Double_WindowNew(400,400,"FL_ROUND_CLOCK")
Fl_Round_ClockNew(0,0,Fl_WidgetGetW(win),Fl_WidgetGetH(win))

Fl_WindowShow win
Fl_Run()
