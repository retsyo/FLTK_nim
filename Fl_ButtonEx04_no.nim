import fltk_main

#~ ' tests of:
#~ ' Fl_WidgetGetLabel
#~ ' Fl_WidgetSetLabelColor
#~ ' Fl_RGB_Color
#~ ' Fl_WidgetDeactivate
#~ ' Fl_WidgetSetTooltip

const Fl_ButtonEx = uLong

type Fl_ButtonExHandleBase* = proc (ex: ptr Fl_ButtonEx, event: FL_EVENT): long
type Fl_ButtonExNew* = proc(x: long, y: long; w: long; h: long, title: string=cast[string](0)): ptr Fl_ButtonEx

proc HandleCB  (self: ptr any, event: Fl_Event): long {.cdecl.} =
    var msg = *Fl_WidgetGetLabel(self) & " "
    case event:
        of FL_EVENT_PUSH,FL_EVENT_RELEASE:
            if event == FL_EVENT_PUSH:
                msg &= "pushed with MouseButton"
                case Fl_EventButtons():
                    of FL_BUTTON1 :
                        msg &= "(1)"
                    of FL_BUTTON2 :
                        msg &= "(2)"
                    of FL_BUTTON3 :
                        msg &= "(3)"

            else:
                msg &= "released"

            msg &= " at position " & Fl_EventX() & "," & Fl_EventY()
    echo msg

    return Fl_ButtonExHandleBase(self,event) # don't eat the event


var Win = Fl_WindowNew2(100,100,320,130,"ButtonEx04")

var Btn = Fl_ButtonExNew( 10,10,300,30,"Button A")
Fl_ButtonExSetHandleCB Btn,HandleCB
Fl_WidgetSetTooltip Btn,"I'm Buttun A"

Btn = Fl_ButtonExNew( 10,50,300,30,"Button B")
Fl_ButtonExSetHandleCB Btn,HandleCB
Fl_WidgetSetTooltip Btn,"I'm Buttun B"

Btn = Fl_ButtonExNew( 10,90, 90,30,"Button C")
Fl_ButtonExSetHandleCB Btn,HandleCB
Fl_WidgetSetLabelColor Btn, FL_RED
Fl_WidgetSetTooltip Btn,"I'm red"

Btn = Fl_ButtonExNew(110,90,100,30,"Button D")
Fl_ButtonExSetHandleCB Btn,HandleCB
Fl_WidgetSetTooltip Btn,"I'm Buttun D"

Btn = Fl_ButtonExNew(220,90, 90,30,"Button E")
Fl_WidgetSetLabelColor Btn, Fl_RGB_Color(160,80,0)
Fl_WidgetDeactivate Btn
Fl_WidgetSetTooltip Btn,"I'm deactived"

Fl_WindowShow Win
Fl_Run()
