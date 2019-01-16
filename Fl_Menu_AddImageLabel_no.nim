import fltk_c

proc QuitCB (self: ptr Fl_Widget, userdata: ptr any) {.cdecl.} =
    flMessageTitle("QuitCB called !")
    if flChoice("Do you really want to exit ?","no","yes"):
        Fl_WindowHide Fl_WidgetWindow(self)


var win = Fl_WindowNew(640,480)
var bar = Fl_Menu_BarNew(0,0,Fl_WidgetGetW(win),25)              #' Fl_ALIGN_TEXT_OVER_IMAGE
Fl_WindowShow win #' <- must be shown for drawing

#~ ' params:            menu, mnuPath,mnuLabel, image,[shortcut],[MenuCB],IMAGE_ALIGN, LABEL_ALIGN
Fl_Menu_AddImageLabel(bar, "File/Test1", "Test", "media/8x8.png", 0, 0, Fl_ALIGN_IMAGE_OVER_TEXT, Fl_ALIGN_LEFT)
Fl_Menu_AddImageLabel(bar, "File/Test2", "Test", "media/8x8.png", 0, 0, Fl_ALIGN_TEXT_OVER_IMAGE, Fl_ALIGN_RIGHT)

Fl_Menu_AddImageLabel(bar, "File/Open1", "Open...", "media/16x16.png", 0, 0, Fl_ALIGN_IMAGE_NEXT_TO_TEXT, Fl_ALIGN_LEFT or FL_ALIGN_TOP)
Fl_Menu_AddImageLabel(bar, "File/Open2", "Open...", "media/16x16.png", 0, 0, Fl_ALIGN_IMAGE_NEXT_TO_TEXT, Fl_ALIGN_CENTER)
Fl_Menu_AddImageLabel(bar, "File/Open3", "Open...", "media/16x16.png", 0, 0, Fl_ALIGN_IMAGE_NEXT_TO_TEXT, Fl_ALIGN_RIGHT or FL_ALIGN_BOTTOM)

Fl_Menu_AddImageLabel(bar, "File/Exit3", "Exit", "media/exit-2_32x32.png", 0, QuitCB, Fl_ALIGN_TEXT_NEXT_TO_IMAGE, Fl_ALIGN_RIGHT or FL_ALIGN_BOTTOM)
Fl_Menu_AddImageLabel(bar, "File/Exit2", "Exit", "media/application-exit-4_32x32.png", 0, QuitCB, Fl_ALIGN_TEXT_NEXT_TO_IMAGE, Fl_ALIGN_CENTER)
Fl_Menu_AddImageLabel(bar, "File/Exit1", "Exit", "media/exit-2_32x32.png", 0, QuitCB, Fl_ALIGN_TEXT_NEXT_TO_IMAGE, Fl_ALIGN_LEFT or FL_ALIGN_TOP)



Fl_Run()
