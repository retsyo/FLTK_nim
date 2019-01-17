import fltk_main
#~ ' original file "ask.cxx"

#~ ' test of:
#~ ' flMessageTitle, flInput, flPassword, flChoice
#~ ' Fl_Return_Button, Fl_Button, Fl_WidgetAsWindow

#~ ' this is a test to make sure automatic destructors work.
#~ ' Pop up the question dialog several times and make sure it doesn't crash.
#~ ' Also we test to see if the window exit callback works.

proc update_input_text(wgt: ptr Fl_Widget, pInput: string) {.cdecl.} =
  if (pInput.len > 0) :
    Fl_WidgetCopyLabel wgt,pInput
    Fl_WidgetRedraw wgt


proc RenameMeCB (self: ptr Fl_Widget, pUserdata: ptr any) {.cdecl.} =
  flMessageTitle("RenameMeCB")
  var pInput = flInput("Input:", Fl_WidgetGetLabel(self))
  update_input_text(self, pInput)


proc RenameMePasswordCB (self: ptr Fl_Widget, pUserdata: ptr any) {.cdecl.} =
  flMessageTitle("RenameMePasswordCB")
  var pInput = flPassword("Input password:", Fl_WidgetGetLabel(self))
  update_input_text(self, pInput)


proc WindowCB(self: ptr Fl_Widget, pUserdata: ptr any) {.cdecl.} =
  flMessageTitle("WindowCB")
  var rep = flChoice("Are you sure you want to quit?", "Cancel", "Quit", "Dunno")
  if (rep == 1) :
    Fl_WindowHide Fl_WidgetAsWindow(self)
  elif (rep == 2) :
    flMessage("Well, maybe you should know before we quit.")


#~ var buffer1:array[char, 128] = "Test text"
#~ var buffer2:array[char, 128] = "MyPassword"
var
    buffer1 =  "Test text"
    buffer2 = "MyPassword"

var win = Fl_Double_WindowNew(200,105)
Fl_WidgetSetCallback win, WindowCB
Fl_WidgetSetCallback Fl_Return_ButtonNew(20, 10, 160, 35, buffer1),RenameMeCB
Fl_WidgetSetCallback Fl_ButtonNew       (20, 50, 160, 35, buffer2),RenameMePasswordCB
Fl_GroupSetResizable win,win
Fl_WindowShow win
Fl_Run()
