import fltk_main

proc `\` (x: long; y: long): long = long(x.float / y.float)

const en = "english: The quick brown fox jumps over the lazy dog."
const de = "german: Zwölf Boxkämpfer jagten Eva quer über den Sylter Deich."
const ru = "russian: В чащах юга жил бы цитрус? Да, но фальшивый экземпляр!"
const gr = "greek: Γαζέες καὶ μυρτιὲς δὲν θὰ βρῶ πιὰ στὸ χρυσαφὶ ξέφωτο"
const fr = "french: Le cœur déçu mais l'âme plutôt naïve, Louÿs rêva de crapaüter ...."
const tk = "turkish: Pijamalı hasta, yağız şoföre çabucak güvendi."

var win = Fl_WindowNew(640,200,"utf-8_test02")
var 
  h=Fl_WidgetGetH(win)\6
  w=Fl_WidgetGetW(win)
Fl_BoxNew(0,h*0,w,h,en)
Fl_BoxNew(0,h*1,w,h,de)
Fl_BoxNew(0,h*2,w,h,ru)
Fl_BoxNew(0,h*3,w,h,gr)
Fl_BoxNew(0,h*4,w,h,fr)
Fl_BoxNew(0,h*5,w,h,tk)
Fl_WindowEnd win
Fl_WindowShow win
Fl_Run()

