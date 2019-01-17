import math
import fltk_main

#~ ' test of:
#~ '   Fl_Shared_ImageCopy2  http://www.fltk.org/doc-1.3/classFl__Shared__Image.html#a4ee1e0ebee69974f8dfcf4261fffaf00

Fl_Register_Images()
Fl_Shared_ImageGet("media/win.png")
Fl_Shared_ImageGet("media/lin.png")
Fl_Shared_ImageGet("media/renata.gif")
Fl_Shared_ImageGet("media/renata.bmp")
Fl_Shared_ImageGet("media/renata.jpg")
Fl_Shared_ImageGet("media/renata.png")

var nImages = Fl_Shared_ImageNumImages()
var win = Fl_WindowNew(256*4,512,"Fl_Shared_ImageCopy")
var
    x = 0
    i = 0
for i in 0 .. nImages-1:
  var size = 2^(i+1)*8
  var box = Fl_BoxNew(x, 0, size, size)
  var img = Fl_Shared_ImageCopy2(Fl_Shared_ImageImages()[i], size, size)
  Fl_WidgetSetImage box, img
  x += size

Fl_WindowShow win
Fl_Run()
