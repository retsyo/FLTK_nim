import fltk_main

# test of:
# Fl_WindowBegin()
# Fl_WindowEnd()
# Fl_GroupBegin()
# Fl_GroupEnd()
# Fl_GroupSetResizable()
# Fl_WindowSizeRange()

#
# main
#

proc `\` (x:long; y: long): long = long(x.float / y.float)
var win = Fl_Double_WindowNew(640, 480, "Fl_Group02.bas resize me ...")
Fl_WindowBegin win
var w=Fl_WidgetGetW(win)
var h=Fl_WidgetGetH(win)
var grp=Fl_GroupNew(0, 0, w, h)
var bw=w
var bh=h\2\3
var bt=BoxType(FL_DOWN_BOX)
Fl_GroupBegin grp
Fl_BoxNew2(bt, 0, bh*0, w, bh, "h box 1")
Fl_BoxNew2(bt, 0, bh*1, w, bh, "h box 2")
Fl_BoxNew2(bt, 0, bh*2, w, bh, "h box 3")
bw=w\3
bh=h\2
Fl_BoxNew2(bt, bw*0, bh, bw, bh, "v box 1")
Fl_BoxNew2(bt, bw*1, bh, bw, bh, "v box 2")
Fl_BoxNew2(bt, bw*2, bh, bw, bh, "v box 3")
Fl_GroupEnd grp
Fl_WindowEnd win

Fl_GroupSetResizable win, grp
# min size
Fl_WindowSizeRange win, 160, 120
Fl_WindowShow win
Fl_Run()
