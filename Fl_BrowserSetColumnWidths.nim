import lenientops
import math
import strfmt
import fltk_main
#~ ' test of:
#~ ' Fl_BrowserSetColumnWidths

const T9 = chr(9)
#~ var col = {100, 100, 100,0}
var col: array[4, long]
col = [long(100), long(100), long(100), long(0)]

var x = 0

var win = Fl_Double_WindowNew(400, 400, "Tabelle")
var brw = Fl_BrowserNew(20, 20, 360, 360)
Fl_BrowserSetColumnWidths(brw, cast[ptr long](addr(col)))
Fl_BrowserAdd(brw, "x" & T9 & "x^2" & T9 & "Sqr(x)")
for x in 1 .. 100:
    Fl_BrowserAdd(brw, $x & T9 & $(x*x) & T9 & format(sqrt(float32(x)), ".6f"))


Fl_BrowserEnd brw
Fl_WindowEnd win

Fl_GroupSetResizable(win,brw)
Fl_WindowShow(win)
Fl_Run()
