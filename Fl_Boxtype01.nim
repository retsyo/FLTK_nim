import fltk_main
import fltk_tools

#~ ' test of:

#~ ' BoxType()
#~ ' BoxtypeAsString()

const BOX_WIDTH  = 240
const BOX_HEIGHT = 50

var i, row, col: int

var win = Fl_Double_WindowNew(6*10+5*BOX_WIDTH, 12*10+11*BOX_HEIGHT, "Fl_Boxtype01.nim")
Fl_WidgetSetColor win,12
for i in 0 .. 55:
  row = int(i / 5)
  col = i mod 5
  Fl_BoxNew2(BoxType(i),10+col*(10+BOX_WIDTH),10+row*(10+BOX_HEIGHT),BOX_WIDTH,BOX_HEIGHT,BoxtypeAsString(int32(i)))

Fl_WindowShow win
Fl_Run()
