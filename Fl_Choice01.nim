import fltk_main

#~ ' test of:
#~ ' Fl_Choice    http://www.fltk.org/doc-1.3/classFl__Choice.html

var win = Fl_WindowNew(256,240,"Fl_Choice")
var cho = Fl_ChoiceNew(64,10,128,24,"Label:")
#~ ' add item
Fl_Menu_Add3(cho,"item1")
Fl_Menu_Add3(cho,"item2|item4")
#~ ' insert item
Fl_Menu_Insert(cho,2,"item3")
#~ ' select item
Fl_ChoiceSetValue(cho,2)

Fl_WindowShow win
Fl_Run()