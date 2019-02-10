import fltk_main

#test of:
# Fl_Tree  http://www.fltk.org/doc-1.3/classFl__Tree.html

proc TreeCB  (self: ptr Fl_Widget, tree: pointer){.cdecl.} =
    var item = Fl_TreeGetCallbackItem(tree)
    #~ if (item == cast[ptr Fl_Tree_Item](0) then exit sub
    echo Fl_Tree_ItemGetLabel(item);
    case Fl_TreeGetCallbackReason(tree):
      of FL_TREE_REASON_SELECTED:
          echo " selected"
      of FL_TREE_REASON_DESELECTED:
          echo " deselected"
      of FL_TREE_REASON_OPENED:
          echo " opened"
      of FL_TREE_REASON_CLOSED:
          echo " closed"
      else:
          echo "?"


#
# main
#
var win = Fl_WindowNew(320, 200, "Fl_Tree01.nim")
Fl_WindowBegin(win)
var tree = Fl_TreeNew(10, 20, 300, 170, "Fl_Tree")
Fl_TreeBegin(tree)
Fl_TreeSetShowRoot(tree, 0)         # don#t show root of tree

Fl_TreeAdd(tree, "Flintstones/Fred") # add some items
Fl_TreeAdd(tree, "Flintstones/Wilma")
Fl_TreeAdd(tree, "Flintstones/Pebbles")

Fl_TreeAdd(tree, "Simpsons/Homer")
Fl_TreeAdd(tree, "Simpsons/Marge")
Fl_TreeAdd(tree, "Simpsons/Bart")
Fl_TreeAdd(tree, "Simpsons/Lisa")

Fl_TreeClose(tree, "Simpsons") # Start with one item closed

Fl_WidgetSetCallbackArg(tree, TreeCB, tree) # setup a callback for the treeview
Fl_TreeEnd(tree)
Fl_WindowEnd(win)

Fl_GroupSetResizable(win, win)
Fl_WindowShow win
Fl_Run()
