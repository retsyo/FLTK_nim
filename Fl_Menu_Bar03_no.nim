import fltk_main

proc NewCB(self: ptr Fl_Widget, userdata: pointer)  {.cdecl.}

proc OpenCB(self: ptr Fl_Widget, userdata: pointer)  {.cdecl.}

proc SaveCB(self: ptr Fl_Widget, userdata: pointer)  {.cdecl.}

proc SaveAsCB(self: ptr Fl_Widget, userdata: pointer)  {.cdecl.}

proc QuitCB(self: ptr Fl_Widget, userdata: pointer)  {.cdecl.} =
  Fl_WindowHide Fl_WidgetWindow(self)


proc UndoCB(self: ptr Fl_Widget, userdata: pointer)  {.cdecl.}

proc CutCB(self: ptr Fl_Widget, userdata: pointer)  {.cdecl.}

proc CopyCB(self: ptr Fl_Widget, userdata: pointer)  {.cdecl.}

proc PasteCB(self: ptr Fl_Widget, userdata: pointer)  {.cdecl.}

proc DeleteCB(self: ptr Fl_Widget, userdata: pointer)  {.cdecl.}


proc FindCB(self: ptr Fl_Widget, userdata: pointer)  {.cdecl.}

proc ReplaceCB(self: ptr Fl_Widget, userdata: pointer)  {.cdecl.}


#define ALT(k) FL_ALT + asc(k)
#define CTRL(k) FL_ALT + asc(k)
#define ALTS(k) FL_ALT + FL_SHIFT + asc(k)
#define SUBMENU(n)      ##n, 0, 0    , 0, FL_SUBMENU
#define DIVMENU(n, k, cb) ##n, k, ##cb, 0, 0
#define SEPITEM(n, k, cb) ##n, k, ##cb, 0, FL_MENU_DIVIDER
#define MNUITEM(n, k, cb) ##n, k, ##cb, 0, 0
#define ENDMENU         0   , 0, 0    , 0, 0


var Fl_Menu_Item menuitems(...) => _
{ _
  (SUBMENU("&File")),  _
  (SEPITEM("&New"       ,  ALT("n"), NewCB )   ),  _
  (MNUITEM("&Open..."   ,  ALT("o"), OpenCB)   ),  _
  (MNUITEM("&Save"      ,  ALT("s"), SaveCB)   ),  _
  (SEPITEM("Save &As...", ALTS("s"), SaveAsCB) ),  _
  (MNUITEM("&Quit"      ,  ALT("q"), QuitCB)   ),  _
  (ENDMENU),  _
  (SUBMENU("&Edit")),  _
  (SEPITEM("&Undo"      , CTRL("z"), UndoCB)   ),  _
  (MNUITEM("Cu&t"       , CTRL("x"), CutCB)    ),  _
  (MNUITEM("&Copy"      , CTRL("c"), CopyCB)   ),  _
  (SEPITEM("&Paste"     , CTRL("v"), PasteCB)  ),  _
  (MNUITEM("&Delete"    , 0        , DeleteCB) ),  _
  (ENDMENU),  _
  (SUBMENU("&Search")),  _
  (MNUITEM("&Find..."   , CTRL("f"), FindCB)   ),  _
  (MNUITEM("&Replace...", CTRL("r"), ReplaceCB)),  _
  (ENDMENU) _
}

var win = Fl_WindowNew(640, 480, "Fl_Menu_Bar03")
Fl_Menu_SetMenu Fl_Menu_BarNew(0, 0, 640, 24), menuitems(0)
Fl_WindowEnd win
Fl_WindowShow win
Fl_Run()

