import fltk_main

proc ButtonHandleCB(self: ptr Fl_ButtonEx, event: Fl_Event): long {.cdecl.} =
    var msg: string
    case int(event):
        of FL_EVENT_PUSH:
            msg = $Fl_WidgetGetLabel(self) & " pushed with mouse button "
            case Fl_EventButtons():
                of FL_BUTTON1 :
                    msg &= "1 "
                of FL_BUTTON2 :
                    msg &= "2 "
                of FL_BUTTON3 :
                    msg &= "3 "
                else:
                    discard

            msg &= "at position " & $Fl_EventX() & "," & $Fl_EventY()
            echo msg
        else:
            discard

    return Fl_ButtonExHandleBase(self,event) # don't eat the event


var win  = Fl_WindowNew2(100,100,320,200,"ButtonEx02")
Fl_ButtonExSetHandleCB Fl_ButtonExNew( 10,10,300,30,"Button A"),ButtonHandleCB
Fl_ButtonExSetHandleCB Fl_ButtonExNew( 10,50,300,30,"Button B"),ButtonHandleCB
Fl_ButtonExSetHandleCB Fl_ButtonExNew( 10,90, 90,30,"Button C"),ButtonHandleCB
Fl_ButtonExSetHandleCB Fl_ButtonExNew(110,90,100,30,"Button D"),ButtonHandleCB
Fl_ButtonExSetHandleCB Fl_ButtonExNew(220,90, 90,30,"Button E"),ButtonHandleCB
Fl_WindowShow Win
Fl_Run()
