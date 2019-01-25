import fltk_main
import media/gradient_xpm

# test of:
# Fl_PixmapNew
# FL_ALIGN_IMAGE_BACKDROP

var win  = Fl_WindowNew(320, 45, "FL_ALIGN_IMAGE_BACKDROP")
var but1 = Fl_ButtonNew( 10,  10, 140, 25, "Button 1")
var but2 = Fl_ButtonNew(160,  10, 140, 25, "Button 2")
Fl_WidgetSetImage but1, Fl_PixmapNew(gradient_xpm1)
Fl_WidgetSetAlign but1, FL_ALIGN_IMAGE_BACKDROP

Fl_WindowShow win
Fl_Run()


