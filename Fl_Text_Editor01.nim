import fltk_main

#~ 'test of:
#~ ' Fl_Text_Buffer                          http://www.fltk.org/doc-1.3/classFl__Text__Buffer.html
#~ ' Fl_Text_Display extends Fl_Group        http://www.fltk.org/doc-1.3/classFl__Text__Display.html
#~ ' Fl_Text_Editor  extends Fl_Text_Display http://www.fltk.org/doc-1.3/classFl__Text__Editor.html

#~ '
#~ ' main
#~ '
var win = Fl_WindowNew(640, 480,  "Fl_Text_Editor")
var buf = Fl_Text_BufferNew()
var edt = Fl_Text_EditorNew(10, 10, Fl_WidgetGetW(win)-20, Fl_WidgetGetH(win)-20)
Fl_Text_DisplaySetBuffer edt, buf

Fl_GroupSetResizable win, edt
Fl_WindowShow win
Fl_Run()
