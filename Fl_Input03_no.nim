import fltk_main

#~ 'test of:
#~ ' Fl_Input, Fl_Int_Input, Fl_Float_Input with ENTER key callback
#~ ' Fl_Multiline_Input with any KEY callback


proc InputCB (self:  ptr Fl_Widget) {.cdecl .} =
    #~ print "InputCB: " & *Fl_Input_GetValue(*self)
    echo "InputCB: "


var win = Fl_WindowNew(320,200)

#~ ' for this Fl_Input's we trigger an event callback for the ENTER key here (default is FL_WHEN_ENTER)
Fl_WidgetSetCallback0 Fl_InputNew      (120, 5,190, 20,"Fl_Input:")      ,InputCB
Fl_WidgetSetCallback0 Fl_Int_InputNew  (120,30,190, 20,"Fl_Int_Input:")  ,InputCB
Fl_WidgetSetCallback0 Fl_Float_InputNew(120,55,190, 20,"Fl_Float_Input:"),InputCB

var mli = Fl_Multiline_InputNew(120,80,190,100,"Fl_Multiline_Input:")

Fl_WidgetSetCallback0 mli,InputCB
#~ ' for the multiline_input we trigger an event callback for all changes
Fl_WidgetSetWhen mli,FL_WHEN_CHANGED

Fl_WindowShow win
Fl_Run()