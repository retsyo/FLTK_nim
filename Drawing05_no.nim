import fltk_main

#~ ' test of 8 bit palette drawing

proc DrawCB  (self: pointer): long {.cdecl.} =
  echo "DrawCB"
  var x, y, z: long

  for z in 0 .. 7:
    for x in 0 .. 4:
      for y in 0 .. 4:
        DrawSetColor Fl_Color_Cube(y,z,x)
        DrawRectFill z*80+x*16,y*16, 16,16

  return 1

#~ '
#~ ' main
#~ '
var win = Fl_WindowExNew(8*80,5*16,"Drawing05.nim")
#~ var win = Fl_WindowNew(8*80,5*16,"Drawing05.nim")
Fl_WindowExSetDrawCB win, DrawCB
#~ Fl_WindowSetDrawCB win, DrawCB
Fl_WindowShow win
Fl_Run()
