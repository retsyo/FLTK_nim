import fltk_main

# You can use the Fl_File_Icon class as "normal" icons also.

# test of

# Fl_File_IconNew
# Fl_File_IconLoad

const ICONSIZE = 48# try 8, 16, 24, 32 also
#
# main
#
Fl_Register_Images()
Fl_File_IconLoadSystemIcons()

# get/create icons
var fIcon = Fl_File_IconFirst()
var wIcon = Fl_File_IconNew()
Fl_File_IconLoad wIcon, "media/win.png"
var lIcon = Fl_File_IconNew()
Fl_File_IconLoad lIcon, "media/lin.png"

var win  = Fl_Double_WindowNew(640, 480, "Fl_File_Icon02.nim")
var toolbar = Fl_GroupNew(0, 0, Fl_WidgetGetW(win), ICONSIZE)
Fl_WidgetSetBox toolbar, Boxtype(FL_UP_BOX)
var btn1 = Fl_ButtonNew(0*ICONSIZE, 0, ICONSIZE, ICONSIZE)
Fl_File_IconLabel fIcon, btn1
var btn2 = Fl_ButtonNew(1*ICONSIZE, 0, ICONSIZE, ICONSIZE)
Fl_File_IconLabel wIcon, btn2
var btn3 = Fl_ButtonNew(2*ICONSIZE, 0, ICONSIZE, ICONSIZE)
Fl_File_IconLabel lIcon, btn3
Fl_GroupEnd toolbar
FL_WindowEnd win
Fl_WindowResizeable win, toolbar
Fl_WindowShow win
Fl_Run()
