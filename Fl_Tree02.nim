import fltk_main

#test of:
# Fl_Tree  http://www.fltk.org/doc-1.3/classFl__Tree.html

proc TreeCB  (wgt: ptr Fl_Widget, pdata: ptr integer) {.cdecl.} =
    #~ var tr = cptr(Fl_Tree ptr,wgt)
    var tr = cast[ptr Fl_Tree](wgt)
    var item = Fl_TreeGetCallbackItem(tr)
    #~ if (item=0) then exit sub

    var label = Fl_Tree_ItemGetLabel(item)
    case Fl_TreeGetCallbackReason(tr):
        of FL_TREE_REASON_SELECTED:
            echo "FL_TREE_REASON_SELECTED   " & $label
        of FL_TREE_REASON_DESELECTED:
            echo "FL_TREE_REASON_DESELECTED " & $label
        of FL_TREE_REASON_OPENED:
            echo "FL_TREE_REASON_OPENED     " & $label
        of FL_TREE_REASON_CLOSED:
            echo "FL_TREE_REASON_CLOSED     " & $label
        else:
            discard

#
# main
#
var win = Fl_WindowNew(320,200, "Fl_Tree02.nim")
var tr = Fl_TreeNew(10,20,300,170,"Fl_Tree")
Fl_TreeSetShowRoot(tr,0)         # don#t show root of tree

Fl_TreeAdd(tr,"Flintstones/Fred") # add some items
Fl_TreeAdd(tr,"Flintstones/Wilma")
Fl_TreeAdd(tr,"Flintstones/Pebbles")

Fl_TreeAdd(tr,"Simpsons/Homer")
Fl_TreeAdd(tr,"Simpsons/Marge")
Fl_TreeAdd(tr,"Simpsons/Bart")
Fl_TreeAdd(tr,"Simpsons/Lisa")

Fl_TreeClose(tr,"Simpsons") # Start with one item closed

Fl_TreeAdd(tr, "Pathnames/\\/bin")              # front slashes
Fl_TreeAdd(tr, "Pathnames/\\/usr\\/sbin")
Fl_TreeAdd(tr, "Pathnames/C:\\\\Program Files") # backslashes
Fl_TreeAdd(tr, "Pathnames/C:\\\\Documents and Settings")

Fl_WidgetSetCallback(tr, TreeCB) # setup a callback for the treeview

Fl_WindowEnd(win)
Fl_GroupSetResizable(win,win)
Fl_WindowShow win
Fl_Run()
