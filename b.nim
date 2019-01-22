type
  Fl_Widget* {.bycopy.} = ref object of RootObj ## ~ declare operator cast as any ptr

  Fl_WidgetEx* {.bycopy.} = ref object of Fl_Widget
    dummy*: pointer


proc WidgetEx*(this: var Fl_WidgetEx): ptr Fl_WidgetEx =
    return nil