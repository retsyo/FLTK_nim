import fltk_main


#~ 'test of:
#~ ' Fl_WidgetSetCallbackArg
#~ ' Fl_WidgetSetWhen

#~ ' near the same as Fl_Input03.bas
#~ ' but the userdata callback argument points to an Fl_Input_ ptr now.

proc InputCB (self: ptr Fl_Widget, input_TT: ptr ulong) {.cdecl.} =
    #~ print "InputCB: " & *Fl_Input_GetValue(input_)
    echo "InputCB"

var win = Fl_WindowNew(320,200)
var inp1 = Fl_InputNew(120, 5,190, 20,"Fl_Input:")
var inp2 = Fl_Int_InputNew(120,30,190, 20,"Fl_Int_Input:")
var inp3 = Fl_Float_InputNew(120,55,190, 20,"Fl_Float_Input:")
var inp4 = Fl_Multiline_InputNew(120,80,190,100,"Fl_Multiline_Input:")
Fl_WidgetSetWhen inp4,FL_WHEN_CHANGED
Fl_WidgetSetCallbackArg inp1,InputCB,inp1
Fl_WidgetSetCallbackArg inp2,InputCB,inp2
Fl_WidgetSetCallbackArg inp3,InputCB,inp3
Fl_WidgetSetCallbackArg inp4,InputCB,inp4

Fl_WindowShow win
Fl_Run()