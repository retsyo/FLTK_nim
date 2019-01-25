import os
import fltk_main

#test of:
# Fl_File_Chooser  http://www.fltk.org/doc-1.3/classFl__File__Chooser.html
# Fl_File_ChooserCallback
# Fl_File_ChooserShow
proc FileChooserCB (fc: ptr Fl_File_Chooser, pData: pointer){.cdecl.} =
  var filename: cstring
  filename = Fl_File_ChooserGetValue(fc)
  echo "FileChooserCB: " & $filename

#
# main
#
Fl_Register_Images()

var fc = Fl_File_ChooserNew(getAppDir(), "*.nim", FL_FILECHOOSER_SINGLE, "Fl_File_Chooser01.nim")
Fl_File_ChooserSetPreview fc, 1
Fl_File_ChooserCallback fc, FileChooserCB, nil
Fl_File_ChooserShow fc
Fl_Run()
