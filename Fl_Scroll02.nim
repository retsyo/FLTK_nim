import random
import fltk_main

# test of:
# Fl_ScrollScrollbar
# Fl_ScrollScrollTo

var win = Fl_WindowNew(512, 512, "Fl_Scroll widget")
var scr = Fl_ScrollNew(20, 20, Fl_WidgetGetW(win)-40, Fl_WidgetGetH(win)-40)

# get the V Scrollbar
var V = Fl_ScrollScrollbar(scr)
#  change alignment of the widget
Fl_WidgetSetAlign V, Fl_ALIGN_TOP_LEFT
# Fl_WidgetSetAlign v, Fl_ALIGN_TOP_RIGHT
# Fl_WidgetSetAlign v, Fl_ALIGN_BOTTOM_LEFT
# Fl_WidgetSetAlign v, Fl_ALIGN_BOTTOM_RIGHT # <-- default

# change the colors of V Scrollbar widget
Fl_WidgetSetColorSel(V,
    Fl_RGB_Color(rand(255), rand(255), rand(255)),
    Fl_RGB_Color(rand(255), rand(255), rand(255)))
# get the H Scrollbar
var H = Fl_ScrollHScrollbar(scr)
Fl_WidgetSetColorSel(H,
    Fl_RGB_Color(rand(255), rand(255), rand(255)),
    Fl_RGB_Color(rand(255), rand(255), rand(255)))

# create some buttons
var x, y: integer
var label: string

for y in 0 .. 49:
  for x in 0 .. 99:
    label = "[" & $(1+y*49 + x) & "]"
    var btn = Fl_ButtonNew(x*50, y*50, 48, 48)
    Fl_WidgetCopyLabel btn, label
    Fl_WidgetSetColorSel(btn, Fl_RGB_Color(rand(255), rand(255), rand(255)),
                             Fl_RGB_Color(rand(255), rand(255), rand(255)))

# scroll to pixel pos 500, 750
Fl_ScrollScrollTo scr, 500, 750

Fl_GroupSetResizable win, scr
Fl_WindowShow win
Fl_Run()