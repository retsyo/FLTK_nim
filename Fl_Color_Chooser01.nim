import fltk_main

#~ #test of:
#~ # Fl_ColorCooser extends Fl_Group http://www.fltk.org/doc-1.3/classFl__Color__Chooser.html
#~ # Fl_Color_ChooserNew
#~ # Fl_Color_ChooserSetMode
#~ # Fl_Color_ChooserRGB

proc ChooserCB  (self: ptr Fl_Widget , cc: pointer) {.cdecl.}=
  var
    r  = Fl_Color_ChooserR(cc) * 255
    g  = Fl_Color_ChooserR(cc) * 255
    b  = Fl_Color_ChooserR(cc) * 255
  echo "ChooserCB: " & $r & ", " & $g & ", " & $b

#
# main
#
var win = Fl_WindowNew(320, 240, "Fl_Color_Chooser")
var cc  = Fl_Color_ChooserNew(10, 10, Fl_WidgetGetW(win)-20, Fl_WidgetGetH(win)-20)
Fl_WidgetSetCallbackArg cc, ChooserCB, cc
# init via RGB (double) 0-1
Fl_Color_ChooserRGB cc, 0.75, 0.5, 0.0
# set byte mode 0-255
Fl_Color_ChooserSetMode cc, FL_COLORCHOOSER_BYTE
Fl_WindowShow win
Fl_Run()
