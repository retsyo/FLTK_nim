import fltk_main

# test of:
# Fl_Choice    http://www.fltk.org/doc-1.3/classFl__Choice.html

proc ChoiceCB(self: ptr Fl_Widget, cho: pointer) {.cdecl.} =
  # get parent of the widget
  var win = Fl_WidgetWindow(self)
  # get index of selected item
  var ind = Fl_ChoiceGetValue(cho)
  # copy label from item to window caption
  Fl_WindowCopyLabel win, Fl_Menu_GetMenu(cast[ptr Fl_Menu_TT](cho))[ind].text


#
# main
#
var win = Fl_WindowNew(640, 480, "Fl_Choice")
var cho = Fl_ChoiceNew(280, 240, 128, 24)
# add some items
Fl_Menu_Add3 cho, "ASM/FASM|ASM/TASM|ASM/MASM|ASM/NASM|ASM/WASM|ASM/YASM"
Fl_Menu_Add3 cho, "BASIC/Interpreter/ScriptBasic|BASIC/Compiler/FreeBASIC"
Fl_Menu_Add3 cho, "BASIC/Interpreter/SdlBasic|BASIC/Interpreter/Yabasic"
Fl_Menu_Add3 cho, "BASIC/Compiler/PureBasic|BASIC/Compiler/PowerBASIC"
Fl_Menu_Add3 cho, "GUI/GTK+|GUI/FLTK|GUI/QT|GUI/WX"
# select first iterm
Fl_ChoiceSetValue cho, 0
# add standard callback
Fl_WidgetSetCallbackArg cho, ChoiceCB, cho
# put window on desktop
Fl_WindowShow win
Fl_Run()