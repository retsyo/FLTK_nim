import fltk_main

#~ 'test of:
#~ ' Fl_Nice_Slider() http://www.fltk.org/doc-1.3/classFl__Slider.html


const PI = atn(1)*4.0
const MAX_SLIDERS = 30
dim shared as Fl_Slider ptr sliders(MAX_SLIDERS-1)

proc TimeoutHandler  (userdata: ptr any) {.cdecl.} =
  var ow: double = 0.0 {.global.}
  dim as Fl_Slider ptr array = userdata
  dim as double w,ws=PI/MAX_SLIDERS:w=ow
  for i as integer = 0 to MAX_SLIDERS-1
    Fl_ValuatorSetValue sliders(i),sin(w)
    w+=ws
  next
  ow+=ws
  Fl_RepeatTimeout 1.0/30, TimeoutHandler, userdata
end sub

#~ ' create a flicker free (double buffered) window
dim as Fl_Window ptr win = Fl_Double_WindowNew(20+MAX_SLIDERS*30,175)
for i as integer = 0 to MAX_SLIDERS-1
  sliders(i) = Fl_Nice_SliderNew(10+i*30, 10, 30,150)
  Fl_WidgetSetSelectionColor sliders(i),Fl_Red
  Fl_ValuatorBounds sliders(i),-1.0,1.0
  Fl_ValuatorSetValue sliders(i),0.0
next

Fl_WindowShow win
Fl_AddTimeout 1.0, TimeoutHandler, sliders(0)
Fl_Run()
