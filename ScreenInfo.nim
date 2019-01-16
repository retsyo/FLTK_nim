import lenientops
import math
import fltk_main

#~ ' test of:
#~ ' Fl_ScreenDpi
#~ ' Fl_ScreenXYWH

#~ '
#~ ' main
#~ '
var dw,dh,iw,ih,cw,ch: single
var px,py,pw,ph: long

Fl_ScreenDpi dw,dh
Fl_ScreenXYWH px,py,pw,ph
iw=pw/dw
ih=ph/dh
cw=iw*2.54
ch=ih*2.54
echo "Resolution : " & $pw & " x " & $ph & " pixel"
echo "Screen     : " & $dw & " x " & $dh & " dpi"
echo "Screen     : " & $iw & " x " & $ih & " inch"
echo "Screen     : " & $cw & " x " & $ch & " cm"
echo "Monitor    : " & $sqrt(iw*iw+ih*ih) & " inches"


