# what is it?
an on-going port of [D.J.Peters's FLTK C for FreeBasic](https://www.freebasic.net/forum/viewtopic.php?f=14&t=24547&start=180), which is a binding for the [FLTK, Fast Light Toolkit, GUI library](https://www.fltk.org) by using dynamic library, to [http://nimlang.org](nim lang)

# how to use?
1. download `fltk_c.nim`, `fltk_main.nim`, `fltk_tools.nim`
2. download: `fltk-c-1.3.3.zip Jan 09, 2017` from [D.J.Peters's FLTK C for FreeBasic](https://www.freebasic.net/forum/viewtopic.php?f=14&t=24547&start=180)
2.1 extract *.dll. Why? because I use windows and know nothing about Linux and MacOSX, so please join my work to write lines of code for Linux/MacOSX
2.2 some example needs the directory and contents of `media`
3. the simplest code with callback
```nim
import fltk_main

proc ButtonClick (button: ptr FL_WIDGET, arg: pointer):cint {.cdecl.} =
  Fl_WidgetCopyLabel(button, "do it again")

var Win = Fl_WindowNew(320, 200, "What a shiny Window :-)")
var Btn = Fl_ButtonNew(10, 10, 120, 32, "click me")
Fl_WidgetSetCallback(Btn, ButtonClick)
Fl_WindowShow(Win)
Fl_Run()

```

# more examples?
1. yes, other `*.nim` are examples which I translate from D.J.Peters's FreeBasic code. However, `*_no.nim` needs more works. Some can't be compiled; some runs and crashes; some does not function as expected; and some does run as expected but to be compared to the original FreeBasic's code, it needs more code which I don't like, so I think more work shoud be done in `fltk_main.nim`
2. anymore? Yes, D.J.Peters gives ~360 examples. Please help translating more into nimlang

# why there is buggy?
1. pointer always hurts me
2. I am a nimlang newbie
3. please fire issure and fix it

# why not to use
1. [FreeBasic[(http://freebasic.net/)? because I need to handle many text in my work, but I hate to write such in any BASIC
2. [nfltk](https://github.com/Skrylar/nfltk). because I can't compile it in my MSYS2+MingW64 on Windows 7
3. wxWidgets? because I can't compile it in my MSYS2+MingW32 on Windows 7
3. QT? because I don't know how to compile it in my MSYS2+MingW64/32 on Windows 7
4. [ui](https://github.com/nim-lang/ui)? because I needs widgets to write spreedsheet app
5. web engine and HTML/js? I don't know how to do that. But I do find http://tabulator.info is pretty
6. Python + QT/wxWidgets? Yes I do use them. But I find that some app built with py2exe/pyinstaller does not run on any Windows version.
7. 2 space for indentation? Well, this project is opensourced, please give you effort to it

# why the EXE file is big?
I don't know

Most of D.J.Peters's FreeBasic examples produce an EXE file of ~70 kbytes, only `FB_Image_2_FL_Image01.exe` and `FB_Image_2_FL_Image02.exe` are ~160 kbytes if I compile them by using `FreeBASIC-1.05.0-win64`
```
 fbc -w pedantic test.bas
```

 As for
 ```
Nim Compiler Version 0.19.9 [Windows: amd64]
Compiled at 2018-12-13
 ```
 I use
 ```
 nim c -r -d:release --opt:size --passL:-static test.nim
 ```
 to compile but the EXE files are ~400 kbytes

# how to do static link?
I don't know how to do that in nimlang and FreeBasic. Do we need to supply another binding?
BTW, `static link` is allowed by FLTK, and you do not need to opensource your code.

# why do you always test/bind blaah blaah libraries
In fact, I don't mean to do so which has distracted me tremendously. However I can't find a ready-to-use binding.

I can learn something during testing/binding, but the work is actually repetitive injury. I wrote some scripts in Python but they can't cover everything.

# License
I choose [FLTK's lincense](https://www.fltk.org/COPYING.php). But a note in your appliaction such as "FLTK_nim is used" is appreciated.

