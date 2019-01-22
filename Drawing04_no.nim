import fltk_main

# test of vector drawing:

proc DrawCB(self: ptr Fl_BoxEx): long{.cdecl.} =
    var zoom:double = Fl_ValuatorGetValue(cast[ptr Fl_Valuator](Fl_WidgetGetUserData(self)))

    DrawPushMatrix()
    DrawScale zoom

    DrawSetRGBColor 255, 255, 255
    DrawBeginLine()
    DrawVertex 0, 0
    DrawVertex 100, 100
    DrawEndLine()

    DrawSetRGBColor 255, 0, 0
    DrawBeginLoop()
    DrawVertex   0,   0
    DrawVertex   0, 100
    DrawVertex 100, 100
    DrawVertex 100,   0
    DrawEndLoop()

    DrawSetRGBColor 0, 255, 0
    DrawBeginPolygon()
    DrawVertex 10, 10
    DrawVertex 10, 90
    DrawVertex 90, 90
    DrawEndPolygon()

    DrawSetRGBColor 0, 0, 255
    DrawBeginComplexPolygon()
    DrawVertex 10, 10
    DrawVertex 90, 90
    DrawVertex 90, 10
    DrawVertex 10, 10
    # opposite direction = hole
    DrawVertex 20, 20
    DrawVertex 80, 20
    DrawVertex 80, 80
    DrawVertex 20, 20
    DrawEndComplexPolygon()

    DrawSetRGBColor 255, 0, 255
    DrawBeginComplexPolygon()
    DrawArc2 200, 100, 100, 0, 360
    # opposite direction = hole
    DrawArc2 200, 100, 90, 360, 0
    DrawEndComplexPolygon()

    DrawSetRGBColor 0, 128, 128
    DrawBeginComplexPolygon()
    DrawArc2 200, 100, 60, 0, 90
    # opposite direction = hole
    DrawArc2 200, 100, 10, 90, 0
    DrawEndComplexPolygon()
    DrawPopMatrix()

    DrawSetColor FL_BLACK
    DrawSetFont Fl_TIMES,  FL_FONTSIZE(5+40*zoom)
    var z = "zoom=" & $zoom #format(zoom, "0.00")
    DrawStr z, 0, long(120 * zoom)
    return 0


proc SliderCB (self: ptr Fl_Widget, sld: ptr Fl_Hor_Value_Slider){.cdecl.}=
    # trigger DrawCB
    Fl_WidgetRedraw Fl_WidgetWindow(self)

#
# main
#
var win = Fl_Double_WindowNew(640, 480, "Drawing04.nim")
var box = Fl_BoxExNew(0, 0, 640, 430)
#~ var box = Fl_BoxNew(0, 0, 640, 430)
var sld = Fl_Hor_Value_SliderNew(10, 430, 620,  30, "zoom")
Fl_BoxExSetDrawCB       box, DrawCB
#~ Fl_BoxSetDrawCB       box, DrawCB
Fl_WidgetSetUserData    box, sld
Fl_WidgetSetCallbackArg sld, SliderCB, sld
Fl_ValuatorBounds       sld, 0.01, 3.0
Fl_ValuatorSetValue     sld, 1.0

Fl_WindowShow win
Fl_Run()
