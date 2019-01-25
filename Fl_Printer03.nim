import fltk_main

# test of:
# Fl_echoerechoWidget()

proc ButtonCB  (wgt: ptr Fl_Widget){.cdecl.}=
  var prt: ptr  Fl_Printer =  Fl_PrinterNew()
  if not prt.isNil :
    if Fl_PrinterStartJob(prt,1) == 0 :
      if Fl_PrinterStartPage(prt) == 0 :
        Fl_PrinterPrintWidget prt,wgt
        Fl_PrinterEndPage prt
      else:
        #~ beep
        echo "Fl_PrinterStartPage() failed"

      Fl_PrinterEndJob prt
    else:
      #~ beep
      echo "Fl_PrinterStartJob() failed"

    Fl_PrinterDelete prt
  else:
    #~ beep
    echo "Fl_PrinterNew() failed"

#
# main
#
var win = Fl_WindowNew(80,40)
Fl_WidgetSetCallback0 Fl_ButtonNew(10,10,60,20,"Print me"), ButtonCB
Fl_WindowShow win
Fl_Run()


