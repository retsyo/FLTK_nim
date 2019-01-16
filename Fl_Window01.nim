import fltk_main

# test of:
#  Fl_Window
#  Fl_box

var Win = Fl_WindowNew(320,200, "Fl_Window")
Fl_BoxNew 20,40,300,100,"Hello, World!"

Fl_WindowShow Win
Fl_Run()
