import fltk_main

#~ 'test of:
#~ ' Fl_File_Chooser  http://www.fltk.org/doc-1.3/classFl__File__Chooser.html
#~ ' Fl_File_ChooserShown
#~ ' Fl_Wait
#~ ' Fl_File_ChooserGetValue
#~ ' Fl_File_ChooserCount

var fc = Fl_File_ChooserNew(".", "*.bas", FL_FILECHOOSER_MULTI, "Fl_File_Chooser02.bas")

Fl_File_ChooserShow fc

while Fl_File_ChooserShown(fc)>0 :
  Fl_Wait()

var item:long
if Fl_File_ChooserCount(fc)>0 :
  for item in 1 .. Fl_File_ChooserCount(fc):
    echo Fl_File_ChooserGetValue(fc,item)[]




