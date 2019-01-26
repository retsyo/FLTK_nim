import fltk_main

#~ ' test of DND :
#~ ' Fl_EventText()

proc HandleCB(self: pointer, event: FL_EVENT) :long {.cdecl.}=
    var ActiveDND{.global.}:int = 0
    case int(event):
        of FL_EVENT_DND_ENTER   :
            ActiveDND = 1
            return 1
        of FL_EVENT_DND_LEAVE:
            ActiveDND = 0
            return 1
        of FL_EVENT_DND_DRAG ,  FL_EVENT_DND_RELEASE:
            return 1
        of FL_EVENT_PASTE:
            if ActiveDND > 0 :
                #~ beep
                echo  $Fl_EventText()
                ActiveDND=0
                return 1
        else:
            discard

    return Fl_WindowExHandleBase(self, event)


var win = Fl_WindowExNew(640, 480, "Drag file[s] over the window !")
Fl_WindowExSetHandleCB win, HandleCB
Fl_WindowShow win
Fl_Run()
