import fltk_main

proc ButtonHandleCB  (self: ptr any, event: Fl_Event): long {.cdecl.}=
    var msg: string
    case event
        of  FL_EVENT_PUSH:
            msg = Fl_WidgetGetLabel(self) & " pushed with mouse button "
            case Fl_EventButtons():
                of FL_BUTTON1 :
                    msg &= "1 "
                of FL_BUTTON2 :
                    msg &= "2 "
                of FL_BUTTON3 :
                    msg &= "3 "

            msg &= "at position " & Fl_EventX() & ", " & Fl_EventY()
            echo msg

    return Fl_ButtonExHandleBase(self, event) # don't eat the event

var
    Win  = Fl_WindowNew(320, 200)
    BtnA = Fl_ButtonExNew( 10, 10, 300, 30, "Button A")
    BtnB = Fl_ButtonExNew( 10, 50, 300, 30, "Button B")
    BtnC = Fl_ButtonExNew( 10, 90, 90, 30, "Button C")
    BtnD = Fl_ButtonExNew(110, 90, 100, 30, "Button D")
    BtnE = Fl_ButtonExNew(220, 90, 90, 30, "Button E")
Fl_ButtonExSetHandleCB BtnA, ButtonHandleCB
Fl_ButtonExSetHandleCB BtnB, ButtonHandleCB
Fl_ButtonExSetHandleCB BtnC, ButtonHandleCB
Fl_ButtonExSetHandleCB BtnD, ButtonHandleCB
Fl_ButtonExSetHandleCB BtnE, ButtonHandleCB
Fl_WindowShow Win
Fl_Run()
