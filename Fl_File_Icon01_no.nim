import fltk_main

#~ ' test of
#~ ' Fl_File_Icon:  http://www.fltk.org/doc-1.3/classFl__File__Icon.html
#~ ' Fl_File_IconLoadSystemIcons()
#~ ' Fl_File_IconFirst()
#~ ' Fl_File_IconNext()
#~ ' Fl_File_IconLabel()

proc ButtonCB  (self: ptr FL_WIDGET) {.cdecl.} =
  var
    curIcon: ptr Fl_File_Icon == cast[ptr Fl_File_Icon](0)
  if curIcon == cast[ptr Fl_File_Icon](0):
      curIcon = Fl_File_IconFirst()
  Fl_File_IconLabel curIcon,self
  curIcon = Fl_File_IconNext(curIcon)



Fl_File_IconLoadSystemIcons()
var win = Fl_Double_WindowNew(512,512,"Fl_File_Icon01.bas")
var btn = Fl_ButtonNew(16,16,Fl_WidgetGetW(win)-32,Fl_WidgetGetH(win)-32,"click me")
Fl_WidgetSetCallback0 btn,ButtonCB
Fl_WindowShow win
Fl_Run()
