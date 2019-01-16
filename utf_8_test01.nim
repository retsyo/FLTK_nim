import fltk_main
var Win: ptr Fl_Window  = Fl_WindowNew(320,200,"UTF-8 example.")
Fl_ButtonNew(10,10,320-20,200-20,"Привет Большой Мир")
Fl_WindowShow Win
Fl_Run()
