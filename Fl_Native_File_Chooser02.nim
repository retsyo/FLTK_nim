import os
import fltk_main

# test of class Fl_Native_File_Chooser
# multiply file selection
var nfc = Fl_Native_File_ChooserNew(NFC_BROWSE_MULTI_FILE)
Fl_Native_File_ChooserSetTitle      nfc, "Load some FreeBASIC files ..."
Fl_Native_File_ChooserSetFilter     nfc, "*.{bas, bi}"
Fl_Native_File_ChooserSetDirectory  nfc, getAppDir()
Fl_Native_File_ChooserSetPresetFile nfc, "Fl_Native_File_Chooser01.bas"

var i = 0
if Fl_Native_File_ChooserShow(nfc) == 0:
  var nFiles = Fl_Native_File_ChooserCount(nfc)
  for i in 0 .. nFiles-1:
    echo "selected: " & $Fl_Native_File_ChooserGetFilename(nfc, i)


Fl_Native_File_ChooserDelete nfc
echo "..."

