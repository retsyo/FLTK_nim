import random
import fltk_main

# test of:
# Fl_GroupSetResizable  http://www.fltk.org/doc-1.3/classFl__Group.html#afd220e45e1ac817bde7d6a25fdf74e37

proc `\` (x:long; y: long): long = long(x.float / y.float)

const BOX_STYLE = FL_DOWN_BOX

# get screensize and calculate window size
var
    sw:long = Fl_GetW()
    ww = sw\2
    sh = Fl_GetH()
    wh=sh\2

# create a centered flicker free (double buffered) window
var win = Fl_Double_WindowNew2(ww\2, wh\2, ww, wh,  "resize me ...")

Fl_WindowBegin win # open the child list
var
    bw = ww\4
    bh = wh\4

# add 4 boxes in first row
Fl_WidgetSetColor Fl_BoxNew2(BOX_STYLE, bw*0, bh*0, bw*1, bh*1), Fl_RGB_Color(ubyte(rand(255)), ubyte(rand(255)), ubyte(rand(255)))
Fl_WidgetSetColor Fl_BoxNew2(BOX_STYLE, bw*1, bh*0, bw*1, bh*1), Fl_RGB_Color(ubyte(rand(255)), ubyte(rand(255)), ubyte(rand(255)))
Fl_WidgetSetColor Fl_BoxNew2(BOX_STYLE, bw*2, bh*0, bw*1, bh*1), Fl_RGB_Color(ubyte(rand(255)), ubyte(rand(255)), ubyte(rand(255)))
Fl_WidgetSetColor Fl_BoxNew2(BOX_STYLE, bw*3, bh*0, bw*1, bh*1), Fl_RGB_Color(ubyte(rand(255)), ubyte(rand(255)), ubyte(rand(255)))

# add 3 boxes in second row (height=2 * row height)
Fl_WidgetSetColor Fl_BoxNew2(BOX_STYLE, bw*0, bh*1, bw*1, bh*2), Fl_RGB_Color(ubyte(rand(255)), ubyte(rand(255)), ubyte(rand(255)))
Fl_WidgetSetColor Fl_BoxNew2(BOX_STYLE, bw*1, bh*1, bw*2, bh*2), FL_BLACK
Fl_WidgetSetColor Fl_BoxNew2(BOX_STYLE, bw*3, bh*1, bw*1, bh*2), Fl_RGB_Color(ubyte(rand(255)), ubyte(rand(255)), ubyte(rand(255)))

# add 2 boxes in third row
Fl_WidgetSetColor Fl_BoxNew2(BOX_STYLE, bw*0, bh*3, bw*2, bh*1), Fl_RGB_Color(ubyte(rand(255)), ubyte(rand(255)), ubyte(rand(255)))
Fl_WidgetSetColor Fl_BoxNew2(BOX_STYLE, bw*2, bh*3, bw*2, bh*1), Fl_RGB_Color(ubyte(rand(255)), ubyte(rand(255)), ubyte(rand(255)))

Fl_WindowEnd win # close the child list

Fl_GroupSetResizable win, win # all child boxes are resized proportional

Fl_WindowShow win # bring the window on the screen

Fl_Run() # enter the message loop
