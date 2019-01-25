import math
import fltk_main

#test of:
# Fl_Fill_Slider() http://www.fltk.org/doc-1.3/classFl__Slider.html


const PI = arctan(1.0)*4.0
const MAX_SLIDERS = 30
var sliders: array[0 .. (MAX_SLIDERS-1), ptr Fl_Slider]

proc TimeoutHandler  (userdata: pointer) {.cdecl.} =
  var
    ow{.global.}: double = 0.0
    array: ptr Fl_Slider = userdata
    w: double
    ws: double = PI/MAX_SLIDERS
    i: int
  w=ow

  for i in 0 .. MAX_SLIDERS-1:
    Fl_ValuatorSetValue sliders[i], sin(w)
    w += ws

  ow += ws
  Fl_RepeatTimeout 1.0/30, TimeoutHandler, userdata

# create a flicker free (double buffered) window
var
  win = Fl_Double_WindowNew(20+MAX_SLIDERS*30, 175)
  i:int = 0

for i in 0 .. MAX_SLIDERS-1:
  sliders[i] = Fl_Fill_SliderNew(10+i*30, 10, 30, 150)
  Fl_WidgetSetSelectionColor sliders[i], Fl_Blue
  Fl_ValuatorBounds sliders[i], 1.0, -1.0
  Fl_ValuatorSetValue sliders[i], 0.0

Fl_WindowShow win
Fl_AddTimeout 1.0, TimeoutHandler, addr sliders
Fl_Run()
