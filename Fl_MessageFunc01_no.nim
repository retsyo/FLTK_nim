import fltk_main


# test of
# Fl_SetWarningMessageFunc
# Fl_WarningMessage
# Fl_ErrorMessage
# Fl_ErrorMessage

# The default version of Fl::warning on Windows returns without printing a warning message,
# because Windows programs normally don#t have stderr (a console window) enabled.

when defined(windows):
    #~ proc MyWarningMessageFunc (msg: string, n: varargs[untyped]) {.cdecl.} =
    proc MyWarningMessageFunc (msg: string) {.cdecl.} =
        #~ dim as integer hFile = FreeFile()
        #~ open err for output as #hFile
        #~ print #hFile,"warning: " & *msg
        #~ close #hFile
        echo msg

    # overwrite Fl::warning
    Fl_SetWarningMessageFunc cast[MessageFunc](MyWarningMessageFunc)


# user defined func on windows stderr on Linux/Unix
Fl_WarningMessage "warning !"
# MessageBox on windows stderr on Linux/Unix
Fl_ErrorMessage "error !"
# MessageBox on windows stderr on Linux/Unix
Fl_FatalMessage "fatal !"

