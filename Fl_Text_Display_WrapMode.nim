import fltk_main

#~ 'test of:
#~ ' FL_Text_DisplayWrapMode  http://www.fltk.org/doc-1.3/classFl__Text__Display.html#ab9378d48b949f8fc7da04c6be4142c54

var win = Fl_Double_WindowNew(640, 240, "FL_WRAPMODE resize me ...")
var edt1 = Fl_Text_EditorNew( 10, 10, 200, 220)
var edt2 = Fl_Text_EditorNew(220, 10, 200, 220)
var edt3 = Fl_Text_EditorNew(430, 10, 200, 220)
var buf: ptr Fl_Text_buffer = Fl_Text_BufferNew()

Fl_Text_BufferAppend buf, "I'm a line in Fl_Text_Buffer.\n"
Fl_Text_BufferAppend buf, "0123456789 ABCD EFGH IJKLMNOP QRST\n"
Fl_Text_BufferAppend buf, "0123456789 abcd efgh ijklmnop qrst\n"

Fl_Text_DisplaySetBuffer edt1, buf
Fl_Text_DisplaySetBuffer edt2, buf
Fl_Text_DisplaySetBuffer edt3, buf

Fl_Text_DisplayWrapMode edt1, WRAP_AT_COLUMN, 6
Fl_Text_DisplayWrapMode edt2, WRAP_AT_PIXEL , 100
Fl_Text_DisplayWrapMode edt3, WRAP_AT_BOUNDS, 0

Fl_GroupSetResizable win, win
Fl_WindowShow win
Fl_Run()

