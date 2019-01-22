import fltk_main

#~ ' test of:
#~ ' Fl_Pack (HORIZONTAL)  http://www.fltk.org/doc-1.3/classFl__Pack.html

proc `//=` (x:var long; y: long) =
    x = long(x.float / y.float)

proc CreateMainWindow(): ptr FL_WINDOW {.cdecl.} =
    var
        w:long = 600
        h:long = 200

    #~ ' create flicker free double window
    var win = Fl_Double_WindowNew(w,h,"resize me vertical")
    Fl_WindowBegin win
    w = Fl_WidgetGetW(win)
    h = Fl_WidgetGetH(win)
    var packV =  Fl_PackNew(0,0,w,h)
    #~ Fl_WidgetSetType packV,FL_PACK_HORIZONTAL
    Fl_WidgetSetType packV, 1
    Fl_GroupBegin(packV)
    w //= 3
    Fl_WidgetSetBox Fl_Round_ClockNew(0,0,w,h),FL_DOWN_BOX
    Fl_WidgetSetBox Fl_Round_ClockNew(0,0,w,h),FL_DOWN_BOX
    Fl_WidgetSetBox Fl_Round_ClockNew(0,0,w,h),FL_DOWN_BOX
    Fl_GroupEnd packV
    Fl_WindowEnd win
    Fl_GroupSetResizable win,win
    Fl_WindowSizeRange win, Fl_WidgetGetW(win), 100
    return win



Fl_WindowShow CreateMainWindow()
Fl_Run()
