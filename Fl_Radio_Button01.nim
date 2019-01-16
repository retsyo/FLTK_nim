import fltk_main

#~ 'test of:
#~ ' Fl_Radio_Button http://www.fltk.org/doc-1.3/classFl__Radio__Button.html

var Win = Fl_WindowNew(320,50)
Fl_Radio_ButtonNew( 10,10,90,30,"radio A")
Fl_Radio_ButtonNew(110,10,90,30,"radio B")
Fl_Radio_ButtonNew(210,10,90,30,"radio C")

Fl_WindowShow Win
Fl_Run()
