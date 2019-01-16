import fltk_main

proc InputCB  (self: ptr Fl_Widget, iam: ptr any) {.cdecl.} =
  echo "InputCB: ",  Fl_Input_GetValue(iam)


proc  Fl_InputGridNew(parent: ptr Fl_Group,
                         nCols:       as integer, _
                         byval nRows      as integer, _
                         byval CellWidth  as integer=64, _
                         byval CellHeight as integer=24) as Fl_Table ptr
  nCols=iif(nCols<1,1,nCols)
  nRows=iif(nRows<1,1,nRows)
  Fl_GroupBegin parent ' open child list of parent
    var w = Fl_WidgetGetW(parent) ' get current size of parent
    var h = Fl_WidgetGetH(parent)
    var tbl = Fl_TableNew(5,5,w-10,h-10) ' create empty table
    Fl_TableSetCols tbl,nCols ' set number of columns
    Fl_TableSetRows tbl,nRows ' set number of rows
    Fl_TableRowHeightAll tbl,CellHeight ' same height for all cells
    Fl_TableColWidthAll  tbl,CellWidth  ' same width  for all cells
    Fl_TableBegin tbl ' open child list of the table
      for r as integer=0 to nRows-1
        for c as integer=0 to nCols-1
          ' create Fl_Input widgets
          var ip = Fl_InputNew(c*CellWidth,r*CellHeight,CellWidth,CellHeight)
          Fl_Input_SetValue ip, str(r*nRows+c)
          ' set a callback (called when the ENTER key are pressed)
          Fl_WidgetSetCallbackArg ip,@InputCB,ip
          ' add the new widget to the table
          Fl_TableAdd tbl,ip
        next
      next
    Fl_TableEnd tbl ' close child list of the new table
  Fl_GroupEnd parent ' close child list of the parent
  return tbl ' return our new table/grid
end function
'
' main
'
var win = Fl_WindowNew(652,252,"A grid of Fl_Input wigets.")
var grd = Fl_InputGridNew(win,10,10)

'Fl_GroupSetResizable win,grd
Fl_WindowShow win
Fl_Run