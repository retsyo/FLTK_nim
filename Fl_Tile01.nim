import fltk_main

#~ ' test of:
#~ ' Fl_Tile    http://www.fltk.org/doc-1.3/classFl__Tile.html

proc `\` (x: long; y: long): long = long(x.float / y.float)

var win = Fl_Double_WindowNew(512,512,"drag the lines or the cross in the middle")
var w   = Fl_WidgetGetW(win)
var h   = Fl_WidgetGetH(win)
var til = Fl_TileNew(0,0,w,h)
Fl_TileBegin til
w=w \ 2
h=h \ 2
Fl_WidgetSetBox Fl_Round_ClockNew(0,0,w,h),BoxType(FL_DOWN_BOX)
Fl_WidgetSetBox Fl_Round_ClockNew(w,0,w,h),BoxType(FL_DOWN_BOX)
Fl_WidgetSetBox Fl_Round_ClockNew(0,h,w,h),BoxType(FL_DOWN_BOX)
Fl_WidgetSetBox Fl_Round_ClockNew(w,h,w,h),BoxType(FL_DOWN_BOX)
Fl_TileEnd til
Fl_GroupResizeable win,til
Fl_WindowSizeRange win,256,256
Fl_WindowShow win
Fl_Run()
