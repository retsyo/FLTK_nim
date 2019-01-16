import fltk_main


#~ ' test of:
#~ ' Fl_Pack (VERTICAL) http://www.fltk.org/doc-1.3/classFl__Pack.html

proc `/`(x:long; y: long): long = long(x.float / y.float)

proc CreateMainWindow(): ptr FL_WINDOW {.cdecl.} =
    var
        w:long = 300
        h:long = 900

#~ ' create flicker free double window
    var win = Fl_Double_WindowNew(w,h,"resize me horizontal")
    Fl_WindowBegin win
    w=Fl_WidgetGetW(win)
    h=Fl_WidgetGetH(win)
    var packV =  Fl_PackNew(0,0,w,h)
    #~ Fl_WidgetSetType packV, ubyte(FL_PACK_VERTICAL)
    Fl_WidgetSetType packV, ubyte(0)

    Fl_GroupBegin(packV)
    h = h / 3
    Fl_WidgetSetBox Fl_Round_ClockNew(0,0,w,h),FL_DOWN_BOX
    Fl_WidgetSetBox Fl_Round_ClockNew(0,0,w,h),FL_DOWN_BOX
    Fl_WidgetSetBox Fl_Round_ClockNew(0,0,w,h),FL_DOWN_BOX
    Fl_GroupEnd packV
    Fl_WindowEnd win
    Fl_GroupSetResizable win,win
    Fl_WindowSizeRange win,160,Fl_WidgetGetH(win)
    return win




Fl_WindowShow CreateMainWindow()
Fl_Run()
