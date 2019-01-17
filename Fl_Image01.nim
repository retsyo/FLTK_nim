import fltk_main

#~ 'test of:
#~ ' Fl_Image          http://www.fltk.org/doc-1.3/classFl__Image.html
#~ ' Fl_BMP_Image      http://www.fltk.org/doc-1.3/classFl__BMP__Image.html
#~ ' Fl_PNG_Image      http://www.fltk.org/doc-1.3/classFl__PNG__Image.html
#~ ' Fl_JPG_Image     http://www.fltk.org/doc-1.3/classFl__JPEG__Image.html
#~ ' Fl_WidgetSetImage http://www.fltk.org/doc-1.3/classFl__Widget.html#aff29d81e64b617158472f38d2cac186e


#~ ' be sure all image loaders are registered
Fl_Register_Images()

var bmp = Fl_BMP_ImageNew("media/renata.bmp")
var png = Fl_PNG_ImageNew("media/renata.png")
var gif = Fl_GIF_ImageNew("media/renata.gif")
var jpg = Fl_JPG_ImageNew("media/renata.jpg")


var win = Fl_WindowNew(562,148,"BMP PNG GIF JPEG extends Fl_Image")
Fl_WidgetSetImage Fl_BoxNew( 10,10,128,128),bmp
Fl_WidgetSetImage Fl_BoxNew(148,10,128,128),png
Fl_WidgetSetImage Fl_BoxNew(286,10,128,128),gif
Fl_WidgetSetImage Fl_BoxNew(424,10,128,128),jpg


Fl_windowShow win
Fl_Run()
