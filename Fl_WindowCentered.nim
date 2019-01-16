import lenientops
import fltk_main
#~ ' test of:
#~ ' Fl_GetH()
#~ ' Fl_GetW()
const WinWidth: long = 640
const WinHeight:long = 480

proc `/`(x:long; y: long): long = long(x.float / y.float)

var Win = Fl_WindowNew2(Fl_GetW() / 2-WinWidth / 2,
                        Fl_GetH() / 2-WinHeight / 2,
                        WinWidth,WinHeight,"Fl_WindowCentered.nim")
Fl_BoxNew 10,10,WinWidth-20,WinHeight-20,"Hello, World!"
Fl_WindowShow Win
Fl_Run()

