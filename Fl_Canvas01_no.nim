import fltk_main

#~ 'test of Fl_Canvas

proc `\` (x: long; y: long): long = long(x.float / y.float)

proc CanvasDrawCB  (me: pointer,
                        dstX: var long, dstY: var long,
                        cpyW: var long, cpyH: var long,
                        srcX: var long, srcY: var long) {.cdecl.} =
  var
    xp {.global.}:long = -1000
    xs {.global.}:long = 1
    yp {.global.}:long = -1000
    ys {.global.}:long = 1
    sw {.global.}:long = 0
    sh {.global.}:long = 0

  #~ var me = cast[ptr Fl_Canvas](me)

  var par = Fl_WidgetGetParent(me)
  var x = Fl_WidgetGetX(me)
  var y = Fl_WidgetGetY(me)
  var w = cpyW #Fl_WidgetGetW(me)
  var h = cpyH #Fl_WidgetGetH(me)
  var x2 = x + w
  var y2 = y + h

  echo x
  echo y
  echo w
  echo h

  if sw == 0 or sh == 0 :
    DrawSetFont Fl_HELVETICA_BOLD, 50
    sw = DrawGetStrWidth("Canvas")
    sh = DrawGetFontHeight() - DrawGetFontDescent()

  if xp == -1000 :
      xp=x+w\2-sw\2
  if yp == -1000 :
      yp=y+h\2-sh\2

  DrawPushClip 0, 0, w, h
  DrawSetColor FL_WHITE
  DrawRectFill 0, 0, w, h

  DrawSetColor FL_BLACK
  DrawRect     0, 0, w, h

  DrawSetColor FL_BLACK
  DrawStr "Canvas", xp+3, yp+3

  DrawSetColor FL_RED
  DrawStr "Canvas", xp  , yp
  DrawPopClip()

  xp += xs # move x position
  if xp < 1 :
    xp = 0
    xs *= -1
  elif (xp+sw+3) >= w :
    xs *= -1
    xp = w-(sw+3)


  yp += ys # move y position
  if yp < sh-y :
    yp = sh-y
    ys *= -1
  elif yp >= h :
    ys *= -1
    yp = h


proc TimeoutCB  (can: pointer){.cdecl.} =
  Fl_WidgetDraw can
  Fl_RepeatTimeout 1.0/80, TimeoutCB, can


var win = Fl_Double_WindowNew(640, 120, "Fl_Canvas resize me ...")
var can = Fl_CanvasNew(10, 10, Fl_WidgetGetW(win)-20, Fl_WidgetGetH(win)-20)
Fl_CanvasSetDrawCB   can, CanvasDrawCB
Fl_WindowSizeRange   win, 240, 100
Fl_GroupSetResizable win, can
Fl_WindowShow        win
Fl_AddTimeout 1.0, TimeoutCB, can
Fl_Run()

