import lenientops
import fltk_main

# test of:
# Fl_WindowShape

proc `/`(x:long; y: long): long = long(x.float / y.float)

proc createShape(self: ptr Fl_Widget): ptr Fl_RGB_Image {.cdecl.} =
  # get cuurent render target
  var curSurface = Fl_Surface_DeviceSurface()
  # create new render target
  var w = Fl_WidgetGetW(self)
  var h = Fl_WidgetGetH(self)
  var newSurface = Fl_Image_SurfaceNew(w, h)
  # set new render target
  Fl_Image_SurfaceSetCurrent newSurface
  # render in the new surface
  DrawSetColor FL_BLACK
  DrawRectFill 0, 0, w, h
  DrawSetColor FL_WHITE
  DrawPie 2, 2, w-4, h-4, 0, 360
  DrawSetColor FL_BLACK
  DrawPie long(0.7*w), h/2, w/4, h/4, 0, 360

  # restore old render target
  Fl_Surface_DeviceSetCurrent curSurface

  # return pixels as image from render target
  return Fl_Image_SurfaceImage(newSurface)


proc ButtonCB(self: ptr Fl_Widget) {.cdecl.} =
  Fl_WindowHide Fl_WidgetWindow(self)


#
# main
#
var win = Fl_WindowNew(640, 480)
Fl_WidgetSetCallback0 Fl_ButtonNew(200, 200, 80, 20, "close"), ButtonCB
Fl_WindowShape win, createShape(win)
Fl_WindowShow win
Fl_Run()
