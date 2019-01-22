import fltk_main

#~ 'test of:
#~ ' Fl_Tiled_ImageNew
#~ ' Fl_WidgetSetImage http://www.fltk.org/doc-1.3/classFl__Widget.html#aff29d81e64b617158472f38d2cac186e

var win = Fl_Double_WindowNew(128,128,"resize me ...")
var box = Fl_BoxNew(0,0,128,128)
var img = Fl_PNG_ImageNew("media/renata.png")
Fl_WidgetSetImage box,Fl_Tiled_ImageNew(img)
Fl_WidgetResize(win,100,100, 128 * 2.5, 128 * 0.5)
Fl_GroupSetResizable(win,win)
Fl_WindowShow win
Fl_Run()
