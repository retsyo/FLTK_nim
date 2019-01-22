import fltk_main

#~ 'test of:
#~ ' Fl_WindowExNew
#~ ' Fl_WindowExSetResizeCB
#~ ' Fl_WidgetSetUserData
#~ ' Fl_WidgetGetUserData
#~ ' Fl_BoxNew

proc `//` (x: long; y: long): long = long(x.float / y.float)

proc ResizeCB (self: ptr Fl_Window, x: long, y: long, w: long, h: long): long {.cdecl.} =
  # center the hello world box
  Fl_WidgetResize(cast[ptr Fl_Widget](Fl_WidgetGetUserData(self)), w//2-50, h//2-12, 100, 24)
  return 0


var Win = Fl_WindowExNew(320,200, "Resize Me ...")
#~ Fl_WindowExSetResizeCB Win, ResizeCB
Fl_WidgetSetUserData Win,Fl_BoxNew(20,40,100,24,"Hello, World!")
Fl_WindowSizeRange Win,160,100
Fl_WindowShow Win
Fl_Run()
