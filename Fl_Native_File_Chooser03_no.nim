import os
import fltk_main
#~ ' test of class Fl_Native_File_Chooser
#~ ' single directory selection
var nfc = Fl_Native_File_ChooserNew(NFC_BROWSE_DIRECTORY)
Fl_Native_File_ChooserSetTitle      nfc,"Select folder ..."
Fl_Native_File_ChooserSetDirectory  nfc, getAppDir()

if Fl_Native_File_ChooserShow(nfc) == 0:
  #~ echo "selected: " & (Fl_Native_File_ChooserFilename(nfc)[])
  echo $Fl_Native_File_ChooserFilename(nfc)


Fl_Native_File_ChooserDelete nfc
echo "..."


