import random
import fltk_main

proc TreeCB  (self: ptr Fl_Widget, tree: ptr Fl_Tree){.cdecl.} =
  Fl_TreeSetConnectorColor tree, Fl_RGB_Color(ubyte(rand(255)), ubyte(rand(255)), ubyte(rand(255)))
  Fl_TreeSetConnectorStyle tree, cast[Fl_Tree_Connector](int(rand(3)))
  Fl_TreeSetSelectBox      tree, Boxtype(1+int(rand(54)))

  var item = Fl_TreeGetCallbackItem(tree)
  #~ if item=0 then return

  # change properties of selected item
  Fl_Tree_ItemSetLabelfont(item, cast[FL_FONT](rand(14)))
  Fl_Tree_ItemSetLabelsize(item, 12 + rand(20))
  Fl_Tree_ItemSetLabelfgcolor(item, Fl_RGB_Color(ubyte(rand(255)), ubyte(rand(255)), ubyte(rand(255))))
  Fl_Tree_ItemSetLabelbgcolor(item, Fl_RGB_Color(ubyte(rand(255)), ubyte(rand(255)), ubyte(rand(255))))

  # change child properties of selected item (if any)
  var nChilds = Fl_Tree_ItemGetChildren(item)
  var index: long
  if nChilds>0 :
    for index in 0 .. nChilds-1:
      var child = Fl_Tree_ItemGetChild(item, index)
      if child != cast[ptr Fl_Tree_Item](0) :  ## how to simplify
        Fl_Tree_ItemSetLabelFont(child, cast[FL_FONT](rand(14)))
        Fl_Tree_ItemSetLabelSize(child, 12+rand(20))
        Fl_Tree_ItemSetLabelFGColor(child, Fl_RGB_Color(ubyte(rand(255)), ubyte(rand(255)), ubyte(rand(255))))
        Fl_Tree_ItemSetLabelBGColor(child, Fl_RGB_Color(ubyte(rand(255)), ubyte(rand(255)), ubyte(rand(255))))

  # trigger an redraw event
  Fl_WidgetRedraw tree


#
# main
#
Fl_SetScheme "gleam"
Fl_Background 128, 128, 128
var win  = Fl_Double_WindowNew(200, 400)
var tree = Fl_TreeNew(Fl_WidgetGetX(win)+10, Fl_WidgetGetY(win)+10, Fl_WidgetGetW(win)-20, Fl_WidgetGetH(win)-20)
Fl_TreeSetShowRoot tree, 0 # don#t show root of tree
Fl_WidgetSetCallbackArg tree, TreeCB, tree
Fl_TreeBegin tree
var i, root, parent, child: integer
for i in 1 .. 20:
    if rand(1.0) < 0.25:
        root += 1
        child=1
    elif rand(1.0) < 0.5:
        parent += 1
        child = 1
    else:
        child += 1

    Fl_TreeAdd tree, "root " & $root & "/parent " & $parent & "/ Item " & $child

Fl_TreeEnd tree

Fl_GroupSetResizable win, tree
Fl_WindowShow win
Fl_Run()
