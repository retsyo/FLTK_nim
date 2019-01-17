import fltk_main
# test of:
# DrawOverlayRect
# DrawOverlayClear

type DRAWJOB = object
    state: integer
    x,y,x2,y2: long


proc DrawCB(self: ptr FL_WIDGET): long {.cdecl.}=
    var dj: ptr DRAWJOB = cast[ptr DRAWJOB](Fl_WidgetGetUserData(self))
    var x = dj[].x
    var y = dj[].y
    var w = dj[].x2-x
    var h = dj[].y2-y

    case dj[].state:
        of 2:
            DrawOverlayClear()
            DrawOverlayRect x,y,w,h
        of 3:
            DrawOverlayClear()
            DrawSetRGBColor 0, 0, 255
            if w < 0 :
                x += w
                w = -w
            if h < 0 :
                y += h
                h = -h
            DrawRect x,y,w,h
            dj[].state = 0
        else:
            return 1

    return 1

proc HandleCB(self: ptr FL_WIDGET, event: FL_EVENT) :long {.cdecl.}=
    var dj: ptr DRAWJOB = cast[ptr DRAWJOB](Fl_WidgetGetUserData(self))
    case int(event):
        of FL_EVENT_PUSH:
            dj[].state=1
            dj[].x=Fl_EventX()
            dj[].y=Fl_EventY()
        of FL_EVENT_DRAG:
            dj[].state=2
            dj[].x2=Fl_EventX()
            dj[].y2=Fl_EventY()
        of FL_EVENT_RELEASE:
            if dj[].state == 2:
                dj[].state=3
        else:
            return 0

    Fl_WidgetRedraw self
    return 1


#
# main
#
var win = Fl_WindowNew(640,480,"DrawOverlayRect.nim")
var box = Fl_BoxExNew(0,0,640,480)
var dj: DRAWJOB
Fl_WidgetSetUserData box,dj
Fl_BoxExSetDrawCB    box,DrawCB
Fl_BoxExSetHandleCB  box,HandleCB
Fl_WindowShow win
Fl_Run()