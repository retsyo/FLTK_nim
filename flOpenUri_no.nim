import os
import fltk_main

#~ ' test of:
#~ ' flOpenUri http://www.fltk.org/doc-1.3/group__filenames.html#gaa703a16e265f609bedbaf0930dbcd0d7

echo flOpenUri("http://freebasic.net/forum/viewtopic.php?f=14&t=21548")
echo flOpenUri("mailto://any@maildomain.com")
echo r"file:\\" & getAppDir() & "\\fltk-c.bi"
echo flOpenUri(r"file:\\" & getAppDir() & "\\fltk-c.bi")
echo "press any key ..."

