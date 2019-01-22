import lenientops
import fltk_main

proc InputCB  (self: ptr Fl_Widget, iam: ptr Fl_Input) {.cdecl.} =
  echo "InputCB: ",  Fl_Input_GetValue(iam)


proc  Fl_InputGridNew(parent: ptr Fl_Group,
                         nCols:       var integer,
                         nRows:      var integer,
                         CellWidth:  long=64,
                         CellHeight: long=24): ptr Fl_Table  {.cdecl.} =
    #~ nCols=iif(nCols<1,1,nCols)
    #~ nRows=iif(nRows<1,1,nRows)
    if nCols<1 :
        nCols = 1
    if nRows<1:
        nRows = 1
    Fl_GroupBegin parent # open child list of parent
    var w = Fl_WidgetGetW(parent) # get current size of parent
    var h = Fl_WidgetGetH(parent)
    var tbl = Fl_TableNew(5, 5, w-10, h-10) # create empty table
    Fl_TableSetCols tbl, nCols # set number of columns
    Fl_TableSetRows tbl, nRows # set number of rows
    Fl_TableRowHeightAll tbl, CellHeight # same height for all cells
    Fl_TableColWidthAll  tbl, CellWidth  # same width  for all cells
    Fl_TableBegin tbl # open child list of the table

    var r, c: int
    for r in 0 .. nRows-1 :
        for c in 0 .. nCols-1:
            # create Fl_Input widgets
            var ip = Fl_InputNew(int(c*CellWidth), int(r*CellHeight), CellWidth, CellHeight)
            Fl_Input_SetValue ip, $(r*nRows+c)
            # set a callback (called when the ENTER key are pressed)
            Fl_WidgetSetCallbackArg cast[ptr Fl_Widget](ip), InputCB, ip
            # add the new widget to the table
            Fl_TableAdd tbl, ip

    Fl_TableEnd tbl # close child list of the new table
    Fl_GroupEnd parent # close child list of the parent
    return tbl # return our new table/grid


#
# main
#
var win = Fl_WindowNew(652,252,"A grid of Fl_Input wigets.")
var grd = Fl_InputGridNew(win,10,10)

#Fl_GroupSetResizable win,grd
Fl_WindowShow win
Fl_Run()