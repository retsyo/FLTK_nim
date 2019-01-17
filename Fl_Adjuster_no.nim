import fltk_main

proc AdjusterCB  (self: ptr Fl_Widget,  box: ptr FL_BOXTYPE) {.cdecl.} =
    var tmp = Fl_WidgetGetLabel(box)
    var label = $(tmp)
    Fl_ValuatorFormat self,  tmp
    Fl_WidgetRedraw box



#~ dim as string * 128 buf1
#~ dim as string * 128 buf2
var
    buf1,  buf2: string

var win = Fl_Double_WindowNew(400, 100, "click adjusters and drag")

var btn1 = Fl_BoxNew2(FL_DOWN_BOX, 20, 30, 80, 25, buf1)
Fl_WidgetSetColor btn1, FL_WHITE
var adj1 = Fl_AdjusterNew(30+80, 30, 3*25, 25)
Fl_WidgetSetCallbackArg adj1, AdjusterCB, btn1
AdjusterCB adj1, btn1

var btn2 = Fl_BoxNew2(FL_DOWN_BOX, 50+80+4*25, 30, 80, 25, buf2)
Fl_WidgetSetColor btn2, FL_WHITE
var adj2 = Fl_AdjusterNew(10+Fl_WidgetGetX(btn2)+Fl_WidgetGetW(btn2), 10, 25, 3*25)
Fl_WidgetSetCallbackArg adj2, AdjusterCB, btn2
AdjusterCB adj2, btn2

Fl_WindowShow win
Fl_Run()
