import fltk_main

proc InputCB(self: ptr Fl_Widget, me: pointer)  {.cdecl.} =
  echo "InputCB: " & $Fl_Input_GetValue(me)

proc Fl_InputGridNew(parent    : ptr Fl_Group,
                    nCols     : integer,
                    nRows     : integer,
                    CellWidth : integer=64,
                    CellHeight: integer=24)  {.cdecl.} =
    var
        r, c: integer
    Fl_GroupBegin parent
    for r in 0 .. nRows-1:
        for c in 0 .. nCols-1:
            var ip = Fl_InputNew(c*CellWidth, r*CellHeight, CellWidth, CellHeight)
            Fl_Input_SetValue ip, "r: " & $r & " c:" & $c
            Fl_WidgetSetCallbackArg ip, InputCB, ip
            Fl_GroupAdd parent, ip
    Fl_GroupEnd parent


var win = Fl_WindowNew(320,240,"A grid of Fl_Input wigets.")
Fl_InputGridNew win,10, 12
Fl_GroupSetResizable win,win
Fl_WindowShow win
Fl_Run()