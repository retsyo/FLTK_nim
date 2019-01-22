from winim import HIWORD, LOWORD
import fltk_main

# test of:
# icon = Fl_File_IconNew(patter, type, size, data)

# The Fl_File_Icon class is a container for vector graphics.
# You can create and use your own vector images.

# bottom, left is the vertex position     0,    0
# the center  is the vertex position  5000, 5000
# right , top  is the vertex position 10000, 10000

#~ {. emit: """
#~ #define DOP_COLOR(col) HIWORD(col), LOWORD(col)
#~ """ .}

template DOP_COLOR(col: untyped):untyped=
    (HIWORD(col), LOWORD(col))

#~ template DOP_COLOR*(col: untyped): untyped =
  #~ HIWORD(col)
  #~ LOWORD(col)

var opcodes: array[0, short] = [
  FL_DOP_COLOR   , HIWORD(FL_RED), LOWORD(FL_RED),
  FL_DOP_LINE    ,
    FL_DOP_VERTEX,  0,    0,
    FL_DOP_VERTEX, 10000, 10000,
  FL_DOP_END   ,
  FL_DOP_COLOR   , FL_DATAOPCODE(HIWORD(FL_GREEN)), FL_DATAOPCODE(LOWORD(FL_GREEN)),
  FL_DOP_LINE    ,
    FL_DOP_VERTEX,    0, 10000,
    FL_DOP_VERTEX, 10000,    0,
  FL_DOP_END     ,
  FL_DOP_COLOR   , FL_DATAOPCODE(HIWORD(FL_BLUE)), FL_DATAOPCODE(LOWORD(FL_BLUE)),
  FL_DOP_LINE    ,
    FL_DOP_VERTEX,    0, 5000,
    FL_DOP_VERTEX, 10000, 5000,
  FL_DOP_END     ,
  FL_DOP_COLOR   , FL_DATAOPCODE(HIWORD(Fl_DARK_YELLOW)), FL_DATAOPCODE(LOWORD(Fl_DARK_YELLOW)),
  FL_DOP_POLYGON ,
    FL_DOP_VERTEX, 1000, 1000,
    FL_DOP_VERTEX, 1000, 9000,
    FL_DOP_VERTEX, 9000, 9000,
    FL_DOP_VERTEX, 9000, 1000,
    FL_DOP_VERTEX, 1000, 1000,
    # opposite direction = hole
    FL_DOP_VERTEX, 1500, 1500,
    FL_DOP_VERTEX, 8500, 1500,
    FL_DOP_VERTEX, 8500, 8500,
    FL_DOP_VERTEX, 1500, 8500,
    FL_DOP_VERTEX, 1500, 1500,
  FL_DOP_END
] #]

proc ButtonCB  (self: ptr Fl_Widget, btn: ptr any) {.cdecl.} =
  flMessageTitle "ButtonCB"
  flMessage "you pressed the button."

proc SliderCB cdecl (self: ptr Fl_Widget, sld: ptr any)
  var win = Fl_WidgetWindow(self)
  var btn = Fl_WidgetGetUserdata(win)
  var size = Fl_ValuatorGetValue(sld)
  Fl_WidgetResize btn, 256-size*0.5, 256-size*0.5, size, size
  Fl_WidgetRedraw win

#
# main
#
Fl_SetScheme "plastic"
Fl_SetScheme "gleam"
# create icon by array of vector opcodes
var icn = Fl_File_IconNew("", FL_FILEICON_ANY, high(opcodes), opcodes)
var win = Fl_Double_WindowNew(512, 512+50, "Fl_File_Icon03.nim")
Fl_WidgetSetColor win, Fl_RGB_Color(128, 128, 128)
var btn = Fl_ButtonNew(0, 0, 512, 512)
Fl_WidgetSetColor btn, Fl_RGB_Color(128, 128, 128)
Fl_WidgetSetCallbackArg btn, ButtonCB, btn
Fl_File_IconLabel icn, btn

Fl_WidgetSetUserdata win, btn

var sld = Fl_Hor_Value_SliderNew(10, 512, 492, 30, "scale")
Fl_WidgetSetColor sld, Fl_RGB_Color(128, 128, 128)
Fl_WidgetSetSelectionColor sld, Fl_RGB_Color(128, 128, 128)

Fl_WidgetSetCallbackArg sld, SliderCB, sld
Fl_ValuatorBounds sld, 8, 512
Fl_ValuatorSetValue sld, 256
SliderCB sld, sld


Fl_WindowShow win
Fl_Run()
