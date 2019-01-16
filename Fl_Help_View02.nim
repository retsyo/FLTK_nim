import fltk_main

#~ 'test of:
#~ ' Fl_Register_Images
#~ ' Fl_Help_View extends Fl_Group  http://www.fltk.org/doc-1.3/classFl__Help__View.html
#~ ' Fl_Help_ViewLoad

Fl_Register_Images()
var win = Fl_Double_WindowNew(640,480, "Fl_Help_View02")
var hv  = Fl_Help_ViewNew(10,10,620,460)
Fl_Help_ViewLoad hv,"media/test01.html"
Fl_GroupSetResizable win,hv
Fl_WindowShow win
Fl_Run()
