import fltk_main

proc TimeoutHandler(self: pointer) {.cdecl.} =
  var value = Fl_ProgressGetValue(self)
  var vStr = ""
  if value < 100:
    value += 1
    Fl_ProgressSetValue self, value
    vStr = $value & "%"
    Fl_WidgetCopyLabel self, vStr
    Fl_WidgetSetSelectionColor self, Fl_RGB_Color(200-value*2, value*2, 0)
    Fl_RepeatTimeout 1.0/20, TimeoutHandler, self


var win = Fl_WindowNew(320, 35, "Fl_Progress")
var prg = Fl_ProgressNew(5, 5, 310, 25)

Fl_WindowShow win
Fl_AddTimeout 1.0, TimeoutHandler, prg
Fl_Run()
