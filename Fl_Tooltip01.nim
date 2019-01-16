import fltk_main

var win = Fl_WindowNew(400,300,"Font's and Tooltip's")
var box = Fl_BoxNew2(BoxType(FL_ROUNDED_BOX),100,100,200,100,"box")
var btn = Fl_ButtonNew(10,10,96,32,"button")

Fl_WidgetSetTooltip win,"I'm a FLTK Window"
Fl_WidgetSetTooltip box,"I'm a FLTK Box"
Fl_WidgetSetTooltip btn,"I'm a FLTK Button"

Fl_WidgetSetLabelFont box, FL_TIMES
Fl_WidgetSetLabelSize box, 64

Fl_WidgetSetLabelFont btn, Fl_TIMES_ITALIC
Fl_WidgetSetLabelSize btn,16
Fl_WindowShow win
Fl_Run()