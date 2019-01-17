import fltk_main

#~ 'test of:
#~ ' Fl_Register_Images
#~ ' Fl_Help_View extends Fl_Group  http://www.fltk.org/doc-1.3/classFl__Help__View.html
#~ ' Fl_Help_ViewSetValue

var html = """
<HTML>
  <HEAD>
  </HEAD>
  <BODY>
   !<IMG WIDTH=128 HEIGHT=128 SRC="media/renata.png">
    <HR>
    <H1>The Fl_Help_View class !</H1>
    <CODE>Fl_Register_Images()<BR>
   !var win = Fl_Double_WindowNew(640,480,"Fl_Help_View01")<BR>
    var hv  = Fl_Help_ViewNew(10,10,620,460)<BR>
    Fl_Help_ViewSetValue hv, html<BR>
    Fl_GroupSetResizable win,hv<BR>
    Fl_WindowShow win<BR>
    Fl_Run</CODE><BR>
  </BODY>
</HTML>
"""

Fl_Register_Images()
var win = Fl_Double_WindowNew(640,480, "Fl_Help_View01")
var hv  = Fl_Help_ViewNew(10,10,620,460)
Fl_Help_ViewSetValue hv,html
Fl_GroupSetResizable win,hv
Fl_WindowShow win
Fl_Run()
