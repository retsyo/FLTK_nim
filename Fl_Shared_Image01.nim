import fltk_main

# test of:

# class Fl_Shared_Image  http://www.fltk.org/doc-1.3/classFl__Shared__Image.html
# Fl_Register_Images()
# Fl_Shared_ImageGet()
# Fl_Shared_ImageNumImages()

# enable image loaders (bmp, gif, jpg, png, ...)
Fl_Register_Images()

# load 4 images in the shared image container
var img1 = Fl_Shared_ImageGet("media/renata.bmp")
var img2 = Fl_Shared_ImageGet("media/renata.png")
var img3 = Fl_Shared_ImageGet("media/renata.gif")
var img4 = Fl_Shared_ImageGet("media/renata.jpg")
echo "num images loaded = " & $Fl_Shared_ImageNumImages()
# load same bmp a second time doesn#t increment the num count.
echo "load same bmp again !"
var img5 = Fl_Shared_ImageGet("media/renata.bmp")
echo "num images loaded = " & $Fl_Shared_ImageNumImages()

var win=Fl_WindowNew(694, 148, "Fl_Shared_Image01.nim")
Fl_WidgetSetImage Fl_BoxNew( 10, 10, 128, 128), img1
Fl_WidgetSetImage Fl_BoxNew(148, 10, 128, 128), img2
Fl_WidgetSetImage Fl_BoxNew(286, 10, 128, 128), img3
Fl_WidgetSetImage Fl_BoxNew(424, 10, 128, 128), img4
Fl_WidgetSetImage Fl_BoxNew(556, 10, 128, 128), img5

Fl_WindowShow win
Fl_Run()

