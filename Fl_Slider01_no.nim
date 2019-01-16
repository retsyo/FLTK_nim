import fltk_main

#~ 'test of:
#~ ' Fl_SliderNew()      http://www.fltk.org/doc-1.3/classFl__Slider.html
#~ ' Fl_Fill_SliderNew()
#~ ' Fl_Nice_SliderNew()
#~ ' Fl_Value_SliderNew()

var win = Fl_WindowNew(390,210)
Fl_SliderNew          ( 10, 10, 30,180,"V-Slider")
Fl_Fill_SliderNew     ( 60, 10, 30,180,"V-Fill")
Fl_Nice_SliderNew     (110, 10, 30,180,"V-Nice")
Fl_Value_SliderNew    (160, 10, 30,180,"V-Value")

Fl_Hor_SliderNew      (200, 10,180, 30,"H-Slider")
Fl_Hor_Fill_SliderNew (200, 60,180, 30,"H-Fill")
Fl_Hor_Nice_SliderNew (200,110,180, 30,"H-Nice")
Fl_Hor_Value_SliderNew(200,160,180, 30,"H-Value")

Fl_WindowShow win
Fl_Run()
