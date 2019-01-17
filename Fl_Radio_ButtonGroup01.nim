import fltk_main

#~ 'test of:
#~ ' Fl_GroupNew
#~ ' Fl_GroupBegin
#~ ' Fl_GroupEnd
#~ ' Fl_Radio_ButtonNew
#~ ' Fl_Radio_Round_ButtonNew
#~ ' Fl_Radio_Light_ButtonNew

var Win = Fl_WindowNew(310,180)
var Group = Fl_GroupNew(5,20,310,40,"Group A B C")

Fl_GroupBegin Group
Fl_Radio_ButtonNew( 10,25,90,30,"radio A")
Fl_Radio_ButtonNew(110,25,90,30,"radio B")
Fl_Radio_ButtonNew(210,25,90,30,"radio C")
Fl_GroupEnd Group

Group = Fl_GroupNew(5,80,315,40,"Group D E F")
Fl_GroupBegin Group
Fl_Radio_Round_ButtonNew( 10,85,90,30,"radio D")
Fl_Radio_Round_ButtonNew(110,85,90,30,"radio E")
Fl_Radio_Round_ButtonNew(210,85,90,30,"radio F")
Fl_GroupEnd Group

Group = Fl_GroupNew(5,140,315,40,"Group G H I")
Fl_GroupBegin Group
Fl_Radio_Light_ButtonNew( 10,145,90,30,"radio G")
Fl_Radio_Light_ButtonNew(110,145,90,30,"radio H")
Fl_Radio_Light_ButtonNew(210,145,90,30,"radio I")
Fl_GroupEnd Group

Fl_WindowShow Win
Fl_Run()
