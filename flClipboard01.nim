import fltk_main

# test of:
#   Fl_Copy  http://www.fltk.org/doc-1.3/group__fl__clipboard.html#ga221bc2fa9bd737a8259a94a06f8005f0
#   Fl_Paste http://www.fltk.org/doc-1.3/group__fl__clipboard.html#ga0f30d10ec79056fbdbf8d2f4dca4d565

var
    winMain {.global.}  = Fl_WindowNew(620, 78, "clipboard")
    inpSource {.global.} = Fl_InputNew( 80, 10, 320, 24, "source:"  )
    inpTarget {.global.} = Fl_InputNew( 80, 44, 320, 24, "target:"  )
    btnCopy   {.global.} = Fl_ButtonNew(410, 10, 160, 24, "copy to clipboard")
    btnPaste {.global.} = Fl_ButtonNew(410, 44, 160, 24, "paste from clipboard")


proc CopyCB (self: ptr Fl_Widget){.cdecl.} =
  var nChars =  Fl_Input_GetSize(inpSource)
  # no text disable paste button
  if nChars == 0:
    Fl_WidgetDeactivate btnPaste
    return
  # copy text to clipboard
  Fl_Copy Fl_Input_GetValue(inpSource), nChars, 1
  # enable paste button
  Fl_WidgetActivate btnPaste


proc PasteCB (self: ptr Fl_Widget){.cdecl.} =
  Fl_Input_SetValue inpTarget, ""
  # paste text from clipboard to target widget
  Fl_Paste inpTarget, 1

#
# main
#

Fl_WidgetSetCallback0 btnCopy , CopyCB
Fl_WidgetSetCallback0 btnPaste, PasteCB
Fl_WidgetDeactivate   btnPaste
Fl_WidgetDeactivate   inpTarget
Fl_WindowShow         winMain
Fl_Run()