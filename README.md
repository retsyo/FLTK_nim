# What is it?
An on-going port of [D.J.Peters's FLTK C for FreeBasic](https://www.freebasic.net/forum/viewtopic.php?f=14&t=24547&start=180), which is a binding for the [FLTK, Fast Light Toolkit, GUI library](https://www.fltk.org) by using dynamic library, to [http://nimlang.org](nim lang)

# Limitation
1. No OpenGL code has been ported, so `Fl_Glut01_no` can't run

2. I don't know how to use  `Fl_Shared_ImageImages`, so `Fl_Shared_Image02_no` ~ `Fl_Shared_Image05_no` can't run

3. I don't know how to pass nim array to C function, so `Fl_Menu_Bar02_no` and `Fl_Menu_Bar03_no` can't run

   BTW, is it possible to let nim judge the dimension of array? I mean `int balance[] = {12, 13, 16};` in C or ``Dim as integer balance(...) = {12, 13, 16}` in FreeBasic, as you can find that there is no `3` is given

# How to use?
1. Download `fltk_c.nim`, `fltk_main.nim`, `fltk_tools.nim`

2. Download: `fltk-c-1.3.3.zip Jan 09, 2017` from [D.J.Peters's FLTK C for FreeBasic](https://www.freebasic.net/forum/viewtopic.php?f=14&t=24547&start=180)

2.1 Extract *.dll. Why? because I use windows and know nothing about Linux and MacOSX, so please join my work to write lines of code for Linux/MacOSX

2.2 Some example needs the directory and contents of `media`

3. The simplest code with callback

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

# More examples?
1. Yes, other `*.nim` are examples which I translate from D.J.Peters's FreeBasic code. However, `*_no.nim` needs more works. Some can't be compiled; some runs and crashes; some does not function as expected; and some does run as expected but to be compared to the original FreeBasic's code, it needs more code which I don't like, so I think more work shoud be done in `fltk_main.nim`
2. Anymore? Yes, D.J.Peters gives ~360 examples. Please help translating more into nimlang
3. [Erco's FLTK Cheat Page](http://seriss.com/people/erco/fltk/) supplied many demos in CPP, so it will need time to port to nim

# Why there is buggy?
1. Pointer always hurts me
2. I am a nimlang newbie
3. Please fire issure and fix it

# Why not to use
1. [FreeBasic](http://freebasic.net/)? because I need to handle many text in my work, but I hate to write such in any BASIC

2. [nfltk](https://github.com/Skrylar/nfltk). because I can't compile it in my MSYS2+MingW64 on Windows 7

3. wxWidgets? because I can't compile it in my MSYS2+MingW32 on Windows 7

3. QT? because I don't know how to compile it in my MSYS2+MingW64/32 on Windows 7

4. [ui](https://github.com/nim-lang/ui)? because I needs widgets to write spreedsheet app

5. web engine and HTML/js? I don't know how to do that. But I do find http://tabulator.info is pretty

6. Python + QT/wxWidgets? Yes I do use them. But I find that some app built with py2exe/pyinstaller does not run on any Windows version.

7. two space for indentation? Well, this project is opensourced, please give you effort to it

# Why the EXE file is big?
Most of D.J.Peters's FreeBasic examples produce an EXE file of ~70 kbytes, only `FB_Image_2_FL_Image01.exe` and `FB_Image_2_FL_Image02.exe` are ~160 kbytes if I compile them by using `FreeBASIC-1.05.0-win64`
```
 fbc -w pedantic test.bas
 ```

 As for nim,
 ```
 nim c -r -d:release --opt:size --passL:-s test.nim
 ```
 can be used to compile smaller EXE files

# How to do static link?
I don't know how to do that in nimlang and FreeBasic. Do we need to supply another binding?
BTW, `static link` is allowed by FLTK, and you do not need to opensource your code.

# Why do you always test/bind blaah blaah libraries
In fact, I don't mean to do so which has distracted me tremendously. However I can't find a ready-to-use binding.

On the other hand, I can learn something during testing/binding, but the work is actually repetitive injury. I wrote some scripts in Python but they can't cover everything.

# License
I choose [FLTK's lincense](https://www.fltk.org/COPYING.php). But a note in your appliaction such as "FLTK_nim is used" is appreciated.

