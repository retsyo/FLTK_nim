import random
import fltk_main

#test of:
# Fl_Table_Row

const MAX_ROWS = 32
const MAX_COLS = 26

type
    arrayCol = array[0 .. MAX_COLS-1, long]
var datas: array[0 .. MAX_ROWS-1, arrayCol]

proc DrawHeader(tbl: ptr Fl_Table, z: cstring, x: long, y: long, w: long, h: long) {.cdecl.} =
    DrawPushClip   x, y, w, h
    DrawBox      BoxType(FL_THIN_UP_BOX),  x, y, w, h,  Fl_TableGetRowHeaderColor(tbl)
    DrawSetColor FL_BLACK
    DrawStrBox   z,  x, y, w, h,  FL_ALIGN_CENTER
    DrawPopClip()


proc DrawData(tbl: ptr Fl_Table, z: cstring,
             x: long, y: long, w: long, h: long,
             fillcolor: Fl_Color = Fl_Write) {.cdecl.} =
    DrawPushClip x, y, w, h
    DrawSetColor fillcolor
    DrawRectFill x, y, w, h
    DrawSetColor FL_GRAY0
    DrawStrBox z, x, y, w, h,  FL_ALIGN_CENTER
    DrawSetColor Fl_BLACK
    DrawRect     x, y, w, h
    DrawPopClip()


proc DrawCellCB (self: pointer, context: Fl_TableContext,
                           r: long, c: long,
                           x: long, y: long, w: long, h: long): long {.cdecl.} =
    var value: cstring
    case int(context):
        of FL_CONTEXT_STARTPAGE :
            DrawSetFont(FL_HELVETICA,  16)
        of FL_CONTEXT_COL_HEADER :
            value = $chr('A'.int+c)
            #~ value = "asdad"
            DrawHeader(self, value, x, y, w, h)
        of FL_CONTEXT_ROW_HEADER :
            value = $(r)
            DrawHeader(self, value, x, y, w, h)
        of FL_CONTEXT_CELL :
            value = $(datas[r][c])
            if Fl_Table_RowRowSelected(self, r) :
                DrawData(self, value, x, y, w, h, Fl_Red)
            else :
                DrawData(self, value, x, y, w, h, Fl_White)

        else :
            return 0

    return 1


#
# main
#

var
    r, c: int
for r in 0 .. MAX_ROWS-1:
  for c in 0 .. MAX_COLS-1:
    datas[r][c] = rand(1000)


var win = Fl_Double_WindowNew(520, 240,  "Fl_Table_RowEx01.bas")
var tbr = Fl_Table_RowExNew(10, 20, 500, 210)
Fl_Table_RowExSetDrawCellCB tbr, DrawCellCB


Fl_TableBegin tbr # open child list
# Rows
Fl_Table_RowSetRows tbr, MAX_ROWS  # how many rows
Fl_TableSetRowHeader tbr,  1       # enable row headers (along left)
Fl_TableRowHeightAll tbr, 20       # default height of rows
Fl_TableSetRowResize tbr,  0       # disable row resizing
#  Cols
Fl_TableSetCols      tbr, MAX_COLS # how many columns
Fl_TableSetColHeader tbr,  1       # enable column headers (along top)
Fl_TableColWidthAll  tbr, 80       # default width of columns
Fl_TableSetColResize tbr,  1       # enable column resizing
Fl_TableEnd tbr # close child list

Fl_Table_RowSetType tbr, FL_SELECT_SINGLE
Fl_Table_RowSelectRow tbr, 2


Fl_GroupSetResizable win, win
Fl_WindowShow win
Fl_Run()
