import fltk_main

#~ ' test of:
#~ ' WidgetExSetDestructorCB
#~ ' WidgetExSetHandleCB
#~ ' Fl_ButtonExHandleBase

#~ ' Fl_DeleteWidget
#~ ' Fl_WidgetWindow
#~ ' Fl_WidgetRedraw

proc DestructorCB  (self: pointer) {.cdecl.} =
  Fl_WidgetRedraw Fl_WidgetWindow(self) # redraw the parent


proc HandleCB (self: pointer, event: Fl_Event): long {.cdecl.} =
  if event == FL_EVENT_RELEASE:
      Fl_DeleteWidget self
  return Fl_ButtonExHandleBase(self, event) #' don't eat the event



var win = Fl_WindowNew(320, 200)
var btn = Fl_ButtonExNew(10, 10, 128, 24, "Delete me ...")
Fl_ButtonExSetDestructorCB btn, DestructorCB
Fl_ButtonExSetHandleCB     btn, HandleCB
Fl_WindowShow win
Fl_Run()
