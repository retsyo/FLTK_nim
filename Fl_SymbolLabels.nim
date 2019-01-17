import fltk_main

const ROWS = 4
const COLS = 6
const GAP  = 10
const SIZE = 40

var labels = [
    ["->"    ,">"     ,">>"  ,">|"  ,">[]"    ,"<|"],
    ["<-"    ,"<"     ,"<<"  ,"|<"  ,"[]<"    ,"|>"],
    ["<->"   ,"->|"   ,"||"  ,"+"   ,"arrow"  ,"returnarrow"],
    ["square","circle","line","menu","UpArrow","DnArrow"]
]

var win = Fl_WindowNew(GAP+COLS*(GAP+SIZE), GAP+ROWS*(GAP+SIZE), "Fl_SymbolLabels.nim")
var
    x, y: integer
    label: string

for y in 0 .. ROWS-1:
  for x in 0 .. COLS-1:
    label = "@" & labels[y][x]
    var btn=Fl_ButtonNew(GAP+x*(GAP+SIZE), GAP+y*(GAP+SIZE), SIZE, SIZE)
    Fl_WidgetCopyLabel btn, label


Fl_WindowShow win
Fl_Run()