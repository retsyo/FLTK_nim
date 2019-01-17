import fltk_main

# set gray as default background (for all new widgets)
Fl_Background(160,160,160)
var win = Fl_WindowNew(320,120,"Colors in FLTK.")

# set blue as default foreground color (for all new widgets)
Fl_Foreground(0,0,255)
var box = Fl_BoxNew(100,10,100,24,"box")

# create a button with current default colors
Fl_ButtonNew(100,40,100,24,"ok")

var btn = Fl_ButtonNew(100,70,100,24,"click")

# set background and selection color (overwrite default color if any)
Fl_WidgetSetColorSel btn, Fl_RGB_Color(255,0,0), Fl_RGB_Color(0,128,0)

# set a yellow label color (overwrite default color if any)
Fl_WidgetSetLabelColor btn, Fl_RGB_Color(255,255,0)

# put window on desktop
Fl_WindowShow win

# enter event loop
Fl_Run()

