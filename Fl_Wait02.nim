import fltk_main

#~ 'test of:
#~ ' Fl_Wait2(time) http://www.fltk.org/doc-1.3/classFl.html#a108a84216f0b3fa1cb0c46ab7449a312
#~ ' Fl_Window
#~ ' Fl_box

var win = Fl_WindowNew(320,200, "Fl_Wait2")
Fl_BoxNew 20,40,300,100,"Hello, World!"
Fl_WindowShow win


while Fl_WindowShown(win) != 0:
  #~ ' wait for any event with time out value
  var t = Fl_Wait2(0.1)
  stdout.write(".")
  stdout.flushFile()


