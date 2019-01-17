import random
import os
import fltk_main

#~ ' test of:
#~ ' Fl_GetFirstWindow()

proc `/` (x:long; y: long): long = long(x.float / y.float)
proc rand(x: int64): long = rand(int(x))

proc CloseCB  (self: ptr FL_WIDGET) {.cdecl.} =
  var  win = Fl_GetFirstWindow()
  while cast[long](win) > 0 :
    Fl_WindowHide win
    win = Fl_GetFirstWindow()
    sleep 500

var win = Fl_WindowNew2(Fl_GetW()/2-320, Fl_GetH()/2-240, 640, 480, "main window close me")
Fl_WidgetSetCallback0 win, CloseCB

var
    i: long = 0
    w: long = 0
    h: long = 0
    c = ""

for i in 1 .. 20:
   w = 160 + rand(320)
   h = w / 16 * 9
   c = "Form " & $i
   Fl_WindowShow Fl_WindowNew2(rand(Fl_GetW()-w), rand(Fl_GetH()-h), w, h, c)


Fl_WindowShow win
Fl_Run()

