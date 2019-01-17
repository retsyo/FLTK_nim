import fltk_main

#~ # test of:
#~ # Fl_TreeSetOpenIcon
#~ # Fl_TreeSetCloseIcon
#~ # Fl_TreeClose
proc TreeCB  (self: ptr Fl_Widget, tree: ptr Fl_Tree){.cdecl.} =
  if Fl_TreeGetCallbackReason(tree) == FL_TREE_REASON_SELECTED :
    var item = Fl_TreeGetCallbackItem(tree)
    Fl_WidgetCopyLabel self,Fl_Tree_ItemGetLabel(item)
    Fl_WidgetRedraw Fl_WidgetWindow(self)


#
# main
#
#~ ChDir ExePath()

Fl_Register_Images() # be sure png,jpg ... loader#s are reistered

var win = Fl_WindowNew(200,200, "Fl_Tree04.bas")
Fl_WindowBegin win
var tree = Fl_TreeNew(10,24,Fl_WidgetGetW(win)-20,Fl_WidgetGetH(win)-34,"slecet an item ...")
Fl_TreeBegin tree
Fl_WidgetSetCallbackArg tree, TreeCB,tree
Fl_TreeSetOpenIcon      tree,Fl_Shared_ImageGet("themes/default/Tree_closed_9x9.png")
Fl_TreeSetCloseIcon     tree,Fl_Shared_ImageGet("themes/default/Tree_open_9x9.png")
Fl_TreeRootLabel        tree,"FreeBASIC Ltd."

var
    nCountry, nCity, nShop, nGroup, nItem: int

for nCountry in 1 .. 3:
    var country = "/Country " & $nCountry
    for nCity in 1 .. 4:
        var city = country & "/City " & $nCity
        for nShop in 1 .. 2:
            var shop = city & "/Shop " & $nShop
            for nGroup in 1 .. 3:
                var group = shop & "/Group " & $nGroup
                for nItem in 1 .. 5:
                    var item = group & "/Item " & $nItem
                    #echo "Fl_TreeAdd tree," & item
                    Fl_TreeAdd tree, item


        Fl_TreeClose tree, country

Fl_TreeClose tree, "NimLang Ltd."
Fl_TreeEnd tree
Fl_WindowEnd win
Fl_WindowShow win
Fl_Run()
