import random
import strUtils
import fltk_main

proc `\` (x: long; y: long): long = long(x.float / y.float)
proc `\=` (x: var long; y: long) =
    x = long(x.float / y.float)

var cat_xpm0 = [
    "50 34 4 1",
    "  c #000000",
    "o c #ff8800",
    "@ c #ffffff",
    "# c none",
    "##################################################",
    "###      ##############################       ####",
    "### ooooo  ###########################  ooooo ####",
    "### oo  oo  #########################  oo  oo ####",
    "### oo   oo  #######################  oo   oo ####",
    "### oo    oo  #####################  oo    oo ####",
    "### oo     oo  ###################  oo     oo ####",
    "### oo      oo                     oo      oo ####",
    "### oo       oo  ooooooooooooooo  oo       oo ####",
    "### oo        ooooooooooooooooooooo        oo ####",
    "### oo     ooooooooooooooooooooooooooo    ooo ####",
    "#### oo   ooooooo ooooooooooooo ooooooo   oo #####",
    "####  oo oooooooo ooooooooooooo oooooooo oo  #####",
    "##### oo oooooooo ooooooooooooo oooooooo oo ######",
    "#####  o ooooooooooooooooooooooooooooooo o  ######",
    "###### ooooooooooooooooooooooooooooooooooo #######",
    "##### ooooooooo     ooooooooo     ooooooooo ######",
    "##### oooooooo  @@@  ooooooo  @@@  oooooooo ######",
    "##### oooooooo @@@@@ ooooooo @@@@@ oooooooo ######",
    "##### oooooooo @@@@@ ooooooo @@@@@ oooooooo ######",
    "##### oooooooo  @@@  ooooooo  @@@  oooooooo ######",
    "##### ooooooooo     ooooooooo     ooooooooo ######",
    "###### oooooooooooooo       oooooooooooooo #######",
    "###### oooooooo@@@@@@@     @@@@@@@oooooooo #######",
    "###### ooooooo@@@@@@@@@   @@@@@@@@@ooooooo #######",
    "####### ooooo@@@@@@@@@@@ @@@@@@@@@@@ooooo ########",
    "######### oo@@@@@@@@@@@@ @@@@@@@@@@@@oo ##########",
    "########## o@@@@@@ @@@@@ @@@@@ @@@@@@o ###########",
    "########### @@@@@@@     @     @@@@@@@ ############",
    "############  @@@@@@@@@@@@@@@@@@@@@  #############",
    "##############  @@@@@@@@@@@@@@@@@  ###############",
    "################    @@@@@@@@@    #################",
    "####################         #####################",
    "##################################################"]



var cat_xpm = cat_xpm0.join("")

proc HandleCB(self: pointer, event: Fl_Event): long {.cdecl.}=
    var xStart{.global.}, yStart{.global.}: long
    case int(event) :
        of FL_EVENT_PUSH :
            # save where dragging begins
            xStart = Fl_WidgetGetX(self)-Fl_EventX()
            yStart = Fl_WidgetGetY(self)-Fl_EventY()
        of FL_EVENT_DRAG :
            # handle dragging
            Fl_WidgetPosition self,xStart+Fl_EventX(), yStart+Fl_EventY()
            Fl_WidgetRedraw Fl_WidgetWindow(self)
        of FL_EVENT_RELEASE :
            Fl_WidgetRedraw Fl_WidgetWindow(self)
        else:
            # all other events should be handle by FLTK
            return 0

    return 1 # we handle FL_EVENT_PUSH,FL_EVENT_DRAG and FL_EVENT_RELEASE



#
# main
#
var w = Fl_GetW() \ 2
var h = Fl_GetH() \ 2
var cat = Fl_PixmapNew(cat_xpm)
var win = Fl_Double_WindowNew(w, h, "dragable boxes")
w \= 50
h \= 34

echo w
echo h

var x, y: integer
for y in 0 .. h:
  for x in 0 .. w:
    if rand(1.0) > 0.5 :
      var box = Fl_BoxExNew(x*50, y*34, 50, 34)
      Fl_BoxExSetHandleCB box, HandleCB
      Fl_WidgetSetImage   box, cat

Fl_WindowShow win
Fl_Run()

