import fltk_main

#[
## the following nim code works, but looks too ugly
function RelX(byval parent as FL_Widget ptr,byval x as long) as long
  if parent=0 then return x
  if Fl_WidgetAsWindow(parent)  then return x
  if Fl_WidgetAsGroup(parent)=0 then return x
  return x+Fl_WidgetGetX(parent)
end function

function RelY(byval parent as FL_Widget ptr,byval y as long) as long
  if parent=0 then return y
  if Fl_WidgetAsWindow(parent)  then return y
  if Fl_WidgetAsGroup(parent)=0 then return y
  return y+Fl_WidgetGetY(parent)
end function
]#

proc RelX(parent: ptr FL_Widget,x: long): long {.cdecl.} =
  if parent == cast[ptr FL_Widget](0) :
    return x
  if Fl_WidgetAsWindow(parent) != cast[ptr FL_Widget](0) :
    return x
  if Fl_WidgetAsGroup(parent) == cast[ptr FL_Widget](0) :
    return x
  return x+Fl_WidgetGetX(parent)


proc RelY(parent: ptr FL_Widget,y: long): long {.cdecl.} =
  if parent == cast[ptr FL_Widget](0) :
    return y
  if Fl_WidgetAsWindow(parent)  != cast[ptr FL_Widget](0) :
    return y
  if Fl_WidgetAsGroup(parent) == cast[ptr FL_Widget](0)  :
    return y
  return y+Fl_WidgetGetY(parent)



var win = Fl_WindowNew(320,200)
Fl_ButtonNew RelX(win,50),RelY(win,50),120,24,"window relative"
var grp = Fl_GroupNew(50,50,220,100)
Fl_ButtonNew RelX(grp,50),RelY(grp,50),120,24,"group realative"
Fl_WindowShow win
Fl_Run()


