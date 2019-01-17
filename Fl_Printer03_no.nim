import fltk_main

# test of:
# Fl_echoerechoWidget()

proc ButtonCB  (wgt: ptr Fl_Widget){.cdecl.}=
  var prt: ptr Fl_echoer = Fl_echoerNew()
  if prt :
    if Fl_echoerStartJob(prt,1) == 0 :
      if Fl_echoerStartPage(prt)=0 :
        Fl_echoerechoWidget prt,wgt
        Fl_echoerEndPage prt
      else:
        #~ beep
        echo "Fl_echoerStartPage() failed"

      Fl_echoerEndJob prt
    else:
      #~ beep
      echo "Fl_echoerStartJob() failed"

    Fl_echoerDelete prt
  else:
    #~ beep
    echo "Fl_echoerNew() failed"

#
# main
#
var win = Fl_WindowNew(80,40)
Fl_WidgetSetCallback0 Fl_ButtonNew(10,10,60,20,"echo me"),ButtonCB
Fl_WindowShow win
Fl_Run()


