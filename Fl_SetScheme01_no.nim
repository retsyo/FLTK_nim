import fltk_main

# test of:
# Fl_SetScheme "none"
# Fl_SetScheme "plastic"
# Fl_SetScheme "gtk+"
# Fl_SetScheme "gleam"

#~ proc ButtonCB  (widget: ptr FL_WIDGET, scheme: ptr any){.cdecl.} =
proc ButtonCB  (widget: ptr FL_WIDGET, scheme: cstring){.cdecl.} =
  Fl_SetScheme scheme
  Fl_Redraw()


proc SliderCB (widget: ptr FL_WIDGET, sld: ptr Fl_Hor_Nice_Slider){.cdecl.} =
    var scheme = Fl_ValuatorGetValue(sld)
    case scheme:
        of 1:
            Fl_SetScheme "gtk+"
        of 2:
            Fl_SetScheme "plastic"
        of 3:
            Fl_SetScheme "gleam"
        else :
            Fl_SetScheme "none"

    Fl_Redraw()

#
# main
#
var win = Fl_WindowNew(320, 210, "Fl_SetScheme()")
Fl_WidgetSetCallbackArg Fl_ButtonNew( 10, 10    , 140, 32, "None"   ), ButtonCB, "none"
Fl_WidgetSetCallbackArg Fl_ButtonNew( 10, 10 + 40, 140, 32, "Gtk+"   ), ButtonCB, "gtk+"
Fl_WidgetSetCallbackArg Fl_ButtonNew( 10, 10 + 80, 140, 32, "Plastic"), ButtonCB, "plastic"
Fl_WidgetSetCallbackArg Fl_ButtonNew( 10, 10 +120, 140, 32, "Gleam"  ), ButtonCB, "gleam"

Fl_WidgetSetCallbackArg Fl_Radio_Round_ButtonNew(170, 10   ,  90, 30, "None"   ), ButtonCB, "none"
Fl_WidgetSetCallbackArg Fl_Radio_Round_ButtonNew(170, 10 + 40, 90, 30, "Gtk+"   ), ButtonCB, "gtk+"
Fl_WidgetSetCallbackArg Fl_Radio_Round_ButtonNew(170, 10 + 80, 90, 30, "Plastic"), ButtonCB, "plastic"
Fl_WidgetSetCallbackArg Fl_Radio_Round_ButtonNew(170, 10 + 120, 90, 30, "Gleam"  ), ButtonCB, "gleam"

var sld = Fl_Hor_Nice_SliderNew(10, 170, 300, 30)
Fl_WidgetSetCallbackArg sld, SliderCB, sld
Fl_ValuatorSetStep sld, 1
Fl_ValuatorBounds  sld, 0, 3
Fl_WindowShow Win
Fl_Run()
