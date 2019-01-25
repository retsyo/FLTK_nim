const
    fltk* = "fltk-c-1.3.3-64.dll"

type
    long = cint

#ifndef __FLTK_GL_BI__
#define __FLTK_GL_BI__

#ifndef __FB_ARM__

#_   FreeBASIC header file for the Fast Light Tool Kit C wrapper.
#_   FLTK C wrapper copyright 2013-2016 by D.J.Peters

#_   C++ library Fast Light Tool Kit (FLTK)
#_   Copyright 1998-2010 by Bill Spitzak and others.
#_
#_   This library is free software. Distribution and use rights are outlined in
#_   the file "COPYING" which should have been included with this file.  If this
#_   file is missing or damaged, see the license at:
#_
#_     http:www.fltk.org/COPYING.php
#_
#_   Please report all FLTK C wrapper bugs and problems on the following page:
#_
#_     http://www.freebasic.net/forum/viewtopic.php?f=14&t=24547

when not defined(FLTK_MAIN_BI):
    import fltk_main


type
    Fl_GL_Window* = ulong
    Fl_GL_WindowEX* = ulong

#include once "GL/gl.bi"
import opengl

#~ Fl_Extends3(GL_Window,Window,Group,Widget)
#~ Fl_Extends4(GL_WindowEx,GL_Window,Window,Group,Widget)


#_  Returns an Fl_Gl_Window pointer if this widget is an Fl_Gl_Window
## original: declare function Fl_WidgetAsGL_Window(byval wgt as Fl_Widget ptr) as Fl_GL_Window ptr
proc Fl_WidgetAsGL_Window* ( wgt:  ptr Fl_Widget):  ptr Fl_GL_Window {.cdecl, importc: "Fl_WidgetAsGL_Window", dynlib: fltk, discardable.}

#_  Fl_Gl_Window mode (values match Glut)
## original: type FL_MODE as ulong
type FL_MODE  =  ulong
## original: const as FL_MODE FL_MODE_RGB                      = 0X000
const FL_MODE_RGB                      = 0X000
## original: const as FL_MODE FL_MODE_SINGLE                   = 0X000
const FL_MODE_SINGLE                   = 0X000
## original: const as FL_MODE FL_MODE_INDEX                    = 0X001
const FL_MODE_INDEX                    = 0X001
## original: const as FL_MODE FL_MODE_DOUBLE                   = 0X002
const FL_MODE_DOUBLE                   = 0X002
## original: const as FL_MODE FL_MODE_ACCUM                    = 0X004
const FL_MODE_ACCUM                    = 0X004
## original: const as FL_MODE FL_MODE_ALPHA                    = 0X008
const FL_MODE_ALPHA                    = 0X008
## original: const as FL_MODE FL_MODE_DEPTH                    = 0X010
const FL_MODE_DEPTH                    = 0X010
## original: const as FL_MODE FL_MODE_STENCIL                  = 0X020
const FL_MODE_STENCIL                  = 0X020
## original: const as FL_MODE FL_MODE_RGB8                     = 0X040
const FL_MODE_RGB8                     = 0X040
## original: const as FL_MODE FL_MODE_MULTISAMPLE              = 0X080
const FL_MODE_MULTISAMPLE              = 0X080
## original: const as FL_MODE FL_MODE_STEREO                   = 0X100
const FL_MODE_STEREO                   = 0X100
## original: const as FL_MODE FL_MODE_FAKE_SINGLE              = 0X200 #_   Fake single buffered windows using double-buffer
const FL_MODE_FAKE_SINGLE              = 0X200 #_   Fake single buffered windows using double-buffer


#_  ###################
#_  # FLTK GL drawing #
#_  ###################
## original: declare sub      glDrawSetColor(byval c as Fl_COLOR)
proc glDrawSetColor*( c:  Fl_COLOR) {.cdecl, importc: "glDrawSetColor", dynlib: fltk, discardable.}

## original: declare sub      glDrawRect(byval x as long, byval y as long, byval w as long, byval h as long)
proc glDrawRect*( x:  long;  y:  long;  w:  long;  h:  long) {.cdecl, importc: "glDrawRect", dynlib: fltk, discardable.}

## original: declare sub      glDrawRectFill(byval x as long, byval y as long, byval w as long, byval h as long)
proc glDrawRectFill*( x:  long;  y:  long;  w:  long;  h:  long) {.cdecl, importc: "glDrawRectFill", dynlib: fltk, discardable.}

## original: declare sub      glDrawSetFont(byval font as FL_FONT, byval size as FL_FONTSIZE)
proc glDrawSetFont*( font:  FL_FONT;  size:  FL_FONTSIZE) {.cdecl, importc: "glDrawSetFont", dynlib: fltk, discardable.}

## original: declare function glDrawGetFontHeight() as long
proc glDrawGetFontHeight* ():  long {.cdecl, importc: "glDrawGetFontHeight", dynlib: fltk, discardable.}

## original: declare function glDrawGetFontDescent() as long
proc glDrawGetFontDescent* ():  long {.cdecl, importc: "glDrawGetFontDescent", dynlib: fltk, discardable.}

## original: declare function glDrawGetStrWidth (byval txt as cstring) as double
proc glDrawGetStrWidth* ( txt:  cstring):  double {.cdecl, importc: "glDrawGetStrWidth", dynlib: fltk, discardable.}

## original: declare function glDrawGetStrWidth2(byval txt as cstring, byval nChars as long) as double
proc glDrawGetStrWidth2* ( txt:  cstring;  nChars:  long):  double {.cdecl, importc: "glDrawGetStrWidth2", dynlib: fltk, discardable.}

## original: declare function glDrawGetCharWidth(byval c as ubyte) as double
proc glDrawGetCharWidth* ( c:  ubyte):  double {.cdecl, importc: "glDrawGetCharWidth", dynlib: fltk, discardable.}

## original: declare sub      glDrawStrMeasure  (byval txt as cstring, byref x as long, byref y as long)
proc glDrawStrMeasure*( txt:  cstring;  x:  long;  y:  long) {.cdecl, importc: "glDrawStrMeasure", dynlib: fltk, discardable.}

## original: declare sub      glDrawStr         (byval txt as cstring)
proc glDrawStr*( txt:  cstring) {.cdecl, importc: "glDrawStr", dynlib: fltk, discardable.}

## original: declare sub      glDrawStr2        (byval txt as cstring, byval nChars as long)
proc glDrawStr2*( txt:  cstring;  nChars:  long) {.cdecl, importc: "glDrawStr2", dynlib: fltk, discardable.}

## original: declare sub      glDrawStrAti      (byval txt as cstring, byval x as long, byval y as long)
proc glDrawStrAti*( txt:  cstring;  x:  long;  y:  long) {.cdecl, importc: "glDrawStrAti", dynlib: fltk, discardable.}

## original: declare sub      glDrawStrAti2     (byval txt as cstring, byval nChars as long, byval x as long, byval y as long)
proc glDrawStrAti2*( txt:  cstring;  nChars:  long;  x:  long;  y:  long) {.cdecl, importc: "glDrawStrAti2", dynlib: fltk, discardable.}

## original: declare sub      glDrawStrAtf      (byval txt as cstring, byval x as single, byval y as single)
proc glDrawStrAtf*( txt:  cstring;  x:  single;  y:  single) {.cdecl, importc: "glDrawStrAtf", dynlib: fltk, discardable.}

## original: declare sub      glDrawStrAtf2     (byval txt as cstring, byval nChars as long, byval x as single, byval y as single)
proc glDrawStrAtf2*( txt:  cstring;  nChars:  long;  x:  single;  y:  single) {.cdecl, importc: "glDrawStrAtf2", dynlib: fltk, discardable.}

## original: declare sub      glDrawStrBox      (byval txt as cstring, byval x as long, byval y as long, byval w as long, byval h as long, byval align as FL_ALIGN)
proc glDrawStrBox*( txt:  cstring;  x:  long;  y:  long;  w:  long;  h:  long;  align:  FL_ALIGN) {.cdecl, importc: "glDrawStrBox", dynlib: fltk, discardable.}

## original: declare sub      glDrawImage       (byval buffer as const ubyte ptr, byval x as long, byval y as long, byval w as long, byval h as long, byval BytesPerPixel as long=3, byval pitch as long=0)
proc glDrawImage*( buffer:  ptr ubyte;  x:  long;  y:  long;  w:  long;  h:  long;  BytesPerPixel:  long=3;  pitch:  long=0) {.cdecl, importc: "glDrawImage", dynlib: fltk, discardable.}


#_ ########################################
#_ # class Fl_Gl_Window extends Fl_Window #
#_ ########################################
## original: declare function Fl_Gl_WindowNew(byval w as long, byval h as long, byval title as cstring=0) as Fl_Gl_Window ptr
proc Fl_Gl_WindowNew* ( w:  long;  h:  long;  title:  cstring=nil):  ptr Fl_Gl_Window {.cdecl, importc: "Fl_Gl_WindowNew", dynlib: fltk, discardable.}

## original: declare function Fl_Gl_WindowNew2(byval x as long, byval y as long, byval w as long, byval h as long, byval title as cstring=0) as Fl_Gl_Window ptr
proc Fl_Gl_WindowNew2* ( x:  long;  y:  long;  w:  long;  h:  long;  title:  cstring=nil):  ptr Fl_Gl_Window {.cdecl, importc: "Fl_Gl_WindowNew2", dynlib: fltk, discardable.}

## original: declare sub      Fl_Gl_WindowDelete(byref win as Fl_Gl_Window ptr)
proc Fl_Gl_WindowDelete*( win:  ptr Fl_Gl_Window) {.cdecl, importc: "Fl_Gl_WindowDelete", dynlib: fltk, discardable.}

## original: declare function Fl_Gl_WindowHandle(byval win as Fl_Gl_Window ptr, byval ev as FL_EVENT) as long
proc Fl_Gl_WindowHandle* ( win:  ptr Fl_Gl_Window;  ev:  FL_EVENT):  long {.cdecl, importc: "Fl_Gl_WindowHandle", dynlib: fltk, discardable.}

## original: declare function Fl_Gl_WindowCanDo(byval win as Fl_Gl_Window ptr) as long
proc Fl_Gl_WindowCanDo* ( win:  ptr Fl_Gl_Window):  long {.cdecl, importc: "Fl_Gl_WindowCanDo", dynlib: fltk, discardable.}

## original: declare function Fl_Gl_WindowCanDoOverlay(byval win as Fl_Gl_Window ptr) as long
proc Fl_Gl_WindowCanDoOverlay* ( win:  ptr Fl_Gl_Window):  long {.cdecl, importc: "Fl_Gl_WindowCanDoOverlay", dynlib: fltk, discardable.}

## original: declare sub      Fl_Gl_WindowSetContext(byval win as Fl_Gl_Window ptr, byval ctx as any ptr, byval destroy_flag as long=0)
proc Fl_Gl_WindowSetContext*( win:  ptr Fl_Gl_Window;  ctx:  ptr any;  destroy_flag:  long=0) {.cdecl, importc: "Fl_Gl_WindowSetContext", dynlib: fltk, discardable.}
## original: declare function Fl_Gl_WindowGetContext(byval win as Fl_Gl_Window ptr) as any ptr
proc Fl_Gl_WindowGetContext* ( win:  ptr Fl_Gl_Window):  ptr any {.cdecl, importc: "Fl_Gl_WindowGetContext", dynlib: fltk, discardable.}

## original: declare sub      Fl_Gl_WindowSetContextValid(byval win as Fl_Gl_Window ptr, byval v as long)
proc Fl_Gl_WindowSetContextValid*( win:  ptr Fl_Gl_Window;  v:  long) {.cdecl, importc: "Fl_Gl_WindowSetContextValid", dynlib: fltk, discardable.}
## original: declare function Fl_Gl_WindowGetContextValid(byval win as Fl_Gl_Window ptr) as long
proc Fl_Gl_WindowGetContextValid* ( win:  ptr Fl_Gl_Window):  long {.cdecl, importc: "Fl_Gl_WindowGetContextValid", dynlib: fltk, discardable.}

## original: declare sub      Fl_Gl_WindowSetValid(byval win as Fl_Gl_Window ptr, byval v as long)
proc Fl_Gl_WindowSetValid*( win:  ptr Fl_Gl_Window;  v:  long) {.cdecl, importc: "Fl_Gl_WindowSetValid", dynlib: fltk, discardable.}

## original: declare function Fl_Gl_WindowGetValid(byval win as Fl_Gl_Window ptr) as long
proc Fl_Gl_WindowGetValid* ( win:  ptr Fl_Gl_Window):  long {.cdecl, importc: "Fl_Gl_WindowGetValid", dynlib: fltk, discardable.}

## original: declare sub      Fl_Gl_WindowFlush(byval win as Fl_Gl_Window ptr)
proc Fl_Gl_WindowFlush*( win:  ptr Fl_Gl_Window) {.cdecl, importc: "Fl_Gl_WindowFlush", dynlib: fltk, discardable.}

## original: declare sub      Fl_Gl_WindowInvalidate(byval win as Fl_Gl_Window ptr)
proc Fl_Gl_WindowInvalidate*( win:  ptr Fl_Gl_Window) {.cdecl, importc: "Fl_Gl_WindowInvalidate", dynlib: fltk, discardable.}

## original: declare sub      Fl_Gl_WindowMakeCurrent(byval win as Fl_Gl_Window ptr)
proc Fl_Gl_WindowMakeCurrent*( win:  ptr Fl_Gl_Window) {.cdecl, importc: "Fl_Gl_WindowMakeCurrent", dynlib: fltk, discardable.}

## original: declare sub      Fl_Gl_WindowHideOverlay(byval win as Fl_Gl_Window ptr)
proc Fl_Gl_WindowHideOverlay*( win:  ptr Fl_Gl_Window) {.cdecl, importc: "Fl_Gl_WindowHideOverlay", dynlib: fltk, discardable.}

## original: declare sub      Fl_Gl_WindowMakeOverlayCurrent(byval win as Fl_Gl_Window ptr)
proc Fl_Gl_WindowMakeOverlayCurrent*( win:  ptr Fl_Gl_Window) {.cdecl, importc: "Fl_Gl_WindowMakeOverlayCurrent", dynlib: fltk, discardable.}

## original: declare sub      Fl_Gl_WindowRedrawOverlay(byval win as Fl_Gl_Window ptr)
proc Fl_Gl_WindowRedrawOverlay*( win:  ptr Fl_Gl_Window) {.cdecl, importc: "Fl_Gl_WindowRedrawOverlay", dynlib: fltk, discardable.}

## original: declare sub      Fl_Gl_WindowSetMode(byval win as Fl_Gl_Window ptr, byval m as FL_MODE)
proc Fl_Gl_WindowSetMode*( win:  ptr Fl_Gl_Window;  m:  FL_MODE) {.cdecl, importc: "Fl_Gl_WindowSetMode", dynlib: fltk, discardable.}
## original: declare function Fl_Gl_WindowGetMode(byval win as Fl_Gl_Window ptr) as FL_MODE
proc Fl_Gl_WindowGetMode* ( win:  ptr Fl_Gl_Window):  FL_MODE {.cdecl, importc: "Fl_Gl_WindowGetMode", dynlib: fltk, discardable.}

## original: declare sub      Fl_Gl_WindowOrtho(byval win as Fl_Gl_Window ptr)
proc Fl_Gl_WindowOrtho*( win:  ptr Fl_Gl_Window) {.cdecl, importc: "Fl_Gl_WindowOrtho", dynlib: fltk, discardable.}

## original: declare sub      Fl_Gl_WindowResize(byval win as Fl_Gl_Window ptr, byval x as long, byval y as long, byval w as long, byval h as long)
proc Fl_Gl_WindowResize*( win:  ptr Fl_Gl_Window;  x:  long;  y:  long;  w:  long;  h:  long) {.cdecl, importc: "Fl_Gl_WindowResize", dynlib: fltk, discardable.}

## original: declare sub      Fl_Gl_WindowSwapBuffers(byval win as Fl_Gl_Window ptr)
proc Fl_Gl_WindowSwapBuffers*( win:  ptr Fl_Gl_Window) {.cdecl, importc: "Fl_Gl_WindowSwapBuffers", dynlib: fltk, discardable.}

## original: declare sub      Fl_Gl_WindowHide(byval win as Fl_Gl_Window ptr)
proc Fl_Gl_WindowHide*( win:  ptr Fl_Gl_Window) {.cdecl, importc: "Fl_Gl_WindowHide", dynlib: fltk, discardable.}

## original: declare sub      Fl_Gl_WindowShow(byval win as Fl_Gl_Window ptr)
proc Fl_Gl_WindowShow*( win:  ptr Fl_Gl_Window) {.cdecl, importc: "Fl_Gl_WindowShow", dynlib: fltk, discardable.}

## original: declare sub      Fl_Gl_WindowShowArgs(byval win as Fl_Gl_Window ptr, byval argc as long, byval argv as cstring ptr)
proc Fl_Gl_WindowShowArgs*( win:  ptr Fl_Gl_Window;  argc:  long;  argv:  ptr cstring) {.cdecl, importc: "Fl_Gl_WindowShowArgs", dynlib: fltk, discardable.}

#_ #############################################
#_ # class Fl_Gl_WindowEx extends Fl_GL_Window #
#_ #############################################
## original: declare function Fl_Gl_WindowExNew(byval w as long, byval h as long, byval title as cstring=0) as Fl_Gl_WindowEx ptr
proc Fl_Gl_WindowExNew* ( w:  long;  h:  long;  title:  cstring=nil):  ptr Fl_Gl_WindowEx {.cdecl, importc: "Fl_Gl_WindowExNew", dynlib: fltk, discardable.}

## original: declare function Fl_Gl_WindowExNew2(byval x as long, byval y as long, byval w as long, byval h as long, byval title as cstring=0) as Fl_Gl_WindowEx ptr
proc Fl_Gl_WindowExNew2* ( x:  long;  y:  long;  w:  long;  h:  long;  title:  cstring=nil):  ptr Fl_Gl_WindowEx {.cdecl, importc: "Fl_Gl_WindowExNew2", dynlib: fltk, discardable.}

## original: declare sub      Fl_Gl_WindowExDelete          (byref win as Fl_Gl_WindowEx ptr)
proc Fl_Gl_WindowExDelete*( win:  ptr Fl_Gl_WindowEx) {.cdecl, importc: "Fl_Gl_WindowExDelete", dynlib: fltk, discardable.}

## original: declare function Fl_Gl_WindowExHandleBase      (byval win as Fl_Gl_WindowEx ptr, byval event as FL_EVENT) as long
proc Fl_Gl_WindowExHandleBase* ( win:  ptr Fl_Gl_WindowEx;  event:  FL_EVENT):  long {.cdecl, importc: "Fl_Gl_WindowExHandleBase", dynlib: fltk, discardable.}

## original: declare sub      Fl_Gl_WindowExSetDestructorCB (byval win as Fl_Gl_WindowEx ptr, byval cb as Fl_DestructorEx)
proc Fl_Gl_WindowExSetDestructorCB*( win:  ptr Fl_Gl_WindowEx;  cb:  Fl_DestructorEx) {.cdecl, importc: "Fl_Gl_WindowExSetDestructorCB", dynlib: fltk, discardable.}

## original: declare sub      Fl_Gl_WindowExSetDrawCB       (byval win as Fl_Gl_WindowEx ptr, byval cb as Fl_DrawEx)
proc Fl_Gl_WindowExSetDrawCB*( win:  ptr Fl_Gl_WindowEx;  cb:  Fl_DrawEx) {.cdecl, importc: "Fl_Gl_WindowExSetDrawCB", dynlib: fltk, discardable.}

## original: declare sub      Fl_Gl_WindowExSetDrawOverlayCB(byval win as Fl_Gl_WindowEx ptr, byval cb as Fl_Draw_OverlayEx)
proc Fl_Gl_WindowExSetDrawOverlayCB*( win:  ptr Fl_Gl_WindowEx;  cb:  Fl_Draw_OverlayEx) {.cdecl, importc: "Fl_Gl_WindowExSetDrawOverlayCB", dynlib: fltk, discardable.}

## original: declare sub      Fl_Gl_WindowExSetHandleCB     (byval win as Fl_Gl_WindowEx ptr, byval cb as Fl_HandleEx)
proc Fl_Gl_WindowExSetHandleCB*( win:  ptr Fl_Gl_WindowEx;  cb:  Fl_HandleEx) {.cdecl, importc: "Fl_Gl_WindowExSetHandleCB", dynlib: fltk, discardable.}

## original: declare sub      Fl_Gl_WindowExSetResizeCB     (byval win as Fl_Gl_WindowEx ptr, byval cb as Fl_ResizeEx)
proc Fl_Gl_WindowExSetResizeCB*( win:  ptr Fl_Gl_WindowEx;  cb:  Fl_ResizeEx) {.cdecl, importc: "Fl_Gl_WindowExSetResizeCB", dynlib: fltk, discardable.}



#endif #_  __FB_ARM__

#endif #_  __FLTK_GL_BI__