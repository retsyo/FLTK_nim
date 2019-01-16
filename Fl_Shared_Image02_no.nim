import fltk_main

#~ ' test of:

#~ ' class Fl_Shared_Image  http://www.fltk.org/doc-1.3/classFl__Shared__Image.html
#~ ' Fl_Shared_ImageNumImages()
#~ ' Fl_Shared_ImageImages()

#~ ' enable all image loaders
Fl_Register_Images()

#~ ' load 4 images in the shared image container
Fl_Shared_ImageGet("media/renata.bmp")
Fl_Shared_ImageGet("media/renata.png")
Fl_Shared_ImageGet("media/renata.gif")
Fl_Shared_ImageGet("media/renata.jpg")

var win=Fl_WindowNew(10+Fl_Shared_ImageNumImages()*138,148,"Fl_Shared_Image02.bas")
#~ ' set images to a widget

var i = 0
for i in 0 .. Fl_Shared_ImageNumImages()-1:
  Fl_WidgetSetImage Fl_BoxNew( 10+i*138,10,128,128), Fl_Shared_ImageImages[i]


Fl_WindowShow win
Fl_Run()




