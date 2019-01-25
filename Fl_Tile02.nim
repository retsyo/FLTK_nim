import random
#~ import lenientops
import fltk_main

proc `\=` (x: var long; y: long) =
    x = long(x.float / y.float)

proc `*` (x: long; y: float): long = long(x.float * y.float)

proc CreateMainWindow(): ptr FL_WINDOW =
    # create flicker free (double buffered) window

    #~ echo Fl_GetW()
    #~ echo int(Fl_GetW()*0.75)  # default will be 0!!

    var win = Fl_Double_WindowNew(Fl_GetW()*0.75, Fl_GetH()*0.75, "drag the lines around and see what happens !")
    Fl_WindowBegin win
    var w = Fl_WidgetGetW(win)
    var h=Fl_WidgetGetH(win)

    # create a resizable group as child
    var grp = Fl_GroupNew(0, 0, w, h)
    Fl_GroupBegin grp
    # place a FL_TILE inside the group
    var tile = Fl_TileNew(0, 0, w, h)
    Fl_TileBegin tile
    w \= 4
    h \= 4

    echo w
    echo h
    # 4 widgets in first row
    Fl_WidgetSetColor Fl_BoxNew2(FL_DOWN_BOX, w*0, h*0, w*1, h*1), Fl_RGB_Color(rand(255), rand(255), rand(255))
    Fl_WidgetSetColor Fl_BoxNew2(FL_DOWN_BOX, w*1, h*0, w*1, h*1), Fl_RGB_Color(rand(255), rand(255), rand(255))
    Fl_WidgetSetColor Fl_BoxNew2(FL_DOWN_BOX, w*2, h*0, w*1, h*1), Fl_RGB_Color(rand(255), rand(255), rand(255))
    Fl_WidgetSetColor Fl_BoxNew2(FL_DOWN_BOX, w*3, h*0, w*1, h*1), Fl_RGB_Color(rand(255), rand(255), rand(255))
    # 3 widgets in second row
    Fl_WidgetSetColor Fl_BoxNew2(FL_DOWN_BOX, w*0, h*1, w*1, h*2), Fl_RGB_Color(rand(255), rand(255), rand(255))
    Fl_WidgetSetColor Fl_BoxNew2(FL_DOWN_BOX, w*1, h*1, w*2, h*2), FL_BLACK
    Fl_WidgetSetColor Fl_BoxNew2(FL_DOWN_BOX, w*3, h*1, w*1, h*2), Fl_RGB_Color(rand(255), rand(255), rand(255))
    # 2 widgets in third row
    Fl_WidgetSetColor Fl_BoxNew2(FL_DOWN_BOX, w*0, h*3, w*2, h*1), Fl_RGB_Color(rand(255), rand(255), rand(255))
    Fl_WidgetSetColor Fl_BoxNew2(FL_DOWN_BOX, w*2, h*3, w*2, h*1), Fl_RGB_Color(rand(255), rand(255), rand(255))
    Fl_TileEnd tile # close the tile
    Fl_GroupEnd grp # close the resizable group
    Fl_WindowEnd win # end of adding window childs
    Fl_GroupSetResizable win, grp
    Fl_WindowSizeRange win, 160, 100
    return win

Fl_WindowShow CreateMainWindow()
Fl_Run()
