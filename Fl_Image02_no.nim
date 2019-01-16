import fltk_main

#~ 'test of:

#~ ' Fl_BMP_ImageNew   http://www.fltk.org/doc-1.3/classFl__BMP__Image.html
#~ ' Fl_PNG_ImageNew   http://www.fltk.org/doc-1.3/classFl__PNG__Image.html
#~ ' Fl_JPG_ImageNew   http://www.fltk.org/doc-1.3/classFl__JPEG__Image.html

#~ ' Fl_WidgetSetImage http://www.fltk.org/doc-1.3/classFl__Widget.html#aff29d81e64b617158472f38d2cac186e


Fl_Register_Images()

var win = Fl_WindowNew(10*5+128*4,128+20,"BMP PNG GIF JPEG extends Fl_Image")
Fl_WidgetSetImage Fl_BoxNew(10*1+128*0,10,128,128), Fl_BMP_ImageNew("media/renata.bmp")
Fl_WidgetSetImage Fl_BoxNew(10*2+128*1,10,128,128), Fl_PNG_ImageNew("media/renata.png")
Fl_WidgetSetImage Fl_BoxNew(10*3+128*2,10,128,128), Fl_GIF_ImageNew("media/renata.gif")
Fl_WidgetSetImage Fl_BoxNew(10*4+128*3,10,128,128), Fl_JPG_ImageNew("media/renata.jpg")

Fl_WindowShow win
Fl_Run()
