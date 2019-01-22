import fltk_main

# test of:
# Fl_PrinterPrintWindow()
proc ButtonCB  (wgt: ptr Fl_Widget, win: pointer ){.cdecl.}=
  var prt: ptr Fl_Printer = Fl_PrinterNew()
  if not prt.isNil :
    if Fl_PrinterStartJob(prt,1) == 0 :
      if Fl_PrinterStartPage(prt) == 0 :
        Fl_PrinterPrintWindow prt, cast[ptr Fl_Window](win)
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
var win = Fl_WindowNew(320, 240)
Fl_WidgetSetCallbackArg Fl_ButtonNew(10,10,300,220,"print window"), ButtonCB, cast[pointer](win)
Fl_WindowShow win
Fl_Run()


