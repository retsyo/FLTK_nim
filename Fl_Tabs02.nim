import fltk_main
#test of:
# Fl_TabsGetValue()  http://www.fltk.org/doc-1.3/classFl__Tabs.html#aa76c3a292bf992a319849dec3beaa825

proc TabCB  (self: ptr FL_WIDGET, tabs: pointer){.cdecl.} =
  var grp = Fl_TabsGetValue(tabs)
  echo "TabCB: " & $Fl_WidgetGetLabel(grp)


var win = Fl_WindowNew(500, 200, "Tabs02.nim")
# Create the tab widget
var tabs = Fl_TabsNew(10, 10, 500-20, 200-20)
Fl_WidgetSetCallbackArg tabs, TabCB, tabs
# ADD THE "Aaa" TAB
# We do this by adding a child group to the tab widget.
# The child group#s label defines the label of the tab.
var aaa = Fl_GroupNew(10, 35, 500-20, 200-45, "Aaa")
# Put some buttons into the group, which will be shown when the tab is selected.
Fl_ButtonNew(50, 60, 90, 25, "Button A1")
Fl_ButtonNew(50, 90, 90, 25, "Button A2")
Fl_ButtonNew(50, 120, 90, 25, "Button A3")
Fl_GroupEnd aaa

# ADD THE "Bbb" TAB
# Same details: ptr above.
var bbb = Fl_GroupNew(10, 35, 500-10, 200-35, "Bbb")
# Put some buttons into the group, which will be shown when the tab is selected.
Fl_ButtonNew( 50, 60, 90, 25, "Button B1")
Fl_ButtonNew(150, 60, 90, 25, "Button B2")
Fl_ButtonNew(250, 60, 90, 25, "Button B3")
Fl_ButtonNew( 50, 90, 90, 25, "Button B4")
Fl_ButtonNew(150, 90, 90, 25, "Button B5")
Fl_ButtonNew(250, 90, 90, 25, "Button B6")
Fl_GroupEnd bbb
Fl_GroupEnd tabs
Fl_WindowEnd win

Fl_WindowShow win
Fl_Run()
