import fltk_main

#~ 'test of:
#~ ' Fl_ValuatorGetValue
#~ ' Fl_ValuatorSetStep
#~ ' Fl_ValuatorBounds

proc SliderCB(self: ptr Fl_Widget, sld: ptr Fl_Valuator) {.cdecl.} =
  echo "SliderCB: " & $Fl_ValuatorGetValue(sld)


var win = Fl_WindowNew(150,240)
var sld = Fl_SliderNew(60, 35, 30,170)
Fl_WidgetSetCallbackArg sld, SliderCB, sld
Fl_ValuatorSetStep sld,0.05
Fl_ValuatorBounds  sld,0,1
Fl_WindowShow win
Fl_Run()
