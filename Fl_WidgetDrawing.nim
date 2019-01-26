import fltk_main

# test of:
# Fl_ButtonExSetDrawCB
# Fl_ButtonExSetHandleCB

proc `/`(x:long; y: long): long = long(x.float / y.float)

proc Btn1PressCB(Button1: ptr Fl_Widget, Button2: pointer) {.cdecl.}=
  Fl_WidgetSetUserData Button2,  cast[pointer](1)
  Fl_WidgetRedraw      Button2


proc Btn2DrawCB(Button2: pointer): long {.cdecl.}=
  var DrawFlag = Fl_WidgetGetUserData(Button2)
  if not DrawFlag.isNil :
    # get center
    var x = Fl_WidgetGetX(Button2) + Fl_WidgetGetW(Button2)/2
    var y = Fl_WidgetGetY(Button2) + Fl_WidgetGetH(Button2)/2
    # get radius
    var r = Fl_WidgetGetH(Button2) / 3
    # fraw the circle
    DrawSetColor FL_RED
    DrawCircle x, y, r
    DrawFlag=nil
    Fl_WidgetSetUserData Button2, DrawFlag
    return 1 # <-- tell FLTK "ignore the callback we are drawing the button self"
  else:
    return 0 # <-- tell FLTK "we ignore the callback and draw the button for us"


proc Btn2HandleCB(self: pointer, event: Fl_Event): long  {.cdecl.}=
  return Fl_ButtonExHandleBase(self, event) # don#t eat the event


#
# main
#
var Win1 = Fl_WindowNew(158, 52, "WidgetDrawing")
var Btn1 = Fl_ButtonNew(10, 10, 64, 32, "draw...")
var Btn2 = Fl_ButtonExNew(84, 10, 64, 32, "clear...")
Fl_WidgetSetCallbackArg Btn1, Btn1PressCB, Btn2
Fl_ButtonExSetDrawCB    Btn2, Btn2DrawCB
Fl_ButtonExSetHandleCB  Btn2, Btn2HandleCB
Fl_WindowShow           Win1
Fl_Run()


