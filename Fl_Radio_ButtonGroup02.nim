import fltk_main

#~ 'test of:
#~ ' Fl_GroupNew
#~ ' Fl_GroupBegin
#~ ' Fl_GroupEnd
#~ ' Fl_Radio_ButtonNew
#~ ' Fl_Radio_Round_ButtonNew
#~ ' Fl_Radio_Light_ButtonNew
#~ ' Fl_WidgetSetSelectionColor
#~ ' Fl_RGB_Color
#~ ' Fl_GroupSetResizable
#~ ' Fl_WindowSizeRange

var win = Fl_WindowNew(310, 180, "resize me ...")
var grp = Fl_GroupNew(5, 20, 310, 40, "Buttongroup")
Fl_Radio_ButtonNew( 10, 25, 90, 30, "Button A")
Fl_WidgetSetSelectionColor(Fl_Radio_ButtonNew(110, 25, 90, 30, "Button B"), FL_RED)
Fl_Radio_ButtonNew(210, 25, 90, 30, "Button C")
Fl_GroupEnd grp

grp = Fl_GroupNew(5, 80, 315, 40, "Roundgroup")
Fl_Radio_Round_ButtonNew( 10, 85, 90, 30, "Round D")
Fl_Radio_Round_ButtonNew(110, 85, 90, 30, "Round E")
Fl_WidgetSetSelectionColor(Fl_Radio_Round_ButtonNew(210, 85, 90, 30, "Round F"), FL_YELLOW)
Fl_GroupEnd grp

grp = Fl_GroupNew(5, 140, 315, 40, "Lightgroup")
Fl_WidgetSetSelectionColor(Fl_Radio_Light_ButtonNew( 10, 145, 90, 30, "Light G"), FL_GREEN)
Fl_Radio_Light_ButtonNew(110, 145, 90, 30, "Light H")
Fl_WidgetSetSelectionColor(Fl_Radio_Light_ButtonNew(210, 145, 90, 30, "Light I"), Fl_RGB_Color(0, 128, 128))
Fl_GroupEnd grp

Fl_WindowEnd win
Fl_GroupSetResizable win, win
Fl_WindowSizeRange win, 240, 120
Fl_WindowShow win
Fl_Run()
