import fltk_main

#~ 'test of:
#~ ' Fl_Input
#~ ' Fl_Int_Input
#~ ' Fl_Float_Input
#~ ' Fl_Multiline_InputNew

var win = Fl_WindowNew(320,200)
Fl_BoxNew 5, 5,110,20,"Fl_Input:"
Fl_InputNew           120, 5,128, 20

Fl_BoxNew 5,30,110,20,"Fl_Int_Input:"
Fl_Int_InputNew       120,30,128, 20

Fl_BoxNew 5,55,110,20,"Fl_Float_Input:"
Fl_Float_InputNew     120,55,128, 20

Fl_BoxNew 5,80,110,20,"Fl_Multiline_Input:"
Fl_Multiline_InputNew 120,80,128,100

Fl_WindowShow win
Fl_Run()