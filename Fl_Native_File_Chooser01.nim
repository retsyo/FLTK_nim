import os
import fltk_main

#~ ' test of class Fl_Native_File_Chooser

#~ ' single file selection
var nfc = Fl_Native_File_ChooserNew(NFC_BROWSE_FILE)
Fl_Native_File_ChooserSetTitle      nfc, "Load a FreeBASIC file ..."
Fl_Native_File_ChooserSetFilter     nfc, "*.{bas, bi}"
Fl_Native_File_ChooserSetDirectory  nfc, getAppDir()
Fl_Native_File_ChooserSetPresetFile nfc, "Fl_Native_File_Chooser01.bas"


if Fl_Native_File_ChooserShow(nfc) == 0 :
  echo "selected: " & $Fl_Native_File_ChooserFilename(nfc)
else:
  echo "no file selected !"


Fl_Native_File_ChooserDelete nfc

