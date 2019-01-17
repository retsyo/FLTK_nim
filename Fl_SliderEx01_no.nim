import fltk_main

#~ 'test of:
#~ ' Fl_SliderExNew()      http://www.fltk.org/doc-1.3/classFl__Slider.html

proc HandleCB  (self: ptr Fl_Window, event: Fl_Event): long {.cdecl.} =
    case event:
        of FL_EVENT_RELEASE , FL_EVENT_DRAG:
            echo "HandleCB SliderValue = " & Fl_ValuatorGetValue(self)

    return Fl_SliderExHandleBase(self,event) # don't eat the event



var win = Fl_WindowNew(390,210,"Fl_SliderEx01")
var sld = Fl_SliderExNew( 10, 10, 30,180,"0.0-1.0")
Fl_SliderExSetHandleCB(sld, HandleCB)
Fl_WindowShow(win)
Fl_Run()
