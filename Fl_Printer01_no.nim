import fltk_main

proc `\=` (x: var long; y: long) =
    x = long(x.float / y.float)

proc ButtonCB  (wgt: ptr Fl_Widget, pData: ptr Fl_Button ){.cdecl.}=
  var
    w,h,l,t,r,b,pw,ph : long
  var prt = Fl_PrinterNew()
  if prt > cast[ptr Fl_Printer](0):
    if Fl_PrinterStartJob(prt,1) == 0 :
      if Fl_PrinterStartPage(prt) == 0 :
        Fl_PrinterSetCurrent prt
        var DPI: single = 72
        var CM: single  = DPI/2.54
        #Fl_PrinterScale prt,1.0/(DPI/72) # 72 dpi per inch
        Fl_PrinterGetPrintableRect prt,w,h
        Fl_PrinterGetMargins prt,l,t,r,b
        pw=w+l+r
        ph=h+t+b
        echo "paper size " & $pw          & " x " & $ph          & " points"
        echo "paper size " & $(pw/DPI)      & " x " & $(ph/DPI)      & " zoll"
        echo "paper size " & $(pw/DPI*2.54) & " x " & $(ph/DPI*2.54) & " cm"
        echo "\n"
        echo "print size " & $w          & " x " & $h          & " points"
        echo "print size " & $(w/DPI)      & " x " & $(h/DPI)      & " zoll"
        echo "print size " & $(w/DPI*2.54) & " x " & $(h/DPI*2.54) & " cm"
        w \= 16
        w *= 16
        h \= 16
        h *= 16

        DrawRect 0,0,w-1,h-1
        var x, y: int
        for x in countUp(0, w-1, CM):
          DrawLine x,0,x,h-1

        for y in countUp(0, h-1,CM):
          DrawLine 0,y,w-1,y

        Fl_PrinterEndPage prt

      Fl_PrinterEndJob prt

    Fl_PrinterDelete prt



var win = Fl_WindowNew(70,40)
var btn = Fl_ButtonNew(10,10,60,20,"print")
Fl_WidgetSetCallBack btn, ButtonCB

Fl_WindowShow win
Fl_Run()


