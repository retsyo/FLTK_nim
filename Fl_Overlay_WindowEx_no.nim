import fltk_main
#~ ' test of:
#~ ' Fl_Overlay_Window http://www.fltk.org/doc-1.3/classFl__Overlay__Window.html

proc `/` (x:long; y: long): long = long(x.float / y.float)

var
    w{.global.} = 150
    h{.global.} = 150

proc Draw_OverlayCB (self: pointer) {. cdecl.} =
  var self = cast[ptr Fl_Widget](self)
  DrawSetColor(FL_RED)
  DrawRect((Fl_WidgetGetW(self)-w)/2, (Fl_WidgetGetH(self)-h)/2, w, h)

proc HandleCB(self: pointer, event: Fl_Event)  : long {. cdecl.}=
  var self = cast[ptr Fl_Overlay_WindowEx](self)
  return Fl_Overlay_WindowExHandleBase(self, event) # don't eat the event


proc Button1CB  (self: ptr Fl_Widget, ovl: pointer)  {. cdecl.} =
  h += 20
  var ovl = cast[ptr Fl_Overlay_WindowEx](ovl)
  Fl_Overlay_WindowRedrawOverlay ovl


proc Button2CB  (self: ptr Fl_Widget, ovl: pointer) {. cdecl.} =
  h -= 20
  var ovl = cast[ptr Fl_Overlay_WindowEx](ovl)
  Fl_Overlay_WindowRedrawOverlay ovl


proc Button3CB (self: ptr Fl_Widget, ovl: pointer) {. cdecl.} =
  w += 20
  var ovl = cast[ptr Fl_Overlay_WindowEx](ovl)
  Fl_Overlay_WindowRedrawOverlay ovl


proc Button4CB (self: ptr Fl_Widget, ovl: pointer) {. cdecl.} =
  w -= 20
  var ovl = cast[ptr Fl_Overlay_WindowEx](ovl)
  Fl_Overlay_WindowRedrawOverlay ovl



var win = Fl_Overlay_WindowExNew(400, 400, "Fl_Overlay_WindowEx")
Fl_Overlay_WindowExSetDraw_OverlayCB win, Draw_OverlayCB
Fl_Overlay_WindowExSetHandleCB       win, HandleCB
Fl_WidgetSetCallbackArg Fl_ButtonNew( 50, 50, 100, 100, "wider")   , Button1CB, win
Fl_WidgetSetCallbackArg Fl_ButtonNew(250, 50, 100, 100, "narrower"), Button2CB, win
Fl_WidgetSetCallbackArg Fl_ButtonNew( 50, 250, 100, 100, "taller")  , Button3CB, win
Fl_WidgetSetCallbackArg Fl_ButtonNew(250, 250, 100, 100, "shorter") , Button4CB, win
Fl_GroupSetResizable(win, win)

Fl_Overlay_WindowRedrawOverlay win
Fl_Overlay_WindowShow win
Fl_Run()
