import strUtils
import fltk_main

# you can set for each widget callback#s and there are 3 kinds of callbacks

# Callback with an pointer as user argument proc cecl callback(widget: ptr FL_WIDGET, byval pUserData as any ptr)
# Fl_WidgetSetCallback widget, Callback
# Fl_WidgetSetCallbackArg widget, Callback, pArg

# Callback0 without an user argument proc cecl callback(widget: ptr FL_WIDGET)
# Fl_WidgetSetCallback0 widget, Callback

# Callback1 with an long as user argument proc cecl callback(widget: ptr FL_WIDGET, UserData: long)
# Fl_WidgetSetCallback1Arg widget, Callback, value

proc CallbackWithPointer  (widget: ptr FL_WIDGET, pUserData: pointer) {.cdecl.}=
  echo "Callback with pointer " & $Fl_WidgetGetLabel(widget)  & " , 0x"  & toHex(cast[long](pUserData), 8)
  #~ echo Fl_WidgetGetLabel(widget)


proc CallbackWithLong (widget: ptr FL_WIDGET, UserData: long) {.cdecl.}=
  echo "Callback with long    " & $Fl_WidgetGetLabel(widget) & " , "  & $UserData
  #~ echo Fl_WidgetGetLabel(widget)


proc CallbackWithout (widget: ptr FL_WIDGET) {.cdecl.}=
  echo "Callback without      " & $Fl_WidgetGetLabel(widget)

#
# main
#
Fl_SetScheme "gleam"
var win  = Fl_WindowNew(250, 50, "Fl_Callbacks")
var btn1 = Fl_ButtonNew( 10, 10, 70, 30, "button 1")
var btn2 = Fl_ButtonNew( 90, 10, 70, 30, "button 2")
var btn3 = Fl_ButtonNew(170, 10, 70, 30, "button 3")

Fl_WidgetSetCallbackArg  btn1, CallbackWithPointer, btn1
Fl_WidgetSetCallback1Arg btn2, CallbackWithLong, 123
Fl_WidgetSetCallback0    btn3, CallbackWithout


Fl_WindowShow win
Fl_Run()
