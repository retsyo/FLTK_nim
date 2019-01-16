import fltk_main

#~ 'test of:
#~ ' Fl_Wait http://www.fltk.org/doc-1.3/classFl.html#a108a84216f0b3fa1cb0c46ab7449a312
#~ ' Fl_Window
#~ ' Fl_Box

var Win = Fl_WindowNew(320,200, "Fl_Wait")
Fl_BoxNew 20,40,300,100,"Hello, World!"
Fl_WindowShow Win

#~ ' Waits until "something happens" and then returns.
while Fl_Wait() != 0:
  echo "."

