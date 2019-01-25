import math
import strfmt
import fltk_main

const PI = 3.14159

proc DrawCellCB(self: pointer, context: Fl_TableContext,
                           r: long, c: long,
                           x: long, y: long, w: long, h: long): long {.cdecl.}=
    var
        mode: cstring
        pMode: cstring  = Fl_WidgetGetUserData(self)
    if not pMode.isNil :
        mode = pMode

    case int(context):
        of FL_CONTEXT_STARTPAGE: # before page is drawn..
            DrawSetFont(FL_HELVETICA, 10) # set the font for our drawing operations
        of FL_CONTEXT_COL_HEADER, FL_CONTEXT_ROW_HEADER:
            var value, colour: long
            var header: cstring
            if (context==FL_CONTEXT_COL_HEADER) :
                value = c
                colour = Fl_TableGetColHeaderColor(self)
            else:
                value = r
                colour = Fl_TableGetRowHeaderColor(self)

            if mode=="SinCos" :
                header = format(value/10.0*PI, "0.3f")
            else:
                header = $(value)

            DrawPushClip(x, y, w, h)
            DrawBox(BoxType(FL_THIN_UP_BOX), x, y, w, h, colour)
            DrawSetColor(FL_BLACK)
            DrawStrBox(header, x, y, w, h, FL_ALIGN_CENTER)
            DrawPopClip()
        of FL_CONTEXT_CELL:
            var cell:cstring="???"
            if mode == "Addition" :
                cell = $(r+c)
            elif mode == "Subtract" :
                cell = $(r-c)
            elif mode == "Multiply" :
                cell = $(r*c)
            elif mode == "Divide" :
                if (c != 0) :
                    cell = format(r/c, "0.3f")
                else:
                    cell = "N/A"
            elif mode == "Exponent" :
                cell = $(r^c)
            elif mode == "SinCos" :
                cell = format( sin(r/10.0*PI) * cos(c/10.0*PI), "0.3f" )

            var colour: long = iif(Fl_TableIsSelected(self, r, c), FL_YELLOW, FL_WHITE)
            DrawPushClip(x, y, w, h)
            DrawRectFillColor(x, y, w, h, colour)
            DrawSetColor(FL_GRAY0)
            DrawStrBox(cell, x, y, w, h, FL_ALIGN_CENTER)
            DrawRectColor(x, y, w, h, Fl_WidgetGetColor(self))
            DrawPopClip()
        else:
            return 0 # let FLTK do the job


    return 1 # we have done our job



proc ResizeCB(self: pointer, x: long, y: long, w: long, h: long): long {.cdecl.}=
    if (w>718) :
        var w = 718 # don#t exceed 700 in width
        Fl_TableResize(self, x, y, w, Fl_WidgetGetH(self)) # disallow changes in height
        return 1 # # we have done our job

    return 0 # let FLTK do the job


proc HandleCB(self: pointer, event: Fl_Event): long {.cdecl.}=
  return Fl_TableExHandleBase(self, event)

proc AddTable(tree: ptr Fl_Tree,
             path: cstring,
             mode: cstring) {.cdecl.}=
    # create Fl_TableEx
    var table = Fl_TableExNew(0, 0, 500, 156)
    Fl_TableBegin(table) # <-- optional (is done by the base constructor)
    # setup row
    Fl_TableSetRows(table, 11)
    Fl_TableRowHeightAll(table, 20)
    Fl_TableSetRowHeader(table, 1)

    # setup col
    Fl_TableSetCols(table, 11)
    Fl_TableColWidthAll(table, 60)
    Fl_TableSetColHeader(table, 1)
    # enable column resizing
    Fl_TableSetRowResize(table, 0)

    Fl_TableEnd(table) # <- !!! important !!! we must close the child list

    # save string mode: user data
    Fl_WidgetSetUserData table, mode

    # set DrawCell, Resize and Handle callback
    Fl_TableExSetDrawCellCB table, DrawCellCB
    Fl_TableExSetHandleCB table, HandleCB
    Fl_TableExSetResizeCB table, ResizeCB

    # add new tree item
    var item = Fl_TreeAdd(tree, path)

    # set table: tree item
    Fl_Tree_ItemSetWidget(item, table)


#
# main
#
var win = Fl_Double_WindowNew(700, 400, "Tree of tables")
Fl_WindowBegin win # <-- optional (is done by the base constructor)
# Create tree
var tree = Fl_TreeNew(10, 10, Fl_WidgetGetW(win)-20, Fl_WidgetGetH(win)-20)
Fl_Tree_ItemSetLabel Fl_TreeRoot(tree), "Math Tables"
Fl_TreeSetItemLabelFont tree, FL_COURIER # font to use for items
Fl_TreeSetLineSpacing tree, 12 # extra space between items
Fl_TreeSetItemDrawMode(tree, Fl_TreeGetItemDrawMode(tree)       or
                          FL_TREE_ITEM_DRAW_LABEL_AND_WIDGET or  # draw item with widget() next to it
                          FL_TREE_ITEM_HEIGHT_FROM_WIDGET)        # make item height follow table#s height

Fl_TreeSetSelectMode(tree, FL_TREE_SELECT_NONE) # font to use for items
Fl_TreeSetWidgetMarginLeft(tree, 12)            # space between item and table
Fl_TreeSetConnectorStyle(tree, FL_TREE_CONNECTOR_DOTTED)
# Create tables, assign each a tree item
Fl_TreeBegin(tree)
AddTable(tree, "Arithmetic/Addition", "Addition")
AddTable(tree, "Arithmetic/Subtract", "Subtract")
AddTable(tree, "Arithmetic/Multiply", "Multiply")
AddTable(tree, "Arithmetic/Divide  ", "Divide")
AddTable(tree, "Misc/Exponent"      , "Exponent")
AddTable(tree, "Misc/Sin*Cos "      , "SinCos")
Fl_TreeEnd(tree)
Fl_WindowEnd win
Fl_WindowShow win
Fl_Run()

