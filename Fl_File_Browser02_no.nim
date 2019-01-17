import fltk_main

# test of:

# flFilenameExpand
# Fl_WidgetSetType
# Fl_WidgetSetCallbackArg
# Fl_File_BrowserNew
# Fl_File_BrowserLoad
# Fl_BrowserGetValue
# Fl_BrowserGetText


when defined(windows):
    const PATH = "$USERPROFILE"
else:
    const PATH = "$HOME"


var UserPath: string
#~ UserPath = callocate(FL_MAX_PATH)
flFilenameExpand(UserPath, FL_MAX_PATH, PATH)

proc BrowserCB  (self: ptr FL_WIDGET, filebrowser: ptr Fl_File_Browser){.cdecl.}=
  var index = Fl_BrowserGetValue(filebrowser)
  echo $Fl_BrowserGetText(filebrowser,index)

#
# main
#
var win = Fl_WindowNew(300,300)
var fbr = Fl_File_BrowserNew(10,10,280,280)
Fl_WidgetSetType           fbr, 2# FL_HOLDBROWSER
Fl_WidgetSetCallbackArg    fbr, BrowserCB, fbr
Fl_Browser_SetHasScrollbar fbr,FL_SCROLL_VERTICAL
Fl_File_BrowserLoad        fbr,UserPath
Fl_WindowShow win
Fl_Run()


