import fltk_main

# test of:

# Fl_WidgetSetColor
# Fl_Background
# Fl_WidgetSetSelectionColor

var win = Fl_WindowNew(500, 200, "Tabs Example")
Fl_WidgetSetColor win, FL_RED
Fl_Background 0, 255, 0
var tabs = Fl_TabsNew(10, 10, 500-20, 200-20)
Fl_WidgetSetColor tabs, FL_RGB_Color(155, 128, 0)

var tabA = Fl_TabNew(10, 35, 500-20, 200-45, "Tab A")
Fl_WidgetSetColor tabA, FL_RGB_Color(128, 128, 0)
Fl_WidgetSetSelectionColor tabA, FL_RGB_Color(0, 255, 255)
Fl_WidgetSetColor Fl_ButtonNew(50,  60, 90, 25, "Button A1"), FL_RGB_Color(255, 0, 0)
Fl_WidgetSetColor Fl_ButtonNew(50,  90, 90, 25, "Button A2"), FL_RGB_Color(0, 255, 0)
Fl_WidgetSetColor Fl_ButtonNew(50, 120, 90, 25, "Button A3"), FL_RGB_Color(0, 0, 255)
Fl_TabEnd tabA

var tabB = Fl_TabNew(10, 35, 500-10, 200-35, "Tab B")
Fl_WidgetSetColor tabB, FL_RGB_Color(0, 128, 128)
Fl_WidgetSetSelectionColor tabB, FL_RGB_Color(255, 255, 0)
Fl_WidgetSetColor Fl_ButtonNew( 50, 60, 90, 25, "Button B1"), FL_RGB_Color(255, 0, 0)
Fl_WidgetSetColor Fl_ButtonNew(150, 60, 90, 25, "Button B2"), FL_RGB_Color(0, 255, 0)
Fl_WidgetSetColor Fl_ButtonNew(250, 60, 90, 25, "Button B3"), FL_RGB_Color(0, 0, 255)
Fl_TabEnd tabB
Fl_TabsEnd tabs
Fl_WindowEnd win

Fl_WindowShow win
Fl_Run()
