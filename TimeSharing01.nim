import math
import random
import fltk_main

proc `\` (x: long; y: long): long = long(x.float / y.float)
proc `\=` (x: var long; y: long) =
    x = long(x.float / y.float)

proc DoSomeThing(v: var double) =
  while v > 1 :
      v *= 0.5

proc StuffCB(self: ptr Fl_Widget) {.cdecl.} =
  Fl_WidgetDeactivate self               # disable new trigger of button stuff callback
  var win = Fl_WidgetWindow(self)        # get the window from widget
  var w = Fl_WidgetGetW(cast[ptr Fl_Widget](win))            # get current size of the window
  var h = Fl_WidgetGetH(cast[ptr Fl_Widget](win))
  Fl_WidgetSize cast[ptr Fl_Widget](win), w, h+10+32            # resize the window for a new widget

  Fl_WindowBegin win                     # open the window child list
  var prg = Fl_ProgressNew(10, h, w-20, 32) # add a progress widget (dynamical)
  Fl_WindowEnd win                       # close the window child list

  const nLoops=500000 # do any havy task
  var
    oldValue, newValue, i:long
    onePercent=nLoops\100

  for i in 1 .. nLoops:
    var s = sin(rand(1.0))
    DoSomeThing(s)
    newValue = i \ onePercent
    # update progress bar only if newValue are changed
    if newValue != oldValue :
      var strValue = "find sense of life " & $newValue & "% done."
      Fl_WidgetCopyLabel cast[ptr Fl_Widget](prg), strValue # set progress text
      Fl_WidgetSetSelectionColor cast[ptr Fl_Widget](prg), Fl_RGB_Color(200-newValue*2, newValue*2, 0)
      Fl_WidgetSetLabelColor cast[ptr Fl_Widget](prg), FL_BLUE
      Fl_ProgressSetValue prg, single(newValue) # set progress value
      oldValue=newValue

    if i mod 500 == 0 :
      Fl_Wait2(0.001) # time sharing

  Fl_DeleteWidget cast[ptr Fl_Widget](prg)    # set progress widget on deletion list
  Fl_DoWidgetDeletion()    # delete all widgets on deletion list
  Fl_WidgetSize cast[ptr Fl_Widget](win), w, h  # resize the window to old size
  Fl_WidgetActivate self # activate the stuff button


proc OtherCB (self: ptr Fl_Widget){.cdecl.} =
  var nTimes{.global.}: long = 0
  nTimes += 1
  var label = "OtherCB called " & $nTimes & " !"
  Fl_WindowSetLabel Fl_WidgetWindow(self), label


proc ExitCB(self: ptr Fl_Widget,  btnStuff: pointer){.cdecl.}  =
  # calculation running ?
  if Fl_WidgetActive(btnStuff) == 0 :
    flMessageTitle "window close event."
    flAlert "note: stuff callback are running !"
  else:
    Fl_WindowHide Fl_WidgetAsWindow(self)



#
# main
#
const GAB = 10
var win = Fl_WindowNew(400, 44)
# button width
var bw = Fl_WidgetGetW(win) - 3 * GAB
bw \= 2
# button height
var bh = Fl_WidgetGetH(win) - 2 * GAB
var btnStuff = Fl_ButtonNew(GAB*1+bw*0, GAB, bw, bh, "stuff")
var btnOther = Fl_ButtonNew(GAB*2+bw*1, GAB, bw, bh, "other")
Fl_WidgetSetCallback0 btnStuff, StuffCB
Fl_WidgetSetCallback0 btnOther, OtherCB
Fl_WidgetSetCallbackArg win, ExitCB, btnStuff
Fl_WindowShow win
Fl_Run()
