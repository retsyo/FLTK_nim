when not defined(FLTK_MAIN_BI):

    template iif*(cond: untyped, value1: untyped, value2: untyped): untyped=
        if bool(cond):
            value1
        else:
            value2

    const  FLTK_MAIN_BI* = true

    #_   FreeBASIC header file for the Fast Light Tool Kit C wrapper.
    #_   FLTK C wrapper copyright 2013-2017 by D.J.Peters

    #_   C++ library Fast Light Tool Kit (FLTK)
    #_   Copyright 1998-2010 by Bill Spitzak and others.
    #_
    #_   This library is free software. Distribution and use rights are outlined in
    #_   the file "COPYING" which should have been included with this file.  If this
    #_   file is missing or damaged, see the license at:
    #_
    #_     http://www.fltk.org/COPYING.php
    #_
    #_   Please report all FLTK C wrapper bugs and problems on the following page:
    #_
    #_     http://freebasic.net/forum/viewtopic.php?f=14&t=21548

    when defined(amd64):
        const
            fltk* = "fltk-c-1.3.3-64.dll"
    else:
        const
            fltk* = "fltk-c-1.3.3-32.dll"

    when not defined(amd64):
        type
            long* = int32
            ulong* = uint32
    else:
        type
            long* = int64
            ulong* = uint64

    type
        ushort* = uint16
        short* = int16

        integer* = int32
        uinteger* = int32

        ubyte* = uint8
        byte* = int8

        single* = float32
        double* = float64

    converter toUbyte*(x: int|int16|int32|long|single):ubyte = ubyte(x)
    converter toLong*(x: int|int16|int32|float):long = long(x)
    converter toDouble*(x: int|int16|int32|int64|float):double = double(x)


    type
        Fl_Window* = ulong
        Fl_WindowEX* = ulong

        Fl_Double_Window* = ulong
        Fl_Double_WindowEX* = ulong

        Fl_Single_Window* = ulong
        Fl_Single_WindowEX* = ulong

        Fl_Overlay_Window* = ulong
        Fl_Overlay_WindowEX* = ulong

        Fl_Tree_Item* = ulong
        Fl_Tree* = ulong

        Fl_Label* = ulong
        Fl_Widget* = ulong
        Fl_Image* = ulong
        #~ Fl_File_Chooser* = ulong
        Fl_Text_Editor* = ulong
        Fl_Preferences* = ulong
        Fl_Button* = ulong

        Fl_Check_Button* = ulong
        Fl_Check_ButtonEX* = ulong

        Fl_Native_File_Chooser* = ulong
        Fl_File_Icon* = ulong
        Fl_Shared_Image* = ulong
        Fl_Tiled_Image* = ulong
        Fl_Bitmap* = ulong
        Fl_Pixmap* = ulong
        Fl_GIF_Image* = ulong
        Fl_XPM_Image* = ulong
        Fl_RGB_Image* = ulong
        Fl_BMP_Image* = ulong
        Fl_PNG_Image* = ulong
        Fl_JPEG_Image* = ulong
        Fl_PNM_Image* = ulong

        Fl_Group* = ulong
        Fl_GroupEX* = ulong

        Fl_Widget_Tracker* = ulong
        Fl_WidgetEx* = ulong
        Fl_Box* = ulong
        Fl_BoxEx* = ulong

        Fl_Canvas* = ulong

        Fl_Menu_Window* = ulong
        Fl_Menu_WindowEx* = ulong

        #~ Fl_Event* = ulong
        Fl_ButtonEx* = ulong

        Fl_Tabs* = ulong
        Fl_TabsEx* = ulong

        Fl_Table* = ulong
        Fl_TableEx* = ulong

        Fl_Table_Row* = ulong
        Fl_Table_RowEX* = ulong

    type
        Fl_Radio_Button* = ulong
        Fl_Radio_ButtonEX* = ulong

        Fl_Repeat_Button* = ulong
        Fl_Repeat_ButtonEX* = ulong

        Fl_Return_Button* = ulong
        Fl_Return_ButtonEX* = ulong

        Fl_Toggle_Button* = ulong
        Fl_Toggle_ButtonEX* = ulong

        Fl_Light_Button* = ulong
        Fl_Light_ButtonEX* = ulong

        Fl_Radio_Light_Button* = ulong
        Fl_Radio_Light_ButtonEX* = ulong

        Fl_Round_Button* = ulong
        Fl_Round_ButtonEX* = ulong

        Fl_Radio_Round_Button* = ulong
        Fl_Radio_Round_ButtonEX* = ulong

        Fl_Chart* = ulong
        Fl_ChartEX* = ulong

        Fl_Clock_Output* = ulong
        Fl_Clock_OutputEX* = ulong

        Fl_Clock* = ulong
        Fl_ClockEX* = ulong

        Fl_Round_Clock* = ulong
        Fl_Round_ClockEX* = ulong

        Fl_Input* = ulong
        Fl_InputEX* = ulong

        Fl_Float_Input* = ulong
        Fl_Float_InputEX* = ulong

        Fl_Int_Input* = ulong
        Fl_Int_InputEX* = ulong

        Fl_Multiline_Input* = ulong
        Fl_Multiline_InputEX* = ulong

        Fl_Secret_Input* = ulong
        Fl_Secret_InputEX* = ulong

        Fl_Output* = ulong
        Fl_OutputEX* = ulong

        Fl_Multiline_Output* = ulong
        Fl_Multiline_OutputEX* = ulong

        Fl_File_Input* = ulong
        Fl_File_InputEX* = ulong

        FL_Menu_TT* = ulong
        FL_Menu_TTEX* = ulong

        Fl_Menu_Button* = ulong
        Fl_Menu_ButtonEX* = ulong

        Fl_Menu_Bar* = ulong
        Fl_Menu_BarEX* = ulong

        Fl_Choice* = ulong
        Fl_ChoiceEX* = ulong

        Fl_Progress* = ulong
        Fl_ProgressEX* = ulong

        Fl_Valuator* = ulong
        Fl_ValuatorEX* = ulong

        Fl_Adjuster* = ulong
        Fl_AdjusterEX* = ulong

        Fl_Counter* = ulong
        Fl_CounterEX* = ulong

        Fl_Simple_Counter* = ulong
        Fl_Simple_CounterEX* = ulong

        Fl_Dial* = ulong
        Fl_DialEX* = ulong

        Fl_Fill_Dial* = ulong
        Fl_Fill_DialEX* = ulong

        Fl_Line_Dial* = ulong
        Fl_Line_DialEX* = ulong

        Fl_Roller* = ulong
        Fl_RollerEX* = ulong

        Fl_Slider* = ulong
        Fl_SliderEX* = ulong

        Fl_Hor_Slider* = ulong
        Fl_Hor_SliderEX* = ulong

        Fl_Fill_Slider* = ulong
        Fl_Fill_SliderEX* = ulong

        Fl_Hor_Fill_Slider* = ulong
        Fl_Hor_Fill_SliderEX* = ulong

        Fl_Nice_Slider* = ulong
        Fl_Nice_SliderEX* = ulong

        Fl_Hor_Nice_Slider* = ulong
        Fl_Hor_Nice_SliderEX* = ulong

        Fl_Scrollbar* = ulong
        Fl_ScrollbarEX* = ulong

        Fl_Value_Slider* = ulong
        Fl_Value_SliderEX* = ulong

        Fl_Hor_Value_Slider* = ulong
        Fl_Hor_Value_SliderEX* = ulong

        Fl_Value_Input* = ulong
        Fl_Value_InputEX* = ulong

        Fl_Value_Output* = ulong
        Fl_Value_OutputEX* = ulong

        Fl_Pack* = ulong
        Fl_PackEX* = ulong

        Fl_Tile* = ulong
        Fl_TileEX* = ulong

        Fl_Scroll* = ulong
        Fl_ScrollEX* = ulong

        Fl_Browser* = ulong
        Fl_BrowserEX* = ulong

        Fl_Check_Browser* = ulong
        Fl_Check_BrowserEX* = ulong

        Fl_File_Browser* = ulong
        Fl_File_BrowserEX* = ulong

        Fl_Color_Chooser* = ulong
        Fl_Color_ChooserEX* = ulong

        Fl_Help_View * = ulong
        Fl_Help_ViewEX* = ulong

        Fl_Hold_Browser* = ulong
        Fl_Hold_BrowserEX* = ulong

        Fl_Multi_Browser* = ulong
        Fl_Multi_BrowserEX* = ulong

        Fl_Select_Browser* = ulong
        Fl_Select_BrowserEX* = ulong

        Fl_Input_Choice* = ulong
        Fl_Input_ChoiceEX* = ulong

        Fl_Text_Display* = ulong
        Fl_Text_DisplayEX* = ulong

        Fl_TreeEX* = ulong

        Fl_Spinner* = ulong

        Fl_Graphics_Driver* = ulong

        Fl_Surface_Device* = ulong

        Fl_Image_Surface* = ulong

        Fl_Copy_Surface* = ulong

        Fl_Paged_Device* = ulong

        Fl_Printer* = ulong

        Fl_Wizard* = ulong
        Fl_WizardPage* = ulong

    type P_Fl_Widget = ptr Fl_Widget

    type P_Fl_tree = ptr Fl_Tree
    type P_Fl_Button = ptr Fl_Button

    converter toP_Fl_tree*(x: pointer): P_Fl_tree = cast[P_Fl_Tree](x)
    converter topointer*(x: P_Fl_tree|cstring|string): pointer = cast[pointer](x)
    converter toP_Fl_Widget*(x: P_Fl_tree|P_Fl_Button): P_Fl_Widget = cast[P_Fl_Widget](x)
    converter toCstring*(x: pointer|string): cstring = cast[cstring](x)

    converter toInt16*(x: pointer): int16 = cast[int16](x)


    #ifdef __FB_WIN32__

     #ifndef __FB_64BIT__
      #inclib "fltk-c-1.3.3-32" #_  Windows 32-bit
     #else
      #inclib "fltk-c-1.3.3-64" #_  Windows 64-bit
     #endif

    #elseif defined(__FB_UNIX__)
      #ifdef __FB_ARM__
        #ifdef syslib
          #undef syslib
        #endif
        #inclib "fltk-c-1.3.3-32-arm" #_  ARM 32-bit
      #else
        #ifdef syslib
          #ifndef __FB_64BIT__
            #inclib "fltk-c-1.3.3-32-syslib" #_  Linux 32-bit will use syslib's jpeg,png,zlib from your distro
          #else
            #inclib "fltk-c-1.3.3-64-syslib" #_  Linux 64-bit with use syslib's jpeg,png,zlib from your distro
          #endif
          #inclib "png"
          #inclib "jpeg"
          #inclib "z"
        #else
          #ifndef __FB_64BIT__
            #inclib "fltk-c-1.3.3-32" #_  Linux 32-bit
          #else
            #inclib "fltk-c-1.3.3-64" #_  Linux 64-bit
          #endif
        #endif
      #endif
    #else
      #error 666: build target must be __FB_WIN32__ or __FB_LINUX__ or __FB_ARM__
    #endif

    #include once "crt/stdio.bi"
    #include once "crt/string.bi"
    #include once "crt/stdlib.bi"

    #_  FLTK const's
    ## original: type FL_ALIGN as ulong
    type FL_ALIGN*  =  ulong

    ## original: const as FL_ALIGN Fl_ALIGN_CENTER             = 0X0000
    const Fl_ALIGN_CENTER*             = 0X0000
    ## original: const as FL_ALIGN Fl_ALIGN_TOP                = 0X0001
    const Fl_ALIGN_TOP*                = 0X0001
    ## original: const as FL_ALIGN Fl_ALIGN_BOTTOM             = 0X0002
    const Fl_ALIGN_BOTTOM*             = 0X0002
    ## original: const as FL_ALIGN Fl_ALIGN_LEFT               = 0X0004
    const Fl_ALIGN_LEFT*               = 0X0004
    ## original: const as FL_ALIGN Fl_ALIGN_TOP_LEFT           = 0X0005
    const Fl_ALIGN_TOP_LEFT*           = 0X0005
    ## original: const as FL_ALIGN Fl_ALIGN_BOTTOM_LEFT        = 0X0006
    const Fl_ALIGN_BOTTOM_LEFT*        = 0X0006
    ## original: const as FL_ALIGN Fl_ALIGN_LEFT_TOP           = 0X0007
    const Fl_ALIGN_LEFT_TOP*           = 0X0007
    ## original: const as FL_ALIGN Fl_ALIGN_RIGHT              = 0X0008
    const Fl_ALIGN_RIGHT*              = 0X0008
    ## original: const as FL_ALIGN Fl_ALIGN_TOP_RIGHT          = 0X0009
    const Fl_ALIGN_TOP_RIGHT*          = 0X0009
    ## original: const as FL_ALIGN Fl_ALIGN_BOTTOM_RIGHT       = 0X000A
    const Fl_ALIGN_BOTTOM_RIGHT*       = 0X000A
    ## original: const as FL_ALIGN Fl_ALIGN_RIGHT_TOP          = 0X000b
    const Fl_ALIGN_RIGHT_TOP*          = 0X000b

    ## original: const as FL_ALIGN Fl_ALIGN_LEFT_BOTTOM        = 0X000d
    const Fl_ALIGN_LEFT_BOTTOM*        = 0X000d
    ## original: const as FL_ALIGN Fl_ALIGN_RIGHT_BOTTOM       = 0X000e
    const Fl_ALIGN_RIGHT_BOTTOM*       = 0X000e
    ## original: const as FL_ALIGN Fl_ALIGN_POSITION_MASK      = 0X000f
    const Fl_ALIGN_POSITION_MASK*      = 0X000f

    ## original: const as FL_ALIGN Fl_ALIGN_INSIDE             = 0X0010
    const Fl_ALIGN_INSIDE*             = 0X0010
    ## original: const as FL_ALIGN Fl_ALIGN_TEXT_OVER_IMAGE    = 0X0020
    const Fl_ALIGN_TEXT_OVER_IMAGE*    = 0X0020
    ## original: const as FL_ALIGN Fl_ALIGN_CLIP               = 0X0040
    const Fl_ALIGN_CLIP*               = 0X0040
    ## original: const as FL_ALIGN Fl_ALIGN_WRAP               = 0X0080
    const Fl_ALIGN_WRAP*               = 0X0080

    ## original: const as FL_ALIGN Fl_ALIGN_IMAGE_OVER_TEXT    = 0X0000
    const Fl_ALIGN_IMAGE_OVER_TEXT*    = 0X0000
    ## original: const as FL_ALIGN Fl_ALIGN_IMAGE_NEXT_TO_TEXT = 0X0100
    const Fl_ALIGN_IMAGE_NEXT_TO_TEXT* = 0X0100
    ## original: const as FL_ALIGN Fl_ALIGN_TEXT_NEXT_TO_IMAGE = 0X0120
    const Fl_ALIGN_TEXT_NEXT_TO_IMAGE* = 0X0120
    ## original: const as FL_ALIGN Fl_ALIGN_IMAGE_BACKDROP     = 0X0200
    const Fl_ALIGN_IMAGE_BACKDROP*     = 0X0200
    ## original: const as FL_ALIGN Fl_ALIGN_IMAGE_MASK         = 0X0320
    const Fl_ALIGN_IMAGE_MASK*         = 0X0320



    #_  Colors
    ## original: type Fl_COLOR as ulong
    type Fl_COLOR*  =  ulong
    #_  The Fl_Color type holds an FLTK color value.
    #_  Colors are either 8-bit indexes into a virtual colormap or 24-bit RGB color values.
    #_  Color indices occupy the lower 8 bits of the value, while RGB colors occupy the upper 24 bits, for a byte organization of RGBI.
    #_  Fl_Color => 0Xrrggbbii
    #_                 | | | |
    #_                 | | | +--- index between 0 and 255
    #_                 | | +----- blue color component (8 bit)
    #_                 | +------- green component (8 bit)
    #_                 +--------- red component (8 bit)
    #_  A color can have either an index or an rgb value. Colors with rgb set and an index >0 are reserved for special use.

    #_   Standard colors. These are used as default colors in widgets and altered as necessary
    ## original: const as Fl_COLOR Fl_FOREGROUND_COLOR  =  0 #_  the default foreground color (0) used for labels and text
    const Fl_FOREGROUND_COLOR*  =  0 #_  the default foreground color (0) used for labels and text
    ## original: const as Fl_COLOR Fl_BACKGROUND2_COLOR =  7 #_  the default background color for text, list, and valuator widgets
    const Fl_BACKGROUND2_COLOR* =  7 #_  the default background color for text, list, and valuator widgets

    ## original: const as Fl_COLOR Fl_INACTIVE_COLOR    =  8 #_  the inactive foreground color
    const Fl_INACTIVE_COLOR*    =  8 #_  the inactive foreground color
    ## original: const as Fl_COLOR Fl_SELECTION_COLOR   = 15 #_  the default selection/highlight color
    const Fl_SELECTION_COLOR*   = 15 #_  the default selection/highlight color

    converter toFl_COLOR*(x: int|long): Fl_COLOR = cast[Fl_COLOR](x)
    converter toLong*(x: Fl_COLOR): long = cast[long](x)


    const Fl_FREE_COLOR_TT* =     16
    const Fl_NUM_FREE_COLOR* = 16

    #_   boxtypes generally limit themselves to these colors so the whole ramp is not allocated:
    const  Fl_GRAY_RAMP*  =                      32
    const  Fl_NUM_GRAY *  =                      24
    ## original: const as Fl_COLOR Fl_GRAY0             =  32 #_   'A'
    const Fl_GRAY0*             =  32 #_   'A'
    ## original: const as Fl_COLOR Fl_DARK3             =  39 #_   'H'
    const Fl_DARK3*             =  39 #_   'H'
    ## original: const as Fl_COLOR Fl_DARK2             =  45 #_   'N'
    const Fl_DARK2*             =  45 #_   'N'
    ## original: const as Fl_COLOR Fl_DARK1             =  47 #_   'P'
    const Fl_DARK1*             =  47 #_   'P'
    ## original: const as Fl_COLOR Fl_BACKGROUND_COLOR  =  49 #_   'R' default background color
    const Fl_BACKGROUND_COLOR*  =  49 #_   'R' default background color
    const FL_GRAY* = FL_BACKGROUND_COLOR
    ## original: const as Fl_COLOR Fl_LIGHT1            =  50 #_   'S'
    const Fl_LIGHT1*            =  50 #_   'S'
    ## original: const as Fl_COLOR Fl_LIGHT2            =  52 #_   'U'
    const Fl_LIGHT2*            =  52 #_   'U'
    ## original: const as Fl_COLOR Fl_LIGHT3            =  54 #_   'W'
    const Fl_LIGHT3*            =  54 #_   'W'

    #_   FLTK provides a 5x8x5 color cube that is used with colormap visuals
    #define Fl_NUM_RED 5
    #define Fl_NUM_GREEN 8
    #define Fl_NUM_BLUE 5
    #define Fl_COLOR_CUBE_                    56
    ## original: const as Fl_COLOR Fl_BLACK             =  56 #_  Fl_COLOR_CUBE_ + r000 + g000 + b000
    const Fl_BLACK*             =  56 #_  Fl_COLOR_CUBE_ + r000 + g000 + b000
    ## original: const as Fl_COLOR Fl_DARK_GREEN        =  60 #_  Fl_COLOR_CUBE_ +        g004
    const Fl_DARK_GREEN*        =  60 #_  Fl_COLOR_CUBE_ +        g004
    ## original: const as Fl_COLOR Fl_GREEN             =  63 #_  Fl_COLOR_CUBE_ +        g007
    const Fl_GREEN*             =  63 #_  Fl_COLOR_CUBE_ +        g007
    ## original: const as Fl_COLOR Fl_DARK_RED          =  72 #_  Fl_COLOR_CUBE_ + r016
    const Fl_DARK_RED*          =  72 #_  Fl_COLOR_CUBE_ + r016
    ## original: const as Fl_COLOR Fl_DARK_YELLOW       =  76
    const Fl_DARK_YELLOW*       =  76
    ## original: const as Fl_COLOR Fl_RED               =  88 #_  Fl_COLOR_CUBE_ + r032
    const Fl_RED*               =  88 #_  Fl_COLOR_CUBE_ + r032
    ## original: const as Fl_COLOR Fl_YELLOW            =  95
    const Fl_YELLOW*            =  95
    ## original: const as Fl_COLOR Fl_DARK_BLUE         = 136 #_  Fl_COLOR_CUBE_ +        r080
    const Fl_DARK_BLUE*         = 136 #_  Fl_COLOR_CUBE_ +        r080
    ## original: const as Fl_COLOR Fl_DARK_MAGENTA      = 152
    const Fl_DARK_MAGENTA*      = 152
    ## original: const as Fl_COLOR Fl_DARK_CYAN         = 140
    const Fl_DARK_CYAN*         = 140
    ## original: const as Fl_COLOR Fl_BLUE              = 216 #_  Fl_COLOR_CUBE_ +        b160
    const Fl_BLUE*              = 216 #_  Fl_COLOR_CUBE_ +        b160
    ## original: const as Fl_COLOR Fl_MAGENTA           = 248
    const Fl_MAGENTA*           = 248
    ## original: const as Fl_COLOR Fl_CYAN              = 223
    const Fl_CYAN*              = 223
    ## original: const as Fl_COLOR Fl_WHITE             = 255
    const Fl_WHITE*             = 255

    ## original: const as Fl_COLOR FL_ICON_COLOR        = 0Xffffffff #_  icon color
    const FL_ICON_COLOR*        = 0Xffffffff #_  icon color

    ## original: type FL_FONT as ulong
    type FL_FONT*  =  ulong
    ## original: const as FL_FONT Fl_HELVETICA              =  0 #_  Helvetica (or Arial) normal (0)
    const Fl_HELVETICA*              =  0 #_  Helvetica (or Arial) normal (0)
    ## original: const as FL_FONT Fl_BOLD                   =  1 #_  bold
    const Fl_BOLD*                   =  1 #_  bold
    ## original: const as FL_FONT Fl_ITALIC                 =  2 #_  oblique
    const Fl_ITALIC*                 =  2 #_  oblique
    ## original: const as FL_FONT Fl_BOLD_ITALIC            =  3 #_  bold-oblique
    const Fl_BOLD_ITALIC*            =  3 #_  bold-oblique
    ## original: const as FL_FONT Fl_HELVETICA_BOLD         = Fl_HELVETICA or Fl_BOLD
    const Fl_HELVETICA_BOLD*         = Fl_HELVETICA or Fl_BOLD
    ## original: const as FL_FONT Fl_HELVETICA_ITALIC       = Fl_HELVETICA or Fl_ITALIC
    const Fl_HELVETICA_ITALIC*       = Fl_HELVETICA or Fl_ITALIC
    ## original: const as FL_FONT Fl_HELVETICA_BOLD_ITALIC  = Fl_HELVETICA or Fl_BOLD_ITALIC
    const Fl_HELVETICA_BOLD_ITALIC*  = Fl_HELVETICA or Fl_BOLD_ITALIC
    ## original: const as FL_FONT Fl_COURIER                =  4 #_  Courier normal
    const Fl_COURIER*                =  4 #_  Courier normal
    ## original: const as FL_FONT Fl_COURIER_BOLD           = Fl_COURIER   or Fl_BOLD
    const Fl_COURIER_BOLD*           = Fl_COURIER   or Fl_BOLD
    ## original: const as FL_FONT Fl_COURIER_ITALIC         = Fl_COURIER   or Fl_ITALIC
    const Fl_COURIER_ITALIC*         = Fl_COURIER   or Fl_ITALIC
    ## original: const as FL_FONT Fl_COURIER_BOLD_ITALIC    = Fl_COURIER   or Fl_BOLD_ITALIC
    const Fl_COURIER_BOLD_ITALIC*    = Fl_COURIER   or Fl_BOLD_ITALIC
    ## original: const as FL_FONT Fl_TIMES                  =  8 #_  Times roman
    const Fl_TIMES*                  =  8 #_  Times roman
    ## original: const as FL_FONT Fl_TIMES_BOLD             = Fl_TIMES     or Fl_BOLD
    const Fl_TIMES_BOLD*             = Fl_TIMES     or Fl_BOLD
    ## original: const as FL_FONT Fl_TIMES_ITALIC           = Fl_TIMES     or Fl_ITALIC
    const Fl_TIMES_ITALIC*           = Fl_TIMES     or Fl_ITALIC
    ## original: const as FL_FONT Fl_TIMES_BOLD_ITALIC      = Fl_TIMES     or Fl_BOLD_ITALIC
    const Fl_TIMES_BOLD_ITALIC*      = Fl_TIMES     or Fl_BOLD_ITALIC
    ## original: const as FL_FONT Fl_SYMBOL                 = 12 #_  Standard symbol font
    const Fl_SYMBOL*                 = 12 #_  Standard symbol font
    ## original: const as FL_FONT Fl_SCREEN                 = 13 #_  Default monospaced screen font
    const Fl_SCREEN*                 = 13 #_  Default monospaced screen font
    ## original: const as FL_FONT Fl_SCREEN_BOLD            = Fl_SCREEN    or Fl_BOLD #_  Default monospaced bold screen font
    const Fl_SCREEN_BOLD*            = Fl_SCREEN    or Fl_BOLD #_  Default monospaced bold screen font
    ## original: const as FL_FONT Fl_ZAPF_DINGBATS          = 15 #_  Zapf-dingbats font
    const Fl_ZAPF_DINGBATS*          = 15 #_  Zapf-dingbats font
    ## original: const as FL_FONT Fl_FREE_FONT              = 16 #_  first one to allocate
    const Fl_FREE_FONT*              = 16 #_  first one to allocate

    converter toFL_FONT*(num: int): FL_FONT = cast[FL_FONT](num)

    #_  FLTK enums
    ## original: type FL_BEEP as ulong
    type FL_BEEP*  =  ulong
    #_  See also: flBeep(v as FL_BEEP)
    ## original: const as FL_BEEP FL_BEEP_DEFAULT      = 0 #_  Default beep.
    const FL_BEEP_DEFAULT*      = 0 #_  Default beep.
    ## original: const as FL_BEEP FL_BEEP_MESSAGE      = 1 #_  Message beep.
    const FL_BEEP_MESSAGE*      = 1 #_  Message beep.
    ## original: const as FL_BEEP FL_BEEP_ERROR        = 2 #_  Error beep.
    const FL_BEEP_ERROR*        = 2 #_  Error beep.
    ## original: const as FL_BEEP FL_BEEP_QUESTION     = 3 #_  Question beep.
    const FL_BEEP_QUESTION*     = 3 #_  Question beep.
    ## original: const as FL_BEEP FL_BEEP_PASSWORD     = 4 #_  Password beep.
    const FL_BEEP_PASSWORD*     = 4 #_  Password beep.
    ## original: const as FL_BEEP FL_BEEP_NOTIFICATION = 5 #_  Notification beep.
    const FL_BEEP_NOTIFICATION* = 5 #_  Notification beep.


    ## original: type FL_BOXTYPE as ulong
    type FL_BOXTYPE*  =  ulong
    #_  note: you can't use this values direct as FL_BOXTYPE param use Boxtype(value) instead
    #_  var box = Fl_BoxNew2(Boxtype(FL_THIN_DOWN_BOX),10,10,200,100,"a thin down box")
    #_  or
    #_  Fl_WidgetSetBox widget, boxtype(FL_ROUNDED_FRAME)
    const FL_NO_BOX                  *  =0

    const FL_FLAT_BOX                *  =1
    const FL_UP_BOX                  * = 2
    const FL_DOWN_BOX                * = 3
    const FL_UP_FRAME                * = 4
    const FL_DOWN_FRAME              * = 5

    const FL_THIN_UP_BOX             * = 6
    const FL_THIN_DOWN_BOX           * = 7
    const FL_THIN_UP_FRAME           * = 8
    const FL_THIN_DOWN_FRAME         * = 9

    const FL_ENGRAVED_BOX           * = 10
    const FL_EMBOSSED_BOX           * = 11
    const FL_ENGRAVED_FRAME         * = 12
    const FL_EMBOSSED_FRAME         * = 13
    const FL_BORDER_BOX             * = 14
    const FL_SHADOW_BOX             * = 15
    const FL_BORDER_FRAME           * = 16
    const FL_SHADOW_FRAME           * = 17
    const FL_ROUNDED_BOX            * = 18
    const FL_RSHADOW_BOX            * = 19
    const FL_ROUNDED_FRAME          * = 20
    const FL_RFLAT_BOX              * = 21
    const FL_OVAL_BOX               * = 22
    const FL_OSHADOW_BOX            * = 23
    const FL_OVAL_FRAME             * = 24
    const FL_OFLAT_BOX              * = 25
    const FL_ROUND_UP_BOX           * = 26
    const FL_ROUND_DOWN_BOX         * = 27
    const FL_DIAMOND_UP_BOX         * = 28
    const FL_DIAMOND_DOWN_BOX       * = 29

    const FL_PLASTIC_UP_BOX         * = 30
    const FL_PLASTIC_DOWN_BOX       * = 31
    const FL_PLASTIC_UP_FRAME       * = 32
    const FL_PLASTIC_DOWN_FRAME     * = 33
    const FL_PLASTIC_THIN_UP_BOX    * = 34
    const FL_PLASTIC_THIN_DOWN_BOX  * = 35
    const FL_PLASTIC_ROUND_UP_BOX   * = 36
    const FL_PLASTIC_ROUND_DOWN_BOX * = 37

    const FL_GTK_UP_BOX             * = 38
    const FL_GTK_DOWN_BOX           * = 39
    const FL_GTK_UP_FRAME           * = 40
    const FL_GTK_DOWN_FRAME         * = 41
    const FL_GTK_THIN_UP_BOX        * = 42
    const FL_GTK_THIN_DOWN_BOX      * = 43
    const FL_GTK_THIN_UP_FRAME      * = 44
    const FL_GTK_THIN_DOWN_FRAME    * = 45
    const FL_GTK_ROUND_UP_BOX       * = 46
    const FL_GTK_ROUND_DOWN_BOX     * = 47

    const FL_GLEAM_UP_BOX           * = 48
    const FL_GLEAM_DOWN_BOX         * = 49
    const FL_GLEAM_UP_FRAME         * = 50
    const FL_GLEAM_DOWN_FRAME       * = 51
    const FL_GLEAM_THIN_UP_BOX      * = 52
    const FL_GLEAM_THIN_DOWN_BOX    * = 53
    const FL_GLEAM_ROUND_UP_BOX     * = 54
    const FL_GLEAM_ROUND_DOWN_BOX   * = 55



    #[## Ãû×Ö³åÍ»°¡
    ## original: type FL_BROWSERTYPE as ulong
    #~ type FL_BROWSERTYPE*  =  enum
        #~ pppppp = 1
        ## original: const as FL_BROWSERTYPE FL_NORMALBROWSER          = 0
        #~ FL_NORMALBROWSER          = 0
        ## original: const as FL_BROWSERTYPE FL_SELECTBROWSER          = 1
        #~ FL_SELECTBROWSER          = 1
        ## original: const as FL_BROWSERTYPE FL_HOLDBROWSER            = 2
        #~ const FL_HOLDBROWSER            = 2
        ## original: const as FL_BROWSERTYPE FL_MULTIBROWSER           = 3
        #~ FL_MULTIBROWSER           = 3
    ]#

    ## original: type FL_SORTORDER as ulong
    type FL_SORTORDER*  =  ulong
    ## original: const as FL_SORTORDER FL_SORT_ASCENDING           = 0 #_  sort browser items in ascending alphabetic order.
    const FL_SORT_ASCENDING*           = 0 #_  sort browser items in ascending alphabetic order.
    ## original: const as FL_SORTORDER FL_SORT_DESCENDING          = 1 #_  sort in descending order
    const FL_SORT_DESCENDING*          = 1 #_  sort in descending order

    ## original: type FL_CHARTTYPE as ulong
    type FL_CHARTTYPE*  =  ulong
    ## original: const as FL_CHARTTYPE FL_CHART_BAR                = 0
    const FL_CHART_BAR*                = 0
    ## original: const as FL_CHARTTYPE FL_CHART_HORBAR             = 1
    const FL_CHART_HORBAR*             = 1
    ## original: const as FL_CHARTTYPE FL_CHART_LINE               = 2
    const FL_CHART_LINE*               = 2
    ## original: const as FL_CHARTTYPE FL_CHART_FILL               = 3
    const FL_CHART_FILL*               = 3
    ## original: const as FL_CHARTTYPE FL_CHART_SPIKE              = 4
    const FL_CHART_SPIKE*             = 4
    ## original: const as FL_CHARTTYPE FL_CHART_PIE                = 5
    const FL_CHART_PIE*                = 5
    ## original: const as FL_CHARTTYPE FL_CHART_SPECIALPIE         = 6
    const FL_CHART_SPECIALPIE*         = 6

    #_  The following enums define the mouse cursors that are available in FLTK.
    #_  The double-headed arrows are bitmaps provided by FLTK on X, the others are provided by system-defined cursors.
    ## original: type FL_CURSOR as ulong
    type FL_CURSOR  =  ulong
    ## original: const as FL_CURSOR FL_CURSOR_DEFAULT              =   0 #_  the default cursor, usually an arrow.
    const FL_CURSOR_DEFAULT              =   0 #_  the default cursor, usually an arrow.
    ## original: const as FL_CURSOR FL_CURSOR_SE                   =   8 #_  for back compatibility.
    const FL_CURSOR_SE                   =   8 #_  for back compatibility.
    ## original: const as FL_CURSOR FL_CURSOR_S                    =   9 #_  for back compatibility.
    const FL_CURSOR_S                    =   9 #_  for back compatibility.
    ## original: const as FL_CURSOR FL_CURSOR_SW                   =   7 #_  for back compatibility.
    const FL_CURSOR_SW                   =   7 #_  for back compatibility.
    ## original: const as FL_CURSOR FL_CURSOR_MOVE                 =  27 #_  4-pointed arrow.
    const FL_CURSOR_MOVE                 =  27 #_  4-pointed arrow.
    ## original: const as FL_CURSOR FL_CURSOR_HAND                 =  31 #_  hand (uparrow on MSWindows).
    const FL_CURSOR_HAND                 =  31 #_  hand (uparrow on MSWindows).
    ## original: const as FL_CURSOR FL_CURSOR_ARROW                =  35 #_  an arrow pointer.
    const FL_CURSOR_ARROW                =  35 #_  an arrow pointer.
    ## original: const as FL_CURSOR FL_CURSOR_W                    =  36 #_  for back compatibility.
    const FL_CURSOR_W                    =  36 #_  for back compatibility.
    ## original: const as FL_CURSOR FL_CURSOR_HELP                 =  47 #_  question mark.
    const FL_CURSOR_HELP                 =  47 #_  question mark.
    ## original: const as FL_CURSOR FL_CURSOR_E                    =  49 #_  for back compatibility.
    const FL_CURSOR_E                    =  49 #_  for back compatibility.
    ## original: const as FL_CURSOR FL_CURSOR_CROSS                =  66 #_  crosshair.
    const FL_CURSOR_CROSS                =  66 #_  crosshair.
    ## original: const as FL_CURSOR FL_CURSOR_NW                   =  68 #_  for back compatibility.
    const FL_CURSOR_NW                   =  68 #_  for back compatibility.
    ## original: const as FL_CURSOR FL_CURSOR_NE                   =  69 #_  for back compatibility.
    const FL_CURSOR_NE                   =  69 #_  for back compatibility.
    ## original: const as FL_CURSOR FL_CURSOR_N                    =  70 #_  for back compatibility.
    const FL_CURSOR_N                    =  70 #_  for back compatibility.
    ## original: const as FL_CURSOR FL_CURSOR_WAIT                 =  76 #_  watch or hourglass.
    const FL_CURSOR_WAIT                 =  76 #_  watch or hourglass.
    ## original: const as FL_CURSOR FL_CURSOR_INSERT               =  77 #_  I-beam.
    const FL_CURSOR_INSERT               =  77 #_  I-beam.
    ## original: const as FL_CURSOR FL_CURSOR_NS                   =  78 #_  up/down arrow.
    const FL_CURSOR_NS                   =  78 #_  up/down arrow.
    ## original: const as FL_CURSOR FL_CURSOR_WE                   =  79 #_  left/right arrow.
    const FL_CURSOR_WE                   =  79 #_  left/right arrow.
    ## original: const as FL_CURSOR FL_CURSOR_NWSE                 =  80 #_  diagonal arrow.
    const FL_CURSOR_NWSE                 =  80 #_  diagonal arrow.
    ## original: const as FL_CURSOR FL_CURSOR_NESW                 =  81 #_  diagonal arrow.
    const FL_CURSOR_NESW                 =  81 #_  diagonal arrow.
    ## original: const as FL_CURSOR FL_CURSOR_NONE                 = 255 #_  invisible.
    const FL_CURSOR_NONE                 = 255 #_  invisible.

    const Fl_clipboard_plain_text* = "text/plain"
    const Fl_clipboard_image*      = "image"

    ## original: type FL_CLOCKTYPE as ulong
    type FL_CLOCKTYPE*  =  ulong
    ## original: const as FL_CLOCKTYPE FL_CLOCK_SQUARE             = 0
    const FL_CLOCK_SQUARE*             = 0
    ## original: const as FL_CLOCKTYPE FL_CLOCK_ROUND              = 1
    const FL_CLOCK_ROUND*              = 1

    ## original: type FL_ColorChooserModes as ulong
    type FL_ColorChooserModes*  =  ulong
    ## original: const as FL_ColorChooserModes FL_COLORCHOOSER_DEFAULT = 0XFFFFFFFF
    const FL_COLORCHOOSER_DEFAULT* = 0XFFFFFFFF
    ## original: const as FL_ColorChooserModes FL_COLORCHOOSER_RGB     = 0
    #~ const FL_COLORCHOOSER_RGB*     = 0
    ## original: const as FL_ColorChooserModes FL_COLORCHOOSER_BYTE    = 1
    const FL_COLORCHOOSER_BYTE*    = 1
    ## original: const as FL_ColorChooserModes FL_COLORCHOOSER_HEX     = 2
    const FL_COLORCHOOSER_HEX*     = 2
    ## original: const as FL_ColorChooserModes FL_COLORCHOOSER_HSV     = 3
    #~ const FL_COLORCHOOSER_HSV*     = 3

    ## original: type Fl_CounterType as ulong
    type Fl_CounterType*  =  ulong
    ## original: const as Fl_CounterType FL_COUNTER_NORMAL         = 0 #_  Displays a counter with 4 arrow buttons.
    const FL_COUNTER_NORMAL*         = 0 #_  Displays a counter with 4 arrow buttons.
    ## original: const as Fl_CounterType FL_COUNTER_SIMPLE         = 1 #_  Displays a counter with only 2 arrow buttons.
    const FL_COUNTER_SIMPLE*         = 1 #_  Displays a counter with only 2 arrow buttons.

    ## original: type FL_Damage as ulong
    type FL_Damage*  =  ulong
    ## original: const as FL_Damage FL_DAMAGE_CHILD                = 0X01 #_  A child needs to be redrawn.
    const FL_DAMAGE_CHILD*                = 0X01 #_  A child needs to be redrawn.
    ## original: const as FL_Damage FL_DAMAGE_EXPOSE               = 0X02 #_  The window was exposed.
    const FL_DAMAGE_EXPOSE*               = 0X02 #_  The window was exposed.
    ## original: const as FL_Damage FL_DAMAGE_SCROLL               = 0X04 #_  The Fl_Scroll widget was scrolled.
    const FL_DAMAGE_SCROLL*               = 0X04 #_  The Fl_Scroll widget was scrolled.
    ## original: const as FL_Damage FL_DAMAGE_OVERLAY              = 0X08 #_  The overlay planes need to be redrawn.
    const FL_DAMAGE_OVERLAY*              = 0X08 #_  The overlay planes need to be redrawn.
    ## original: const as FL_Damage FL_DAMAGE_USER1                = 0X10 #_  First user-defined damage bit.
    const FL_DAMAGE_USER1*                = 0X10 #_  First user-defined damage bit.
    ## original: const as FL_Damage FL_DAMAGE_USER2                = 0X20 #_  Second user-defined damage bit.
    const FL_DAMAGE_USER2*                = 0X20 #_  Second user-defined damage bit.
    ## original: const as FL_Damage FL_DAMAGE_ALL                  = 0X80 #_  Everything needs to be redrawn.
    const FL_DAMAGE_ALL*                  = 0X80 #_  Everything needs to be redrawn.

    ## original: type FL_DialType as ulong
    type FL_DialType*  =  ulong
    ## original: const as FL_DialType FL_DIAL_NORMAL               = 0 #_  Draws a normal dial with a knob.
    const FL_DIAL_NORMAL*               = 0 #_  Draws a normal dial with a knob.
    ## original: const as FL_DialType FL_DIAL_LINE                 = 1 #_  Draws a dial with a line.
    const FL_DIAL_LINE*                = 1 #_  Draws a dial with a line.
    ## original: const as FL_DialType FL_DIAL_FILL                 = 2 #_  Draws a dial with a filled arc.
    const FL_DIAL_FILL*                 = 2 #_  Draws a dial with a filled arc.

    ## original: type FL_EVENT as ulong
    type FL_EVENT*  =  ulong
    ## original: const as FL_EVENT FL_EVENT_PUSH                         =  1
    const FL_EVENT_PUSH*                         =  1
    ## original: const as FL_EVENT FL_EVENT_RELEASE                      =  2
    const FL_EVENT_RELEASE*                      =  2

    ## original: const as FL_EVENT FL_EVENT_ENTER                        =  3
    const FL_EVENT_ENTER*                        =  3
    ## original: const as FL_EVENT FL_EVENT_LEAVE                        =  4
    const FL_EVENT_LEAVE*                        =  4

    ## original: const as FL_EVENT FL_EVENT_DRAG                         =  5
    const FL_EVENT_DRAG*                         =  5

    ## original: const as FL_EVENT FL_EVENT_FOCUS                        =  6
    const FL_EVENT_FOCUS*                        =  6
    ## original: const as FL_EVENT FL_EVENT_UNFOCUS                      =  7
    const FL_EVENT_UNFOCUS*                      =  7

    ## original: const as FL_EVENT FL_EVENT_KEYBOARD                     =  8
    const FL_EVENT_KEYBOARD*                     =  8
    ## original: const as FL_EVENT FL_EVENT_KEYDOWN                      =  FL_EVENT_KEYBOARD
    const FL_EVENT_KEYDOWN*                      =  FL_EVENT_KEYBOARD
    ## original: const as FL_EVENT FL_EVENT_KEYUP                        =  9
    const FL_EVENT_KEYUP*                        =  9

    ## original: const as FL_EVENT FL_EVENT_CLOSE                        = 10
    const FL_EVENT_CLOSE*                        = 10

    ## original: const as FL_EVENT FL_EVENT_MOVE                         = 11
    const FL_EVENT_MOVE*                         = 11

    ## original: const as FL_EVENT FL_EVENT_SHORTCUT                     = 12
    const FL_EVENT_SHORTCUT*                     = 12

    ## original: const as FL_EVENT FL_EVENT_DEACTIVATE                   = 13
    const FL_EVENT_DEACTIVATE*                   = 13
    ## original: const as FL_EVENT FL_EVENT_ACTIVATE                     = 14
    const FL_EVENT_ACTIVATE*                     = 14

    ## original: const as FL_EVENT FL_EVENT_HIDE                         = 15
    const FL_EVENT_HIDE*                         = 15
    ## original: const as FL_EVENT FL_EVENT_SHOW                         = 16
    const FL_EVENT_SHOW*                         = 16

    ## original: const as FL_EVENT FL_EVENT_PASTE                        = 17
    const FL_EVENT_PASTE*                        = 17

    ## original: const as FL_EVENT FL_EVENT_SELECTIONCLEAR               = 18
    const FL_EVENT_SELECTIONCLEAR*               = 18

    ## original: const as FL_EVENT FL_EVENT_MOUSEWHEEL                   = 19
    const FL_EVENT_MOUSEWHEEL*                   = 19

    ## original: const as FL_EVENT FL_EVENT_DND_ENTER                    = 20
    const FL_EVENT_DND_ENTER*                    = 20
    ## original: const as FL_EVENT FL_EVENT_DND_DRAG                     = 21
    const FL_EVENT_DND_DRAG*                     = 21
    ## original: const as FL_EVENT FL_EVENT_DND_LEAVE                    = 22
    const FL_EVENT_DND_LEAVE*                    = 22
    ## original: const as FL_EVENT FL_EVENT_DND_RELEASE                  = 23
    const FL_EVENT_DND_RELEASE*                  = 23

    ## original: const as FL_EVENT FL_EVENT_SCREEN_CONFIGURATION_CHANGED = 24
    const FL_EVENT_SCREEN_CONFIGURATION_CHANGED* = 24
    ## original: const as FL_EVENT FL_EVENT_FULLSCREEN                   = 25
    const FL_EVENT_FULLSCREEN*                   = 25


    ## original: type FL_Event_States as ulong
    type FL_Event_States*  =  ulong
    #_   FIXME: it would be nice to have the modifiers in the upper 8 bit so that
    #_          a unicode ke (24bit) can be sent as an unsigned with the modifiers.
    ## original: const as FL_Event_States FL_SHIFT                 = 0X00010000 #_  One of the shift keys is down
    const FL_SHIFT*                 = 0X00010000 #_  One of the shift keys is down
    ## original: const as FL_Event_States FL_CAPS_LOCK             = 0X00020000 #_  The caps lock is on
    const FL_CAPS_LOCK*             = 0X00020000 #_  The caps lock is on
    ## original: const as FL_Event_States FL_CTRL                  = 0X00040000 #_  One of the ctrl keys is down
    const FL_CTRL*                  = 0X00040000 #_  One of the ctrl keys is down
    ## original: const as FL_Event_States FL_ALT                   = 0X00080000 #_  One of the alt keys is down
    const FL_ALT*                   = 0X00080000 #_  One of the alt keys is down
    ## original: const as FL_Event_States FL_NUM_LOCK              = 0X00100000 #_  The num lock is on
    const FL_NUM_LOCK*              = 0X00100000 #_  The num lock is on
    ## original: const as FL_Event_States FL_META                  = 0X00400000 #_  One of the meta/Windows keys is down
    const FL_META*                  = 0X00400000 #_  One of the meta/Windows keys is down
    ## original: const as FL_Event_States FL_SCROLL_LOCK           = 0X00800000 #_  The scroll lock is on
    const FL_SCROLL_LOCK*           = 0X00800000 #_  The scroll lock is on
    ## original: const as FL_Event_States FL_BUTTON1               = 0X01000000 #_  Mouse button 1 is pushed
    const FL_BUTTON1*               = 0X01000000 #_  Mouse button 1 is pushed
    ## original: const as FL_Event_States FL_BUTTON2               = 0X02000000 #_  Mouse button 2 is pushed
    const FL_BUTTON2*               = 0X02000000 #_  Mouse button 2 is pushed
    ## original: const as FL_Event_States FL_BUTTON3               = 0X04000000 #_  Mouse button 3 is pushed
    const FL_BUTTON3*               = 0X04000000 #_  Mouse button 3 is pushed
    ## original: const as FL_Event_States FL_BUTTONS               = 0X7f000000 #_  Any mouse button is pushed
    const FL_BUTTONS*               = 0X7f000000 #_  Any mouse button is pushed
    ## original: const as FL_Event_States FL_KEY_MASK              = 0X0000ffff #_  All keys are 16 bit for now  FIXME: Unicode needs 24 bits!
    const FL_KEY_MASK*              = 0X0000ffff #_  All keys are 16 bit for now  FIXME: Unicode needs 24 bits!

    #define Fl_COMMAND Fl_CTRL #_  An alias for Fl_CTRL on WIN32 and X11, or Fl_META on MacOS X
    #define Fl_CONTROL Fl_META #_  An alias for Fl_META on WIN32 and X11, or Fl_CTRL on MacOS X
    #define Fl_MOUSEBUTTON(n) (0X00800000 shl (n))  #_  Mouse button n (n > 0) is pushed


    ## original: type FL_Mouse_Keyboard_Events as ulong
    type FL_Mouse_Keyboard_Events  =  ulong
    ## original: const as FL_Mouse_Keyboard_Events FL_Volume_Down  = 0XEF11 #_  Volume control down
    const FL_Volume_Down  = 0XEF11 #_  Volume control down
    ## original: const as FL_Mouse_Keyboard_Events FL_Volume_Mute  = 0XEF12 #_  Mute sound from the system
    const FL_Volume_Mute  = 0XEF12 #_  Mute sound from the system
    ## original: const as FL_Mouse_Keyboard_Events FL_Volume_Up    = 0XEF13 #_  Volume control up
    const FL_Volume_Up    = 0XEF13 #_  Volume control up
    ## original: const as FL_Mouse_Keyboard_Events FL_Media_Play   = 0XEF14 #_  Start playing of audio
    const FL_Media_Play   = 0XEF14 #_  Start playing of audio
    ## original: const as FL_Mouse_Keyboard_Events FL_Media_Stop   = 0XEF15 #_  Stop playing audio
    const FL_Media_Stop   = 0XEF15 #_  Stop playing audio
    ## original: const as FL_Mouse_Keyboard_Events FL_Media_Prev   = 0XEF16 #_  Previous track
    const FL_Media_Prev   = 0XEF16 #_  Previous track
    ## original: const as FL_Mouse_Keyboard_Events FL_Media_Next   = 0XEF17 #_  Next track
    const FL_Media_Next   = 0XEF17 #_  Next track
    ## original: const as FL_Mouse_Keyboard_Events FL_Home_Page    = 0XEF18 #_  Display user's home page
    const FL_Home_Page    = 0XEF18 #_  Display user's home page
    ## original: const as FL_Mouse_Keyboard_Events FL_Mail         = 0XEF19 #_  Invoke user's mail program
    const FL_Mail         = 0XEF19 #_  Invoke user's mail program
    ## original: const as FL_Mouse_Keyboard_Events FL_Search       = 0XEF1B #_  Search
    const FL_Search       = 0XEF1B #_  Search
    ## original: const as FL_Mouse_Keyboard_Events FL_Back         = 0XEF26 #_  Like back on a browser
    const FL_Back         = 0XEF26 #_  Like back on a browser
    ## original: const as FL_Mouse_Keyboard_Events FL_Forward      = 0XEF27 #_  Like forward on a browser
    const FL_Forward      = 0XEF27 #_  Like forward on a browser
    ## original: const as FL_Mouse_Keyboard_Events FL_Stop         = 0XEF28 #_  Stop current operation
    const FL_Stop         = 0XEF28 #_  Stop current operation
    ## original: const as FL_Mouse_Keyboard_Events FL_Refresh      = 0XEF29 #_  Refresh the page
    const FL_Refresh      = 0XEF29 #_  Refresh the page
    ## original: const as FL_Mouse_Keyboard_Events FL_Sleep        = 0XEF2F #_  Put system to sleep
    const FL_Sleep        = 0XEF2F #_  Put system to sleep
    ## original: const as FL_Mouse_Keyboard_Events FL_Favorites    = 0XEF30 #_  Show favorite locations
    const FL_Favorites    = 0XEF30 #_  Show favorite locations
    #_   FIXME: These codes collide with valid Unicode keys
    ## original: const as FL_Mouse_Keyboard_Events FL_Mouse_Button = 0Xfee8 #_  A mouse button; use FL_Button + n for mouse button n.
    const FL_Mouse_Button = 0Xfee8 #_  A mouse button; use FL_Button + n for mouse button n.
    ## original: const as FL_Mouse_Keyboard_Events FL_BackSpace    = 0Xff08 #_  The backspace key.
    const FL_BackSpace    = 0Xff08 #_  The backspace key.
    ## original: const as FL_Mouse_Keyboard_Events FL_Tab_KEY      = 0Xff09 #_  The tab key. ( !!! FL_TAB is a widget)
    const FL_Tab_KEY      = 0Xff09 #_  The tab key. ( !!! FL_TAB is a widget)

    ## original: const as FL_Mouse_Keyboard_Events FL_Iso_Key      = 0Xff0c #_  The additional key of ISO keyboards.
    const FL_Iso_Key      = 0Xff0c #_  The additional key of ISO keyboards.
    ## original: const as FL_Mouse_Keyboard_Events FL_Enter_Key    = 0Xff0d #_  The enter key.
    const FL_Enter_Key    = 0Xff0d #_  The enter key.

    ## original: const as FL_Mouse_Keyboard_Events FL_Pause        = 0Xff13 #_  The pause key.
    const FL_Pause        = 0Xff13 #_  The pause key.
    ## original: const as FL_Mouse_Keyboard_Events FL_ScrollLock   = 0Xff14 #_  The scroll lock key.
    #~ let FL_ScrollLock   = 0Xff14 #_  The scroll lock key.

    ## original: const as FL_Mouse_Keyboard_Events FL_Escape       = 0Xff1b #_  The escape key.
    const FL_Escape*       = 0Xff1b #_  The escape key.

    ## original: const as FL_Mouse_Keyboard_Events FL_Home         = 0Xff50 #_  The home key.
    const FL_Home*         = 0Xff50 #_  The home key.
    ## original: const as FL_Mouse_Keyboard_Events FL_Left         = 0Xff51 #_  The left arrow key.
    const FL_Left*         = 0Xff51 #_  The left arrow key.
    ## original: const as FL_Mouse_Keyboard_Events FL_Up           = 0Xff52 #_  The up arrow key.
    const FL_Up*           = 0Xff52 #_  The up arrow key.
    ## original: const as FL_Mouse_Keyboard_Events FL_Right        = 0Xff53 #_  The right arrow key.
    const FL_Right*        = 0Xff53 #_  The right arrow key.
    ## original: const as FL_Mouse_Keyboard_Events FL_Down         = 0Xff54 #_  The down arrow key.
    const FL_Down*         = 0Xff54 #_  The down arrow key.
    ## original: const as FL_Mouse_Keyboard_Events FL_Page_Up      = 0Xff55 #_  The page-up key.
    const FL_Page_Up*      = 0Xff55 #_  The page-up key.
    ## original: const as FL_Mouse_Keyboard_Events FL_Page_Down    = 0Xff56 #_  The page-down key.
    const FL_Page_Down*    = 0Xff56 #_  The page-down key.
    ## original: const as FL_Mouse_Keyboard_Events FL_End          = 0Xff57 #_  The end key.
    const FL_End*          = 0Xff57 #_  The end key.

    ## original: const as FL_Mouse_Keyboard_Events FL_Print        = 0Xff61 #_  The print (or print-screen) key.
    const FL_Print*        = 0Xff61 #_  The print (or print-screen) key.

    ## original: const as FL_Mouse_Keyboard_Events FL_Insert       = 0Xff63 #_  The insert key.
    const FL_Insert*       = 0Xff63 #_  The insert key.

    ## original: const as FL_Mouse_Keyboard_Events FL_Menu         = 0Xff67 #_  The menu key.
    const FL_Menu*         = 0Xff67 #_  The menu key.
    ## original: const as FL_Mouse_Keyboard_Events FL_Help         = 0Xff68 #_  The 'help' key on Mac keyboards
    const FL_Help*         = 0Xff68 #_  The 'help' key on Mac keyboards

    ## original: const as FL_Mouse_Keyboard_Events FL_NumLock      = 0Xff7f #_  The num lock key.
    #~ let FL_NumLock      = 0Xff7f #_  The num lock key.
    ## original: const as FL_Mouse_Keyboard_Events FL_KP           = 0Xff80 #_  One of the keypad numbers; use FL_KP + n for number n.
    const FL_KP*           = 0Xff80 #_  One of the keypad numbers; use FL_KP + n for number n.

    ## original: const as FL_Mouse_Keyboard_Events FL_KP_Enter     = 0Xff8d #_  The enter key on the keypad, same as FL_KP+'\\r'.
    const FL_KP_Enter*     = 0Xff8d #_  The enter key on the keypad, same as FL_KP+'\\r'.

    ## original: const as FL_Mouse_Keyboard_Events FL_KP_Last      = 0Xffbd #_  The last keypad key; use to range-check keypad.
    const FL_KP_Last*      = 0Xffbd #_  The last keypad key; use to range-check keypad.

    ## original: const as FL_Mouse_Keyboard_Events FL_F            = 0Xffbd #_  One of the function keys; use FL_F + n for function key n.
    const FL_F*           = 0Xffbd #_  One of the function keys; use FL_F + n for function key n.
    ## original: const as FL_Mouse_Keyboard_Events FL_F_Last       = 0Xffe0 #_  The last function key; use to range-check function keys.
    const FL_F_Last*       = 0Xffe0 #_  The last function key; use to range-check function keys.

    ## original: const as FL_Mouse_Keyboard_Events FL_Shift_L      = 0Xffe1 #_  The lefthand shift key.
    const FL_Shift_L*     = 0Xffe1 #_  The lefthand shift key.
    ## original: const as FL_Mouse_Keyboard_Events FL_Shift_R      = 0Xffe2 #_  The righthand shift key.
    const FL_Shift_R*      = 0Xffe2 #_  The righthand shift key.
    ## original: const as FL_Mouse_Keyboard_Events FL_Control_L    = 0Xffe3 #_  The lefthand control key.
    const FL_Control_L*    = 0Xffe3 #_  The lefthand control key.
    ## original: const as FL_Mouse_Keyboard_Events FL_Control_R    = 0Xffe4 #_  The righthand control key.
    const FL_Control_R*    = 0Xffe4 #_  The righthand control key.
    ## original: const as FL_Mouse_Keyboard_Events FL_CapsLock     = 0Xffe5 #_  The caps lock key.
    #~ const FL_CapsLock     = 0Xffe5 #_  The caps lock key.

    ## original: const as FL_Mouse_Keyboard_Events FL_Meta_L       = 0Xffe7 #_  The left meta/Windows key.
    const FL_Meta_L*       = 0Xffe7 #_  The left meta/Windows key.
    ## original: const as FL_Mouse_Keyboard_Events FL_Meta_R       = 0Xffe8 #_  The right meta/Windows key.
    const FL_Meta_R*       = 0Xffe8 #_  The right meta/Windows key.
    ## original: const as FL_Mouse_Keyboard_Events FL_Alt_L        = 0Xffe9 #_  The left alt key.
    const FL_Alt_L*        = 0Xffe9 #_  The left alt key.
    ## original: const as FL_Mouse_Keyboard_Events FL_Alt_R        = 0Xffea #_  The right alt key.
    const FL_Alt_R*        = 0Xffea #_  The right alt key.
    ## original: const as FL_Mouse_Keyboard_Events FL_Delete       = 0Xffff #_  The delete key.
    const FL_Delete*       = 0Xffff #_  The delete key.

    ## original: type FL_EVENT_BUTTON as ulong
    type T_FL_EVENT_BUTTON*  =  ulong
    ## original: const as FL_EVENT_BUTTON FL_LEFT_MOUSE            = 1 #_  The left mouse button
    const FL_LEFT_MOUSE*            = 1 #_  The left mouse button
    ## original: const as FL_EVENT_BUTTON FL_MIDDLE_MOUSE          = 2 #_  The middle mouse button
    const FL_MIDDLE_MOUSE*          = 2 #_  The middle mouse button
    ## original: const as FL_EVENT_BUTTON FL_RIGHT_MOUSE           = 3 #_  The right mouse button
    const FL_RIGHT_MOUSE*           = 3 #_  The right mouse button

    ## original: type FL_FILE_TYPE as ulong
    type FL_FILE_TYPE*  =  ulong
    ## original: const as FL_FILE_TYPE FL_FILES                    = 0
    const FL_FILES*                    = 0
    ## original: const as FL_FILE_TYPE FL_DIRECTORIES              = 1
    const FL_DIRECTORIES*              = 1

    ## original: type FL_FILECHOOSER_TYPE as ulong
    type FL_FILECHOOSER_TYPE*  =  ulong
    ## original: const as FL_FILECHOOSER_TYPE FL_FILECHOOSER_SINGLE    = 0 #_  allows the user to select a single, existing file.
    const FL_FILECHOOSER_SINGLE*    = 0 #_  allows the user to select a single, existing file.
    ## original: const as FL_FILECHOOSER_TYPE FL_FILECHOOSER_MULTI     = 1 #_  allows the user to select one or more existing files.
    const FL_FILECHOOSER_MULTI*     = 1 #_  allows the user to select one or more existing files.
    ## original: const as FL_FILECHOOSER_TYPE FL_FILECHOOSER_CREATE    = 2 #_  allows the user to select a single, existing file or specify a new filename.
    const FL_FILECHOOSER_CREATE*    = 2 #_  allows the user to select a single, existing file or specify a new filename.
    ## original: const as FL_FILECHOOSER_TYPE FL_FILECHOOSER_DIRECTORY = 4 #_  allows the user to select a single, existing directory.
    const FL_FILECHOOSER_DIRECTORY* = 4 #_  allows the user to select a single, existing directory.

    ## original: type FL_LABEL_TYPE as ulong
    type FL_LABEL_TYPE*  =  ulong
    ## original: const as FL_LABEL_TYPE FL_LABEL_NORMAL            = 0
    const FL_LABEL_NORMAL*            = 0
    ## original: const as FL_LABEL_TYPE FL_LABEL_SYMBOL            = FL_LABEL_NORMAL
    const FL_LABEL_SYMBOL*            = FL_LABEL_NORMAL
    ## original: const as FL_LABEL_TYPE FL_LABEL_NO                = 1
    const FL_LABEL_NO*                = 1
    ## original: const as FL_LABEL_TYPE FL_LABEL_SHADOW            = 2
    const FL_LABEL_SHADOW*            = 2
    ## original: const as FL_LABEL_TYPE FL_LABEL_ENGRAVED          = 3
    const FL_LABEL_ENGRAVED*          = 3
    ## original: const as FL_LABEL_TYPE FL_LABEL_EMBOSSED          = 4
    const FL_LABEL_EMBOSSED*          = 4
    ## original: const as FL_LABEL_TYPE FL_LABEL_MULTI             = 5
    const FL_LABEL_MULTI*             = 5
    ## original: const as FL_LABEL_TYPE FL_LABEL_ICON              = 6
    const FL_LABEL_ICON*              = 6
    ## original: const as FL_LABEL_TYPE FL_LABEL_IMAGE             = 7
    const FL_LABEL_IMAGE*             = 7
    ## original: const as FL_LABEL_TYPE FL_LABEL_FREE              = 8
    const FL_LABEL_FREE*              = 8

    ## original: type FL_INPUT_TYPE as ulong
    type FL_INPUT_TYPE*  =  ulong
    ## original: const as FL_INPUT_TYPE FL_INPUT_NORMAL                = 0
    const FL_INPUT_NORMAL*                = 0
    ## original: const as FL_INPUT_TYPE FL_INPUT_FLOAT                 = 1
    const FL_INPUT_FLOAT*                 = 1
    ## original: const as FL_INPUT_TYPE FL_INPUT_INT                   = 2
    const FL_INPUT_INT*                   = 2

    ## original: const as FL_INPUT_TYPE FL_INPUT_MULTILINE             = 4
    const FL_INPUT_MULTILINE*             = 4
    ## original: const as FL_INPUT_TYPE FL_INPUT_SECRET                = 5
    const FL_INPUT_SECRET*                = 5
    ## original: const as FL_INPUT_TYPE FL_INPUT_TYPE_                 = 7
    const FL_INPUT_TYPE_TT*                 = 7

    ## original: const as FL_INPUT_TYPE FL_INPUT_READONLY              = 8
    const FL_INPUT_READONLY*              = 8
    ## original: const as FL_INPUT_TYPE FL_INPUT_NORMAL_OUTPUT         = FL_INPUT_NORMAL or FL_INPUT_READONLY
    const FL_INPUT_NORMAL_OUTPUT*         = FL_INPUT_NORMAL or FL_INPUT_READONLY
    ## original: const as FL_INPUT_TYPE FL_INPUT_MULTILINE_OUTPUT      = FL_INPUT_MULTILINE or FL_INPUT_READONLY
    const FL_INPUT_MULTILINE_OUTPUT*      = FL_INPUT_MULTILINE or FL_INPUT_READONLY

    ## original: const as FL_INPUT_TYPE FL_INPUT_WRAP                  = 16
    const FL_INPUT_WRAP*                  = 16
    ## original: const as FL_INPUT_TYPE FL_INPUT_MULTILINE_WRAP        = FL_INPUT_MULTILINE or FL_INPUT_WRAP
    const FL_INPUT_MULTILINE_WRAP*        = FL_INPUT_MULTILINE or FL_INPUT_WRAP
    ## original: const as FL_INPUT_TYPE FL_INPUT_MULTILINE_OUTPUT_WRAP = FL_INPUT_MULTILINE or FL_INPUT_READONLY or FL_INPUT_WRAP
    const FL_INPUT_MULTILINE_OUTPUT_WRAP* = FL_INPUT_MULTILINE or FL_INPUT_READONLY or FL_INPUT_WRAP

    ## original: type FL_LINE_STYLE as ulong
    type FL_LINE_STYLE*  =  ulong
    ## original: const as FL_LINE_STYLE FL_SOLID                   = 0X0000 #_  line style: ___________
    const FL_SOLID*                   = 0X0000 #_  line style: ___________
    ## original: const as FL_LINE_STYLE FL_DASH                    = 0X0001 #_  line style: _ _ _ _ _ _
    const FL_DASH*                    = 0X0001 #_  line style: _ _ _ _ _ _
    ## original: const as FL_LINE_STYLE FL_DOT                     = 0X0002 #_  line style: . . . . . .
    const FL_DOT*                     = 0X0002 #_  line style: . . . . . .
    ## original: const as FL_LINE_STYLE FL_DASHDOT                 = 0X0003 #_  line style: _ . _ . _ .
    const FL_DASHDOT*                 = 0X0003 #_  line style: _ . _ . _ .
    ## original: const as FL_LINE_STYLE FL_DASHDOTDOT              = 0X0004 #_  line style: _ . . _ . .
    const FL_DASHDOTDOT*              = 0X0004 #_  line style: _ . . _ . .

    ## original: const as FL_LINE_STYLE FL_CAP_FLAT                = 0X0100 #_  cap style: end is flat
    const FL_CAP_FLAT*                = 0X0100 #_  cap style: end is flat
    ## original: const as FL_LINE_STYLE FL_CAP_ROUND               = 0X0200 #_  cap style: end is round
    const FL_CAP_ROUND*               = 0X0200 #_  cap style: end is round
    ## original: const as FL_LINE_STYLE FL_CAP_SQUARE              = 0X0300 #_  cap style: end wraps end point
    const FL_CAP_SQUARE*              = 0X0300 #_  cap style: end wraps end point

    ## original: const as FL_LINE_STYLE FL_JOIN_MITER              = 0X1000 #_  join style: line join extends to a point
    const FL_JOIN_MITER*              = 0X1000 #_  join style: line join extends to a point
    ## original: const as FL_LINE_STYLE FL_JOIN_ROUND              = 0X2000 #_  join style: line join is rounded
    const FL_JOIN_ROUND*              = 0X2000 #_  join style: line join is rounded
    ## original: const as FL_LINE_STYLE FL_JOIN_BEVEL              = 0X3000 #_  join style: line join is tidied
    const FL_JOIN_BEVEL*              = 0X3000 #_  join style: line join is tidied

    ## original: type FL_LINE_POSITION as ulong
    type FL_LINE_POSITION  =  ulong
    ## original: const as FL_LINE_POSITION FL_TOP    = 0
    const FL_TOP    = 0
    ## original: const as FL_LINE_POSITION FL_BOTTOM = 1
    const FL_BOTTOM = 1
    ## original: const as FL_LINE_POSITION FL_MIDDLE = 2
    const FL_MIDDLE = 2

    ## original: type FL_MENUBUTTON_POPUP_TYPE as ulong#_  Values for Fl_WidgetSetType() used to indicate what mouse buttons pop up the menu.
    type FL_MENUBUTTON_POPUP_TYPE  =  ulong#_  Values for Fl_WidgetSetType() used to indicate what mouse buttons pop up the menu.
    ## original: const as FL_MENUBUTTON_POPUP_TYPE POPUP1          = 1 #_  pops up with the mouse 1st button.
    const POPUP1          = 1 #_  pops up with the mouse 1st button.
    ## original: const as FL_MENUBUTTON_POPUP_TYPE POPUP2          = 2 #_  pops up with the mouse 2nd button.
    const POPUP2          = 2 #_  pops up with the mouse 2nd button.
    ## original: const as FL_MENUBUTTON_POPUP_TYPE POPUP12         = 3 #_  pops up with the mouse 1st or 2nd buttons.
    const POPUP12         = 3 #_  pops up with the mouse 1st or 2nd buttons.
    ## original: const as FL_MENUBUTTON_POPUP_TYPE POPUP3          = 4 #_  pops up with the mouse 3rd button.
    const POPUP3          = 4 #_  pops up with the mouse 3rd button.
    ## original: const as FL_MENUBUTTON_POPUP_TYPE POPUP13         = 5 #_  pops up with the mouse 1st or 3rd buttons.
    const POPUP13         = 5 #_  pops up with the mouse 1st or 3rd buttons.
    ## original: const as FL_MENUBUTTON_POPUP_TYPE POPUP23         = 6 #_  pops up with the mouse 2nd or 3rd buttons.
    const POPUP23         = 6 #_  pops up with the mouse 2nd or 3rd buttons.
    ## original: const as FL_MENUBUTTON_POPUP_TYPE POPUP123        = 7 #_  pops up with any mouse button.
    const POPUP123        = 7 #_  pops up with any mouse button.

    ## original: type FL_MENUITEM_FLAG as ulong
    type FL_MENUITEM_FLAG  =  ulong
    ## original: const as FL_MENUITEM_FLAG FL_MENU_INACTIVE        = 0X001 #_  Deactivate menu item (gray out)
    const FL_MENU_INACTIVE        = 0X001 #_  Deactivate menu item (gray out)
    ## original: const as FL_MENUITEM_FLAG FL_MENU_TOGGLE          = 0X002 #_  Item is a checkbox toggle (shows checkbox for on/off state)
    const FL_MENU_TOGGLE          = 0X002 #_  Item is a checkbox toggle (shows checkbox for on/off state)
    ## original: const as FL_MENUITEM_FLAG FL_MENU_VALUE           = 0X004 #_  The on/off state for checkbox/radio buttons (if set, state is 'on')
    const FL_MENU_VALUE           = 0X004 #_  The on/off state for checkbox/radio buttons (if set, state is 'on')
    ## original: const as FL_MENUITEM_FLAG FL_MENU_RADIO           = 0X008 #_  Item is a radio button (one checkbox of many can be on)
    const FL_MENU_RADIO           = 0X008 #_  Item is a radio button (one checkbox of many can be on)
    ## original: const as FL_MENUITEM_FLAG FL_MENU_INVISIBLE       = 0X010 #_  Item will not show up (shortcut will work)
    const FL_MENU_INVISIBLE       = 0X010 #_  Item will not show up (shortcut will work)
    ## original: const as FL_MENUITEM_FLAG FL_SUBMENU_POINTER      = 0X020 #_  Indicates user_data() is a pointer to another menu array
    const FL_SUBMENU_POINTER      = 0X020 #_  Indicates user_data() is a pointer to another menu array
    ## original: const as FL_MENUITEM_FLAG FL_SUBMENU              = 0X040 #_  This item is a submenu to other items
    const FL_SUBMENU              = 0X040 #_  This item is a submenu to other items
    ## original: const as FL_MENUITEM_FLAG FL_MENU_DIVIDER         = 0X080 #_  Creates divider line below this item. Also ends a group of radio buttons.
    const FL_MENU_DIVIDER         = 0X080 #_  Creates divider line below this item. Also ends a group of radio buttons.
    ## original: const as FL_MENUITEM_FLAG FL_MENU_HORIZONTAL      = 0X100 #_  reserved
    const FL_MENU_HORIZONTAL      = 0X100 #_  reserved


    ## original: type FL_OPTION as ulong
    type FL_OPTION*  =  ulong
    ## original: const as FL_OPTION FL_OPTION_ARROW_FOCUS          = 0
    const FL_OPTION_ARROW_FOCUS*          = 0
    ## original: const as FL_OPTION FL_OPTION_VISIBLE_FOCUS        = 1
    const FL_OPTION_VISIBLE_FOCUS*        = 1
    ## original: const as FL_OPTION FL_OPTION_DND_TEXT             = 2
    const FL_OPTION_DND_TEXT*             = 2
    ## original: const as FL_OPTION FL_OPTION_SHOW_TOOLTIPS        = 3
    const FL_OPTION_SHOW_TOOLTIPS*        = 3
    ## original: const as FL_OPTION FL_OPTION_FNFC_USES_GTK        = 4#_  (select GTK file chooser as native filechooser on linux/unix only).
    const FL_OPTION_FNFC_USES_GTK*        = 4#_  (select GTK file chooser as native filechooser on linux/unix only).
    ## original: const as FL_OPTION FL_OPTION_LAST                 = 5
    const FL_OPTION_LAST*                 = 5

    ## original: type FL_PACK_TYPE as ulong
    type FL_PACK_TYPE*  =  ulong
    ## original: const as FL_PACK_TYPE FL_PACK_VERTICAL            = 0
    const FL_PACK_VERTICAL*            = 0
    ## original: const as FL_PACK_TYPE FL_PACK_HORIZONTAL          = 1
    const FL_PACK_HORIZONTAL*          = 1

    ## original: type FL_ROOT as ulong
    type FL_ROOT*  =  ulong
    ## original: const as FL_ROOT FL_ROOT_SYSTEM                   = 0 #_  Preferences are used system-wide
    const FL_ROOT_SYSTEM*                   = 0 #_  Preferences are used system-wide
    ## original: const as FL_ROOT FL_ROOT_USER                     = 1 #_  Preferences apply only to the current user
    const FL_ROOT_USER*                     = 1 #_  Preferences apply only to the current user

    ## original: type FL_SCROLL_TYPE as ulong
    type FL_SCROLL_TYPE*  =  ulong
    ## original: const as FL_SCROLL_TYPE FL_SCROLL_NO                = 0 #_  No scrollbars.
    const FL_SCROLL_NO*                = 0 #_  No scrollbars.
    ## original: const as FL_SCROLL_TYPE FL_SCROLL_HORIZONTAL        = 1 #_  Only a horizontal scrollbar.
    const FL_SCROLL_HORIZONTAL*        = 1 #_  Only a horizontal scrollbar.
    ## original: const as FL_SCROLL_TYPE FL_SCROLL_VERTICAL          = 2 #_  Only a vertical scrollbar.
    const FL_SCROLL_VERTICAL*          = 2 #_  Only a vertical scrollbar.
    ## original: const as FL_SCROLL_TYPE FL_SCROLL_BOTH              = 3 #_  The default is both scrollbars.
    const FL_SCROLL_BOTH*              = 3 #_  The default is both scrollbars.
    ## original: const as FL_SCROLL_TYPE FL_SCROLL_ALWAYS_ON         = 4 #_  Specified scrollbar(s) should 'always' be shown.
    const FL_SCROLL_ALWAYS_ON*         = 4 #_  Specified scrollbar(s) should 'always' be shown.
    ## original: const as FL_SCROLL_TYPE FL_SCROLL_HORIZONTAL_ALWAYS = 5 #_  Horizontal scrollbar always on, vertical always off.
    const FL_SCROLL_HORIZONTAL_ALWAYS* = 5 #_  Horizontal scrollbar always on, vertical always off.
    ## original: const as FL_SCROLL_TYPE FL_SCROLL_VERTICAL_ALWAYS   = 6 #_  Vertical scrollbar always on, horizontal always off.
    const FL_SCROLL_VERTICAL_ALWAYS*   = 6 #_  Vertical scrollbar always on, horizontal always off.
    ## original: const as FL_SCROLL_TYPE FL_SCROLL_BOTH_ALWAYS       = 7
    const FL_SCROLL_BOTH_ALWAYS*       = 7

    ## original: type FL_SLIDER_TYPE as ulong
    type FL_SLIDER_TYPE*  =  ulong
    ## original: const as FL_SLIDER_TYPE FL_SLIDER_VERT            = 0
    const FL_SLIDER_VERT*            = 0
    ## original: const as FL_SLIDER_TYPE FL_SLIDER_HOR_SLIDER      = 1
    const FL_SLIDER_HOR_SLIDER*      = 1
    ## original: const as FL_SLIDER_TYPE FL_SLIDER_VERT_FILL       = 2 #_  Draws a filled vertical slider, useful as a progress or value meter.
    const FL_SLIDER_VERT_FILL*       = 2 #_  Draws a filled vertical slider, useful as a progress or value meter.
    ## original: const as FL_SLIDER_TYPE FL_SLIDER_HOR_FILL        = 3 #_  Draws a filled horizontal slider, useful as a progress or value meter.
    const FL_SLIDER_HOR_FILL*        = 3 #_  Draws a filled horizontal slider, useful as a progress or value meter.
    ## original: const as FL_SLIDER_TYPE FL_SLIDER_VERT_NICE       = 4 #_  Draws a vertical slider with a nice looking control knob.
    const FL_SLIDER_VERT_NICE*       = 4 #_  Draws a vertical slider with a nice looking control knob.
    ## original: const as FL_SLIDER_TYPE FL_SLIDER_HOR_NICE        = 5 #_  Draws a horizontal slider with a nice looking control knob.
    const FL_SLIDER_HOR_NICE*        = 5 #_  Draws a horizontal slider with a nice looking control knob.

    ## original: type FL_TABLECONTEXT as ulong
    type FL_TABLECONTEXT*  =  ulong
    ## original: const as FL_TABLECONTEXT FL_CONTEXT_NONE          = 0X00 #_  no known context
    const FL_CONTEXT_NONE*          = 0X00 #_  no known context
    ## original: const as FL_TABLECONTEXT FL_CONTEXT_STARTPAGE     = 0X01 #_  before a page is redrawn
    const FL_CONTEXT_STARTPAGE*     = 0X01 #_  before a page is redrawn
    ## original: const as FL_TABLECONTEXT FL_CONTEXT_ENDPAGE       = 0X02 #_  after a page is redrawn
    const FL_CONTEXT_ENDPAGE*       = 0X02 #_  after a page is redrawn
    ## original: const as FL_TABLECONTEXT FL_CONTEXT_ROW_HEADER    = 0X04 #_  in the row header
    const FL_CONTEXT_ROW_HEADER*    = 0X04 #_  in the row header
    ## original: const as FL_TABLECONTEXT FL_CONTEXT_COL_HEADER    = 0X08 #_  in the col header
    const FL_CONTEXT_COL_HEADER*    = 0X08 #_  in the col header
    ## original: const as FL_TABLECONTEXT FL_CONTEXT_CELL          = 0X10 #_  in one of the cells
    const FL_CONTEXT_CELL*          = 0X10 #_  in one of the cells
    ## original: const as FL_TABLECONTEXT FL_CONTEXT_TABLE         = 0X20 #_  in a dead zone of table
    const FL_CONTEXT_TABLE*         = 0X20 #_  in a dead zone of table
    ## original: const as FL_TABLECONTEXT FL_CONTEXT_RC_RESIZE     = 0X40 #_  [r]ow or [c]olumn being resized
    const FL_CONTEXT_RC_RESIZE*     = 0X40 #_  [r]ow or [c]olumn being resized

    converter toInt*(x: FL_TABLECONTEXT): int = int(x)

    ## original: type FL_TABLEROWSELECTMODE as ulong
    type FL_TABLEROWSELECTMODE*  =  ulong
    ## original: const as FL_TABLEROWSELECTMODE FL_SELECT_NONE     = 0
    const FL_SELECT_NONE*     = 0
    ## original: const as FL_TABLEROWSELECTMODE FL_SELECT_SINGLE   = 1
    const FL_SELECT_SINGLE*   = 1
    ## original: const as FL_TABLEROWSELECTMODE FL_SELECT_MULTI    = 2
    const FL_SELECT_MULTI*    = 2

    ## original: type FL_TREE_REASON as ulong #_  The reason the callback was invoked.
    type FL_TREE_REASON*  =  enum #_  The reason the callback was invoked.
        ## original: const as FL_TREE_REASON FL_TREE_REASON_NONE       = 0 #_  unknown reason
        FL_TREE_REASON_NONE       = 0 #_  unknown reason
        ## original: const as FL_TREE_REASON FL_TREE_REASON_SELECTED   = 1 #_  an item was selected
        FL_TREE_REASON_SELECTED   = 1 #_  an item was selected
        ## original: const as FL_TREE_REASON FL_TREE_REASON_DESELECTED = 2 #_  an item was de-selected
        FL_TREE_REASON_DESELECTED = 2 #_  an item was de-selected
        ## original: const as FL_TREE_REASON FL_TREE_REASON_RESELECTED = 3 #_  an item was re-selected (e.g. double-clicked)
        FL_TREE_REASON_RESELECTED = 3 #_  an item was re-selected (e.g. double-clicked)
        ## original: const as FL_TREE_REASON FL_TREE_REASON_OPENED     = 4 #_  an item was opened
        FL_TREE_REASON_OPENED    = 4 #_  an item was opened
        ## original: const as FL_TREE_REASON FL_TREE_REASON_CLOSED     = 5 #_  an item was closed
        FL_TREE_REASON_CLOSED     = 5 #_  an item was closed
        ## original: const as FL_TREE_REASON FL_TREE_REASON_DRAGGED    = 6 #_  an item was dragged into a new place
        FL_TREE_REASON_DRAGGED    = 6 #_  an item was dragged into a new place

    ## original: type FL_TREE_CONNECTOR as ulong      #_  Defines the style of connection lines between items.
    type FL_TREE_CONNECTOR*  =  ulong      #_  Defines the style of connection lines between items.
    ## original: const as FL_TREE_CONNECTOR FL_TREE_CONNECTOR_NONE   = 0 #_  Use no lines connecting items.
    const FL_TREE_CONNECTOR_NONE*   = 0 #_  Use no lines connecting items.
    ## original: const as FL_TREE_CONNECTOR FL_TREE_CONNECTOR_DOTTED = 1 #_  Use dotted lines connecting items (default)
    const FL_TREE_CONNECTOR_DOTTED* = 1 #_  Use dotted lines connecting items (default)
    ## original: const as FL_TREE_CONNECTOR FL_TREE_CONNECTOR_SOLID  = 2 #_  Use solid lines connecting items.
    const FL_TREE_CONNECTOR_SOLID*  = 2 #_  Use solid lines connecting items.

    ## original: type FL_TREE_SELECT as ulong      #_  Tree selection style.
    type T_FL_TREE_SELECT*  =  ulong      #_  Tree selection style.
    ## original: const as FL_TREE_SELECT FL_TREE_SELECT_NONE             = 0 #_  Nothing selected when items are clicked.
    const FL_TREE_SELECT_NONE*             = 0 #_  Nothing selected when items are clicked.
    ## original: const as FL_TREE_SELECT FL_TREE_SELECT_SINGLE           = 1 #_  Single item selected when item is clicked (default)
    const FL_TREE_SELECT_SINGLE*           = 1 #_  Single item selected when item is clicked (default)
    ## original: const as FL_TREE_SELECT FL_TREE_SELECT_MULTI            = 2 #_  Multiple items can be selected by clicking with SHIFT, CTRL or mouse drags.
    const FL_TREE_SELECT_MULTI*            = 2 #_  Multiple items can be selected by clicking with SHIFT, CTRL or mouse drags.
    ## original: const as FL_TREE_SELECT FL_TREE_SELECT_SINGLE_DRAGGABLE = 3 #_  Single items may be selected, and they may be reordered by mouse drag.
    const FL_TREE_SELECT_SINGLE_DRAGGABLE* = 3 #_  Single items may be selected, and they may be reordered by mouse drag.

    ## original: type FL_TREE_SORT as ulong        #_  Sort order options for items added to the tree.
    type FL_TREE_SORT*  =  ulong        #_  Sort order options for items added to the tree.
    ## original: const as FL_TREE_SORT FL_TREE_SORT_NONE           = 0 #_  No sorting; items are added in the order defined (default).
    const FL_TREE_SORT_NONE*           = 0 #_  No sorting; items are added in the order defined (default).
    ## original: const as FL_TREE_SORT FL_TREE_SORT_ASCENDING      = 1 #_  Add items in ascending sort order.
    const FL_TREE_SORT_ASCENDING*      = 1 #_  Add items in ascending sort order.
    ## original: const as FL_TREE_SORT FL_TREE_SORT_DESCENDING     = 2 #_  Add items in descending sort order.
    const FL_TREE_SORT_DESCENDING*     = 2 #_  Add items in descending sort order.

    ## original: type FL_VALUATOR_TYPE as ulong
    type FL_VALUATOR_TYPE*  =  ulong
    ## original: const as FL_VALUATOR_TYPE FL_VALUATOR_VERTICAL    = 0 #_  The valuator can work vertically
    const FL_VALUATOR_VERTICAL*    = 0 #_  The valuator can work vertically
    ## original: const as FL_VALUATOR_TYPE FL_VALUATOR_HORIZONTAL  = 1 #_  The valuator can work horizontally
    const FL_VALUATOR_HORIZONTAL*  = 1 #_  The valuator can work horizontally

    #_  Defines the ways an item can be (re) selected via item_reselect_mode().
    ## original: type FL_TREE_ITEM_RESELECT_MODE as ulong
    type FL_TREE_ITEM_RESELECT_MODE*  =  ulong
    #_  Item can only be selected once (default)
    ## original: const as FL_TREE_ITEM_RESELECT_MODE FL_TREE_SELECTABLE_ONCE   = 0
    const FL_TREE_SELECTABLE_ONCE*   = 0
    #_  Enables FL_TREE_REASON_RESELECTED events for callbacks
    ## original: const as FL_TREE_ITEM_RESELECT_MODE FL_TREE_SELECTABLE_ALWAYS = 1
    const FL_TREE_SELECTABLE_ALWAYS* = 1

    #_  NEW: Bit flags that control how item's labels and widget()s are drawn in the tree.
    ## original: type FL_TREE_ITEM_DRAW_MODE as ulong
    type FL_TREE_ITEM_DRAW_MODE*  =  ulong
    #_  If widget() defined, draw in place of label, and widget() tracks item height (default)
    ## original: const as FL_TREE_ITEM_DRAW_MODE FL_TREE_ITEM_DRAW_DEFAULT          = 0
    const FL_TREE_ITEM_DRAW_DEFAULT*          = 0
    #_  If widget() defined, include label to the left of the widget
    ## original: const as FL_TREE_ITEM_DRAW_MODE FL_TREE_ITEM_DRAW_LABEL_AND_WIDGET = 1
    const FL_TREE_ITEM_DRAW_LABEL_AND_WIDGET* = 1
    #_  If widget() defined, widget()'s height controls item's height
    ## original: const as FL_TREE_ITEM_DRAW_MODE FL_TREE_ITEM_HEIGHT_FROM_WIDGET    = 2
    const FL_TREE_ITEM_HEIGHT_FROM_WIDGET*    = 2

    ## original: type FL_WHEN as ulong #_  Fl_WidgetSetWhen():
    type FL_WHEN*  =  ulong #_  Fl_WidgetSetWhen():
    ## original: const as FL_WHEN FL_WHEN_NEVER                    = 0
    const FL_WHEN_NEVER*                    = 0
    ## original: const as FL_WHEN FL_WHEN_CHANGED                  = 1
    const FL_WHEN_CHANGED*                  = 1
    ## original: const as FL_WHEN FL_WHEN_NOT_CHANGED              = 2
    const FL_WHEN_NOT_CHANGED*              = 2
    ## original: const as FL_WHEN FL_WHEN_RELEASE                  = 4
    const FL_WHEN_RELEASE*                  = 4
    ## original: const as FL_WHEN FL_WHEN_RELEASE_ALWAYS           = FL_WHEN_RELEASE or FL_WHEN_NOT_CHANGED
    const FL_WHEN_RELEASE_ALWAYS*           = FL_WHEN_RELEASE or FL_WHEN_NOT_CHANGED
    ## original: const as FL_WHEN FL_WHEN_ENTER_KEY                = 8
    const FL_WHEN_ENTER_KEY*                = 8
    ## original: const as FL_WHEN FL_WHEN_ENTER_KEY_ALWAYS         = FL_WHEN_ENTER_KEY or FL_WHEN_NOT_CHANGED
    const FL_WHEN_ENTER_KEY_ALWAYS*         = FL_WHEN_ENTER_KEY or FL_WHEN_NOT_CHANGED
    ## original: const as FL_WHEN FL_WHEN_ENTER_KEY_CHANGED        = FL_WHEN_ENTER_KEY or FL_WHEN_NOT_CHANGED or FL_WHEN_CHANGED
    const FL_WHEN_ENTER_KEY_CHANGED*        = FL_WHEN_ENTER_KEY or FL_WHEN_NOT_CHANGED or FL_WHEN_CHANGED

    ## original: type FD_WHEN as ulong #_  values for "when" passed to Fl_Add_fd()
    type FD_WHEN*  =  ulong #_  values for "when" passed to Fl_Add_fd()
    ## original: const as FD_WHEN FL_READ                          = 1 #_  Call the callback when there is data to be read.
    const FL_READ*                          = 1 #_  Call the callback when there is data to be read.
    ## original: const as FD_WHEN FL_WRITE                         = 4 #_  Call the callback when data can be written without blocking.
    const FL_WRITE*                         = 4 #_  Call the callback when data can be written without blocking.
    ## original: const as FD_WHEN FL_EXCEPT                        = 8 #_  Call the callback if an exception occurs on the file.
    const FL_EXCEPT*                        = 8 #_  Call the callback if an exception occurs on the file.

    const Fl_IMAGE_WITH_ALPHA* = 0X40000000
    const Fl_RESERVED_TYPE* = 100

    ## original: type FL_TEXT_DISPLAY_WRAP_MODE as ulong
    type T_FL_TEXT_DISPLAY_WRAP_MODE*  =  ulong
    ## original: const as FL_TEXT_DISPLAY_WRAP_MODE WRAP_NONE        = 0 #_  don't wrap text at all
    const WRAP_NONE*        = 0 #_  don't wrap text at all
    ## original: const as FL_TEXT_DISPLAY_WRAP_MODE WRAP_AT_COLUMN   = 1 #_  wrap text at the given text column
    const WRAP_AT_COLUMN*   = 1 #_  wrap text at the given text column
    ## original: const as FL_TEXT_DISPLAY_WRAP_MODE WRAP_AT_PIXEL    = 2 #_  wrap text at a pixel position
    const WRAP_AT_PIXEL*    = 2 #_  wrap text at a pixel position
    ## original: const as FL_TEXT_DISPLAY_WRAP_MODE WRAP_AT_BOUNDS   = 3 #_  wrap text so that it fits into the widget width
    const WRAP_AT_BOUNDS*   = 3 #_  wrap text so that it fits into the widget width

    ## original: type FL_TEXT_DISPLAY_CURSOR_SHAPE as ulong
    type FL_TEXT_DISPLAY_CURSOR_SHAPE*  =  ulong
    ## original: const as FL_TEXT_DISPLAY_CURSOR_SHAPE NORMAL_CURSOR = 0 #_  I-beam
    const NORMAL_CURSOR* = 0 #_  I-beam
    ## original: const as FL_TEXT_DISPLAY_CURSOR_SHAPE CARET_CURSOR  = 1 #_  caret under the text
    const CARET_CURSOR*  = 1 #_  caret under the text
    ## original: const as FL_TEXT_DISPLAY_CURSOR_SHAPE DIM_CURSOR    = 2 #_  dim I-beam
    const DIM_CURSOR*    = 2 #_  dim I-beam
    ## original: const as FL_TEXT_DISPLAY_CURSOR_SHAPE BLOCK_CURSOR  = 3 #_  unfille box under the current character
    const BLOCK_CURSOR*  = 3 #_  unfille box under the current character
    ## original: const as FL_TEXT_DISPLAY_CURSOR_SHAPE HEAVY_CURSOR  = 4 #_  thick I-beam
    const HEAVY_CURSOR*  = 4 #_  thick I-beam
    ## original: const as FL_TEXT_DISPLAY_CURSOR_SHAPE SIMPLE_CURSOR = 5 #_  as cursor as Fl_Input cursor
    const SIMPLE_CURSOR* = 5 #_  as cursor as Fl_Input cursor

    #_  FLTK (simple) data types
    ## original: type FL_FONTSIZE  as long           #_  Size of a font in pixels. This is the approximate height of a font in pixels.
    type FL_FONTSIZE*   =  long           #_  Size of a font in pixels. This is the approximate height of a font in pixels.
    ## original: const as FL_FONTSIZE FL_NORMAL_SIZE = 14
    const FL_NORMAL_SIZE* = 14

    ## original: type FL_STRING    as cstring       #_  Flexible length utf8 Unicode text.
    type FL_STRING*     =  cstring       #_  Flexible length utf8 Unicode text.
    ## original: type FL_CSTRING   as cstring #_  Flexible length utf8 Unicode read-only string.
    type FL_CSTRING*    =  cstring #_  Flexible length utf8 Unicode read-only string.
    ## original: type Fl_Shortcut  as ulong          #_  24-bit Unicode character + 8-bit indicator for keyboard flags
    type Fl_Shortcut*   =  ulong          #_  24-bit Unicode character + 8-bit indicator for keyboard flags
    ## original: type Fl_Char      as ulong          #_  24-bit Unicode character - upper 8-bits are unuse
    type Fl_Char*       =  ulong          #_  24-bit Unicode character - upper 8-bits are unuse
    ## original: type Fl_Socket    as long
    type Fl_Socket*     =  long

    type Style_Table_Entry*  = ref object
      color*: Fl_COLOR
      font*: FL_FONT
      size*: FL_FONTSIZE
      attr*: ulong


    type Fl_Text_Selection* = ref object
      #~ private:
      dummy: pointer

    type Fl_Text_Buffer* = ref object
      #~ private:
      dummy: pointer

    type Fl_File_Chooser* = ref object
      #~ private:
      dummy: pointer

    ## original: type FL_NFC_OPTION as ulong #_  NFC = native file chooser
    type FL_NFC_OPTION*  =  ulong #_  NFC = native file chooser
    ## original: const as FL_NFC_OPTION NFC_NO_OPTIONS             = 0
    const NFC_NO_OPTIONS*             = 0
    ## original: const as FL_NFC_OPTION NFC_SAVEAS_CONFIRM         = 1
    const NFC_SAVEAS_CONFIRM*         = 1
    ## original: const as FL_NFC_OPTION NFC_NEW_FOLDER             = 2
    const NFC_NEW_FOLDER*             = 2
    ## original: const as FL_NFC_OPTION NFC_PREVIEW                = 4
    const NFC_PREVIEW*                = 4
    ## original: const as FL_NFC_OPTION NFC_USE_FILTER_EXT         = 8
    const NFC_USE_FILTER_EXT*         = 8

    ## original: type FL_NFC_TYPE as ulong
    type FL_NFC_TYPE*  =  ulong
    ## original: const as FL_NFC_TYPE NFC_BROWSE_FILE              = 0
    const NFC_BROWSE_FILE*              = 0
    ## original: const as FL_NFC_TYPE NFC_BROWSE_DIRECTORY         = 1
    const NFC_BROWSE_DIRECTORY*         = 1
    ## original: const as FL_NFC_TYPE NFC_BROWSE_MULTI_FILE        = 2
    const NFC_BROWSE_MULTI_FILE*        = 2
    ## original: const as FL_NFC_TYPE NFC_BROWSE_MULTI_DIRECTORY   = 3
    const NFC_BROWSE_MULTI_DIRECTORY*   = 3
    ## original: const as FL_NFC_TYPE NFC_BROWSE_SAVE_FILE         = 4
    const NFC_BROWSE_SAVE_FILE*         = 4
    ## original: const as FL_NFC_TYPE NFC_BROWSE_SAVE_DIRECTORY    = 5
    const NFC_BROWSE_SAVE_DIRECTORY*    = 5

    #~ type Fl_Native_File_Chooser
      #~ private:
      #~ as any ptr dummy
    #~ end type

    #~ #macro Fl_Extends1(_e_,_a)
    #~ type Fl_##_e_ extends Fl_##_a
    #~ ## original:   declare function _e_ as Fl_##_e_ ptr
    #~ proc _e_* ():  ptr Fl_##_e_ {.cdecl, importc: "_e_", dynlib: fltk, discardable.}
      #~ declare operator cast as Fl_##_a ptr
      #~ private:
      #~ as any ptr dummy
    #~ end type
    #~ function Fl_##_e_.##_e_ as Fl_##_e_ ptr : return     @this : end function
    #~ operator Fl_##_e_.cast  as Fl_##_a  ptr : operator = @this : end operator
    #~ #endmacro

    #~ #macro Fl_Extends2(_e_,_a,_b)
    #~ type Fl_##_e_ extends Fl_##_a
    #~ ## original:   declare function _e_ as Fl_##_e_ ptr
    #~ proc _e_* ():  ptr Fl_##_e_ {.cdecl, importc: "_e_", dynlib: fltk, discardable.}
      #~ declare operator cast as Fl_##_a ptr
      #~ declare operator cast as Fl_##_b ptr
      #~ private:
      #~ as any ptr dummy
    #~ end type
    #~ function Fl_##_e_.##_e_ as Fl_##_e_ ptr : return     @this : end function
    #~ operator Fl_##_e_.cast  as Fl_##_a  ptr : operator = @this : end operator
    #~ operator Fl_##_e_.cast  as Fl_##_b  ptr : operator = @this : end operator
    #~ #endmacro

    #~ #macro Fl_Extends3(_e_,_a,_b,_c)
    #~ type Fl_##_e_ extends Fl_##_a
    #~ ## original:   declare function _e_ as Fl_##_e_ ptr
    #~ proc _e_* ():  ptr Fl_##_e_ {.cdecl, importc: "_e_", dynlib: fltk, discardable.}
      #~ declare operator cast as Fl_##_a ptr
      #~ declare operator cast as Fl_##_b ptr
      #~ declare operator cast as Fl_##_c ptr
      #~ private:
      #~ as any ptr dummy
    #~ end type
    #~ function Fl_##_e_.##_e_ as Fl_##_e_ ptr : return     @this : end function
    #~ operator Fl_##_e_.cast  as Fl_##_a  ptr : operator = @this : end operator
    #~ operator Fl_##_e_.cast  as Fl_##_b  ptr : operator = @this : end operator
    #~ operator Fl_##_e_.cast  as Fl_##_c  ptr : operator = @this : end operator
    #~ #endmacro

    #~ #macro Fl_Extends4(_e_,_a,_b,_c,_d)
    #~ type Fl_##_e_ extends Fl_##_a
    #~ ## original:   declare function _e_ as Fl_##_e_ ptr
    #~ proc _e_* ():  ptr Fl_##_e_ {.cdecl, importc: "_e_", dynlib: fltk, discardable.}
      #~ declare operator cast as Fl_##_a ptr
      #~ declare operator cast as Fl_##_b ptr
      #~ declare operator cast as Fl_##_c ptr
      #~ declare operator cast as Fl_##_d ptr
      #~ private:
      #~ as any ptr dummy
    #~ end type
    #~ function Fl_##_e_.##_e_ as Fl_##_e_ ptr : return     @this : end function
    #~ operator Fl_##_e_.cast  as Fl_##_a  ptr : operator = @this : end operator
    #~ operator Fl_##_e_.cast  as Fl_##_b  ptr : operator = @this : end operator
    #~ operator Fl_##_e_.cast  as Fl_##_c  ptr : operator = @this : end operator
    #~ operator Fl_##_e_.cast  as Fl_##_d  ptr : operator = @this : end operator
    #~ #endmacro

    #~ #macro Fl_Extends5(_e_,_a,_b,_c,_d,_e)
    #~ type Fl_##_e_ extends Fl_##_a
    #~ ## original:   declare function _e_ as Fl_##_e_ ptr
    #~ proc _e_* ():  ptr Fl_##_e_ {.cdecl, importc: "_e_", dynlib: fltk, discardable.}
      #~ declare operator cast as Fl_##_a ptr
      #~ declare operator cast as Fl_##_b ptr
      #~ declare operator cast as Fl_##_c ptr
      #~ declare operator cast as Fl_##_d ptr
      #~ declare operator cast as Fl_##_e ptr
      #~ private:
      #~ as any ptr dummy
    #~ end type
    #~ function Fl_##_e_.##_e_ as Fl_##_e_ ptr : return     @this : end function
    #~ operator Fl_##_e_.cast  as Fl_##_a  ptr : operator = @this : end operator
    #~ operator Fl_##_e_.cast  as Fl_##_b  ptr : operator = @this : end operator
    #~ operator Fl_##_e_.cast  as Fl_##_c  ptr : operator = @this : end operator
    #~ operator Fl_##_e_.cast  as Fl_##_d  ptr : operator = @this : end operator
    #~ operator Fl_##_e_.cast  as Fl_##_e  ptr : operator = @this : end operator
    #~ #endmacro

    #~ #_  #######################################################
    #~ #_  # class Fl_Image is the base class of all FLTK images #
    #~ #_  #######################################################
    #~ type Fl_Image
    #~ ## original:   declare function AsAny as any ptr
    #~ proc AsAny* ():  ptr any {.cdecl, importc: "AsAny", dynlib: fltk, discardable.}
      #~ private:
      #~ as any ptr dummy
    #~ end type
    #~ function Fl_Image.AsAny as any ptr : return @this : end function

    #~ #_  ##########################################
    #~ #_  # class Fl_Shared_Image extends Fl_Image #
    #~ #_  ##########################################
    #~ Fl_Extends1(Shared_Image,Image)

    #~ #_  #########################################
    #~ #_  # class Fl_Tiled_Image extends Fl_Image #
    #~ #_  #########################################
    #~ Fl_Extends1(Tiled_Image,Image)

    #~ #_  ####################################
    #~ #_  # class Fl_Bitmap extends Fl_Image #
    #~ #_  ####################################
    #~ Fl_Extends1(Bitmap,Image)
      #~ #_  ########################################
      #~ #_  # class Fl_XBM_Image extends Fl_Bitmap #
      #~ #_  ########################################
      #~ Fl_Extends2(XBM_Image, bitmap,Image)

    #~ #_  ####################################
    #~ #_  # class Fl_Pixmap extends Fl_Image #
    #~ #_  ####################################
    #~ Fl_Extends1(Pixmap,Image)
      #~ #_  ########################################
      #~ #_  # class Fl_XPM_Image extends Fl_Pixmap #
      #~ #_  ########################################
      #~ Fl_Extends2(XPM_Image,Pixmap,Image)
      #~ #_  ########################################
      #~ #_  # class Fl_GIF_Image extends Fl_Pixmap #
      #~ #_  ########################################
      #~ Fl_Extends2(GIF_Image,Pixmap,Image)

    #~ #_  #######################################
    #~ #_  # class Fl_RGB_Image extends Fl_Image #
    #~ #_  #######################################
    #~ Fl_Extends1(RGB_Image,Image)
      #~ #_  ###########################################
      #~ #_  # class Fl_BMP_Image extends Fl_RGB_Image #
      #~ #_  ###########################################
      #~ Fl_Extends2(BMP_Image,RGB_Image,Image)
      #~ #_  ###########################################
      #~ #_  # class Fl_PNG_Image extends Fl_RGB_Image #
      #~ #_  ###########################################
      #~ Fl_Extends2(PNG_Image,RGB_Image,Image)
      #~ #_  ############################################
      #~ #_  # class Fl_JPEG_Image extends Fl_RGB_Image #
      #~ #_  ############################################
      #~ Fl_Extends2(JPEG_Image,RGB_Image,Image)
      #~ #_  ###########################################
      #~ #_  # class Fl_PNM_Image extends Fl_RGB_Image #
      #~ #_  ###########################################
      #~ Fl_Extends2(PNM_Image,RGB_Image,Image)


    #~ #_  ######################
    #~ #_  # class Fl_File_Icon #
    #~ #_  ######################
    #~ type Fl_File_Icon
      #~ private:
      #~ as any ptr dummy
    #~ end type

    #~ #_  FLTK widget base class
    #~ #_  ##########################################################
    #~ #_  # class Fl_Widget is the base class of all other objects #
    #~ #_  ##########################################################
    #~ type Fl_Widget
      #~ declare operator cast as any ptr
      #~ private:
      #~ as any ptr dummy
    #~ end type
    #~ operator Fl_Widget.cast as any ptr
      #~ operator = @this
    #~ end operator
    #~ type Fl_Widget* = ref object of RootObj
        #~ dummy: pointer



    #~ #_  FLTK extended widget classes
    #~ Fl_Extends1(WidgetEx,Widget)

    #~ Fl_Extends1(Box,Widget)
      #~ Fl_Extends2(BoxEx,Box,Widget)
      #~ Fl_Extends2(Canvas,Box,Widget)

    #~ Fl_Extends1(Button,Widget)
      #~ Fl_Extends2(ButtonEx,Button,Widget)
      #~ Fl_Extends2(Radio_Button,Button,Widget)
        #~ Fl_Extends3(Radio_ButtonEx,Radio_Button,Button,Widget)
      #~ Fl_Extends2(Repeat_Button,Button,Widget)
        #~ Fl_Extends3(Repeat_ButtonEx,Repeat_Button,Button,Widget)
      #~ Fl_Extends2(Return_Button,Button,Widget)
        #~ Fl_Extends3(Return_ButtonEx,Return_Button,Button,Widget)
      #~ Fl_Extends2(Toggle_Button,Button,Widget)
        #~ Fl_Extends3(Toggle_ButtonEx,Toggle_Button,Button,Widget)
      #~ Fl_Extends2(Light_Button,Button,Widget)
        #~ Fl_Extends3(Light_ButtonEx,Light_Button,Button,Widget)
        #~ Fl_Extends3(Check_Button,Light_Button,Button,Widget)
          #~ Fl_Extends4(Check_ButtonEx,Check_Button,Light_Button,Button,Widget)
        #~ Fl_Extends3(Radio_Light_Button,Light_Button,Button,Widget)
          #~ Fl_Extends4(Radio_Light_ButtonEx,Radio_Light_Button,Light_Button,Button,Widget)
        #~ Fl_Extends3(Round_Button,Light_Button,Button,Widget)
          #~ Fl_Extends4(Round_ButtonEx,Round_Button,Light_Button,Button,Widget)
        #~ Fl_Extends3(Radio_Round_Button,Light_Button,Button,Widget)
          #~ Fl_Extends4(Radio_Round_ButtonEx,Radio_Round_Button,Light_Button,Button,Widget)

    #~ Fl_Extends1(Chart,Widget)
       #~ Fl_Extends2(ChartEx,Chart,Widget)

    #~ Fl_Extends1(Clock_Output,Widget)
      #~ Fl_Extends2(Clock_OutputEx,Clock_Output,Widget)
      #~ Fl_Extends2(Clock,Clock_Output,Widget)
        #~ Fl_Extends3(ClockEx,Clock,Clock_Output,Widget)
        #~ Fl_Extends3(Round_Clock,Clock,Clock_Output,Widget)
          #~ Fl_Extends4(Round_ClockEx,Round_Clock,Clock,Clock_Output,Widget)

    #~ Fl_Extends1(Label,Widget)

    #~ Fl_Extends1(Menu_,Widget)
      #~ Fl_Extends2(Menu_Bar,Menu_,Widget)
        #~ Fl_Extends3(Menu_BarEx,Menu_Bar,Menu_,Widget)
      #~ Fl_Extends2(Menu_Button,Menu_,Widget)
        #~ Fl_Extends3(Menu_ButtonEx,Menu_Button,Menu_,Widget)
      #~ Fl_Extends2(Choice,Menu_,Widget)
        #~ Fl_Extends3(ChoiceEx,Choice,Menu_,Widget)

    #~ Fl_Extends1(Input_,Widget)
      #~ Fl_Extends2(Input,Input_,Widget)
        #~ Fl_Extends3(InputEx,Input,Input_,Widget)
        #~ Fl_Extends3(File_Input,Input,Input_,Widget)
          #~ Fl_Extends4(File_InputEx,File_Input,Input,Input_,Widget)
        #~ Fl_Extends3(Float_Input,Input,Input_,Widget)
          #~ Fl_Extends4(Float_InputEx,Float_Input,Input,Input_,Widget)
        #~ Fl_Extends3(Int_Input,Input,Input_,Widget)
          #~ Fl_Extends4(Int_InputEx,Int_Input,Input,Input_,Widget)
        #~ Fl_Extends3(Multiline_Input,Input,Input_,Widget)
          #~ Fl_Extends4(Multiline_InputEx,Multiline_Input,Input,Input_,Widget)
        #~ Fl_Extends3(Secret_Input,Input,Input_,Widget)
          #~ Fl_Extends4(Secret_InputEx,Secret_Input,Input,Input_,Widget)
        #~ Fl_Extends3(Output,Input,Input_,Widget)
          #~ Fl_Extends4(OutputEx,Output,Input,Input_,Widget)
          #~ Fl_Extends4(Multiline_Output,Output,Input,Input_,Widget)
            #~ Fl_Extends5(Multiline_OutputEx,Multiline_Output,Output,Input,Input_,Widget)

    #~ Fl_Extends1(Progress,Widget)
      #~ Fl_Extends2(ProgressEx,Progress,Widget)

    #~ Fl_Extends1(Valuator,Widget)
      #~ Fl_Extends2(Adjuster,Valuator,Widget)
        #~ Fl_Extends3(AdjusterEx,Adjuster,Valuator,Widget)
      #~ Fl_Extends2(Counter,Valuator,Widget)
        #~ Fl_Extends3(CounterEx,Counter,Valuator,Widget)
        #~ Fl_Extends3(Simple_Counter,Counter,Valuator,Widget)
          #~ Fl_Extends4(Simple_CounterEx,Simple_Counter,Counter,Valuator,Widget)
      #~ Fl_Extends2(Dial,Valuator,Widget)
        #~ Fl_Extends3(DialEx,Dial,Valuator,Widget)
        #~ Fl_Extends3(Fill_Dial,Dial,Valuator,Widget)
          #~ Fl_Extends4(Fill_DialEx,Fill_Dial,Dial,Valuator,Widget)
        #~ Fl_Extends3(Line_Dial,Dial,Valuator,Widget)
          #~ Fl_Extends4(Line_DialEx,Line_Dial,Dial,Valuator,Widget)
      #~ Fl_Extends2(Roller,Valuator,Widget)
        #~ Fl_Extends3(RollerEx,Roller,Valuator,Widget)
      #~ Fl_Extends2(Slider,Valuator,Widget)
        #~ Fl_Extends3(SliderEx,Slider,Valuator,Widget)
        #~ Fl_Extends3(Scrollbar,Slider,Valuator,Widget)
          #~ Fl_Extends4(ScrollbarEx,Scrollbar,Slider,Valuator,Widget)
        #~ Fl_Extends3(Hor_Slider,Slider,Valuator,Widget)
          #~ Fl_Extends4(Hor_SliderEx,Hor_Slider,Slider,Valuator,Widget)
        #~ Fl_Extends3(Fill_Slider,Slider,Valuator,Widget)
          #~ Fl_Extends4(Fill_SliderEx,Fill_Slider,Slider,Valuator,Widget)
        #~ Fl_Extends3(Hor_Fill_Slider,Slider,Valuator,Widget)
          #~ Fl_Extends4(Hor_Fill_SliderEx,Hor_Fill_Slider,Slider,Valuator,Widget)
        #~ Fl_Extends3(Nice_Slider,Slider,Valuator,Widget)
          #~ Fl_Extends4(Nice_SliderEx,Nice_Slider,Slider,Valuator,Widget)
        #~ Fl_Extends3(Hor_Nice_Slider,Slider,Valuator,Widget)
          #~ Fl_Extends4(Hor_Nice_SliderEx,Hor_Nice_Slider,Slider,Valuator,Widget)
        #~ Fl_Extends3(Value_Slider,Slider,Valuator,Widget)
          #~ Fl_Extends4(Value_SliderEx,Value_Slider,Slider,Valuator,Widget)
          #~ Fl_Extends4(Hor_Value_Slider,Value_Slider,Slider,Valuator,Widget)
            #~ Fl_Extends5(Hor_Value_SliderEx,Hor_Value_Slider,Value_Slider,Slider,Valuator,Widget)

      #~ Fl_Extends2(Value_Input,Valuator,Widget)
        #~ Fl_Extends3(Value_InputEx,Value_Input,Valuator,Widget)
      #~ Fl_Extends2(Value_Output,Valuator,Widget)
        #~ Fl_Extends3(Value_OutputEx,Value_Output,Valuator,Widget)

    #~ Fl_Extends1(Group,Widget)
      #~ Fl_Extends2(GroupEx,Group,Widget)
      #~ Fl_Extends2(Pack,Group,Widget)
        #~ Fl_Extends3(PackEx,Pack,Group,Widget)
      #~ Fl_Extends2(Tile,Group,Widget)
        #~ Fl_Extends3(TileEx,Tile,Group,Widget)
      #~ Fl_Extends2(Scroll,Group,Widget)
        #~ Fl_Extends3(ScrollEx,Scroll,Group,Widget)

      #~ Fl_Extends2(Browser_,Group,Widget)
        #~ Fl_Extends3(Check_Browser, browser_,Group,Widget)
          #~ Fl_Extends4(Check_BrowserEx,Check_Browser, browser_,Group,Widget)

        #~ Fl_Extends3(Browser, browser_,Group,Widget)
          #~ Fl_Extends4(BrowserEx, browser, browser_,Group,Widget)

          #~ Fl_Extends4(File_Browser, browser, browser_,Group,Widget)
            #~ Fl_Extends5(File_BrowserEx,File_Browser, browser, browser_,Group,Widget)
          #~ Fl_Extends4(Hold_Browser, browser, browser_,Group,Widget)
            #~ Fl_Extends5(Hold_BrowserEx,Hold_Browser, browser, browser_,Group,Widget)
          #~ Fl_Extends4(Multi_Browser, browser, browser_,Group,Widget)
            #~ Fl_Extends5(Multi_BrowserEx,Multi_Browser, browser, browser_,Group,Widget)
          #~ Fl_Extends4(Select_Browser, browser, browser_,Group,Widget)
            #~ Fl_Extends5(Select_BrowserEx,Select_Browser, browser, browser_,Group,Widget)

      #~ Fl_Extends2(Color_Chooser,Group,Widget)
        #~ Fl_Extends3(Color_ChooserEx,Color_Chooser,Group,Widget)

      #~ Fl_Extends2(Help_View,Group,Widget)

      #~ Fl_Extends2(Input_Choice,Group,Widget)
        #~ Fl_Extends3(Input_ChoiceEx,Input_Choice,Group,Widget)

      #~ Fl_Extends2(Spinner,Group,Widget)
        #~ Fl_Extends3(SpinnerEx,Spinner,Group,Widget)

      #~ Fl_Extends2(Table,Group,Widget)
        #~ Fl_Extends3(TableEx,Table,Group,Widget)
      #~ Fl_Extends3(Table_Row,Table,Group,Widget)
        #~ Fl_Extends4(Table_RowEx,Table_Row,Table,Group,Widget)

      #~ Fl_Extends2(Tabs,Group,Widget)
        #~ Fl_Extends3(TabsEx,Tabs,Group,Widget)

      #~ Fl_Extends2(Text_Display,Group,Widget)
        #~ Fl_Extends3(Text_DisplayEx,Text_Display,Group,Widget)
        #~ Fl_Extends3(Text_Editor,Text_Display,Group,Widget)
          #~ Fl_Extends4(Text_EditorEx,Text_Editor,Text_Display,Group,Widget)

      #~ Fl_Extends2(Tree,Group,Widget)
        #~ Fl_Extends3(TreeEx,Tree,Group,Widget)

      #~ Fl_Extends2(Wizard,Group,Widget)

      #~ Fl_Extends2(Window,Group,Widget)
        #~ Fl_Extends3(WindowEx,Window,Group,Widget)
        #~ Fl_Extends3(Single_Window,Window,Group,Widget)
          #~ Fl_Extends4(Single_WindowEx,Single_Window,Window,Group,Widget)
        #~ Fl_Extends4(Menu_Window,Single_Window,Window,Group,Widget)
          #~ Fl_Extends5(Menu_WindowEx,Menu_Window,Single_Window,Window,Group,Widget)
        #~ Fl_Extends3(Double_Window,Window,Group,Widget)
          #~ Fl_Extends4(Double_WindowEx,Double_Window,Window,Group,Widget)
          #~ Fl_Extends4(Overlay_Window,Double_Window,Window,Group,Widget)
            #~ Fl_Extends5(Overlay_WindowEx,Overlay_Window,Double_Window,Window,Group,Widget)




    #~ type Fl_Device
    #~ ## original:   declare function AsAny as any ptr
    #~ proc AsAny* ():  ptr any {.cdecl, importc: "AsAny", dynlib: fltk, discardable.}
      #~ private:
      #~ as any ptr dummy
    #~ end type
    #~ function Fl_Device.AsAny as any ptr : return @this : end function

    #~ Fl_Extends1(Graphics_Driver,Device)
    #~ Fl_Extends1(Surface_Device,Device)
      #~ Fl_Extends2(Display_Device,Surface_Device,Device)
      #~ Fl_Extends2(Image_Surface,Surface_Device,Device)
      #~ Fl_Extends2(Copy_Surface,Surface_Device,Device)
      #~ Fl_Extends2(Paged_Device,Surface_Device,Device)
        #~ Fl_Extends3(Printer,Paged_Device,Surface_Device,Device)


    ## original: type Fl_Tree_      as Fl_Tree
    type Fl_Tree_TT       =  Fl_Tree
    ## original: type Fl_Tree_Item_ as Fl_Tree_Item
    type Fl_Tree_Item_TT  =  Fl_Tree_Item

    type Fl_Tree_Item_Array  = ref object
      #~ private:
      dummy: integer

    ## original: type Fl_Tree_Item_Flags as long
    type Fl_Tree_Item_Flags  =  long
    ## original: const as Fl_Tree_Item_Flags TREE_ITEM_OPEN     = 1 #_  item is open
    const TREE_ITEM_OPEN     = 1 #_  item is open
    ## original: const as Fl_Tree_Item_Flags TREE_ITEM_VISIBLE  = 2 #_  item is visible
    const TREE_ITEM_VISIBLE  = 2 #_  item is visible
    ## original: const as Fl_Tree_Item_Flags TREE_ITEM_ACTIVE   = 4 #_  item is active
    const TREE_ITEM_ACTIVE   = 4 #_  item is active
    ## original: const as Fl_Tree_Item_Flags TREE_ITEM_SELECTED = 8 #_  item is selected
    const TREE_ITEM_SELECTED = 8 #_  item is selected

    #~ type Fl_Tree_Item
      #~ private:
      #~ as integer dummy
    #~ end type

    #~ type Fl_Widget_Tracker
      #~ private:
      #~ as any ptr dummy
    #~ end type

    #_  NEW:
    ## original: type Fl_Tree_Item_Draw_Callback as sub cdecl (byval item as Fl_Tree_Item ptr, byval userdata as any ptr)
    #~ type Fl_Tree_Item_Draw_Callback* = proc(item: ptr Fl_Tree_Item; userdata: ptr any) {.cdecl, importc: "Fl_Tree_Item_Draw_Callback", dynlib: fltk, discardable.}

    #~ type Fl_Preferences
      #~ private:
      #~ as integer dummy
    #~ end type

    #~ #ifdef __FB_WIN32__
    #~ type dirent
      #~ as long   d_ino
      #~ as ushort d_reclen
      #~ as ushort d_namlen
      #~ as zstring * 260 d_name
    #~ end type
    #~ #else
    #~ type dirent
      #~ as longint d_ino
      #~ as longint d_off
      #~ as ushort  d_reclen
      #~ as ubyte   d_type
      #~ as zstring * 256 d_name
    #~ end type
    #~ #endif

    #_  DeclareEx() extend any Fl_Widget class with user defined callbacks !!! cdecl !!!
    #_  sub      DestructorCB cdecl (self as any ptr)
    #_  function DrawCB       cdecl (self as any ptr) as long
    #_  function HandleCB     cdecl (self as any ptr, event as FL_EVENT) as long
    #_  function ResizeCB     cdecl (self as any ptr, x as long, y as long, w as long, h as long) as long
    #_  and Event delegation to it's base class Fl_XXXExHandleBase(me,event)
    #~ #macro DeclareEx(_name_)
    #~ ## original: declare function _name_##ExNew(byval x as long, byval y as long, byval w as long, byval h as long, byval title as cstring=0) as _name_##Ex ptr
    #~ proc _name_##ExNew* ( x:  long;  y:  long;  w:  long;  h:  long;  title:  cstring=0):  ptr _name_##Ex {.cdecl, importc: "_name_##ExNew", dynlib: fltk, discardable.}
    #~ ## original: declare sub      _name_##ExDelete         (byref ex as _name_##Ex ptr)
    #~ proc _name_##ExDelete*( ex:  ptr _name_##Ex) {.cdecl, importc: "_name_##ExDelete", dynlib: fltk, discardable.}
    #~ ## original: declare function _name_##ExHandleBase     (byval ex as _name_##Ex ptr, byval event as FL_EVENT) as long
    #~ proc _name_##ExHandleBase* ( ex:  ptr _name_##Ex;  event:  FL_EVENT):  long {.cdecl, importc: "_name_##ExHandleBase", dynlib: fltk, discardable.}
    #~ ## original: declare sub      _name_##ExSetDestructorCB(byval ex as _name_##Ex ptr, byval cb as Fl_DestructorEx)
    #~ proc _name_##ExSetDestructorCB*( ex:  ptr _name_##Ex;  cb:  Fl_DestructorEx) {.cdecl, importc: "_name_##ExSetDestructorCB", dynlib: fltk, discardable.}
    #~ ## original: declare sub      _name_##ExSetDrawCB      (byval ex as _name_##Ex ptr, byval cb as Fl_DrawEx)
    #~ proc _name_##ExSetDrawCB*( ex:  ptr _name_##Ex;  cb:  Fl_DrawEx) {.cdecl, importc: "_name_##ExSetDrawCB", dynlib: fltk, discardable.}
    #~ ## original: declare sub      _name_##ExSetHandleCB    (byval ex as _name_##Ex ptr, byval cb as Fl_HandleEx)
    #~ proc _name_##ExSetHandleCB*( ex:  ptr _name_##Ex;  cb:  Fl_HandleEx) {.cdecl, importc: "_name_##ExSetHandleCB", dynlib: fltk, discardable.}
    #~ ## original: declare sub      _name_##ExSetResizeCB    (byval ex as _name_##Ex ptr, byval cb as Fl_ResizeEx)
    #~ proc _name_##ExSetResizeCB*( ex:  ptr _name_##Ex;  cb:  Fl_ResizeEx) {.cdecl, importc: "_name_##ExSetResizeCB", dynlib: fltk, discardable.}
    #~ #endmacro

    template DeclareEx*(name: untyped) =
        discard
        #~ type `name ExNew`*{.inject.} = proc(x: long, y: long; w: long; h: long, title: cstring=nil): ptr `name Ex`{.cdecl, importc: "name ExNew", dynlib: fltk, discardable.}

        #~ type `name ExDelete`*{.inject.}  = proc(ex: ptr `name Ex`) {.cdecl, importc: "name ExDelete", dynlib: fltk, discardable.}

        #~ type `name ExHandleBase`*{.inject.} = proc (ex: ptr `name Ex`, event: FL_EVENT): long {.cdecl, importc: "name ExHandleBase", dynlib: fltk, discardable.}

        #~ proc `name ExHandleBase`*{.inject.} ( tex:  ptr `name Ex`;  event:  FL_EVENT):  long {.cdecl, importc: "name ExHandleBase", dynlib: fltk, discardable.}
        #~ type `name ExSetDestructorCB`*{.inject.} = proc(ex: ptr `name Ex`,  cb: Fl_DestructorEx)
        #~ type `name ExSetDrawCB` *{.inject.} = proc(ex: ptr `name Ex`, cb: Fl_DrawEx)
        #~ type `name ExSetHandleCB`*{.inject.} = proc(ex: ptr `name Ex`, cb: Fl_HandleEx)
        #~ type `name ExSetResizeCB`*{.inject.} = proc(ex: ptr `name Ex`, cb: Fl_ResizeEx)

    #~ extern "c"

    #_  FLTK callback's !!! all cdecl !!!
    ## original: type Fl_Abort_Handler    as sub      (byval fmt as cstring,...)
    #~ type Fl_Abort_Handler* = proc( fmt:  cstring, ...) {.cdecl.}

    ## original: type Fl_Args_Handler     as function (byval argc as long, byval argv as cstring ptr, byref i as long) as long
    type Fl_Args_Handler* = proc( argc:  long;  argv:  ptr cstring;  i:  var long): long {.cdecl.}

    ## original: type Fl_Atclose_Handler  as sub      (byval win as Fl_Window ptr, byval userdata as any ptr)
    type Fl_Atclose_Handler* = proc( win:  ptr Fl_Window;  userdata:  pointer) {.cdecl.}

    ## original: type Fl_Awake_Handler    as sub      (byval userdata as any ptr)
    type Fl_Awake_Handler* = proc( userdata:  pointer) {.cdecl.}

    ## original: type Fl_Box_Draw_F       as sub      (byval x as long, byval y as long, byval w as long, byval h as long, byval c as Fl_COLOR)
    type Fl_Box_Draw_F* = proc( x:  long;  y:  long;  w:  long;  h:  long;  c:  Fl_COLOR) {.cdecl.}

    ## original: type Fl_Event_Dispatch   as function (byval event as FL_EVENT, byval win as Fl_Window ptr) as long
    type Fl_Event_Dispatch* = proc( event:  FL_EVENT;  win:  ptr Fl_Window): long {.cdecl.}

    ## original: type Fl_Event_Handler    as function (byval event as FL_EVENT) as long
    type Fl_Event_Handler* = proc( event:  FL_EVENT): long {.cdecl.}

    ## original: type Fl_FD_Handler       as sub      (byval fd as Fl_SOCKET, byval userdata as any ptr)
    type Fl_FD_Handler* = proc( fd:  Fl_SOCKET;  userdata:  pointer) {.cdecl.}

    ## original: type Fl_Idle_Handler     as sub      (byval pUserData as any ptr)
    type Fl_Idle_Handler* = proc( pUserData:  pointer) {.cdecl.}

    ## original: type Fl_Label_Draw_F     as sub      (byval label as const Fl_Label ptr, byval x as long, byval y as long, byval w as long, byval h as long, byval align as FL_ALIGN)
    type Fl_Label_Draw_F* = proc( label:  ptr Fl_Label;  x:  long;  y:  long;  w:  long;  h:  long;  align:  FL_ALIGN) {.cdecl.}

    ## original: type Fl_Label_Measure_F  as sub      (byval label as const Fl_Label ptr, byref w as long, byref h as long)
    type Fl_Label_Measure_F* = proc( label:  ptr Fl_Label;  w:  var long;  h:  var long) {.cdecl.}

    ## original: type Fl_Old_Idle_Handler as sub
    type Fl_Old_Idle_Handler* = proc() {.cdecl.}

    ## original: type Fl_Timeout_Handler  as sub      (byval userdata as any ptr)
    type Fl_Timeout_Handler* = proc( userdata:  pointer) {.cdecl.}

    ## original: type Fl_File_Sort_F      as function (byval as dirent ptr ptr, byval as dirent ptr ptr) as long
    #~ type Fl_File_Sort_F* = proc(a:  ptr ptr dirent; b:  ptr ptr dirent): long {.cdecl, importc: "Fl_File_Sort_F", dynlib: fltk, discardable.}
    #_  source=0 selection buffer changed  source=1 clipboard changed
    ## original: type Fl_Clipboard_Notify_Handler as sub(byval source as long, byval userdata as any ptr)
    type Fl_Clipboard_Notify_Handler* = proc( source:  long;  userdata:  pointer) {.cdecl.}
    #_  callback's for all extended FLTK classes
    ## original: type Fl_DestructorEx     as sub      (byval self as any ptr)
    type Fl_DestructorEx* = proc( self:  pointer) {.cdecl.}

    ## original: type Fl_DrawEx           as function (byval self as any ptr) as long
    type Fl_DrawEx* = proc( self:  pointer): long {.cdecl.}

    ## original: type Fl_HandleEx         as function (byval self as any ptr, byval event as FL_EVENT) as long
    type Fl_HandleEx* = proc( self:  pointer;  event:  FL_EVENT): long {.cdecl.}

    ## original: type Fl_ResizeEx         as function (byval self as any ptr, byval x as long, byval y as long, byval w as long, byval h as long) as long
    type Fl_ResizeEx* = proc( self:  pointer;  x:  long;  y:  long;  w:  long;  h:  long): long {.cdecl.}
    #_  callback for the Fl_Overlay_WindowEx, Fl_GL_WindowEx and Fl_GlutWindowEx widget's
    ## original: type Fl_Draw_OverlayEx   as sub      (byval self as any ptr)
    type Fl_Draw_OverlayEx* = proc( self:  pointer) {.cdecl.}
    #_  callback for the Fl_TableEx Fl_Table_RowEx widget only
    ## original: type Fl_DrawCellEx       as function (byval self as any ptr, byval context as FL_TABLECONTEXT, byval row as long, byval col as long, byval x as long, byval y as long, byval w as long, byval h as long) as long
    type Fl_DrawCellEx* = proc( self:  pointer;  context:  FL_TABLECONTEXT;  row:  long;  col:  long;  x:  long;  y:  long;  w:  long;  h:  long): long {.cdecl.}
    #_  callback for the Fl_Canvas only
    ## original: type Fl_CanvasDraw       as sub      (byval self as any ptr, byref dtsX as long, byref dstY as long, byref cpyW as long, byref cpyH as long, byref srcX as long, byref srcY as long)
    type Fl_CanvasDraw* = proc( self:  pointer;  dtsX:  var long;  dstY:  var long;  cpyW:  var long;  cpyH:  var long;  srcX:  var long;  srcY:  var long) {.cdecl.}
    #_  callback's for all FLTK widgets
    ## original: type Fl_Callback         as sub      (byval widget as Fl_Widget ptr, byval pData as any ptr)
    type Fl_Callback* = proc( widget:  ptr Fl_Widget;  pData:  pointer) {.cdecl.}
    #~ type Fl_Callback* = ulong

    ## original: type Fl_Callback0        as sub      (byval widget as Fl_Widget ptr)
    type Fl_Callback0* = proc( widget:  ptr Fl_Widget) {.cdecl.}

    ## original: type Fl_Callback1        as sub      (byval widget as Fl_Widget ptr, byval lData as long)
    type Fl_Callback1* = proc( widget:  ptr Fl_Widget;  lData:  long) {.cdecl.}

    ## original: type Fl_Callback_p as Fl_Callback ptr
    type Fl_Callback_p  =  ptr Fl_Callback

    #_  callback only for the Fl_Help widget
    ## original: type Fl_Help_F           as function (byval widget as Fl_Widget ptr, byval uri as cstring) as cstring
    type Fl_Help_F* = proc( widget:  ptr Fl_Widget;  uri:  cstring): cstring {.cdecl.}

    #_  callback's for Fl_Image classes
    ## original: type Fl_Shared_Handler   as function (byval ImageName as cstring, byval Header as ubyte ptr, byval HeaderLen as long) as Fl_Image ptr
    type Fl_Shared_Handler* = proc( ImageName:  cstring;  Header:  ptr ubyte;  HeaderLen:  long): ptr Fl_Image {.cdecl.}
    ## original: type Fl_Draw_Image_CB    as sub      (byval pUserData as any ptr, byval pixelstart as long, byval scanline as long, byval nPixels as long, byval pScanline as ubyte ptr)
    type Fl_Draw_Image_CB* = proc( pUserData:  pointer;  pixelstart:  long;  scanline:  long;  nPixels:  long;  pScanline:  ptr ubyte) {.cdecl.}

    #_  callback for the Fl_File_Chooser
    ## original: type Fl_File_Chose_CB    as sub      (byval self as Fl_File_Chooser ptr, byval pUserData as any ptr)
    type Fl_File_Chose_CB* = proc( self:  ptr Fl_File_Chooser;  pUserData:  pointer) {.cdecl.}

    #_  callbacks for FL_TEXT_XXX widgets
    ## original: type Fl_Text_Modify_CB    as sub     (byval pos as long, byval nInserted as long, byval nDeleted as long, byval nRestyled as long, byval deletedText as cstring, byval pUserdata as any ptr)
    type Fl_Text_Modify_CB* = proc( pos:  long;  nInserted:  long;  nDeleted:  long;  nRestyled:  long;  deletedText:  cstring;  pUserdata:  pointer) {.cdecl.}
    ## original: type Fl_Text_Predelete_CB as sub     (byval pos as long, byval nDeleted  as long, byval pUserData as any ptr)
    type Fl_Text_Predelete_CB* = proc( pos:  long;  nDeleted:  long;  pUserData:  pointer) {.cdecl.}
    ## original: type Unfinished_Style_CB  as sub     (byval i as long, byval p as any ptr)
    type Unfinished_Style_CB* = proc( i:  long;  p:  pointer) {.cdecl.}
    ## original: type Key_Func             as function(byval key as long, byval editor as Fl_Text_Editor ptr) as long
    type Key_Func* = proc( key:  long;  editor:  ptr Fl_Text_Editor): long {.cdecl.}

    type Key_Binding*  = ref object
      Key                   :long
      State                 :long
      KeyFunction           :Key_Func                 #_  (!!! renamed was function)
      pNext                :ptr Key_Binding          #_  (!!! renamed was next)


    type Fl_Menu_Item*  = ref object
      text                : cstring                            #_  menu item text, returned by label()
      shortcut_TT           : long                           #_  menu item shortcut
      cb_TT                 : Fl_Callback                    #_  menu item callback
      user_data_TT          : pointer                         #_  menu item user_data for the menu's callback
      flags               : long                           #_  menu item flags like FL_MENU_TOGGLE, FL_MENU_RADIO
      labeltype_TT          : ubyte                          #_  how the menu item text looks like (see FL_LABEL_TYPE)
      labelfont_TT          : FL_FONT                        #_  which font for this menu item text
      labelsize_TT          : FL_FONTSIZE                    #_  size of menu item text
      labelcolor_TT         : Fl_COLOR                       #_  menu item text color


    const FL_MAX_PATH* = 2048

    #_  ########################################
    #_  # File names and URI utility functions #
    #_  ########################################
    #_  Opens the specified Uniform Resource Identifier (URI).
    ## original: declare function flOpenUri         (byval uri as cstring, byval msg as cstring=0, byval msglen as long=0) as long
    proc flOpenUri* ( uri:  cstring;  msg:  cstring=nil;  msglen:  long=0):  long {.cdecl, importc: "flOpenUri", dynlib: fltk, discardable.}
    #_  Decodes a URL-encoded string.
    ## original: declare sub      flDecodeUri       (byval uri as cstring)
    proc flDecodeUri*( uri:  cstring) {.cdecl, importc: "flDecodeUri", dynlib: fltk, discardable.}
    #_  Makes a filename absolute from a relative filename.
    ## original: declare function flFilenameAsolute (byval result as cstring, byval resultlen as long, byval path as cstring) as long
    proc flFilenameAsolute* ( result:  cstring;  resultlen:  long;  path:  cstring):  long {.cdecl, importc: "flFilenameAsolute", dynlib: fltk, discardable.}
    #_  Expands a filename containing shell variables and tilde (~).
    ## original: declare function flFilenameExpand  (byval result as cstring, byval resultlen as long, byval path as cstring) as long
    proc flFilenameExpand* ( result:  cstring;  resultlen:  long;  path:  cstring):  long {.cdecl, importc: "flFilenameExpand", dynlib: fltk, discardable.}
    #_  Gets the extensions of a filename.
    ## original: declare function flFilenameExt     (byval path as cstring) as cstring
    proc flFilenameExt* ( path:  cstring):  cstring {.cdecl, importc: "flFilenameExt", dynlib: fltk, discardable.}
    #_  Determines if a file exists and is a directory from its filename.
    ## original: declare function flFilenameIsDir   (byval filename as cstring) as long
    proc flFilenameIsDir* ( filename:  cstring):  long {.cdecl, importc: "flFilenameIsDir", dynlib: fltk, discardable.}

    #_  Checks if a string s matches a pattern.
    #_  The following syntax is used for the pattern:
    #_  * matches any sequence of 0 or more characters.
    #_  ? matches any single character.
    #_  [set] matches any character in the set. Set can contain any single characters, or a-z to represent a range.
    #_  To match ']' or '-' they must be the first characters.
    #_  To match '^' or '!' they must not be the first characters.
    #_  [^set] or [!set] matches any character not in the set.
    #_  {X|Y|Z} or {X,Y,Z} matches any one of the subexpressions literally.
    #_  \x quotes the character x so it has no special meaning.
    #_  x all other characters must be matched exactly.
    ## original: declare function flFilenameMatch(byval filename as cstring, byval pattern as cstring) as long
    proc flFilenameMatch* ( filename:  cstring;  pattern:  cstring):  long {.cdecl, importc: "flFilenameMatch", dynlib: fltk, discardable.}
    #_  Gets the file name from a path.
    ## original: declare function flFilenameName(byval path as cstring) as cstring
    proc flFilenameName* ( path:  cstring):  cstring {.cdecl, importc: "flFilenameName", dynlib: fltk, discardable.}
    #_  Makes a filename relative to the current working directory.
    ## original: declare function flFilenameRelative(byval result as cstring, byval resultlen as long, byval path as cstring) as long
    proc flFilenameRelative* ( result:  cstring;  resultlen:  long;  path:  cstring):  long {.cdecl, importc: "flFilenameRelative", dynlib: fltk, discardable.}
    #_  Replaces the extension in buf of max.
    ## original: declare function flFilenameSetExt(byval result as cstring, byval resultlen as long, byval extension as cstring) as cstring
    proc flFilenameSetExt* ( result:  cstring;  resultlen:  long;  extension:  cstring):  cstring {.cdecl, importc: "flFilenameSetExt", dynlib: fltk, discardable.}

    ## original: declare function flAlphaSort       as Fl_File_Sort_F
    #~ proc flAlphaSort* ():  Fl_File_Sort_F {.cdecl, importc: "flAlphaSort", dynlib: fltk, discardable.}
    ## original: declare function flCaseAlphaSort   as Fl_File_Sort_F
    #~ proc flCaseAlphaSort* ():  Fl_File_Sort_F {.cdecl, importc: "flCaseAlphaSort", dynlib: fltk, discardable.}
    ## original: declare function flCaseNumericSort as Fl_File_Sort_F
    #~ proc flCaseNumericSort* ():  Fl_File_Sort_F {.cdecl, importc: "flCaseNumericSort", dynlib: fltk, discardable.}
    ## original: declare function flNumericSort     as Fl_File_Sort_F
    #~ proc flNumericSort* ():  Fl_File_Sort_F {.cdecl, importc: "flNumericSort", dynlib: fltk, discardable.}

    ## original: declare function flFilenameList    (byval folder as cstring, byval list as dirent ptr ptr ptr, byval sortcb as Fl_File_Sort_F) as long
    #~ proc flFilenameList* ( folder:  cstring;  list:  ptr ptr dirent;  sortcb:  Fl_File_Sort_F):  long {.cdecl, importc: "flFilenameList", dynlib: fltk, discardable.}

    ## original: declare sub      flFilenameFreeList(byval list as dirent ptr ptr ptr, byval n as long)
    #~ proc flFilenameFreeList*( list:  ptr ptr dirent;  n:  long) {.cdecl, importc: "flFilenameFreeList", dynlib: fltk, discardable.}

    #_ ########
    #_ # UTF8 #
    #_ ########
    #_  Return the number of bytes needed to encode the given UCS4 character in UTF8.
    ## original: declare function Fl_utf8bytes(byval ucs as ulong) as long
    proc Fl_utf8bytes* ( ucs:  ulong):  long {.cdecl, importc: "Fl_utf8bytes", dynlib: fltk, discardable.}
    #_  OD: returns the byte length of the first UTF-8 char sequence (returns -1 if not valid)
    ## original: declare function Fl_utf8len(byval c as byte) as long
    proc Fl_utf8len* ( c:  byte):  long {.cdecl, importc: "Fl_utf8len", dynlib: fltk, discardable.}
    #_  OD: returns the byte length of the first UTF-8 char sequence (returns +1 if not valid)
    ## original: declare function Fl_utf8len1(byval c as byte) as long
    proc Fl_utf8len1* ( c:  byte):  long {.cdecl, importc: "Fl_utf8len1", dynlib: fltk, discardable.}
    #_  OD: returns the number of Unicode chars in the UTF-8 string
    ## original: declare function Fl_utf_nb_char(byval buf as const ubyte ptr, byval len as long) as long
    proc Fl_utf_nb_char* ( buf:  ptr ubyte;  len:  long):  long {.cdecl, importc: "Fl_utf_nb_char", dynlib: fltk, discardable.}
    #_  F2: Convert the next UTF8 char-sequence into a Unicode value (and say how many bytes were used)
    ## original: declare function Fl_utf8decode(byval p as cstring, byval end as cstring, byval len as long ptr) as ulong
    proc Fl_utf8decode* ( p:  cstring;  end_TT:  cstring;  len:  ptr long):  ulong {.cdecl, importc: "Fl_utf8decode", dynlib: fltk, discardable.}
    #_  F2: Encode a Unicode value into a UTF8 sequence, return the number of bytes used
    ## original: declare function Fl_utf8encode(byval ucs as ulong, byval buf as cstring) as long
    proc Fl_utf8encode* ( ucs:  ulong;  buf:  cstring):  long {.cdecl, importc: "Fl_utf8encode", dynlib: fltk, discardable.}
    #_  F2: Move forward to the next valid UTF8 sequence start betwen start and end
    ## original: declare function Fl_utf8fwd(byval p as cstring, byval start as cstring, byval end as cstring) as cstring
    proc Fl_utf8fwd* ( p:  cstring;  start:  cstring;  end_TT:  cstring):  cstring {.cdecl, importc: "Fl_utf8fwd", dynlib: fltk, discardable.}
    #_  F2: Move backward to the previous valid UTF8 sequence start
    ## original: declare function Fl_utf8back(byval p as cstring, byval start as cstring, byval end as cstring) as cstring
    proc Fl_utf8back* ( p:  cstring;  start:  cstring;  end_TT:  cstring):  cstring {.cdecl, importc: "Fl_utf8back", dynlib: fltk, discardable.}
    #_  XX: Convert a single 32-bit Unicode value into UTF16
    ## original: declare function Fl_ucs_to_Utf16(byval ucs as const ulong, byval dst as ushort ptr, byval dstlen as const ulong) as ulong
    proc Fl_ucs_to_Utf16* ( ucs:  ulong;  dst:  ptr ushort;  dstlen:  ulong):  ulong {.cdecl, importc: "Fl_ucs_to_Utf16", dynlib: fltk, discardable.}
    #_  F2: Convert a UTF8 string into UTF16
    ## original: declare function Fl_utf8toUtf16(byval src as cstring, byval srclen as ulong, byval dst as ushort ptr, byval dstlen as ulong) as ulong
    proc Fl_utf8toUtf16* ( src:  cstring;  srclen:  ulong;  dst:  ptr ushort;  dstlen:  ulong):  ulong {.cdecl, importc: "Fl_utf8toUtf16", dynlib: fltk, discardable.}
    #_  F2: Convert a UTF8 string into a wide character string - makes UTF16 on win32, "UCS4" elsewhere
    ## original: declare function Fl_utf8towc(byval src as cstring, byval srclen as ulong, byval dst as wchar_t ptr, byval dstlen as ulong) as ulong
    proc Fl_utf8towc* ( src:  cstring;  srclen:  ulong;  dst:  cstring;  dstlen:  ulong):  ulong {.cdecl, importc: "Fl_utf8towc", dynlib: fltk, discardable.}
    #_  F2: Convert a wide character string to UTF8 - takes in UTF16 on win32, "UCS4" elsewhere
    ## original: declare function Fl_utf8fromwc(byval dst as cstring, byval dstlen as ulong, byval src as const wchar_t ptr, byval srclen as ulong) as ulong
    proc Fl_utf8fromwc* ( dst:  cstring;  dstlen:  ulong;  src:  cstring;  srclen:  ulong):  ulong {.cdecl, importc: "Fl_utf8fromwc", dynlib: fltk, discardable.}
    #_  F2: Convert a UTF8 string into ASCII, eliding untranslatable glyphs
    ## original: declare function Fl_utf8toa (byval src as cstring, byval srclen as ulong, byval dst as cstring, byval dstlen as ulong) as ulong
    proc Fl_utf8toa* ( src:  cstring;  srclen:  ulong;  dst:  cstring;  dstlen:  ulong):  ulong {.cdecl, importc: "Fl_utf8toa", dynlib: fltk, discardable.}
    #_  F2: Convert 8859-1 string to UTF8
    ## original: declare function Fl_utf8froma (byval dst as cstring, byval dstlen as ulong, byval src as cstring, byval srclen as ulong) as ulong
    proc Fl_utf8froma* ( dst:  cstring;  dstlen:  ulong;  src:  cstring;  srclen:  ulong):  ulong {.cdecl, importc: "Fl_utf8froma", dynlib: fltk, discardable.}
    #_  F2: Returns true if the current O/S locale is UTF8
    ## original: declare function Fl_utf8locale() as long
    proc Fl_utf8locale* ():  long {.cdecl, importc: "Fl_utf8locale", dynlib: fltk, discardable.}
    #_  F2: Examine the first len characters of src, to determine if the input text is UTF8 or not
    #_  NOTE: The value returned is not simply boolean - it contains information about the probable type of the src text.
    ## original: declare function Fl_utf8test(byval src as cstring, byval len as ulong) as long
    proc Fl_utf8test* ( src:  cstring;  len:  ulong):  long {.cdecl, importc: "Fl_utf8test", dynlib: fltk, discardable.}
    #_  XX: return width of "raw" ucs character in columns. for internal use only
    ## original: declare function Fl_wcwidth_(byval ucs as ulong) as long
    #~ proc Fl_wcwidth_* ( ucs:  ulong):  long {.cdecl, importc: "Fl_wcwidth_", dynlib: fltk, discardable.}
    #_  XX: return width of utf-8 character string in columns.
    #_  NOTE: this may also do C1 control character (0X80 to 0X9f) to CP1252 mapping, depending on original build options
    ## original: declare function Fl_wcwidth(byval src as cstring) as long
    proc Fl_wcwidth* ( src:  cstring):  long {.cdecl, importc: "Fl_wcwidth", dynlib: fltk, discardable.}
    #_  OD: Return true if the character is non-spacing
    ## original: declare function Fl_nonspacing(byval ucs as ulong) as ulong
    proc Fl_nonspacing* ( ucs:  ulong):  ulong {.cdecl, importc: "Fl_nonspacing", dynlib: fltk, discardable.}
    #_  F2: Convert UTF8 to a local multi-byte encoding - mainly for win32?
    ## original: declare function Fl_utf8to_mb(byval src as cstring, byval srclen as ulong, byval dst as cstring, byval dstlen as ulong) as ulong
    proc Fl_utf8to_mb* ( src:  cstring;  srclen:  ulong;  dst:  cstring;  dstlen:  ulong):  ulong {.cdecl, importc: "Fl_utf8to_mb", dynlib: fltk, discardable.}
    #_  OD: Convert UTF8 to a local multi-byte encoding
    ## original: declare function Fl_utf2mbcs(byval src as cstring) as cstring
    proc Fl_utf2mbcs* ( src:  cstring):  cstring {.cdecl, importc: "Fl_utf2mbcs", dynlib: fltk, discardable.}
    #_  F2: Convert a local multi-byte encoding to UTF8 - mainly for win32?
    ## original: declare function Fl_utf8from_mb(byval dst as cstring, byval dstlen as ulong, byval src as cstring, byval srclen as ulong) as ulong
    proc Fl_utf8from_mb* ( dst:  cstring;  dstlen:  ulong;  src:  cstring;  srclen:  ulong):  ulong {.cdecl, importc: "Fl_utf8from_mb", dynlib: fltk, discardable.}
    #ifdef __FB_WIN32__
      #_  OD: Attempt to convert the UTF8 string to the current locale
    ## original:   declare function Fl_utf8_to_locale(byval s as cstring, byval len as long, byval codepage as ulong) as cstring
    proc Fl_utf8_to_locale* ( s:  cstring;  len:  long;  codepage:  ulong):  cstring {.cdecl, importc: "Fl_utf8_to_locale", dynlib: fltk, discardable.}
      #_  OD: Attempt to convert a string in the current locale to UTF8
    ## original:   declare function Fl_locale_to_utf8(byval s as cstring, byval len as long, byval codepage as ulong) as cstring
    proc Fl_locale_to_utf8* ( s:  cstring;  len:  long;  codepage:  ulong):  cstring {.cdecl, importc: "Fl_locale_to_utf8", dynlib: fltk, discardable.}
    #endif
    #_  The following functions are intended to provide portable, UTF8 aware versions of standard functions
    #_  OD: UTF8 aware strncasecmp - converts to lower case Unicode and tests
    ## original: declare function Fl_utf_strncasecmp(byval s1 as cstring, byval s2 as cstring, byval n as long) as long
    proc Fl_utf_strncasecmp* ( s1:  cstring;  s2:  cstring;  n:  long):  long {.cdecl, importc: "Fl_utf_strncasecmp", dynlib: fltk, discardable.}
    #_  OD: UTF8 aware strcasecmp - converts to Unicode and tests
    ## original: declare function Fl_utf_strcasecmp(byval s1 as cstring, byval s2 as cstring) as long
    proc Fl_utf_strcasecmp* ( s1:  cstring;  s2:  cstring):  long {.cdecl, importc: "Fl_utf_strcasecmp", dynlib: fltk, discardable.}
    #_  OD: return the Unicode lower case value of ucs
    ## original: declare function Fl_tolower(byval ucs as ulong) as long
    proc Fl_tolower* ( ucs:  ulong):  long {.cdecl, importc: "Fl_tolower", dynlib: fltk, discardable.}
    #_  OD: return the Unicode upper case value of ucs
    ## original: declare function Fl_toupper(byval ucs as ulong) as long
    proc Fl_toupper* ( ucs:  ulong):  long {.cdecl, importc: "Fl_toupper", dynlib: fltk, discardable.}
    #_  OD: converts the UTF8 string to the lower case equivalent
    ## original: declare function Fl_utf_tolower(byval str as const ubyte ptr, byval nLen as long, byval buf as cstring) as long
    proc Fl_utf_tolower* ( str:  ptr ubyte;  nLen:  long;  buf:  cstring):  long {.cdecl, importc: "Fl_utf_tolower", dynlib: fltk, discardable.}
    #_  OD: converts the UTF8 string to the upper case equivalent
    ## original: declare function Fl_utf_toupper(byval str as const ubyte ptr, byval nLen as long, byval buf as cstring) as long
    proc Fl_utf_toupper* ( str:  ptr ubyte;  nLen:  long;  buf:  cstring):  long {.cdecl, importc: "Fl_utf_toupper", dynlib: fltk, discardable.}
    #_  OD: Portable UTF8 aware chmod wrapper
    ## original: declare function Fl_chmod(byval f as cstring, byval mode as long) as long
    proc Fl_chmod* ( f:  cstring;  mode:  long):  long {.cdecl, importc: "Fl_chmod", dynlib: fltk, discardable.}
    #_  OD: Portable UTF8 aware access wrapper
    ## original: declare function Fl_access(byval f as cstring, byval mode as long) as long
    proc Fl_access* ( f:  cstring;  mode:  long):  long {.cdecl, importc: "Fl_access", dynlib: fltk, discardable.}
    #_  OD: Portable UTF8 aware stat wrapper             !!! buffer as stat ptr
    ## original: declare function Fl_stat(byval path as cstring, byval buffer as any ptr) as long
    proc Fl_stat* ( path:  cstring;  buffer:  pointer):  long {.cdecl, importc: "Fl_stat", dynlib: fltk, discardable.}
    #_  OD: Portable UTF8 aware getcwd wrapper
    ## original: declare function Fl_getcwd(byval buf as cstring, byval maxlen as long) as cstring
    proc Fl_getcwd* ( buf:  cstring;  maxlen:  long):  cstring {.cdecl, importc: "Fl_getcwd", dynlib: fltk, discardable.}
    #_  OD: Portable UTF8 aware fopen wrapper
    ## original: declare function Fl_fopen(byval f as cstring, byval mode as cstring) as FILE ptr
    proc Fl_fopen* ( f:  cstring;  mode:  cstring):  ptr FILE {.cdecl, importc: "Fl_fopen", dynlib: fltk, discardable.}
    #_  OD: Portable UTF8 aware system wrapper
    ## original: declare function Fl_system(byval f as cstring) as long
    proc Fl_system* ( f:  cstring):  long {.cdecl, importc: "Fl_system", dynlib: fltk, discardable.}
    #_  OD: Portable UTF8 aware execvp wrapper
    ## original: declare function Fl_execvp(byval file as cstring, byval argv as cstring ptr) as long
    proc Fl_execvp* ( file:  cstring;  argv:  ptr cstring):  long {.cdecl, importc: "Fl_execvp", dynlib: fltk, discardable.}
    #_  OD: Portable UTF8 aware open wrapper
    ## original: declare function Fl_open(byval f as cstring, byval o as long) as long
    proc Fl_open* ( f:  cstring;  o:  long):  long {.cdecl, importc: "Fl_open", dynlib: fltk, discardable.}
    #_  OD: Portable UTF8 aware unlink wrapper
    ## original: declare function Fl_unlink(byval f as cstring) as long
    proc Fl_unlink* ( f:  cstring):  long {.cdecl, importc: "Fl_unlink", dynlib: fltk, discardable.}
    #_  OD: Portable UTF8 aware rmdir wrapper
    ## original: declare function Fl_rmdir(byval f as cstring) as long
    proc Fl_rmdir* ( f:  cstring):  long {.cdecl, importc: "Fl_rmdir", dynlib: fltk, discardable.}
    #_  OD: Portable UTF8 aware getenv wrapper
    ## original: declare function Fl_getenv(byval varname as cstring) as cstring
    proc Fl_getenv* ( varname:  cstring):  cstring {.cdecl, importc: "Fl_getenv", dynlib: fltk, discardable.}
    #_  OD: Portable UTF8 aware execvp wrapper
    ## original: declare function Fl_mkdir(byval f as cstring, byval mode as long) as long
    proc Fl_mkdir* ( f:  cstring;  mode:  long):  long {.cdecl, importc: "Fl_mkdir", dynlib: fltk, discardable.}
    #_  OD: Portable UTF8 aware rename wrapper
    ## original: declare function Fl_rename(byval f as cstring, byval t as cstring) as long
    proc Fl_rename* ( f:  cstring;  t:  cstring):  long {.cdecl, importc: "Fl_rename", dynlib: fltk, discardable.}
    #_  OD: Given a full pathname, this will create the directory path needed to hold the file named
    ## original: declare sub      Fl_make_path_for_file(byval path as cstring)
    proc Fl_make_path_for_file*( path:  cstring) {.cdecl, importc: "Fl_make_path_for_file", dynlib: fltk, discardable.}
    #_  OD: recursively create a path in the file system
    ## original: declare function Fl_make_path(byval path as cstring) as ubyte
    proc Fl_make_path* ( path:  cstring):  ubyte {.cdecl, importc: "Fl_make_path", dynlib: fltk, discardable.}

    #_  ########################
    #_  # class Fl_Preferences #
    #_  ########################
    #_  The constructor creates a group that manages name/value pairs and child groups
    ## original: declare function Fl_PreferencesNew(byval root as Fl_Root, byval vendor as cstring, byval application as cstring) as Fl_Preferences ptr
    proc Fl_PreferencesNew* ( root:  Fl_Root;  vendor:  cstring;  application:  cstring):  ptr Fl_Preferences {.cdecl, importc: "Fl_PreferencesNew", dynlib: fltk, discardable.}
    #_  Use this constructor to create or read a preferences file at an arbitrary position in the file system.
    ## original: declare function Fl_PreferencesNew2(byval path as cstring, byval vendor as cstring, byval application as cstring) as Fl_Preferences ptr
    proc Fl_PreferencesNew2* ( path:  cstring;  vendor:  cstring;  application:  cstring):  ptr Fl_Preferences {.cdecl, importc: "Fl_PreferencesNew2", dynlib: fltk, discardable.}
    #_  call the internal destructor and delete the preferences class
    ## original: declare sub      Fl_PreferencesDelete(byref pref as Fl_Preferences ptr)
    proc Fl_PreferencesDelete*( pref:  var ptr Fl_Preferences) {.cdecl, importc: "Fl_PreferencesDelete", dynlib: fltk, discardable.}
    #_  Create or access a group of preferences using a name.
    ## original: declare function Fl_PreferencesNewGroup(byval parent as Fl_Preferences ptr, byval groupname as cstring) as Fl_Preferences ptr
    proc Fl_PreferencesNewGroup* ( parent:  ptr Fl_Preferences;  groupname:  cstring):  ptr Fl_Preferences {.cdecl, importc: "Fl_PreferencesNewGroup", dynlib: fltk, discardable.}
    #_  Open a child group using a given index.
    ## original: declare function Fl_PreferencesNewChildGroup alias "Fl_PreferencesNewGroup2" (byval parent as Fl_Preferences ptr, byval groupIndex as long) as Fl_Preferences ptr
    #~ proc Fl_PreferencesNewChildGroup* (parent: ptr Fl_Preferences; groupIndex: long):   {.cdecl, importc: "Fl_PreferencesNewGroup2", dynlib: fltk, discardable.}

    ## original: declare function Fl_PreferencesNewGroup2 (byval parent as Fl_Preferences ptr, byval groupIndex as long) as Fl_Preferences ptr
    proc Fl_PreferencesNewGroup2* ( parent:  ptr Fl_Preferences;  groupIndex:  long):  ptr Fl_Preferences {.cdecl, importc: "Fl_PreferencesNewGroup2", dynlib: fltk, discardable.}
    #_  Writes all preferences to disk.
    ## original: declare sub      Fl_PreferencesFlush(byval pref as Fl_Preferences ptr)
    proc Fl_PreferencesFlush*( pref:  ptr Fl_Preferences) {.cdecl, importc: "Fl_PreferencesFlush", dynlib: fltk, discardable.}
    #_  Delete all groups and all entries.
    ## original: declare function Fl_PreferencesClear(byval pref as Fl_Preferences ptr) as long
    proc Fl_PreferencesClear* ( pref:  ptr Fl_Preferences):  long {.cdecl, importc: "Fl_PreferencesClear", dynlib: fltk, discardable.}
    #_  write key:values in group returns 0 if setting the value failed
    ## original: declare function Fl_PreferencesSetInt    (byval pref as Fl_Preferences ptr, byval entry as cstring, byval value as long) as long
    proc Fl_PreferencesSetInt* ( pref:  ptr Fl_Preferences;  entry:  cstring;  value:  long):  long {.cdecl, importc: "Fl_PreferencesSetInt", dynlib: fltk, discardable.}
    ## original: declare function Fl_PreferencesSetFloat  (byval pref as Fl_Preferences ptr, byval entry as cstring, byval value as single) as long
    proc Fl_PreferencesSetFloat* ( pref:  ptr Fl_Preferences;  entry:  cstring;  value:  single):  long {.cdecl, importc: "Fl_PreferencesSetFloat", dynlib: fltk, discardable.}
    ## original: declare function Fl_PreferencesSetFloat2 (byval pref as Fl_Preferences ptr, byval entry as cstring, byval value as single, byval precision as long) as long
    proc Fl_PreferencesSetFloat2* ( pref:  ptr Fl_Preferences;  entry:  cstring;  value:  single;  precision:  long):  long {.cdecl, importc: "Fl_PreferencesSetFloat2", dynlib: fltk, discardable.}
    ## original: declare function Fl_PreferencesSetDouble (byval pref as Fl_Preferences ptr, byval entry as cstring, byval value as double) as long
    proc Fl_PreferencesSetDouble* ( pref:  ptr Fl_Preferences;  entry:  cstring;  value:  double):  long {.cdecl, importc: "Fl_PreferencesSetDouble", dynlib: fltk, discardable.}
    ## original: declare function Fl_PreferencesSetDouble2(byval pref as Fl_Preferences ptr, byval entry as cstring, byval value as double, byval precision as long) as long
    proc Fl_PreferencesSetDouble2* ( pref:  ptr Fl_Preferences;  entry:  cstring;  value:  double;  precision:  long):  long {.cdecl, importc: "Fl_PreferencesSetDouble2", dynlib: fltk, discardable.}
    ## original: declare function Fl_PreferencesSetString (byval pref as Fl_Preferences ptr, byval entry as cstring, byval value as cstring) as long
    proc Fl_PreferencesSetString* ( pref:  ptr Fl_Preferences;  entry:  cstring;  value:  cstring):  long {.cdecl, importc: "Fl_PreferencesSetString", dynlib: fltk, discardable.}

    ## original: declare function Fl_PreferencesSetData   (byval pref as Fl_Preferences ptr, byval entry as cstring, byval value as const any ptr, byval size as long) as long
    proc Fl_PreferencesSetData* ( pref:  ptr Fl_Preferences;  entry:  cstring;  value:  pointer;  size:  long):  long {.cdecl, importc: "Fl_PreferencesSetData", dynlib: fltk, discardable.}
    #_  read values from group:key returns 0 if the default value was used
    ## original: declare function Fl_PreferencesGetInt    (byval pref as Fl_Preferences ptr, byval entry as cstring, byref value as long       , byval defaultValue as long) as long
    proc Fl_PreferencesGetInt* ( pref:  ptr Fl_Preferences;  entry:  cstring;  value:  var long;  defaultValue:  long):  long {.cdecl, importc: "Fl_PreferencesGetInt", dynlib: fltk, discardable.}
    ## original: declare function Fl_PreferencesGetFloat  (byval pref as Fl_Preferences ptr, byval entry as cstring, byref value as single     , byval defaultValue as single) as long
    proc Fl_PreferencesGetFloat* ( pref:  ptr Fl_Preferences;  entry:  cstring;  value:  var single;  defaultValue:  single):  long {.cdecl, importc: "Fl_PreferencesGetFloat", dynlib: fltk, discardable.}
    ## original: declare function Fl_PreferencesGetDouble (byval pref as Fl_Preferences ptr, byval entry as cstring, byref value as double     , byval defaultValue as double) as long
    proc Fl_PreferencesGetDouble* ( pref:  ptr Fl_Preferences;  entry:  cstring;  value:  var double;  defaultValue:  double):  long {.cdecl, importc: "Fl_PreferencesGetDouble", dynlib: fltk, discardable.}
    ## original: declare function Fl_PreferencesGetString (byval pref as Fl_Preferences ptr, byval entry as cstring, byref value as cstring, byval defaultValue as cstring) as long
    proc Fl_PreferencesGetString* ( pref:  ptr Fl_Preferences;  entry:  cstring;  value:  var cstring;  defaultValue:  cstring):  long {.cdecl, importc: "Fl_PreferencesGetString", dynlib: fltk, discardable.}
    ## original: declare function Fl_PreferencesGetString2(byval pref as Fl_Preferences ptr, byval entry as cstring, byval value as cstring, byval defaultValue as cstring, byval maxSize as long) as long
    proc Fl_PreferencesGetString2* ( pref:  ptr Fl_Preferences;  entry:  cstring;  value:  cstring;  defaultValue:  cstring;  maxSize:  long):  long {.cdecl, importc: "Fl_PreferencesGetString2", dynlib: fltk, discardable.}
    ## original: declare function Fl_PreferencesGetData   (byval pref as Fl_Preferences ptr, byval entry as cstring, byref value as any ptr    , byval defaultValue as const any ptr    , byval defaultSize as long) as long
    proc Fl_PreferencesGetData* ( pref:  ptr Fl_Preferences;  entry:  cstring;  value:  var pointer;  defaultValue:  pointer;  defaultSize:  long):  long {.cdecl, importc: "Fl_PreferencesGetData", dynlib: fltk, discardable.}
    ## original: declare function Fl_PreferencesGetData2  (byval pref as Fl_Preferences ptr, byval entry as cstring, byval value as any ptr    , byval defaultValue as const any ptr    , byval defaultSize as long, byval maxSize as long) as long
    proc Fl_PreferencesGetData2* ( pref:  ptr Fl_Preferences;  entry:  cstring;  value:  pointer;  defaultValue:  pointer;  defaultSize:  long;  maxSize:  long):  long {.cdecl, importc: "Fl_PreferencesGetData2", dynlib: fltk, discardable.}

    #_  Returns the size of the value part of an entry.
    ## original: declare function Fl_PreferencesGetSize(byval pref as Fl_Preferences ptr, byval entry as cstring) as long
    proc Fl_PreferencesGetSize* ( pref:  ptr Fl_Preferences;  entry:  cstring):  long {.cdecl, importc: "Fl_PreferencesGetSize", dynlib: fltk, discardable.}
    #_  Creates a path that is related to the preferences file and that is usable for additional application data.
    ## original: declare function Fl_PreferencesGetUserdataPath(byval pref as Fl_Preferences ptr, byval path as cstring, byval pathlen as long) as long
    proc Fl_PreferencesGetUserdataPath* ( pref:  ptr Fl_Preferences;  path:  cstring;  pathlen:  long):  long {.cdecl, importc: "Fl_PreferencesGetUserdataPath", dynlib: fltk, discardable.}
    #_  Return the name of this entry.
    ## original: declare function Fl_PreferencesEntryName(byval pref as Fl_Preferences ptr) as cstring
    proc Fl_PreferencesEntryName* ( pref:  ptr Fl_Preferences):  cstring {.cdecl, importc: "Fl_PreferencesEntryName", dynlib: fltk, discardable.}
    #_  Return the full path to this entry.
    ## original: declare function Fl_PreferencesEntryPath(byval pref as Fl_Preferences ptr) as cstring
    proc Fl_PreferencesEntryPath* ( pref:  ptr Fl_Preferences):  cstring {.cdecl, importc: "Fl_PreferencesEntryPath", dynlib: fltk, discardable.}
    #_  Returns the number of groups that are contained within a group.
    ## original: declare function Fl_PreferencesGroups(byval pref as Fl_Preferences ptr) as long
    proc Fl_PreferencesGroups* ( pref:  ptr Fl_Preferences):  long {.cdecl, importc: "Fl_PreferencesGroups", dynlib: fltk, discardable.}
    #_  Returns the name of the Nth index group.
    ## original: declare function Fl_PreferencesGroup(byval pref as Fl_Preferences ptr, byval groupIndex as long) as cstring
    proc Fl_PreferencesGroup* ( pref:  ptr Fl_Preferences;  groupIndex:  long):  cstring {.cdecl, importc: "Fl_PreferencesGroup", dynlib: fltk, discardable.}
    #_  Returns non-zero if a group with this name exists.
    ## original: declare function Fl_PreferencesGroupExists(byval pref as Fl_Preferences ptr, byval key as cstring) as long
    proc Fl_PreferencesGroupExists* ( pref:  ptr Fl_Preferences;  key:  cstring):  long {.cdecl, importc: "Fl_PreferencesGroupExists", dynlib: fltk, discardable.}
    #_  Deletes a group
    ## original: declare function Fl_PreferencesDeleteGroup(byval pref as Fl_Preferences ptr, byval group as cstring) as long
    proc Fl_PreferencesDeleteGroup* ( pref:  ptr Fl_Preferences;  group:  cstring):  long {.cdecl, importc: "Fl_PreferencesDeleteGroup", dynlib: fltk, discardable.}
    #_  Delete all groups.
    ## original: declare function Fl_PreferencesDeleteAllGroups(byval pref as Fl_Preferences ptr) as long
    proc Fl_PreferencesDeleteAllGroups* ( pref:  ptr Fl_Preferences):  long {.cdecl, importc: "Fl_PreferencesDeleteAllGroups", dynlib: fltk, discardable.}
    #_  Returns the number of entries (name/value pairs) in a group.
    ## original: declare function Fl_PreferencesEntries(byval pref as Fl_Preferences ptr) as long
    proc Fl_PreferencesEntries* ( pref:  ptr Fl_Preferences):  long {.cdecl, importc: "Fl_PreferencesEntries", dynlib: fltk, discardable.}
    #_  Returns the name of an entry.
    ## original: declare function Fl_PreferencesEntry(byval pref as Fl_Preferences ptr, byval entryIndex as long) as cstring
    proc Fl_PreferencesEntry* ( pref:  ptr Fl_Preferences;  entryIndex:  long):  cstring {.cdecl, importc: "Fl_PreferencesEntry", dynlib: fltk, discardable.}
    #_  Returns non-zero if an entry with this name exists.
    ## original: declare function Fl_PreferencesEntryExists(byval pref as Fl_Preferences ptr, byval key as cstring) as long
    proc Fl_PreferencesEntryExists* ( pref:  ptr Fl_Preferences;  key:  cstring):  long {.cdecl, importc: "Fl_PreferencesEntryExists", dynlib: fltk, discardable.}
    #_  Deletes a single name/value pair.
    ## original: declare function Fl_PreferencesDeleteEntry(byval pref as Fl_Preferences ptr, byval entry as cstring) as long
    proc Fl_PreferencesDeleteEntry* ( pref:  ptr Fl_Preferences;  entry:  cstring):  long {.cdecl, importc: "Fl_PreferencesDeleteEntry", dynlib: fltk, discardable.}
    #_  Delete all entries.
    ## original: declare function Fl_PreferencesDeleteAllEntries(byval pref as Fl_Preferences ptr) as long
    proc Fl_PreferencesDeleteAllEntries* ( pref:  ptr Fl_Preferences):  long {.cdecl, importc: "Fl_PreferencesDeleteAllEntries", dynlib: fltk, discardable.}

    #_ ##################
    #_ # common dialogs # see also: http://www.fltk.org/doc-1.3/group__group__comdlg.html
    #_ ##################
    ## original: declare sub      flAlert(byval msg as cstring)
    proc flAlert*( msg:  cstring) {.cdecl, importc: "flAlert", dynlib: fltk, discardable.}

    ## original: declare function flChoice(byval msg as cstring, byval btn1 as cstring, byval btn2 as cstring=0, byval btn3 as cstring=0) as long
    proc flChoice* ( msg:  cstring;  btn1:  cstring;  btn2:  cstring=nil;  btn3:  cstring=nil):  long {.cdecl, importc: "flChoice", dynlib: fltk, discardable.}

    ## original: declare sub      flBeep(byval t as FL_BEEP=FL_BEEP_DEFAULT)
    proc flBeep*( t:  FL_BEEP=FL_BEEP_DEFAULT) {.cdecl, importc: "flBeep", dynlib: fltk, discardable.}

    ## original: declare function flColorChooser(byval name_ as cstring, byref r as ubyte, byref g as ubyte, byref b as ubyte, byval cmode as FL_ColorChooserModes) as long
    proc flColorChooser* ( name_TT:  cstring;  r:  var ubyte;  g:  var ubyte;  b:  var ubyte;  cmode:  FL_ColorChooserModes):  long {.cdecl, importc: "flColorChooser", dynlib: fltk, discardable.}

    ## original: declare function flColorChooser2(byval name_ as cstring, byref r as double, byref g as double, byref b as double, byval cmode as FL_ColorChooserModes) as long
    proc flColorChooser2* ( name_TT:  cstring;  r:  var double;  g:  var double;  b:  var double;  cmode:  FL_ColorChooserModes):  long {.cdecl, importc: "flColorChooser2", dynlib: fltk, discardable.}

    ## original: declare function flDirChooser(byval message as cstring, byval filename as cstring, byval relative_ as long) as cstring
    proc flDirChooser* ( message:  cstring;  filename:  cstring;  relative_TT:  long):  cstring {.cdecl, importc: "flDirChooser", dynlib: fltk, discardable.}

    ## original: declare function flFileChooser(byval message as cstring, byval path as cstring, byval filename as cstring, byval relative_ as long) as cstring
    proc flFileChooser* ( message:  cstring;  path:  cstring;  filename:  cstring;  relative_TT:  long):  cstring {.cdecl, importc: "flFileChooser", dynlib: fltk, discardable.}

    ## original: declare sub      flFileChooserCallback(byval cb as sub cdecl(byval file as cstring))
    #~ proc flFileChooserCallback*() {.cdecl, importc: "flFileChooserCallback", dynlib: fltk, discardable.}
    proc flFileChooserCallback*(cb: proc (f: cstring){.cdecl.}){.cdecl, importc: "flFileChooserCallback", dynlib: fltk, discardable.}

    ## original: declare sub      flFileChooserOkLabel(byval label as cstring)
    proc flFileChooserOkLabel*( label:  cstring) {.cdecl, importc: "flFileChooserOkLabel", dynlib: fltk, discardable.}

    ## original: declare function flInput(byval fmt as cstring, byval def_str as cstring) as cstring
    proc flInput* ( fmt:  cstring;  def_str:  cstring):  cstring {.cdecl, importc: "flInput", dynlib: fltk, discardable.}

    ## original: declare sub      flMessage(byval txt as cstring)
    proc flMessage*( txt:  cstring) {.cdecl, importc: "flMessage", dynlib: fltk, discardable.}

    ## original: declare sub      flMessageSetHotspot(byval enable as long)
    proc flMessageSetHotspot*( enable:  long) {.cdecl, importc: "flMessageSetHotspot", dynlib: fltk, discardable.}

    ## original: declare function flMessageGetHotspot as long
    proc flMessageGetHotspot* ():  long {.cdecl, importc: "flMessageGetHotspot", dynlib: fltk, discardable.}

    ## original: declare function flMessageIcon as Fl_Widget ptr
    proc flMessageIcon* ():  ptr Fl_Widget {.cdecl, importc: "flMessageIcon", dynlib: fltk, discardable.}

    ## original: declare sub      flMessageTitle(byval title as cstring)
    proc flMessageTitle*( title:  cstring) {.cdecl, importc: "flMessageTitle", dynlib: fltk, discardable.}

    ## original: declare sub      flMessageTitleDefault(byval title as cstring)
    proc flMessageTitleDefault*( title:  cstring) {.cdecl, importc: "flMessageTitleDefault", dynlib: fltk, discardable.}

    ## original: declare function flPassword(byval fmt as cstring, byval default_string as cstring) as cstring
    proc flPassword* ( fmt:  cstring;  default_string:  cstring):  cstring {.cdecl, importc: "flPassword", dynlib: fltk, discardable.}

    #_ #########################
    #_ # class Fl_File_Chooser #
    #_ #########################
    ## original: declare function Fl_File_ChooserNew(byval pathname as cstring, byval pattern as cstring, byval typ as FL_FILECHOOSER_TYPE, byval title as cstring) as Fl_File_Chooser ptr
    proc Fl_File_ChooserNew* ( pathname:  cstring;  pattern:  cstring;  typ:  FL_FILECHOOSER_TYPE;  title:  cstring):  ptr Fl_File_Chooser {.cdecl, importc: "Fl_File_ChooserNew", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_File_ChooserDelete(byref fc as Fl_File_Chooser ptr)
    proc Fl_File_ChooserDelete*( fc:  var ptr Fl_File_Chooser) {.cdecl, importc: "Fl_File_ChooserDelete", dynlib: fltk, discardable.}

    ## original: declare function Fl_File_ChooserAddExtra(byval fc as Fl_File_Chooser ptr, byval widget as Fl_Widget ptr) as Fl_Widget ptr
    proc Fl_File_ChooserAddExtra* ( fc:  ptr Fl_File_Chooser;  widget:  ptr Fl_Widget):  ptr Fl_Widget {.cdecl, importc: "Fl_File_ChooserAddExtra", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_File_ChooserCallback(byval fc as Fl_File_Chooser ptr, byval cb as Fl_File_Chose_CB, byval pdata as any ptr=0)
    proc Fl_File_ChooserCallback*( fc:  ptr Fl_File_Chooser;  cb:  Fl_File_Chose_CB;  pdata:  pointer=nil) {.cdecl, importc: "Fl_File_ChooserCallback", dynlib: fltk, discardable.}

    ## original: declare function Fl_File_ChooserCount(byval fc as Fl_File_Chooser ptr) as long
    proc Fl_File_ChooserCount* ( fc:  ptr Fl_File_Chooser):  long {.cdecl, importc: "Fl_File_ChooserCount", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_File_ChooserRescan(byval fc as Fl_File_Chooser ptr)
    proc Fl_File_ChooserRescan*( fc:  ptr Fl_File_Chooser) {.cdecl, importc: "Fl_File_ChooserRescan", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_File_ChooserRescanKeepFilename(byval fc as Fl_File_Chooser ptr)
    proc Fl_File_ChooserRescanKeepFilename*( fc:  ptr Fl_File_Chooser) {.cdecl, importc: "Fl_File_ChooserRescanKeepFilename", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_File_ChooserShow(byval fc as Fl_File_Chooser ptr)
    proc Fl_File_ChooserShow*( fc:  ptr Fl_File_Chooser) {.cdecl, importc: "Fl_File_ChooserShow", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_File_ChooserHide(byval fc as Fl_File_Chooser ptr)
    proc Fl_File_ChooserHide*( fc:  ptr Fl_File_Chooser) {.cdecl, importc: "Fl_File_ChooserHide", dynlib: fltk, discardable.}

    ## original: declare function Fl_File_ChooserShown(byval fc as Fl_File_Chooser ptr) as long
    proc Fl_File_ChooserShown* ( fc:  ptr Fl_File_Chooser):  long {.cdecl, importc: "Fl_File_ChooserShown", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_File_ChooserSetColor(byval fc as Fl_File_Chooser ptr, byval c as Fl_COLOR)
    proc Fl_File_ChooserSetColor*( fc:  ptr Fl_File_Chooser;  c:  Fl_COLOR) {.cdecl, importc: "Fl_File_ChooserSetColor", dynlib: fltk, discardable.}
    ## original: declare function Fl_File_ChooserGetColor(byval fc as Fl_File_Chooser ptr) as Fl_COLOR
    proc Fl_File_ChooserGetColor* ( fc:  ptr Fl_File_Chooser):  Fl_COLOR {.cdecl, importc: "Fl_File_ChooserGetColor", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_File_ChooserSetDirectory(byval fc as Fl_File_Chooser ptr, byval d as cstring)
    proc Fl_File_ChooserSetDirectory*( fc:  ptr Fl_File_Chooser;  d:  cstring) {.cdecl, importc: "Fl_File_ChooserSetDirectory", dynlib: fltk, discardable.}
    ## original: declare function Fl_File_ChooserGetDirectory(byval fc as Fl_File_Chooser ptr) as cstring
    proc Fl_File_ChooserGetDirectory* ( fc:  ptr Fl_File_Chooser):  cstring {.cdecl, importc: "Fl_File_ChooserGetDirectory", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_File_ChooserSetFilter(byval fc as Fl_File_Chooser ptr, byval f as cstring)
    proc Fl_File_ChooserSetFilter*( fc:  ptr Fl_File_Chooser;  f:  cstring) {.cdecl, importc: "Fl_File_ChooserSetFilter", dynlib: fltk, discardable.}
    ## original: declare function Fl_File_ChooserGetFilter(byval fc as Fl_File_Chooser ptr) as cstring
    proc Fl_File_ChooserGetFilter* ( fc:  ptr Fl_File_Chooser):  cstring {.cdecl, importc: "Fl_File_ChooserGetFilter", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_File_ChooserSetFilterValue(byval fc as Fl_File_Chooser ptr, byval f as long)
    proc Fl_File_ChooserSetFilterValue*( fc:  ptr Fl_File_Chooser;  f:  long) {.cdecl, importc: "Fl_File_ChooserSetFilterValue", dynlib: fltk, discardable.}
    ## original: declare function Fl_File_ChooserGetFilterValue(byval fc as Fl_File_Chooser ptr) as long
    proc Fl_File_ChooserGetFilterValue* ( fc:  ptr Fl_File_Chooser):  long {.cdecl, importc: "Fl_File_ChooserGetFilterValue", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_File_ChooserSetIconSize(byval fc as Fl_File_Chooser ptr, byval s as ubyte)
    proc Fl_File_ChooserSetIconSize*( fc:  ptr Fl_File_Chooser;  s:  ubyte) {.cdecl, importc: "Fl_File_ChooserSetIconSize", dynlib: fltk, discardable.}
    ## original: declare function Fl_File_ChooserGetIconSize(byval fc as Fl_File_Chooser ptr) as ubyte
    proc Fl_File_ChooserGetIconSize* ( fc:  ptr Fl_File_Chooser):  ubyte {.cdecl, importc: "Fl_File_ChooserGetIconSize", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_File_ChooserSetLabel(byval fc as Fl_File_Chooser ptr, byval l as cstring)
    proc Fl_File_ChooserSetLabel*( fc:  ptr Fl_File_Chooser;  l:  cstring) {.cdecl, importc: "Fl_File_ChooserSetLabel", dynlib: fltk, discardable.}
    ## original: declare function Fl_File_ChooserGetLabel(byval fc as Fl_File_Chooser ptr) as cstring
    proc Fl_File_ChooserGetLabel* ( fc:  ptr Fl_File_Chooser):  cstring {.cdecl, importc: "Fl_File_ChooserGetLabel", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_File_ChooserSetOkLabel(byval fc as Fl_File_Chooser ptr, byval l as cstring)
    proc Fl_File_ChooserSetOkLabel*( fc:  ptr Fl_File_Chooser;  l:  cstring) {.cdecl, importc: "Fl_File_ChooserSetOkLabel", dynlib: fltk, discardable.}
    ## original: declare function Fl_File_ChooserGetOkLabel(byval fc as Fl_File_Chooser ptr) as cstring
    proc Fl_File_ChooserGetOkLabel* ( fc:  ptr Fl_File_Chooser):  cstring {.cdecl, importc: "Fl_File_ChooserGetOkLabel", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_File_ChooserSetPreview(byval fc as Fl_File_Chooser ptr, byval e as long)
    proc Fl_File_ChooserSetPreview*( fc:  ptr Fl_File_Chooser;  e:  long) {.cdecl, importc: "Fl_File_ChooserSetPreview", dynlib: fltk, discardable.}
    ## original: declare function Fl_File_ChooserGetPreview(byval fc as Fl_File_Chooser ptr) as long
    proc Fl_File_ChooserGetPreview* ( fc:  ptr Fl_File_Chooser):  long {.cdecl, importc: "Fl_File_ChooserGetPreview", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_File_ChooserSetTextColor(byval fc as Fl_File_Chooser ptr, byval c as Fl_COLOR)
    proc Fl_File_ChooserSetTextColor*( fc:  ptr Fl_File_Chooser;  c:  Fl_COLOR) {.cdecl, importc: "Fl_File_ChooserSetTextColor", dynlib: fltk, discardable.}
    ## original: declare function Fl_File_ChooserGetTextColor(byval fc as Fl_File_Chooser ptr) as Fl_COLOR
    proc Fl_File_ChooserGetTextColor* ( fc:  ptr Fl_File_Chooser):  Fl_COLOR {.cdecl, importc: "Fl_File_ChooserGetTextColor", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_File_ChooserSetTextFont(byval fc as Fl_File_Chooser ptr, byval f as FL_FONT)
    proc Fl_File_ChooserSetTextFont*( fc:  ptr Fl_File_Chooser;  f:  FL_FONT) {.cdecl, importc: "Fl_File_ChooserSetTextFont", dynlib: fltk, discardable.}
    ## original: declare function Fl_File_ChooserGetTextFont(byval fc as Fl_File_Chooser ptr) as FL_FONT
    proc Fl_File_ChooserGetTextFont* ( fc:  ptr Fl_File_Chooser):  FL_FONT {.cdecl, importc: "Fl_File_ChooserGetTextFont", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_File_ChooserSetTextSize(byval fc as Fl_File_Chooser ptr, byval s as FL_FONTSIZE)
    proc Fl_File_ChooserSetTextSize*( fc:  ptr Fl_File_Chooser;  s:  FL_FONTSIZE) {.cdecl, importc: "Fl_File_ChooserSetTextSize", dynlib: fltk, discardable.}
    ## original: declare function Fl_File_ChooserGetTextSize(byval fc as Fl_File_Chooser ptr) as FL_FONTSIZE
    proc Fl_File_ChooserGetTextSize* ( fc:  ptr Fl_File_Chooser):  FL_FONTSIZE {.cdecl, importc: "Fl_File_ChooserGetTextSize", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_File_ChooserSetType(byval fc as Fl_File_Chooser ptr, byval t as long)
    proc Fl_File_ChooserSetType*( fc:  ptr Fl_File_Chooser;  t:  long) {.cdecl, importc: "Fl_File_ChooserSetType", dynlib: fltk, discardable.}
    ## original: declare function Fl_File_ChooserGetType(byval fc as Fl_File_Chooser ptr) as long
    proc Fl_File_ChooserGetType* ( fc:  ptr Fl_File_Chooser):  long {.cdecl, importc: "Fl_File_ChooserGetType", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_File_ChooserSetUserData(byval fc as Fl_File_Chooser ptr, byval pUserdata as any ptr)
    proc Fl_File_ChooserSetUserData*( fc:  ptr Fl_File_Chooser;  pUserdata:  pointer) {.cdecl, importc: "Fl_File_ChooserSetUserData", dynlib: fltk, discardable.}
    ## original: declare function Fl_File_ChooserGetUserData(byval fc as Fl_File_Chooser ptr) as any ptr
    proc Fl_File_ChooserGetUserData* ( fc:  ptr Fl_File_Chooser):  pointer {.cdecl, importc: "Fl_File_ChooserGetUserData", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_File_ChooserSetValue(byval fc as Fl_File_Chooser ptr, byval filename as cstring)
    proc Fl_File_ChooserSetValue*( fc:  ptr Fl_File_Chooser;  filename:  cstring) {.cdecl, importc: "Fl_File_ChooserSetValue", dynlib: fltk, discardable.}
    ## original: declare function Fl_File_ChooserGetValue(byval fc as Fl_File_Chooser ptr, byval f as long=1) as cstring
    proc Fl_File_ChooserGetValue* ( fc:  ptr Fl_File_Chooser;  f:  long=1):  cstring {.cdecl, importc: "Fl_File_ChooserGetValue", dynlib: fltk, discardable.}

    ## original: declare function Fl_File_ChooserVisible(byval fc as Fl_File_Chooser ptr) as long
    proc Fl_File_ChooserVisible* ( fc:  ptr Fl_File_Chooser):  long {.cdecl, importc: "Fl_File_ChooserVisible", dynlib: fltk, discardable.}

    ## original: declare function Fl_File_ChooserNewButton(byval fc as Fl_File_Chooser ptr) as Fl_Button ptr
    proc Fl_File_ChooserNewButton* ( fc:  ptr Fl_File_Chooser):  ptr Fl_Button {.cdecl, importc: "Fl_File_ChooserNewButton", dynlib: fltk, discardable.}

    ## original: declare function Fl_File_ChooserPreviewButton(byval fc as Fl_File_Chooser ptr) as Fl_Check_Button ptr
    proc Fl_File_ChooserPreviewButton* ( fc:  ptr Fl_File_Chooser):  ptr Fl_Check_Button {.cdecl, importc: "Fl_File_ChooserPreviewButton", dynlib: fltk, discardable.}

    ## original: declare function Fl_File_ChooserShowHiddenButton(byval fc as Fl_File_Chooser ptr) as Fl_Check_Button ptr
    proc Fl_File_ChooserShowHiddenButton* ( fc:  ptr Fl_File_Chooser):  ptr Fl_Check_Button {.cdecl, importc: "Fl_File_ChooserShowHiddenButton", dynlib: fltk, discardable.}

    #_ ################################
    #_ # class Fl_Native_File_Chooser #
    #_ ################################
    ## original: declare function Fl_Native_File_ChooserNew(byval typ as FL_NFC_TYPE=NFC_BROWSE_FILE) as Fl_Native_File_Chooser ptr
    proc Fl_Native_File_ChooserNew* ( typ:  FL_NFC_TYPE=NFC_BROWSE_FILE):  ptr Fl_Native_File_Chooser {.cdecl, importc: "Fl_Native_File_ChooserNew", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Native_File_ChooserDelete(byref nfc as Fl_Native_File_Chooser ptr)
    proc Fl_Native_File_ChooserDelete*( nfc:  var ptr Fl_Native_File_Chooser) {.cdecl, importc: "Fl_Native_File_ChooserDelete", dynlib: fltk, discardable.}

    ## original: declare function Fl_Native_File_ChooserCount(byval nfc as Fl_Native_File_Chooser ptr) as long
    proc Fl_Native_File_ChooserCount* ( nfc:  ptr Fl_Native_File_Chooser):  long {.cdecl, importc: "Fl_Native_File_ChooserCount", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Native_File_ChooserSetDirectory(byval nfc as Fl_Native_File_Chooser ptr, byval d as cstring)
    proc Fl_Native_File_ChooserSetDirectory*( nfc:  ptr Fl_Native_File_Chooser;  d:  cstring) {.cdecl, importc: "Fl_Native_File_ChooserSetDirectory", dynlib: fltk, discardable.}
    ## original: declare function Fl_Native_File_ChooserGetDirectory(byval nfc as Fl_Native_File_Chooser ptr) as cstring
    proc Fl_Native_File_ChooserGetDirectory* ( nfc:  ptr Fl_Native_File_Chooser):  cstring {.cdecl, importc: "Fl_Native_File_ChooserGetDirectory", dynlib: fltk, discardable.}

    ## original: declare function Fl_Native_File_ChooserErrorMsg(byval nfc as Fl_Native_File_Chooser ptr) as cstring
    proc Fl_Native_File_ChooserErrorMsg* ( nfc:  ptr Fl_Native_File_Chooser):  cstring {.cdecl, importc: "Fl_Native_File_ChooserErrorMsg", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Native_File_ChooserSetFilter(byval nfc as Fl_Native_File_Chooser ptr, byval f as cstring)
    proc Fl_Native_File_ChooserSetFilter*( nfc:  ptr Fl_Native_File_Chooser;  f:  cstring) {.cdecl, importc: "Fl_Native_File_ChooserSetFilter", dynlib: fltk, discardable.}
    ## original: declare function Fl_Native_File_ChooserGetFilter(byval nfc as Fl_Native_File_Chooser ptr) as cstring
    proc Fl_Native_File_ChooserGetFilter* ( nfc:  ptr Fl_Native_File_Chooser):  cstring {.cdecl, importc: "Fl_Native_File_ChooserGetFilter", dynlib: fltk, discardable.}

    ## original: declare function Fl_Native_File_ChooserFilename(byval nfc as Fl_Native_File_Chooser ptr) as cstring
    proc Fl_Native_File_ChooserFilename* ( nfc:  ptr Fl_Native_File_Chooser):  cstring {.cdecl, importc: "Fl_Native_File_ChooserFilename", dynlib: fltk, discardable.}

    ## original: declare function Fl_Native_File_ChooserGetFilename(byval nfc as Fl_Native_File_Chooser ptr, byval fileIndex as long) as cstring
    proc Fl_Native_File_ChooserGetFilename* ( nfc:  ptr Fl_Native_File_Chooser;  fileIndex:  long):  cstring {.cdecl, importc: "Fl_Native_File_ChooserGetFilename", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Native_File_ChooserSetFilterValue(byval nfc as Fl_Native_File_Chooser ptr, byval value as long)
    proc Fl_Native_File_ChooserSetFilterValue*( nfc:  ptr Fl_Native_File_Chooser;  value:  long) {.cdecl, importc: "Fl_Native_File_ChooserSetFilterValue", dynlib: fltk, discardable.}

    ## original: declare function Fl_Native_File_ChooserGetFilterValue(byval nfc as Fl_Native_File_Chooser ptr) as long
    proc Fl_Native_File_ChooserGetFilterValue* ( nfc:  ptr Fl_Native_File_Chooser):  long {.cdecl, importc: "Fl_Native_File_ChooserGetFilterValue", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Native_File_ChooserSetOptions(byval nfc as Fl_Native_File_Chooser ptr, byval opt as FL_NFC_OPTION)
    proc Fl_Native_File_ChooserSetOptions*( nfc:  ptr Fl_Native_File_Chooser;  opt:  FL_NFC_OPTION) {.cdecl, importc: "Fl_Native_File_ChooserSetOptions", dynlib: fltk, discardable.}

    ## original: declare function Fl_Native_File_ChooserGetOptions(byval nfc as Fl_Native_File_Chooser ptr) as FL_NFC_OPTION
    proc Fl_Native_File_ChooserGetOptions* ( nfc:  ptr Fl_Native_File_Chooser):  FL_NFC_OPTION {.cdecl, importc: "Fl_Native_File_ChooserGetOptions", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Native_File_ChooserSetPresetFile(byval nfc as Fl_Native_File_Chooser ptr, byval file as cstring)
    proc Fl_Native_File_ChooserSetPresetFile*( nfc:  ptr Fl_Native_File_Chooser;  file:  cstring) {.cdecl, importc: "Fl_Native_File_ChooserSetPresetFile", dynlib: fltk, discardable.}
    ## original: declare function Fl_Native_File_ChooserGetPresetFile(byval nfc as Fl_Native_File_Chooser ptr) as cstring
    proc Fl_Native_File_ChooserGetPresetFile* ( nfc:  ptr Fl_Native_File_Chooser):  cstring {.cdecl, importc: "Fl_Native_File_ChooserGetPresetFile", dynlib: fltk, discardable.}

    ## original: declare function Fl_Native_File_ChooserShow(byval nfc as Fl_Native_File_Chooser ptr) as long
    proc Fl_Native_File_ChooserShow* ( nfc:  ptr Fl_Native_File_Chooser):  long {.cdecl, importc: "Fl_Native_File_ChooserShow", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Native_File_ChooserSetTitle(byval nfc as Fl_Native_File_Chooser ptr, byval title as cstring)
    proc Fl_Native_File_ChooserSetTitle*( nfc:  ptr Fl_Native_File_Chooser;  title:  cstring) {.cdecl, importc: "Fl_Native_File_ChooserSetTitle", dynlib: fltk, discardable.}
    ## original: declare function Fl_Native_File_ChooserGetTitle(byval nfc as Fl_Native_File_Chooser ptr) as cstring
    proc Fl_Native_File_ChooserGetTitle* ( nfc:  ptr Fl_Native_File_Chooser):  cstring {.cdecl, importc: "Fl_Native_File_ChooserGetTitle", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Native_File_ChooserSetType(byval nfc as Fl_Native_File_Chooser ptr, byval typ as FL_NFC_TYPE)
    proc Fl_Native_File_ChooserSetType*( nfc:  ptr Fl_Native_File_Chooser;  typ:  FL_NFC_TYPE) {.cdecl, importc: "Fl_Native_File_ChooserSetType", dynlib: fltk, discardable.}
    ## original: declare function Fl_Native_File_ChooserGetType(byval nfc as Fl_Native_File_Chooser ptr) as FL_NFC_TYPE
    proc Fl_Native_File_ChooserGetType* ( nfc:  ptr Fl_Native_File_Chooser):  FL_NFC_TYPE {.cdecl, importc: "Fl_Native_File_ChooserGetType", dynlib: fltk, discardable.}

    #_ ################
    #_ # FLTK Drawing #
    #_ ################
    #_  Checks whether platform supports true alpha blending for RGBA images.
    ## original: declare function DrawCanDoAlphaBlending as long
    proc DrawCanDoAlphaBlending* ():  long {.cdecl, importc: "DrawCanDoAlphaBlending", dynlib: fltk, discardable.}

    ## original: declare sub      DrawSetColor(byval c as Fl_COLOR)
    proc DrawSetColor*( c:  Fl_COLOR) {.cdecl, importc: "DrawSetColor", dynlib: fltk, discardable.}

    ## original: declare sub      DrawSetRGBColor(byval r as ubyte, byval g as ubyte, byval b as ubyte)
    proc DrawSetRGBColor*( r:  ubyte;  g:  ubyte;  b:  ubyte) {.cdecl, importc: "DrawSetRGBColor", dynlib: fltk, discardable.}

    ## original: declare function DrawGetColor() as Fl_COLOR
    proc DrawGetColor* ():  Fl_COLOR {.cdecl, importc: "DrawGetColor", dynlib: fltk, discardable.}
    #_  Pushes an empty clip region onto the stack so nothing will be clipped.
    ## original: declare sub      DrawPushNoClip()
    proc DrawPushNoClip*() {.cdecl, importc: "DrawPushNoClip", dynlib: fltk, discardable.}
    #_  Intersects the current clip region with a rectangle and pushes this new region onto the stack.
    ## original: declare sub      DrawPushClip(byval x as long, byval y as long, byval w as long, byval h as long)
    proc DrawPushClip*( x:  long;  y:  long;  w:  long;  h:  long) {.cdecl, importc: "DrawPushClip", dynlib: fltk, discardable.}
    #_  Restores the previous clip region.
    #_  !!! You must call DrawPopClip() once for every time you call DrawPushClip(), DrawPushNoClip(). !!!
    ## original: declare sub      DrawPopClip()
    proc DrawPopClip*() {.cdecl, importc: "DrawPopClip", dynlib: fltk.}
    #_  Undoes any clobbering of clip done by your program.
    ## original: declare sub      DrawRestoreClip()
    proc DrawRestoreClip*() {.cdecl, importc: "DrawRestoreClip", dynlib: fltk, discardable.}
    #_  Does the rectangle intersect the current clip region?
    ## original: declare function DrawNotClipped(byval x as long, byval y as long, byval w as long, byval h as long) as long
    proc DrawNotClipped* ( x:  long;  y:  long;  w:  long;  h:  long):  long {.cdecl, importc: "DrawNotClipped", dynlib: fltk, discardable.}
    #_  Intersects the rectangle with the current clip region ?
    #_  and returns the bounding box of the result.
    ## original: declare function DrawClipBox(byval   x as long, byval   y as long, byval   w as long, byval   h as long, byref bbx as long, byref bby as long, byref bbw as long, byref bbh as long) as long
    proc DrawClipBox* (   x:  long;    y:  long;    w:  long;    h:  long;  bbx:  var long;  bby:  var long;  bbw:  var long;  bbh:  var long):  long {.cdecl, importc: "DrawClipBox", dynlib: fltk, discardable.}

    #_  dashes: A pointer to an array of dash lengths, measured in pixels.
    #_  The first location is how long to draw a solid portion, the next is how long to draw the gap, then the solid, etc.
    #_  It is terminated with a zero-length entry. A NULL pointer or a zero-length array results in a solid line.
    #_  !!! Odd array sizes are not supported and result in undefined behavior. !!!
    ## original: declare sub      DrawSetLineStyle(byval style as Fl_LINE_STYLE, byval w as long=0, byval dashes as cstring=0)
    proc DrawSetLineStyle*( style:  Fl_LINE_STYLE;  w:  long=0;  dashes:  cstring=nil) {.cdecl, importc: "DrawSetLineStyle", dynlib: fltk, discardable.}

    #_  ########################
    #_  # fast integer drawing #
    #_  ########################
    #_  see: fltk-tools.bi also
    #_  Draw a single pixel at the given coordinates with current color.
    ## original: declare sub      DrawPoint(byval x as long, byval y as long)
    proc DrawPoint*( x:  long;  y:  long) {.cdecl, importc: "DrawPoint", dynlib: fltk, discardable.}
    #_  Draw a 1-pixel border inside this bounding box.
    ## original: declare sub      DrawRect(byval x as long, byval y as long, byval w as long, byval h as long)
    proc DrawRect*( x:  long;  y:  long;  w:  long;  h:  long) {.cdecl, importc: "DrawRect", dynlib: fltk, discardable.}

    ## original: declare sub      DrawRectColor(byval x as long, byval y as long, byval w as long, byval h as long, byval c as Fl_COLOR)
    proc DrawRectColor*( x:  long;  y:  long;  w:  long;  h:  long;  c:  Fl_COLOR) {.cdecl, importc: "DrawRectColor", dynlib: fltk, discardable.}
    #_  Color a rectangle that exactly fills the given bounding box.
    ## original: declare sub      DrawRectFill        (byval x as long, byval y as long, byval w as long, byval h as long)
    proc DrawRectFill*( x:  long;  y:  long;  w:  long;  h:  long) {.cdecl, importc: "DrawRectFill", dynlib: fltk, discardable.}

    ## original: declare sub      DrawRectFillColor   (byval x as long, byval y as long, byval w as long, byval h as long, byval c as Fl_COLOR)
    proc DrawRectFillColor*( x:  long;  y:  long;  w:  long;  h:  long;  c:  Fl_COLOR) {.cdecl, importc: "DrawRectFillColor", dynlib: fltk, discardable.}

    ## original: declare sub      DrawRectFillRGBColor(byval x as long, byval y as long, byval w as long, byval h as long, byval r as ubyte, byval g as ubyte, byval b as ubyte)
    proc DrawRectFillRGBColor*( x:  long;  y:  long;  w:  long;  h:  long;  r:  ubyte;  g:  ubyte;  b:  ubyte) {.cdecl, importc: "DrawRectFillRGBColor", dynlib: fltk, discardable.}

    ## original: declare sub      DrawOverlayClear
    proc DrawOverlayClear*() {.cdecl, importc: "DrawOverlayClear", dynlib: fltk, discardable.}

    ## original: declare sub      DrawOverlayRect(byval x as long, byval y as long, byval w as long, byval h as long)
    proc DrawOverlayRect*( x:  long;  y:  long;  w:  long;  h:  long) {.cdecl, importc: "DrawOverlayRect", dynlib: fltk, discardable.}
    #_  Draws a series of line segments around the given box.
    #_  The string s must contain groups of 4 letters which specify one of 24 standard grayscale values, where 'A' is black and 'X' is white.
    #_  The order of each set of 4 characters is: top, left, bottom, right.
    #_  The result of calling fl_frame() with a string that is not a multiple of 4 characters in length is undefined.
    #_  The only difference between this function and fl_frame2() is the order of the line segments.
    ## original: declare sub      DrawFrame (byval s as cstring, byval x as long, byval y as long, byval w as long, byval h as long)
    proc DrawFrame*( s:  cstring;  x:  long;  y:  long;  w:  long;  h:  long) {.cdecl, importc: "DrawFrame", dynlib: fltk, discardable.}
    #_  The order of each set of 4 characters is: bottom, right, top, left.
    ## original: declare sub      DrawFrame2(byval s as cstring, byval x as long, byval y as long, byval w as long, byval h as long)
    proc DrawFrame2*( s:  cstring;  x:  long;  y:  long;  w:  long;  h:  long) {.cdecl, importc: "DrawFrame2", dynlib: fltk, discardable.}
    #_  Draws a box using given type, position, size and color.
    ## original: declare sub      DrawBox(byval bt as FL_BOXTYPE, byval x as long, byval y as long, byval w as long, byval h as long, byval c as Fl_COLOR)
    proc DrawBox*( bt:  FL_BOXTYPE;  x:  long;  y:  long;  w:  long;  h:  long;  c:  Fl_COLOR) {.cdecl, importc: "DrawBox", dynlib: fltk, discardable.}
    #_  Draw one or two lines between the given points.
    ## original: declare sub      DrawLine (byval x1 as long, byval y1 as long, byval x2 as long, byval y2 as long)
    proc DrawLine*( x1:  long;  y1:  long;  x2:  long;  y2:  long) {.cdecl, importc: "DrawLine", dynlib: fltk, discardable.}

    ## original: declare sub      DrawLine2(byval x1 as long, byval y1 as long, byval x2 as long, byval y2 as long, byval x3 as long, byval y3 as long)
    proc DrawLine2*( x1:  long;  y1:  long;  x2:  long;  y2:  long;  x3:  long;  y3:  long) {.cdecl, importc: "DrawLine2", dynlib: fltk, discardable.}
    #_  Outline a 3 or 4-sided polygon with lines.
    ## original: declare sub      DrawLoop (byval x1 as long, byval y1 as long, byval x2 as long, byval y2 as long, byval x3 as long, byval y3 as long)
    proc DrawLoop*( x1:  long;  y1:  long;  x2:  long;  y2:  long;  x3:  long;  y3:  long) {.cdecl, importc: "DrawLoop", dynlib: fltk, discardable.}

    ## original: declare sub      DrawLoop2(byval x1 as long, byval y1 as long, byval x2 as long, byval y2 as long, byval x3 as long, byval y3 as long, byval x4 as long, byval y4 as long)
    proc DrawLoop2*( x1:  long;  y1:  long;  x2:  long;  y2:  long;  x3:  long;  y3:  long;  x4:  long;  y4:  long) {.cdecl, importc: "DrawLoop2", dynlib: fltk, discardable.}
    #_  Fill a 3 or 4-sided filled polygon. The polygon must be convex.
    ## original: declare sub      DrawPolygon (byval x1 as long, byval y1 as long, byval x2 as long, byval y2 as long, byval x3 as long, byval y3 as long)
    proc DrawPolygon*( x1:  long;  y1:  long;  x2:  long;  y2:  long;  x3:  long;  y3:  long) {.cdecl, importc: "DrawPolygon", dynlib: fltk, discardable.}

    ## original: declare sub      DrawPolygon2(byval x1 as long, byval y1 as long, byval x2 as long, byval y2 as long, byval x3 as long, byval y3 as long, byval x4 as long, byval y4 as long)
    proc DrawPolygon2*( x1:  long;  y1:  long;  x2:  long;  y2:  long;  x3:  long;  y3:  long;  x4:  long;  y4:  long) {.cdecl, importc: "DrawPolygon2", dynlib: fltk, discardable.}
    #_  Draw horizontal and vertical lines. A horizontal line is drawn first, then a vertical, then a horizontal.
    ## original: declare sub      DrawXYLine(byval x as long, byval y as long, byval x1 as long)
    proc DrawXYLine*( x:  long;  y:  long;  x1:  long) {.cdecl, importc: "DrawXYLine", dynlib: fltk, discardable.}

    ## original: declare sub      DrawXYLine2(byval x as long, byval y as long, byval x1 as long, byval y1 as long)
    proc DrawXYLine2*( x:  long;  y:  long;  x1:  long;  y1:  long) {.cdecl, importc: "DrawXYLine2", dynlib: fltk, discardable.}

    ## original: declare sub      DrawXYLine3(byval x as long, byval y as long, byval x1 as long, byval y1 as long, byval x2 as long)
    proc DrawXYLine3*( x:  long;  y:  long;  x1:  long;  y1:  long;  x2:  long) {.cdecl, importc: "DrawXYLine3", dynlib: fltk, discardable.}
    #_  Draw vertical and horizontal lines. A vertical line is drawn first, then a horizontal, then a vertical.
    ## original: declare sub      DrawYXLine(byval x as long, byval y as long, byval y1 as long)
    proc DrawYXLine*( x:  long;  y:  long;  y1:  long) {.cdecl, importc: "DrawYXLine", dynlib: fltk, discardable.}

    ## original: declare sub      DrawYXLine2(byval x as long, byval y as long, byval y1 as long, byval x2 as long)
    proc DrawYXLine2*( x:  long;  y:  long;  y1:  long;  x2:  long) {.cdecl, importc: "DrawYXLine2", dynlib: fltk, discardable.}

    ## original: declare sub      DrawYXLine3(byval x as long, byval y as long, byval y1 as long, byval x2 as long, byval y2 as long)
    proc DrawYXLine3*( x:  long;  y:  long;  y1:  long;  x2:  long;  y2:  long) {.cdecl, importc: "DrawYXLine3", dynlib: fltk, discardable.}
    #_  DrawArc() draws a series of lines to approximate the arc.
    ## original: declare sub      DrawArc(byval x as long, byval y as long, byval w as long, byval h as long, byval a1 as double, byval a2 as double)
    proc DrawArc*( x:  long;  y:  long;  w:  long;  h:  long;  a1:  double;  a2:  double) {.cdecl, importc: "DrawArc", dynlib: fltk, discardable.}
    #_  Draw filled ellipse sections using long coordinates.
    #_  Like DrawArc(), but DrawPie() draws a filled-in pie slice.
    #_  This slice may extend outside the line drawn by DrawArc() to avoid this use w - 1 and h - 1.
    ## original: declare sub      DrawPie(byval x as long, byval y as long, byval w as long, byval h as long, byval a1 as double, byval a2 as double)
    proc DrawPie*( x:  long;  y:  long;  w:  long;  h:  long;  a1:  double;  a2:  double) {.cdecl, importc: "DrawPie", dynlib: fltk, discardable.}

    #_  ###########################
    #_  # complex precise drawing #
    #_  ###########################
    #_  Saves the current transformation matrix on the stack.
    #_  (The maximum depth of the stack is 32)
    ## original: declare sub      DrawPushMatrix()
    proc DrawPushMatrix*() {.cdecl, importc: "DrawPushMatrix", dynlib: fltk, discardable.}
    #_  Restores the current transformation matrix from the stack.
    ## original: declare sub      DrawPopMatrix()
    proc DrawPopMatrix*() {.cdecl, importc: "DrawPopMatrix", dynlib: fltk, discardable.}
    #_  Concatenates another transformation onto the current [m]atrix one.
    #_  matrix new
    #_   new.a = a*current.a + b*current.c;
    #_   new.b = a*current.b + b*current.d;
    #_   new.c = c*current.a + d*current.c;
    #_   new.d = c*current.b + d*current.d;
    #_   new.x = x*current.a + y*current.c + current.x;
    #_   new.y = x*current.b + y*current.d + current.y;
    #_   cuurent = new;
    ## original: declare sub      DrawMultMatrix(byval a as double, byval b as double, byval c as double, byval d as double, byval x as double, byval y as double)
    proc DrawMultMatrix*( a:  double;  b:  double;  c:  double;  d:  double;  x:  double;  y:  double) {.cdecl, importc: "DrawMultMatrix", dynlib: fltk, discardable.}
    #_  Concatenates scaling transformation onto the current matrix.
    #_  internal mult_matrix(s,0,0,s,0,0)
    ## original: declare sub      DrawScale(byval s as double)
    proc DrawScale*( s:  double) {.cdecl, importc: "DrawScale", dynlib: fltk, discardable.}
    #_  internal mult_matrix(x,0,0,y,0,0)
    ## original: declare sub      DrawScaleXY(byval sx as double, byval sy as double)
    proc DrawScaleXY*( sx:  double;  sy:  double) {.cdecl, importc: "DrawScaleXY", dynlib: fltk, discardable.}
    #_  Concatenates rotation transformation onto the current matrix.
    #_  internal mult_matrix(c,-s,s,c,0,0);
    ## original: declare sub      DrawRotate(byval r as double)
    proc DrawRotate*( r:  double) {.cdecl, importc: "DrawRotate", dynlib: fltk, discardable.}
    #_  Concatenates translation transformation onto the current one
    #_  internal  mult_matrix(1,0,0,1,tx,ty)
    ## original: declare sub      DrawTranslate(byval tx as double, byval ty as double)
    proc DrawTranslate*( tx:  double;  ty:  double) {.cdecl, importc: "DrawTranslate", dynlib: fltk, discardable.}

    ## original: declare sub      DrawArc2(byval x as double, byval y as double, byval r as double, byval start as double, byval end_ as double)
    proc DrawArc2*( x:  double;  y:  double;  r:  double;  start:  double;  end_TT:  double) {.cdecl, importc: "DrawArc2", dynlib: fltk, discardable.}
    #_  DrawCircle() is equivalent to DrawArc2(0,360) but may be faster
    ## original: declare sub      DrawCircle(byval x as double, byval y as double, byval r as double)
    proc DrawCircle*( x:  double;  y:  double;  r:  double) {.cdecl, importc: "DrawCircle", dynlib: fltk, discardable.}

    #_  Add a series of points on a Bezier curve to the path.
    ## original: declare sub      DrawCurve(byval x0 as double, byval y0 as double, byval x1 as double, byval y1 as double, byval x2 as double, byval y2 as double, byval x3 as double, byval y3 as double)
    proc DrawCurve*( x0:  double;  y0:  double;  x1:  double;  y1:  double;  x2:  double;  y2:  double;  x3:  double;  y3:  double) {.cdecl, importc: "DrawCurve", dynlib: fltk, discardable.}

    #_  drawing a list of points.
    ## original: declare sub      DrawBeginPoints()
    proc DrawBeginPoints*() {.cdecl, importc: "DrawBeginPoints", dynlib: fltk, discardable.}
    ## original: declare sub      DrawEndPoints()
    proc DrawEndPoints*() {.cdecl, importc: "DrawEndPoints", dynlib: fltk, discardable.}
    #_  drawing a list of lines.
    ## original: declare sub      DrawBeginLine()
    proc DrawBeginLine*() {.cdecl, importc: "DrawBeginLine", dynlib: fltk, discardable.}
    ## original: declare sub      DrawEndLine()
    proc DrawEndLine*() {.cdecl, importc: "DrawEndLine", dynlib: fltk, discardable.}
    #_  drawing a closed sequence of lines.
    ## original: declare sub      DrawBeginLoop()
    proc DrawBeginLoop*() {.cdecl, importc: "DrawBeginLoop", dynlib: fltk, discardable.}
    ## original: declare sub      DrawEndLoop()
    proc DrawEndLoop*() {.cdecl, importc: "DrawEndLoop", dynlib: fltk, discardable.}
    #_  drawing a convex filled polygon.
    ## original: declare sub      DrawBeginPolygon()
    proc DrawBeginPolygon*() {.cdecl, importc: "DrawBeginPolygon", dynlib: fltk, discardable.}
    ## original: declare sub      DrawEndPolygon()
    proc DrawEndPolygon*() {.cdecl, importc: "DrawEndPolygon", dynlib: fltk, discardable.}
    #_  drawing a complex filled polygon. (can be concave)
    ## original: declare sub      DrawBeginComplexPolygon()
    proc DrawBeginComplexPolygon*() {.cdecl, importc: "DrawBeginComplexPolygon", dynlib: fltk, discardable.}
    ## original: declare sub      DrawEndComplexPolygon()
    proc DrawEndComplexPolygon*() {.cdecl, importc: "DrawEndComplexPolygon", dynlib: fltk, discardable.}
    #_  Adds a single vertex to the current path.
    #_  xfinal=x* cos(zrot) + y*sin(zrot) + xPos
    #_  yfinal=x*-sin(zrot) + y*cos(zrot) + yPos
    ## original: declare sub      DrawVertex(byval x as double, byval y as double)
    proc DrawVertex*( x:  double;  y:  double) {.cdecl, importc: "DrawVertex", dynlib: fltk, discardable.}
    #_  Adds a single vertex to the current path without further transformations.
    ## original: declare sub      DrawTransformedVertex(byval xf as double, byval yf as double)
    proc DrawTransformedVertex*( xf:  double;  yf:  double) {.cdecl, importc: "DrawTransformedVertex", dynlib: fltk, discardable.}
    #_  Transforms coordinate using the current transformation matrix. (x* cos(zrot) + y*sin(zrot) + xPos)
    ## original: declare function DrawTransformX(byval x as double, byval y as double) as double
    proc DrawTransformX* ( x:  double;  y:  double):  double {.cdecl, importc: "DrawTransformX", dynlib: fltk, discardable.}
    #_  Transforms coordinate using the current transformation matrix. (x*-sin(zrot) + y*cos(zrot) + yPos)
    ## original: declare function DrawTransformY(byval x as double, byval y as double) as double
    proc DrawTransformY* ( x:  double;  y:  double):  double {.cdecl, importc: "DrawTransformY", dynlib: fltk, discardable.}
    #_  Transforms distance using current transformation matrix.  (x* cos(zrot) + y*sin(zrot))
    ## original: declare function DrawTransformDX(byval x as double, byval y as double) as double
    proc DrawTransformDX* ( x:  double;  y:  double):  double {.cdecl, importc: "DrawTransformDX", dynlib: fltk, discardable.}
    #_  Transforms distance using current transformation matrix.  (x*-sin(zrot)+ y*cos(zrot))
    ## original: declare function DrawTransformDY(byval x as double, byval y as double) as double
    proc DrawTransformDY* ( x:  double;  y:  double):  double {.cdecl, importc: "DrawTransformDY", dynlib: fltk, discardable.}

    #_  ################
    #_  # text drawing #
    #_  ################
    ## original: declare sub      DrawSetFont(byval font as FL_FONT, byval size as FL_FONTSIZE)
    proc DrawSetFont*( font:  FL_FONT;  size:  FL_FONTSIZE) {.cdecl, importc: "DrawSetFont", dynlib: fltk, discardable.}
    ## original: declare function DrawGetFont() as FL_FONT
    proc DrawGetFont* ():  FL_FONT {.cdecl, importc: "DrawGetFont", dynlib: fltk, discardable.}

    ## original: declare function DrawHeight(byval font as FL_FONT, byval size as FL_FONTSIZE) as long
    proc DrawHeight* ( font:  FL_FONT;  size:  FL_FONTSIZE):  long {.cdecl, importc: "DrawHeight", dynlib: fltk, discardable.}

    ## original: declare function DrawGetFontSize() as FL_FONTSIZE
    proc DrawGetFontSize* ():  FL_FONTSIZE {.cdecl, importc: "DrawGetFontSize", dynlib: fltk, discardable.}

    ## original: declare function DrawGetFontHeight() as long
    proc DrawGetFontHeight* ():  long {.cdecl, importc: "DrawGetFontHeight", dynlib: fltk, discardable.}

    ## original: declare function DrawGetFontDescent() as long
    proc DrawGetFontDescent* ():  long {.cdecl, importc: "DrawGetFontDescent", dynlib: fltk, discardable.}

    ## original: declare function DrawGetStrWidth(byval txt as cstring) as long
    proc DrawGetStrWidth* ( txt:  cstring):  long {.cdecl, importc: "DrawGetStrWidth", dynlib: fltk, discardable.}

    ## original: declare function DrawGetStrWidth2(byval txt as cstring, byval nChars as long) as long
    proc DrawGetStrWidth2* ( txt:  cstring;  nChars:  long):  long {.cdecl, importc: "DrawGetStrWidth2", dynlib: fltk, discardable.}

    ## original: declare function DrawGetCharWidth(byval char as ulong) as long
    proc DrawGetCharWidth* ( char:  ulong):  long {.cdecl, importc: "DrawGetCharWidth", dynlib: fltk, discardable.}

    ## original: declare sub      DrawStrExtents (byval txt as cstring, byref dx as long, byref dy as long, byref w as long, byref h as long)
    proc DrawStrExtents*( txt:  cstring;  dx:  var long;  dy:  var long;  w:  var long;  h:  var long) {.cdecl, importc: "DrawStrExtents", dynlib: fltk, discardable.}

    ## original: declare sub      DrawStrExtents2(byval txt as cstring, byval nChars as long, byref dx as long, byref dy as long, byref w as long, byref h as long)
    proc DrawStrExtents2*( txt:  cstring;  nChars:  long;  dx:  var long;  dy:  var long;  w:  var long;  h:  var long) {.cdecl, importc: "DrawStrExtents2", dynlib: fltk, discardable.}

    ## original: declare sub      DrawStrMeasure (byval txt as cstring, byref x as long, byref y as long, byval draw_symbols as long = 1)
    proc DrawStrMeasure*( txt:  cstring;  x:  var long;  y:  var long;  draw_symbols:  long) {.cdecl, importc: "DrawStrMeasure", dynlib: fltk, discardable.}

    ## original: declare sub      DrawStr        (byval txt as cstring, byval x as long, byval y as long)
    proc DrawStr*( txt:  cstring;  x:  long;  y:  long) {.cdecl, importc: "DrawStr", dynlib: fltk, discardable.}

    ## original: declare sub      DrawStr2       (byval txt as cstring, byval nChars as long, byval x as long, byval y as long)
    proc DrawStr2*( txt:  cstring;  nChars:  long;  x:  long;  y:  long) {.cdecl, importc: "DrawStr2", dynlib: fltk, discardable.}

    ## original: declare sub      DrawStrRightToLeft(byval txt as cstring, byval nChars as long, byval x as long, byval y as long)
    proc DrawStrRightToLeft*( txt:  cstring;  nChars:  long;  x:  long;  y:  long) {.cdecl, importc: "DrawStrRightToLeft", dynlib: fltk, discardable.}

    ## original: declare sub      DrawStrRot        (byval angle as long, byval txt as cstring, byval x as long, byval y as long)
    proc DrawStrRot*( angle:  long;  txt:  cstring;  x:  long;  y:  long) {.cdecl, importc: "DrawStrRot", dynlib: fltk, discardable.}

    ## original: declare sub      DrawStrRot2       (byval angle as long, byval txt as cstring, byval nChars as long, byval x as long, byval y as long)
    proc DrawStrRot2*( angle:  long;  txt:  cstring;  nChars:  long;  x:  long;  y:  long) {.cdecl, importc: "DrawStrRot2", dynlib: fltk, discardable.}

    ## original: declare sub      DrawStrBox        (byval txt as cstring, byval x as long, byval y as long, byval w as long, byval h as long, byval aligh as FL_ALIGN=0, byval img as Fl_Image ptr=0, byval draw_symbols as long = 1)
    proc DrawStrBox*( txt:  cstring;  x:  long;  y:  long;  w:  long;  h:  long;  aligh:  FL_ALIGN=0;  img:  ptr Fl_Image=nil;  draw_symbols:  long=1) {.cdecl, importc: "DrawStrBox", dynlib: fltk, discardable.}

    ## original: declare function DrawLatin1ToLocal(byval txt as cstring, byval nChars as long=-1) as cstring
    proc DrawLatin1ToLocal* ( txt:  cstring;  nChars:  long = -1):  cstring {.cdecl, importc: "DrawLatin1ToLocal", dynlib: fltk, discardable.}

    ## original: declare function DrawLocalToLatin1(byval txt as cstring, byval nChars as long=-1) as cstring
    proc DrawLocalToLatin1* ( txt:  cstring;  nChars:  long = -1):  cstring {.cdecl, importc: "DrawLocalToLatin1", dynlib: fltk, discardable.}

    #_  #################
    #_  # image drawing #
    #_  #################
    #_  Draws an 8-bit per color RGB or luminance image.
    ## original: declare sub      DrawImage    (byval buf as const any ptr, byval x as long, byval y as long, byval w as long, byval h as long, byval BytesPerPixel as long=3, byval pitch as long=0)
    proc DrawImage*( buf:  pointer;  x:  long;  y:  long;  w:  long;  h:  long;  BytesPerPixel:  long = 3;  pitch:  long = 0) {.cdecl, importc: "DrawImage", dynlib: fltk, discardable.}
    #_  Draws a gray-scale (1 channel) image.
    ## original: declare sub      DrawImageMono(byval buf as const any ptr, byval x as long, byval y as long, byval w as long, byval h as long, byval BytesPerPixel as long=1, byval pitch as long=0)
    proc DrawImageMono*( buf:  pointer;  x:  long;  y:  long;  w:  long;  h:  long;  BytesPerPixel:  long = 1;  pitch:  long = 0) {.cdecl, importc: "DrawImageMono", dynlib: fltk, discardable.}

    #_  Draws an image using a callback function to generate image data.
    ## original: declare sub      DrawImageCallback    (byval cb as Fl_Draw_Image_Cb, byval pUserData as any ptr, byval x as long, byval y as long, byval w as long, byval h as long, byval BytesPerPixel as long)
    proc DrawImageCallback*( cb:  Fl_Draw_Image_Cb;  pUserData:  pointer;  x:  long;  y:  long;  w:  long;  h:  long;  BytesPerPixel:  long) {.cdecl, importc: "DrawImageCallback", dynlib: fltk, discardable.}
    #_  Draws a gray-scale image using a callback function to generate image data.
    ## original: declare sub      DrawImageMonoCallback(byval cb as Fl_Draw_Image_Cb, byval pUserData as any ptr, byval x as long, byval y as long, byval w as long, byval h as long, byval BytesPerPixel as long)
    proc DrawImageMonoCallback*( cb:  Fl_Draw_Image_Cb;  pUserData:  pointer;  x:  long;  y:  long;  w:  long;  h:  long;  BytesPerPixel:  long) {.cdecl, importc: "DrawImageMonoCallback", dynlib: fltk, discardable.}

    #_  Reads an RGB(A) image from the current window
    #_  p    pixel buffer, or NULL to allocate one
    #_  X,Y  position of top-left of image to read
    #_  W,H  width and height of image to read
    #_  alphavalue value for image (0 for none)
    #_  Returns:  pointer to pixel buffer, or NULL if allocation failed..
    ## original: declare function DrawReadImage(byval p as any ptr=0, byval x as long, byval y as long, byval w as long, byval h as long, byval alphavalue as long=0) as any ptr
    proc DrawReadImage* ( p:  pointer=nil;  x:  long;  y:  long;  w:  long;  h:  long;  alphavalue:  long = 0):  pointer {.cdecl, importc: "DrawReadImage", dynlib: fltk, discardable.}
    #_  Draw XPM image data, with the top-left corner at the given position.
    ## original: declare function DrawPixmap(byval pdata as ubyte ptr const ptr, byval x as long, byval y as long, byval c as Fl_COLOR=FL_GRAY) as long
    proc DrawPixmap* ( pdata:  ptr ubyte;  x:  long;  y:  long;  c:  Fl_COLOR = FL_GRAY):  long {.cdecl, importc: "DrawPixmap", dynlib: fltk, discardable.}

    ## original: declare function DrawConstPixmap alias "DrawPixmap2" (byval pdata as ubyte ptr const ptr, byval x as long, byval y as long, byval c as Fl_COLOR=FL_GRAY) as long
    proc DrawConstPixmap* (pdata: ptr ptr ubyte, x: long, y:long, c: Fl_COLOR=FL_GRAY):  long {.cdecl, importc: "DrawConstPixmap", dynlib: fltk, discardable.}

    ## original: declare function DrawPixmap2(byval cdata as cstring const ptr, byval x as long, byval y as long, byval c as Fl_COLOR=FL_GRAY) as long
    proc DrawPixmap2* ( cdata:  ptr cstring;  x:  long;  y:  long;  c:  Fl_COLOR=FL_GRAY):  long {.cdecl, importc: "DrawPixmap2", dynlib: fltk, discardable.}
    #_  Get the dimensions of a pixmap.
    ## original: declare function DrawMeasurePixmap(byval pdata as cstring const ptr, byref w as long, byref h as long) as long
    proc DrawMeasurePixmap* ( pdata:  cstring;  w:  var long;  h:  var long):  long {.cdecl, importc: "DrawMeasurePixmap", dynlib: fltk, discardable.}

    ## original: declare function DrawMeasureConstPixmap alias "DrawMeasurePixmap2" (byval cdata as cstring const ptr, byref w as long, byref h as long) as long
    proc DrawMeasureConstPixmap* (cdata: ptr cstring; w: var long; h: var long): long  {.cdecl, importc: "DrawMeasureConstPixmap", dynlib: fltk, discardable.}

    ## original: declare function DrawMeasurePixmap2(byval cdata as cstring const ptr, byref w as long, byref h as long) as long
    proc DrawMeasurePixmap2* ( cdata:  ptr cstring;  w:  var long;  h:  var long):  long {.cdecl, importc: "DrawMeasurePixmap2", dynlib: fltk, discardable.}


    #_  I don't know why but it's defined in "Fl_Draw.H"
    ## original: declare function Fl_GetShortcutLabel(byval shortcut as long) as cstring
    proc Fl_GetShortcutLabel* ( shortcut:  long):  cstring {.cdecl, importc: "Fl_GetShortcutLabel", dynlib: fltk, discardable.}

    ## original: declare function Fl_GetDrawShortcutFlag as ubyte
    proc Fl_GetDrawShortcutFlag* ():  ubyte {.cdecl, importc: "Fl_GetDrawShortcutFlag", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_SetDrawShortcutFlag(byval flag as ubyte)
    proc Fl_SetDrawShortcutFlag*( flag:  ubyte) {.cdecl, importc: "Fl_SetDrawShortcutFlag", dynlib: fltk, discardable.}

    #_  ######################
    #_  # class Fl_File_Icon #
    #_  ######################
    type T_FL_FILEICON_TYPE* = enum
      FL_FILEICON_ANY = 0   #_  Any kind of file
      FL_FILEICON_PLAIN     #_  Only plain files
      FL_FILEICON_FIFO      #_  Only named pipes
      FL_FILEICON_DEVICE    #_  Only character and block devices
      FL_FILEICON_LINK      #_  Only symbolic links
      FL_FILEICON_DIRECTORY #_  Only directories


    type FL_DATAOPCODE* = enum
      FL_DOP_END = 0        #_  End of primitive/icon                 same as DrawEndLine|Loop|ComplexPolygon [0]=opcode
      FL_DOP_COLOR          #_  Followed by color value (2 shorts)    same as DrawSetColor  [0]=opcode [1]=HiWord(Fl_COLOR) [2]=LoWord(Fl_COLOR)
      FL_DOP_LINE           #_  Start of line                         same as DrawBeginLine [0]=opcode
      FL_DOP_CLOSEDLINE     #_  Start of closed line                  same as DrawBeginLoop [0]=opcode
      FL_DOP_POLYGON        #_  Start of polygon                      same as DrawBeginComplexPolygon [0]=opcode [1]=HiWord(Fl_COLOR) [2]=LoWord(Fl_COLOR)
      FL_DOP_OUTLINEPOLYGON #_  Followed by outline color (2 shorts)  same as DrawBeginComplexPolygon [0]=opcode
      FL_DOP_VERTEX         #_  Followed by scaled X,Y                same as DrawVertexBegin [0]=opcode [1]=cshort(X) [2]=cshort(Y)

    #_  static members:
    #_  Finds an icon that matches the given filename and file type. (returns NULL if not found)
    ## original: declare function Fl_File_IconFind(byval Filename as cstring, byval FileType as FL_FILEICON_TYPE=FL_FILEICON_ANY) as Fl_File_Icon ptr
    proc Fl_File_IconFind* ( Filename:  cstring;  FileType:  T_FL_FILEICON_TYPE=FL_FILEICON_ANY):  ptr Fl_File_Icon {.cdecl, importc: "Fl_File_IconFind", dynlib: fltk, discardable.}
    #_  Returns a pointer to the first icon in the list.
    ## original: declare function Fl_File_IconFirst as Fl_File_Icon ptr
    proc Fl_File_IconFirst* ():  ptr Fl_File_Icon {.cdecl, importc: "Fl_File_IconFirst", dynlib: fltk, discardable.}
    #_  Draw the icon label.
    ## original: declare sub      Fl_File_IconLabelType(byval o as const Fl_Label ptr, byval x as long, byval y as long, byval w as long, byval h as long, byval align as FL_ALIGN)
    proc Fl_File_IconLabelType*( o:  ptr Fl_Label;  x:  long;  y:  long;  w:  long;  h:  long;  align:  FL_ALIGN) {.cdecl, importc: "Fl_File_IconLabelType", dynlib: fltk, discardable.}
    #_  Loads all system-defined icons. This call is useful when using the FileChooser widget
    #_  and should be used when the application starts:
    ## original: declare sub      Fl_File_IconLoadSystemIcons
    proc Fl_File_IconLoadSystemIcons*() {.cdecl, importc: "Fl_File_IconLoadSystemIcons", dynlib: fltk, discardable.}

    #_  public members:
    #_  Creates a new Fl_File_Icon with the specified information.
    ## original: declare function Fl_File_IconNew       (byval FilenamePattern as cstring=@"", byval FileType as FL_FILEICON_TYPE=FL_FILEICON_ANY, byval nDataValue as long=0, byval pDataValue as short ptr=0) as Fl_File_Icon ptr
    proc Fl_File_IconNew* ( FilenamePattern:  cstring="";  FileType:  T_FL_FILEICON_TYPE=FL_FILEICON_ANY;  nDataValue:  long=0;  pDataValue:  ptr short=nil):  ptr Fl_File_Icon {.cdecl, importc: "Fl_File_IconNew", dynlib: fltk, discardable.}
    #_  The destructor destroys the icon and frees all memory that has been allocated for it.
    ## original: declare sub      Fl_File_IconDelete    (byref fi as Fl_File_Icon ptr)
    proc Fl_File_IconDelete*( fi:  var ptr Fl_File_Icon) {.cdecl, importc: "Fl_File_IconDelete", dynlib: fltk, discardable.}
    #_  Adds a keyword value to the icon array, returning a pointer to it.
    ## original: declare function Fl_File_IconAdd       (byval fi as Fl_File_Icon ptr, byval DataValue as short) as short ptr
    proc Fl_File_IconAdd* ( fi:  ptr Fl_File_Icon;  DataValue:  short):  ptr short {.cdecl, importc: "Fl_File_IconAdd", dynlib: fltk, discardable.}
    #_  Adds a color value (FL_DATAOPCODE) to the icon array, returning a pointer to it.
    ## original: declare function Fl_File_IconAddColor  (byval fi as Fl_File_Icon ptr, byval c as Fl_COLOR) as short ptr
    proc Fl_File_IconAddColor* ( fi:  ptr Fl_File_Icon;  c:  Fl_COLOR):  ptr short {.cdecl, importc: "Fl_File_IconAddColor", dynlib: fltk, discardable.}
    #_  Adds a vertex value to the icon array, returning a pointer to it.
    #_  The long version accepts coordinates from 0 to 10000.
    #_  The origin (0,0) is in the lower-lefthand corner of the icon.
    ## original: declare function Fl_File_IconAddVertex (byval fi as Fl_File_Icon ptr, byval ix as long, byval iy as long) as short ptr
    proc Fl_File_IconAddVertex* ( fi:  ptr Fl_File_Icon;  ix:  long;  iy:  long):  ptr short {.cdecl, importc: "Fl_File_IconAddVertex", dynlib: fltk, discardable.}
    #_  Adds a vertex value to the icon array, returning a pointer to it.
    #_  The floating point version goes from 0.0 to 1.0.
    #_  The origin (0.0,0.0) is in the lower-lefthand corner of the icon.
    ## original: declare function Fl_File_IconAddVertex2(byval fi as Fl_File_Icon ptr, byval fx as single , byval fy as single ) as short ptr
    proc Fl_File_IconAddVertex2* ( fi:  ptr Fl_File_Icon;  fx:  single;  fy:  single):  ptr short {.cdecl, importc: "Fl_File_IconAddVertex2", dynlib: fltk, discardable.}
    #_  Clears all icon data from the icon
    ## original: declare sub      Fl_File_IconClear     (byval fi as Fl_File_Icon ptr)
    proc Fl_File_IconClear*( fi:  ptr Fl_File_Icon) {.cdecl, importc: "Fl_File_IconClear", dynlib: fltk, discardable.}
    #_  Draws an icon in the indicated area.
    ## original: declare sub      Fl_File_IconDraw      (byval fi as Fl_File_Icon ptr, byval x as long, byval y as long, byval w as long, byval h as long, byval c as Fl_COLOR, byval IsActive as long=1)
    proc Fl_File_IconDraw*( fi:  ptr Fl_File_Icon;  x:  long;  y:  long;  w:  long;  h:  long;  c:  Fl_COLOR;  IsActive:  long=1) {.cdecl, importc: "Fl_File_IconDraw", dynlib: fltk, discardable.}
    #_  Applies the icon to the widget, registering the Fl_File_Icon label type as needed.
    ## original: declare sub      Fl_File_IconLabel     (byval fi as Fl_File_Icon ptr, byval wgt as Fl_Widget ptr)
    proc Fl_File_IconLabel*( fi:  ptr Fl_File_Icon;  wgt:  ptr Fl_Widget) {.cdecl, importc: "Fl_File_IconLabel", dynlib: fltk, discardable.}
    #_  Loads the specified icon image. The format is deduced from the filename. Returns 0 on success, non-zero on error.
    ## original: declare sub      Fl_File_IconLoad      (byval fi as Fl_File_Icon ptr, byval filename as cstring)
    proc Fl_File_IconLoad*( fi:  ptr Fl_File_Icon;  filename:  cstring) {.cdecl, importc: "Fl_File_IconLoad", dynlib: fltk, discardable.}
    #_  Loads an SGI icon file. Returns 0 on success, non-zero on error.
    ## original: declare function Fl_File_IconLoadFTI   (byval fi as Fl_File_Icon ptr, byval filename as cstring) as long
    proc Fl_File_IconLoadFTI* ( fi:  ptr Fl_File_Icon;  filename:  cstring):  long {.cdecl, importc: "Fl_File_IconLoadFTI", dynlib: fltk, discardable.}
    #_  Load an image icon file from an image filename. Returns 0 on success, non-zero on error.
    ## original: declare function Fl_File_IconLoadImage (byval fi as Fl_File_Icon ptr, byval filename as cstring) as long
    proc Fl_File_IconLoadImage* ( fi:  ptr Fl_File_Icon;  filename:  cstring):  long {.cdecl, importc: "Fl_File_IconLoadImage", dynlib: fltk, discardable.}
    #_  Returns next file icon object. See Fl_File_IconFirst()
    ## original: declare function Fl_File_IconNext      (byval fi as Fl_File_Icon ptr) as Fl_File_Icon ptr
    proc Fl_File_IconNext* ( fi:  ptr Fl_File_Icon):  ptr Fl_File_Icon {.cdecl, importc: "Fl_File_IconNext", dynlib: fltk, discardable.}
    #_  Returns the filename matching pattern for the icon.
    ## original: declare function Fl_File_IconPattern   (byval fi as Fl_File_Icon ptr) as cstring
    proc Fl_File_IconPattern* ( fi:  ptr Fl_File_Icon):  cstring {.cdecl, importc: "Fl_File_IconPattern", dynlib: fltk, discardable.}
    #_  Returns the number of words of data used by the icon.
    ## original: declare function Fl_File_IconSize      (byval fi as Fl_File_Icon ptr) as long
    proc Fl_File_IconSize* ( fi:  ptr Fl_File_Icon):  long {.cdecl, importc: "Fl_File_IconSize", dynlib: fltk, discardable.}
    #_  Returns the filetype associated with the icon
    ## original: declare function Fl_File_IconType      (byval fi as Fl_File_Icon ptr) as FL_FILEICON_TYPE
    proc Fl_File_IconType* ( fi:  ptr Fl_File_Icon):  T_FL_FILEICON_TYPE {.cdecl, importc: "Fl_File_IconType", dynlib: fltk, discardable.}
    #_  Returns the data array for the icon
    ## original: declare function Fl_File_IconValue     (byval fi as Fl_File_Icon ptr) as short ptr
    proc Fl_File_IconValue* ( fi:  ptr Fl_File_Icon):  ptr short {.cdecl, importc: "Fl_File_IconValue", dynlib: fltk, discardable.}

    #_ ##################
    #_ # class Fl_Image #
    #_ ##################
    ## original: declare function Fl_ImageNew(byval w as long, byval h as long, byval d as long) as Fl_Image ptr
    proc Fl_ImageNew* ( w:  long;  h:  long;  d:  long):  ptr Fl_Image {.cdecl, importc: "Fl_ImageNew", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_ImageDelete(byref img as Fl_Image ptr)
    proc Fl_ImageDelete*( img:  var ptr Fl_Image) {.cdecl, importc: "Fl_ImageDelete", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_ImageUncache(byval img as Fl_Image ptr)
    proc Fl_ImageUncache*( img:  ptr Fl_Image) {.cdecl, importc: "Fl_ImageUncache", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_ImageInactive(byval img as Fl_Image ptr)
    proc Fl_ImageInactive*( img:  ptr Fl_Image) {.cdecl, importc: "Fl_ImageInactive", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_ImageColorAverage(byval img as Fl_Image ptr, byval c as Fl_COLOR, byval i as single)
    proc Fl_ImageColorAverage*( img:  ptr Fl_Image;  c:  Fl_COLOR;  i:  single) {.cdecl, importc: "Fl_ImageColorAverage", dynlib: fltk, discardable.}

    ## original: declare function Fl_ImageCopy(byval img as Fl_Image ptr) as Fl_Image ptr
    proc Fl_ImageCopy* ( img:  ptr Fl_Image):  ptr Fl_Image {.cdecl, importc: "Fl_ImageCopy", dynlib: fltk, discardable.}

    ## original: declare function Fl_ImageCopy2(byval img as Fl_Image ptr, byval w as long, byval h as long) as Fl_Image ptr
    proc Fl_ImageCopy2* ( img:  ptr Fl_Image;  w:  long;  h:  long):  ptr Fl_Image {.cdecl, importc: "Fl_ImageCopy2", dynlib: fltk, discardable.}

    ## original: declare function Fl_ImageCount(byval img as Fl_Image ptr) as long
    proc Fl_ImageCount* ( img:  ptr Fl_Image):  long {.cdecl, importc: "Fl_ImageCount", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_ImageDesaturate(byval img as Fl_Image ptr)
    proc Fl_ImageDesaturate*( img:  ptr Fl_Image) {.cdecl, importc: "Fl_ImageDesaturate", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_ImageDraw(byval img as Fl_Image ptr, byval x as long=0, byval y as long=0)
    proc Fl_ImageDraw*( img:  ptr Fl_Image;  x:  long=0;  y:  long=0) {.cdecl, importc: "Fl_ImageDraw", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_ImageDraw2(byval img as Fl_Image ptr, byval x as long, byval y as long, byval w as long, byval h as long, byval cx as long = 0, byval cy as long = 0)
    proc Fl_ImageDraw2*( img:  ptr Fl_Image;  x:  long;  y:  long;  w:  long;  h:  long;  cx:  long;  cy:  long) {.cdecl, importc: "Fl_ImageDraw2", dynlib: fltk, discardable.}

    ## original: declare function Fl_ImageData(byval img as Fl_Image ptr) as const ubyte ptr const ptr
    proc Fl_ImageData* ( img:  ptr Fl_Image):  ptr ubyte {.cdecl, importc: "Fl_ImageData", dynlib: fltk, discardable.}

    ## original: declare function Fl_ImageW(byval img as Fl_Image ptr) as long
    proc Fl_ImageW* ( img:  ptr Fl_Image):  long {.cdecl, importc: "Fl_ImageW", dynlib: fltk, discardable.}

    ## original: declare function Fl_ImageH(byval img as Fl_Image ptr) as long
    proc Fl_ImageH* ( img:  ptr Fl_Image):  long {.cdecl, importc: "Fl_ImageH", dynlib: fltk, discardable.}

    ## original: declare function Fl_ImageD(byval img as Fl_Image ptr) as long
    proc Fl_ImageD* ( img:  ptr Fl_Image):  long {.cdecl, importc: "Fl_ImageD", dynlib: fltk, discardable.}

    ## original: declare function Fl_ImageLD(byval img as Fl_Image ptr) as long
    proc Fl_ImageLD* ( img:  ptr Fl_Image):  long {.cdecl, importc: "Fl_ImageLD", dynlib: fltk, discardable.}

    ## original: declare function Fl_ImageGetWidth         alias "Fl_ImageW"  (byval img as Fl_Image ptr) as long
    proc Fl_ImageGetWidth* (img: ptr Fl_Image): long  {.cdecl, importc: "Fl_ImageGetW", dynlib: fltk, discardable.}
    ## original: declare function Fl_ImageGetHeight        alias "Fl_ImageH"  (byval img as Fl_Image ptr) as long
    proc Fl_ImageGetHeight* (img: ptr Fl_Image): long  {.cdecl, importc: "Fl_ImageGetH", dynlib: fltk, discardable.}
    ## original: declare function Fl_ImageGetBytesPerPixel alias "Fl_ImageD"  (byval img as Fl_Image ptr) as long
    proc Fl_ImageGetBytesPerPixel* (img: ptr Fl_Image): long  {.cdecl, importc: "Fl_ImageD", dynlib: fltk, discardable.}
    ## original: declare function Fl_ImageGetPitch         alias "Fl_ImageLD" (byval img as Fl_Image ptr) as long
    proc Fl_ImageGetPitch* (img: ptr Fl_Image): long  {.cdecl, importc: "Fl_ImageLD", dynlib: fltk, discardable.}

    #_ ##########################################
    #_ # class Fl_Shared_Image extends Fl_Image #
    #_ ##########################################
    #_  enable all image loaders (gif, bmp, jpg, png,...)
    ## original: declare sub      Fl_Register_Images()
    proc Fl_Register_Images*() {.cdecl, importc: "Fl_Register_Images", dynlib: fltk, discardable.}

    #_  ##################
    #_  # static members #
    #_  ##################
    #_  Find or load an image that can be shared by multiple widgets.
    ## original: declare function Fl_Shared_ImageGet(byval name_or_path as cstring, byval w as long=0, byval h as long=0) as Fl_Shared_Image ptr
    proc Fl_Shared_ImageGet* ( name_or_path:  cstring;  w:  long = 0;  h:  long = 0):  ptr Fl_Shared_Image {.cdecl, importc: "Fl_Shared_ImageGet", dynlib: fltk, discardable.}
    #_  Finds a shared image from its name and optional by it's size specifications.
    ## original: declare function Fl_Shared_ImageFind(byval name_ as cstring, byval w as long=0, byval h as long=0) as Fl_Shared_Image ptr
    proc Fl_Shared_ImageFind* ( name_TT:  cstring;  w:  long=0;  h:  long=0):  ptr Fl_Shared_Image {.cdecl, importc: "Fl_Shared_ImageFind", dynlib: fltk, discardable.}
    #_  Returns the Fl_Shared_Image ptr array.
    ## original: declare function Fl_Shared_ImageImages as Fl_Shared_Image ptr ptr
    proc Fl_Shared_ImageImages* ():  ptr ptr Fl_Shared_Image {.cdecl, importc: "Fl_Shared_ImageImages", dynlib: fltk, discardable.}
    #_  Returns the total number of shared images in the array.
    ## original: declare function Fl_Shared_ImageNumImages as long
    proc Fl_Shared_ImageNumImages* ():  long {.cdecl, importc: "Fl_Shared_ImageNumImages", dynlib: fltk, discardable.}
    #_  Adds/removes a shared image handler, which is basically a test function for adding new formats.
    ## original: declare sub      Fl_Shared_ImageAddHandler(byval handler as Fl_Shared_Handler)
    proc Fl_Shared_ImageAddHandler*( handler:  Fl_Shared_Handler) {.cdecl, importc: "Fl_Shared_ImageAddHandler", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Shared_ImageRemoveHandler(byval handler as Fl_Shared_Handler)
    proc Fl_Shared_ImageRemoveHandler*( handler:  Fl_Shared_Handler) {.cdecl, importc: "Fl_Shared_ImageRemoveHandler", dynlib: fltk, discardable.}

    #_  ###################
    #_  # public memnbers #
    #_  ###################
    #_  The color_average() method averages the colors in the image with the FLTK color value c.
    ## original: declare sub      Fl_Shared_ImageColorAverage(byval si as Fl_Shared_Image ptr, byval c as Fl_COLOR, byval i as single)
    proc Fl_Shared_ImageColorAverage*( si:  ptr Fl_Shared_Image;  c:  Fl_COLOR;  i:  single) {.cdecl, importc: "Fl_Shared_ImageColorAverage", dynlib: fltk, discardable.}
    #_  The copy() method creates a copy of the specified image.
    ## original: declare function Fl_Shared_ImageCopy(byval si as Fl_Shared_Image ptr) as Fl_Image ptr
    proc Fl_Shared_ImageCopy* ( si:  ptr Fl_Shared_Image):  ptr Fl_Image {.cdecl, importc: "Fl_Shared_ImageCopy", dynlib: fltk, discardable.}
    #_  The copy2() method creates a copy of the specified image and rescale it.
    ## original: declare function Fl_Shared_ImageCopy2(byval si as Fl_Shared_Image ptr, byval w as long, byval h as long) as Fl_Image ptr
    proc Fl_Shared_ImageCopy2* ( si:  ptr Fl_Shared_Image;  w:  long;  h:  long):  ptr Fl_Image {.cdecl, importc: "Fl_Shared_ImageCopy2", dynlib: fltk, discardable.}
    #_  The desaturate() method converts an image to grayscale.
    ## original: declare sub      Fl_Shared_ImageDesaturate(byval si as Fl_Shared_Image ptr)
    proc Fl_Shared_ImageDesaturate*( si:  ptr Fl_Shared_Image) {.cdecl, importc: "Fl_Shared_ImageDesaturate", dynlib: fltk, discardable.}
    #_  Draws the image at position x,y.
    ## original: declare sub      Fl_Shared_ImageDraw(byval si as Fl_Shared_Image ptr, byval x as long, byval y as long)
    proc Fl_Shared_ImageDraw*( si:  ptr Fl_Shared_Image;  x:  long;  y:  long) {.cdecl, importc: "Fl_Shared_ImageDraw", dynlib: fltk, discardable.}
    #_  Draws the image with a bounding box.
    ## original: declare sub      Fl_Shared_ImageDraw2(byval si as Fl_Shared_Image ptr, byval x as long, byval y as long, byval w as long, byval h as long, byval cx as long=0, byval cy as long=0)
    proc Fl_Shared_ImageDraw2*( si:  ptr Fl_Shared_Image;  x:  long;  y:  long;  w:  long;  h:  long;  cx:  long=0;  cy:  long=0) {.cdecl, importc: "Fl_Shared_ImageDraw2", dynlib: fltk, discardable.}
    #_  Returns the filename of the shared image.
    ## original: declare function Fl_Shared_ImageName(byval si as Fl_Shared_Image ptr) as cstring
    proc Fl_Shared_ImageName* ( si:  ptr Fl_Shared_Image):  cstring {.cdecl, importc: "Fl_Shared_ImageName", dynlib: fltk, discardable.}
    #_  Returns the number of references of this shared image.
    ## original: declare function Fl_Shared_ImageRefcount(byval si as Fl_Shared_Image ptr) as long
    proc Fl_Shared_ImageRefcount* ( si:  ptr Fl_Shared_Image):  long {.cdecl, importc: "Fl_Shared_ImageRefcount", dynlib: fltk, discardable.}
    #_  Releases and possibly destroys (if refcount <=0) a shared image.
    ## original: declare sub      Fl_Shared_ImageRelease(byval si as Fl_Shared_Image ptr)
    proc Fl_Shared_ImageRelease*( si:  ptr Fl_Shared_Image) {.cdecl, importc: "Fl_Shared_ImageRelease", dynlib: fltk, discardable.}
    #_  Reloads the shared image from disk.
    ## original: declare sub      Fl_Shared_ImageReload(byval si as Fl_Shared_Image ptr)
    proc Fl_Shared_ImageReload*( si:  ptr Fl_Shared_Image) {.cdecl, importc: "Fl_Shared_ImageReload", dynlib: fltk, discardable.}
    #_  If the image has been cached for display, delete the cache data.
    ## original: declare sub      Fl_Shared_ImageUncache(byval si as Fl_Shared_Image ptr)
    proc Fl_Shared_ImageUncache*( si:  ptr Fl_Shared_Image) {.cdecl, importc: "Fl_Shared_ImageUncache", dynlib: fltk, discardable.}

    #_ #########################################
    #_ # class Fl_Tiled_Image extends Fl_Image #
    #_ #########################################
    ## original: declare function Fl_Tiled_ImageNew(byval img as Fl_Image ptr, byval w as long=0, byval h as long=0) as Fl_Tiled_Image ptr
    proc Fl_Tiled_ImageNew* ( img:  ptr Fl_Image;  w:  long=0;  h:  long=0):  ptr Fl_Tiled_Image {.cdecl, importc: "Fl_Tiled_ImageNew", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Tiled_ImageDelete(byref timg as Fl_Tiled_Image ptr)
    proc Fl_Tiled_ImageDelete*( timg:  var ptr Fl_Tiled_Image) {.cdecl, importc: "Fl_Tiled_ImageDelete", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Tiled_ImageColorAverage(byval timg as Fl_Tiled_Image ptr, byval c as Fl_COLOR, byval i as single)
    proc Fl_Tiled_ImageColorAverage*( timg:  ptr Fl_Tiled_Image;  c:  Fl_COLOR;  i:  single) {.cdecl, importc: "Fl_Tiled_ImageColorAverage", dynlib: fltk, discardable.}

    ## original: declare function Fl_Tiled_ImageCopy(byval timg as Fl_Tiled_Image ptr) as Fl_Image ptr
    proc Fl_Tiled_ImageCopy* ( timg:  ptr Fl_Tiled_Image):  ptr Fl_Image {.cdecl, importc: "Fl_Tiled_ImageCopy", dynlib: fltk, discardable.}

    ## original: declare function Fl_Tiled_ImageCopy2(byval timg as Fl_Tiled_Image ptr, byval w as long, byval h as long) as Fl_Image ptr
    proc Fl_Tiled_ImageCopy2* ( timg:  ptr Fl_Tiled_Image;  w:  long;  h:  long):  ptr Fl_Image {.cdecl, importc: "Fl_Tiled_ImageCopy2", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Tiled_ImageDesaturate(byval timg as Fl_Tiled_Image ptr)
    proc Fl_Tiled_ImageDesaturate*( timg:  ptr Fl_Tiled_Image) {.cdecl, importc: "Fl_Tiled_ImageDesaturate", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Tiled_ImageDraw(byval timg as Fl_Tiled_Image ptr, byval x as long, byval y as long)
    proc Fl_Tiled_ImageDraw*( timg:  ptr Fl_Tiled_Image;  x:  long;  y:  long) {.cdecl, importc: "Fl_Tiled_ImageDraw", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Tiled_ImageDraw2(byval timg as Fl_Tiled_Image ptr, byval x as long, byval y as long, byval w as long, byval h as long, byval cx as long=0, byval cy as long=0)
    proc Fl_Tiled_ImageDraw2*( timg:  ptr Fl_Tiled_Image;  x:  long;  y:  long;  w:  long;  h:  long;  cx:  long=0;  cy:  long=0) {.cdecl, importc: "Fl_Tiled_ImageDraw2", dynlib: fltk, discardable.}

    ## original: declare function Fl_Tiled_ImageImage(byval timg as Fl_Tiled_Image ptr) as Fl_Image ptr
    proc Fl_Tiled_ImageImage* ( timg:  ptr Fl_Tiled_Image):  ptr Fl_Image {.cdecl, importc: "Fl_Tiled_ImageImage", dynlib: fltk, discardable.}

    #_ ####################################
    #_ # class Fl_Bitmap extends Fl_Image # 1 bit per pixel
    #_ ####################################
    ## original: declare function Fl_BitmapNew(byval bits as const ubyte ptr const ptr, byval w as long, byval h as long) as Fl_Bitmap ptr
    proc Fl_BitmapNew* ( bits:  ptr ptr ubyte;  w:  long;  h:  long):  ptr Fl_Bitmap {.cdecl, importc: "Fl_BitmapNew", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_BitmapDelete(byref bm as Fl_Bitmap ptr)
    proc Fl_BitmapDelete*( bm:  var ptr Fl_Bitmap) {.cdecl, importc: "Fl_BitmapDelete", dynlib: fltk, discardable.}

    ## original: declare function Fl_BitmapCopy (byval bm as Fl_Bitmap ptr) as Fl_Image ptr
    proc Fl_BitmapCopy* ( bm:  ptr Fl_Bitmap):  ptr Fl_Image {.cdecl, importc: "Fl_BitmapCopy", dynlib: fltk, discardable.}

    ## original: declare function Fl_BitmapCopy2(byval bm as Fl_Bitmap ptr, byval w as long, byval h as long) as Fl_Image ptr
    proc Fl_BitmapCopy2* ( bm:  ptr Fl_Bitmap;  w:  long;  h:  long):  ptr Fl_Image {.cdecl, importc: "Fl_BitmapCopy2", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_BitmapDraw (byval bm as Fl_Bitmap ptr, byval x as long, byval y as long)
    proc Fl_BitmapDraw*( bm:  ptr Fl_Bitmap;  x:  long;  y:  long) {.cdecl, importc: "Fl_BitmapDraw", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_BitmapDraw2(byval bm as Fl_Bitmap ptr, byval x as long, byval y as long, byval w as long, byval h as long, byval cx as long = 0, byval cy as long = 0)
    proc Fl_BitmapDraw2*( bm:  ptr Fl_Bitmap;  x:  long;  y:  long;  w:  long;  h:  long;  cx:  long;  cy:  long) {.cdecl, importc: "Fl_BitmapDraw2", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_BitmapUncache(byval bm as Fl_Bitmap ptr)
    proc Fl_BitmapUncache*( bm:  ptr Fl_Bitmap) {.cdecl, importc: "Fl_BitmapUncache", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_BitmapLabel(byval bm as Fl_Bitmap ptr, byval wgt as Fl_Widget ptr)
    proc Fl_BitmapLabel*( bm:  ptr Fl_Bitmap;  wgt:  ptr Fl_Widget) {.cdecl, importc: "Fl_BitmapLabel", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_BitmapLabel2(byval bm as Fl_Bitmap ptr, byval itm as Fl_Menu_Item ptr)
    proc Fl_BitmapLabel2*( bm:  ptr Fl_Bitmap;  itm:  ptr Fl_Menu_Item) {.cdecl, importc: "Fl_BitmapLabel2", dynlib: fltk, discardable.}

    #_ ########################################
    #_ # class Fl_XBM_Image extends Fl_Bitmap # 1 bit per pixel
    #_ ########################################
    ## original: declare function Fl_XBM_ImageNew(byval filename as cstring) as Fl_Bitmap ptr
    proc Fl_XBM_ImageNew* ( filename:  cstring):  ptr Fl_Bitmap {.cdecl, importc: "Fl_XBM_ImageNew", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_XBM_ImageDelete(byref xbm as Fl_Bitmap ptr)
    proc Fl_XBM_ImageDelete*( xbm:  var ptr Fl_Bitmap) {.cdecl, importc: "Fl_XBM_ImageDelete", dynlib: fltk, discardable.}

    #_ ####################################
    #_ # class Fl_Pixmap extends Fl_Image #  8 bit per pixel
    #_ ####################################
    ## original: declare function Fl_PixmapNew(byval xpm_data as cstring const ptr) as Fl_Pixmap ptr
    proc Fl_PixmapNew* ( xpm_data:  cstring):  ptr Fl_Pixmap {.cdecl, importc: "Fl_PixmapNew", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_PixmapDelete(byref xbm as Fl_Pixmap ptr)
    proc Fl_PixmapDelete*( xbm:  var ptr Fl_Pixmap) {.cdecl, importc: "Fl_PixmapDelete", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_PixmapColorAverage(byval pm as Fl_Pixmap ptr, byval c as Fl_COLOR, byval i as single)
    proc Fl_PixmapColorAverage*( pm:  ptr Fl_Pixmap;  c:  Fl_COLOR;  i:  single) {.cdecl, importc: "Fl_PixmapColorAverage", dynlib: fltk, discardable.}

    ## original: declare function Fl_PixmapCopy(byval pm as Fl_Pixmap ptr) as Fl_Image ptr
    proc Fl_PixmapCopy* ( pm:  ptr Fl_Pixmap):  ptr Fl_Image {.cdecl, importc: "Fl_PixmapCopy", dynlib: fltk, discardable.}

    ## original: declare function Fl_PixmapCopy2(byval pm as Fl_Pixmap ptr, byval w as long, byval h as long) as Fl_Image ptr
    proc Fl_PixmapCopy2* ( pm:  ptr Fl_Pixmap;  w:  long;  h:  long):  ptr Fl_Image {.cdecl, importc: "Fl_PixmapCopy2", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_PixmapDesaturate(byval pm as Fl_Pixmap ptr)
    proc Fl_PixmapDesaturate*( pm:  ptr Fl_Pixmap) {.cdecl, importc: "Fl_PixmapDesaturate", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_PixmapDraw(byval pm as Fl_Pixmap ptr, byval x as long, byval y as long)
    proc Fl_PixmapDraw*( pm:  ptr Fl_Pixmap;  x:  long;  y:  long) {.cdecl, importc: "Fl_PixmapDraw", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_PixmapDraw2(byval pm as Fl_Pixmap ptr, byval x as long, byval y as long, byval w as long, byval h as long, byval cx as long=0, byval cy as long=0)
    proc Fl_PixmapDraw2*( pm:  ptr Fl_Pixmap;  x:  long;  y:  long;  w:  long;  h:  long;  cx:  long=0;  cy:  long=0) {.cdecl, importc: "Fl_PixmapDraw2", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_PixmapUncache(byval pm as Fl_Pixmap ptr)
    proc Fl_PixmapUncache*( pm:  ptr Fl_Pixmap) {.cdecl, importc: "Fl_PixmapUncache", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_PixmapLabel(byval pm as Fl_Pixmap ptr, byval wgt as Fl_Widget ptr)
    proc Fl_PixmapLabel*( pm:  ptr Fl_Pixmap;  wgt:  ptr Fl_Widget) {.cdecl, importc: "Fl_PixmapLabel", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_PixmapLabel2(byval pm as Fl_Pixmap ptr, byval itm as Fl_Menu_Item ptr)
    proc Fl_PixmapLabel2*( pm:  ptr Fl_Pixmap;  itm:  ptr Fl_Menu_Item) {.cdecl, importc: "Fl_PixmapLabel2", dynlib: fltk, discardable.}

    #_ ########################################
    #_ # class Fl_GIF_Image extends Fl_Pixmap # 8 bit per pixel
    #_ ########################################
    ## original: declare function Fl_GIF_ImageNew(byval filename as cstring) as Fl_GIF_Image ptr
    proc Fl_GIF_ImageNew* ( filename:  cstring):  ptr Fl_GIF_Image {.cdecl, importc: "Fl_GIF_ImageNew", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_GIF_ImageDelete(byref gif as Fl_GIF_Image ptr)
    proc Fl_GIF_ImageDelete*( gif:  var ptr Fl_GIF_Image) {.cdecl, importc: "Fl_GIF_ImageDelete", dynlib: fltk, discardable.}

    #_ ########################################
    #_ # class Fl_XPM_Image extends Fl_Pixmap # 8 bit per pixel
    #_ ########################################
    ## original: declare function Fl_XPM_ImageNew(byval filename as cstring) as Fl_XPM_Image ptr
    proc Fl_XPM_ImageNew* ( filename:  cstring):  ptr Fl_XPM_Image {.cdecl, importc: "Fl_XPM_ImageNew", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_XPM_ImageDelete(byref xpm as Fl_XPM_Image ptr)
    proc Fl_XPM_ImageDelete*( xpm:  var ptr Fl_XPM_Image) {.cdecl, importc: "Fl_XPM_ImageDelete", dynlib: fltk, discardable.}

    #_ #######################################
    #_ # class Fl_RGB_Image extends Fl_Image # truecolor 16,24,32 bit per pixel
    #_ #######################################
    ## original: declare function Fl_RGB_ImageNew(byval bits as const any ptr, byval w as long, byval h as long, byval BytesPerPixel as long=3, byval pitch as long=0) as Fl_RGB_Image ptr
    proc Fl_RGB_ImageNew* ( bits:  pointer;  w:  long;  h:  long;  BytesPerPixel:  long=3;  pitch:  long=0):  ptr Fl_RGB_Image {.cdecl, importc: "Fl_RGB_ImageNew", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_RGB_ImageDelete(byref rgbimg as Fl_RGB_Image ptr)
    proc Fl_RGB_ImageDelete*( rgbimg:  var ptr Fl_RGB_Image) {.cdecl, importc: "Fl_RGB_ImageDelete", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_RGB_ImageUncache(byval rgbimg as Fl_RGB_Image ptr)
    proc Fl_RGB_ImageUncache*( rgbimg:  ptr Fl_RGB_Image) {.cdecl, importc: "Fl_RGB_ImageUncache", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_RGB_ImageColorAverage(byval rgbimg as Fl_RGB_Image ptr, byval c as Fl_COLOR, byval i as single)
    proc Fl_RGB_ImageColorAverage*( rgbimg:  ptr Fl_RGB_Image;  c:  Fl_COLOR;  i:  single) {.cdecl, importc: "Fl_RGB_ImageColorAverage", dynlib: fltk, discardable.}

    ## original: declare function Fl_RGB_ImageCopy(byval rgbimg as Fl_RGB_Image ptr) as Fl_Image ptr
    proc Fl_RGB_ImageCopy* ( rgbimg:  ptr Fl_RGB_Image):  ptr Fl_Image {.cdecl, importc: "Fl_RGB_ImageCopy", dynlib: fltk, discardable.}

    ## original: declare function Fl_RGB_ImageCopy2(byval rgbimg as Fl_RGB_Image ptr, byval w as long, byval h as long) as Fl_Image ptr
    proc Fl_RGB_ImageCopy2* ( rgbimg:  ptr Fl_RGB_Image;  w:  long;  h:  long):  ptr Fl_Image {.cdecl, importc: "Fl_RGB_ImageCopy2", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_RGB_ImageDesaturate(byval rgbimg as Fl_RGB_Image ptr)
    proc Fl_RGB_ImageDesaturate*( rgbimg:  ptr Fl_RGB_Image) {.cdecl, importc: "Fl_RGB_ImageDesaturate", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_RGB_ImageDraw(byval rgbimg as Fl_RGB_Image ptr, byval x as long, byval y as long)
    proc Fl_RGB_ImageDraw*( rgbimg:  ptr Fl_RGB_Image;  x:  long;  y:  long) {.cdecl, importc: "Fl_RGB_ImageDraw", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_RGB_ImageDraw2(byval rgbimg as Fl_RGB_Image ptr, byval x as long, byval y as long, byval w as long, byval h as long, byval cx as long=0, byval cy as long=0)
    proc Fl_RGB_ImageDraw2*( rgbimg:  ptr Fl_RGB_Image;  x:  long;  y:  long;  w:  long;  h:  long;  cx:  long=0;  cy:  long=0) {.cdecl, importc: "Fl_RGB_ImageDraw2", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_RGB_ImageLabel(byval rgbimg as Fl_RGB_Image ptr, byval wgt as Fl_Widget ptr)
    proc Fl_RGB_ImageLabel*( rgbimg:  ptr Fl_RGB_Image;  wgt:  ptr Fl_Widget) {.cdecl, importc: "Fl_RGB_ImageLabel", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_RGB_ImageLabel2(byval rgbimg as Fl_RGB_Image ptr, byval itm as Fl_Menu_Item ptr)
    proc Fl_RGB_ImageLabel2*( rgbimg:  ptr Fl_RGB_Image;  itm:  ptr Fl_Menu_Item) {.cdecl, importc: "Fl_RGB_ImageLabel2", dynlib: fltk, discardable.}

    #_ ###########################################
    #_ # class Fl_BMP_Image extends Fl_RGB_Image #  truecolor
    #_ ###########################################
    ## original: declare function Fl_BMP_ImageNew (byval filename as cstring) as FL_BMP_Image ptr
    proc Fl_BMP_ImageNew* ( filename:  cstring):  ptr FL_BMP_Image {.cdecl, importc: "Fl_BMP_ImageNew", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_BMP_ImageDelete(byref bmp as Fl_BMP_Image ptr)
    proc Fl_BMP_ImageDelete*( bmp:  var ptr Fl_BMP_Image) {.cdecl, importc: "Fl_BMP_ImageDelete", dynlib: fltk, discardable.}

    #_ ###########################################
    #_ # class Fl_PNG_Image extends Fl_RGB_Image #  truecolor
    #_ ###########################################
    ## original: declare function Fl_PNG_ImageNew (byval filename as cstring) as FL_PNG_Image ptr
    proc Fl_PNG_ImageNew* ( filename:  cstring):  ptr FL_PNG_Image {.cdecl, importc: "Fl_PNG_ImageNew", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_PNG_ImageDelete(byref png as Fl_PNG_Image ptr)
    proc Fl_PNG_ImageDelete*( png:  var ptr Fl_PNG_Image) {.cdecl, importc: "Fl_PNG_ImageDelete", dynlib: fltk, discardable.}
    #_  load from memory If a name is given, the image is added to the list of shared images (see: Fl_Shared_Image) and will be available by that name.
    ## original: declare function Fl_PNG_ImageMem(byval e_name as cstring=0, byval buffer as const any ptr, byval datasize as long) as FL_PNG_Image ptr
    proc Fl_PNG_ImageMem* ( e_name:  cstring=nil;  buffer:  pointer;  datasize:  long):  ptr FL_PNG_Image {.cdecl, importc: "Fl_PNG_ImageMem", dynlib: fltk, discardable.}

    #_ ############################################
    #_ # class Fl_JPEG_Image extends Fl_RGB_Image #  truecolor
    #_ ############################################
    ## original: declare function Fl_JPEG_ImageNew(byval filename as cstring) as FL_JPEG_Image ptr
    proc Fl_JPEG_ImageNew* ( filename:  cstring):  ptr FL_JPEG_Image {.cdecl, importc: "Fl_JPEG_ImageNew", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_JPEG_ImageDelete(byref jpg as Fl_JPEG_Image ptr)
    proc Fl_JPEG_ImageDelete*( jpg:  var ptr Fl_JPEG_Image) {.cdecl, importc: "Fl_JPEG_ImageDelete", dynlib: fltk, discardable.}

    let
        Fl_JPG_ImageNew* = Fl_JPEG_ImageNew
        #~ Fl_JPG_ImageDelete* = Fl_JPEG_ImageDelete

    #_  load from memory
    #_  If a name is given, the image is added to the list of shared images (see: Fl_Shared_Image) and will be available by that name.
    ## original: declare function Fl_JPEG_ImageMem(byval a_name as cstring=0, byval buffer as const any ptr) as FL_JPEG_Image ptr
    proc Fl_JPEG_ImageMem* ( a_name:  cstring=nil;  buffer: pointer):  ptr FL_JPEG_Image {.cdecl, importc: "Fl_JPEG_ImageMem", dynlib: fltk, discardable.}
    #define Fl_JPG_ImageMem Fl_JPEG_ImageMem

    #_ ###########################################
    #_ # class Fl_PNM_Image extends Fl_RGB_Image #  truecolor
    #_ ###########################################
    ## original: declare function Fl_PNM_ImageNew (byval filename as cstring) as FL_PNM_Image ptr
    proc Fl_PNM_ImageNew* ( filename:  cstring):  ptr FL_PNM_Image {.cdecl, importc: "Fl_PNM_ImageNew", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_PNM_ImageDelete(byref pnm as Fl_PNM_Image ptr)
    proc Fl_PNM_ImageDelete*( pnm:  var ptr Fl_PNM_Image) {.cdecl, importc: "Fl_PNM_ImageDelete", dynlib: fltk, discardable.}

    #_  ###########################
    #_  # static class Fl_Tooltip #
    #_  ###########################
    #_  Get/Set the tooltip delay. The default delay is 1.0 seconds.
    ## original: declare function Fl_TooltipGetDelay as single
    proc Fl_TooltipGetDelay* ():  single {.cdecl, importc: "Fl_TooltipGetDelay", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_TooltipSetDelay(byval d as single)
    proc Fl_TooltipSetDelay*( d:  single) {.cdecl, importc: "Fl_TooltipSetDelay", dynlib: fltk, discardable.}
    #_   Get/Set the tooltip hover delay, the delay between tooltips. (The default delay is 0.2 seconds.)
    ## original: declare function Fl_TooltipGetHoverdelay as single
    proc Fl_TooltipGetHoverdelay* ():  single {.cdecl, importc: "Fl_TooltipGetHoverdelay", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_TooltipSetHoverdelay(byval hd as single)
    proc Fl_TooltipSetHoverdelay*( hd:  single) {.cdecl, importc: "Fl_TooltipSetHoverdelay", dynlib: fltk, discardable.}
    #_  Returns non-zero if tooltips are enabled.
    ## original: declare function Fl_TooltipGetEnabled as long
    proc Fl_TooltipGetEnabled* ():  long {.cdecl, importc: "Fl_TooltipGetEnabled", dynlib: fltk, discardable.}
    #_  Enables tooltips on all widgets (or disables if blnEnable is 0).
    ## original: declare sub      Fl_TooltipSetEnable(byval blnEnable as long=1)
    proc Fl_TooltipSetEnable*( blnEnable:  long=1) {.cdecl, importc: "Fl_TooltipSetEnable", dynlib: fltk, discardable.}
    #_  Same as enable(0), disables tooltips on all widgets.
    ## original: declare sub      Fl_TooltipDisable
    proc Fl_TooltipDisable*() {.cdecl, importc: "Fl_TooltipDisable", dynlib: fltk, discardable.}
    #_  Get/set the current widget target
    ## original: declare function Fl_TooltipGetCurrentWidget() as Fl_Widget ptr
    proc Fl_TooltipGetCurrentWidget* ():  ptr Fl_Widget {.cdecl, importc: "Fl_TooltipGetCurrentWidget", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_TooltipSetCurrentWidget(byval wgt as Fl_Widget ptr)
    proc Fl_TooltipSetCurrentWidget*( wgt:  ptr Fl_Widget) {.cdecl, importc: "Fl_TooltipSetCurrentWidget", dynlib: fltk, discardable.}
    #_  Get/Set the typeface for the tooltip text.
    ## original: declare function Fl_TooltipGetFont as FL_FONT
    proc Fl_TooltipGetFont* ():  FL_FONT {.cdecl, importc: "Fl_TooltipGetFont", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_TooltipSetFont(byval f as FL_FONT)
    proc Fl_TooltipSetFont*( f:  FL_FONT) {.cdecl, importc: "Fl_TooltipSetFont", dynlib: fltk, discardable.}
    #_  Get/Set the size of the tooltip text.
    ## original: declare function Fl_TooltipGetFontSize as FL_FONTSIZE
    proc Fl_TooltipGetFontSize* ():  FL_FONTSIZE {.cdecl, importc: "Fl_TooltipGetFontSize", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_TooltipSetFontSize(byval s as FL_FONTSIZE)
    proc Fl_TooltipSetFontSize*( s:  FL_FONTSIZE) {.cdecl, importc: "Fl_TooltipSetFontSize", dynlib: fltk, discardable.}
    #_  Get/Set the background color for tooltips. (The default background color is a pale yellow.)
    ## original: declare function Fl_TooltipGetColor as Fl_COLOR
    proc Fl_TooltipGetColor* ():  Fl_COLOR {.cdecl, importc: "Fl_TooltipGetColor", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_TooltipSetColor(byval c as Fl_COLOR)
    proc Fl_TooltipSetColor*( c:  Fl_COLOR) {.cdecl, importc: "Fl_TooltipSetColor", dynlib: fltk, discardable.}
    #_  Get/set the color of the text in the tooltip. (The default is  black.)
    ## original: declare function Fl_TooltipGetTextColor as Fl_COLOR
    proc Fl_TooltipGetTextColor* ():  Fl_COLOR {.cdecl, importc: "Fl_TooltipGetTextColor", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_TooltipSetTextColor(byval c as Fl_COLOR)
    proc Fl_TooltipSetTextColor*( c:  Fl_COLOR) {.cdecl, importc: "Fl_TooltipSetTextColor", dynlib: fltk, discardable.}
    #_  Get/Set the amount of extra space left/right of the tooltip's text. (Default is 3.)
    ## original: declare function Fl_TooltipGetMarginWidth as long
    proc Fl_TooltipGetMarginWidth* ():  long {.cdecl, importc: "Fl_TooltipGetMarginWidth", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_TooltipSetMarginWidth(byval w as long)
    proc Fl_TooltipSetMarginWidth*( w:  long) {.cdecl, importc: "Fl_TooltipSetMarginWidth", dynlib: fltk, discardable.}
    #_  Get/Set the amount of extra space above and below the tooltip's text. (Default is 3.)
    ## original: declare sub      Fl_TooltipSetMarginHeight(byval h as long)
    proc Fl_TooltipSetMarginHeight*( h:  long) {.cdecl, importc: "Fl_TooltipSetMarginHeight", dynlib: fltk, discardable.}
    ## original: declare function Fl_TooltipGetMarginHeight as long
    proc Fl_TooltipGetMarginHeight* ():  long {.cdecl, importc: "Fl_TooltipGetMarginHeight", dynlib: fltk, discardable.}
    #_  Get/Set the maximum width for tooltip's text before it word wraps. (Default is 400.)
    ## original: declare function Fl_TooltipGetWrapWidth as long
    proc Fl_TooltipGetWrapWidth* ():  long {.cdecl, importc: "Fl_TooltipGetWrapWidth", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_TooltipSetWrapWidth(byval w as long)
    proc Fl_TooltipSetWrapWidth*( w:  long) {.cdecl, importc: "Fl_TooltipSetWrapWidth", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_TooltipEnterArea(byval wgt as Fl_Widget ptr, byval x as long, byval y as long, byval w as long, byval h as long, byval tip as cstring)
    proc Fl_TooltipEnterArea*( wgt:  ptr Fl_Widget;  x:  long;  y:  long;  w:  long;  h:  long;  tip:  cstring) {.cdecl, importc: "Fl_TooltipEnterArea", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_TooltipEnter(byval wgt as Fl_Widget ptr)
    proc Fl_TooltipEnter*( wgt:  ptr Fl_Widget) {.cdecl, importc: "Fl_TooltipEnter", dynlib: fltk, discardable.}

    #_ ###################
    #_ # static class Fl #
    #_ ###################
    ## original: declare sub      Fl_Free(byref By_FLTK_Allocated_Pointer as any ptr)
    proc Fl_Free*( By_FLTK_Allocated_Pointer:  var pointer) {.cdecl, importc: "Fl_Free", dynlib: fltk, discardable.}

    #ifdef __FB_WIN32__
    ## original: declare function Fl_Find(byval xid as any ptr) as Fl_Window ptr
    proc Fl_Find* ( xid:  pointer):  ptr Fl_Window {.cdecl, importc: "Fl_Find", dynlib: fltk, discardable.}
    ## original: declare function Fl_XID(byval win as const Fl_Window ptr) as any ptr
    proc Fl_XID* ( win:  ptr Fl_Window):  pointer {.cdecl, importc: "Fl_XID", dynlib: fltk, discardable.}
    #else
    ## original: declare function Fl_Find(byval xid as ulong) as Fl_Window ptr
    proc Fl_Find* ( xid:  ulong):  ptr Fl_Window {.cdecl, importc: "Fl_Find", dynlib: fltk, discardable.}
    ## original: declare function Fl_XID(byval win as const Fl_Window ptr) as ulong
    #~ proc Fl_XID* ( win:  ptr Fl_Window):  ulong {.cdecl, importc: "Fl_XID", dynlib: fltk, discardable.}
    #endif

    #_  #############
    #_  # callbacks #
    #_  #############
    #_  Adds an awake handler for use in Fl_Awake().
    ## original: declare function Fl_AddAwakeHandler(byval h as Fl_Awake_Handler, byval pArg as any ptr=0) as long
    proc Fl_AddAwakeHandler* ( h:  Fl_Awake_Handler;  pArg:  pointer):  long {.cdecl, importc: "Fl_AddAwakeHandler", dynlib: fltk, discardable.}
    #_  Sends a message pointer to the main thread, causing any pending Fl_Wait() call to terminate
    #_  so that the main thread can retrieve the message and any pending redraws can be processed.
    ## original: declare sub      Fl_Awake(byval message as any ptr = 0)
    proc Fl_Awake*( message:  pointer=nil) {.cdecl, importc: "Fl_Awake", dynlib: fltk, discardable.}

    ## original: declare function Fl_Awake2(byval h as Fl_Awake_Handler, byval message as any ptr = 0) as long
    proc Fl_Awake2* ( h:  Fl_Awake_Handler;  message:  pointer=nil):  long {.cdecl, importc: "Fl_Awake2", dynlib: fltk, discardable.}
    #_  Gets the last stored awake handler for use in Fl_Awake().
    ## original: declare function Fl_GetAwakeHandler_(byref h as Fl_Awake_Handler, byref pArg as any ptr) as long
    proc Fl_GetAwakeHandler* ( h:  var Fl_Awake_Handler;  pArg:  pointer):  long {.cdecl, importc: "Fl_GetAwakeHandler_", dynlib: fltk, discardable.}
    #_  FLTK will call this callback just before it flushes the display and waits for events.
    ## original: declare sub      Fl_AddCheck(byval h as Fl_Timeout_Handler, byval pArg as any ptr = 0)
    proc Fl_AddCheck*( h:  Fl_Timeout_Handler;  pArg:  pointer=nil) {.cdecl, importc: "Fl_AddCheck", dynlib: fltk, discardable.}
    #_  Removes a check callback.
    ## original: declare sub      Fl_RemoveCheck(byval h as Fl_Timeout_Handler, byval pdata as any ptr=0)
    proc Fl_RemoveCheck*( h:  Fl_Timeout_Handler;  pdata:  pointer=nil) {.cdecl, importc: "Fl_RemoveCheck", dynlib: fltk, discardable.}

    ## original: declare function Fl_HasCheck(byval h as Fl_Timeout_Handler, byval pArg as any ptr = 0) as long
    proc Fl_HasCheck* ( h:  Fl_Timeout_Handler;  pArg:  pointer=nil):  long {.cdecl, importc: "Fl_HasCheck", dynlib: fltk, discardable.}
    #_  FLTK will call the registered callback whenever there is a change to the selection buffer or the clipboard.
    #_  The source argument indicates which of the two has changed. Only changes by other applications are reported.
    ## original: declare sub      Fl_AddClipboardNotify(byval h as Fl_Clipboard_Notify_Handler, byval pArg as any ptr=0)
    proc Fl_AddClipboardNotify*( h:  Fl_Clipboard_Notify_Handler;  pArg:  pointer=nil) {.cdecl, importc: "Fl_AddClipboardNotify", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_RemoveClipboardNotify(byval h as Fl_Clipboard_Notify_Handler)
    proc Fl_RemoveClipboardNotify*( h:  Fl_Clipboard_Notify_Handler) {.cdecl, importc: "Fl_RemoveClipboardNotify", dynlib: fltk, discardable.}
    #_  Adds file descriptor fd to listen to.
    #_  When the fd becomes ready for reading Fl_Wait() will call the callback and then return.
    #_  The callback is passed the fd and the arbitrary pArg argument.
    #_  The second version takes a when bitfield, with the bits FL_READ, FL_WRITE, and FL_EXCEPT defined, to indicate when the callback should be done.
    #_  There can only be one callback of each type for a file descriptor. Fl_Rremove_fd() gets rid of all the callbacks for a given file descriptor.
    #_  Under UNIX any file descriptor can be monitored (files, devices, pipes, sockets, etc.).
    #_  Due to limitations in Microsoft Windows, WIN32 applications can only monitor sockets.
    ## original: declare sub      Fl_Add_fd(byval fd as long, byval cb as Fl_FD_Handler, byval pArg as any ptr=0)
    proc Fl_Add_fd*( fd:  long;  cb:  Fl_FD_Handler;  pArg:  pointer=nil) {.cdecl, importc: "Fl_Add_fd", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Add_fd2(byval fd as long, byval when as FD_WHEN, byval cb as Fl_FD_Handler, byval pArg as any ptr=0)
    proc Fl_Add_fd2*( fd:  long;  when_TT:  FD_WHEN;  cb:  Fl_FD_Handler;  pArg:  pointer=nil) {.cdecl, importc: "Fl_Add_fd2", dynlib: fltk, discardable.}
    #_  Removes a file descriptor handler. see Fl_Add_fd()
    ## original: declare sub      Fl_RemoveFD(byval fd as long)
    proc Fl_RemoveFD*( fd:  long) {.cdecl, importc: "Fl_RemoveFD", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_RemoveFD2(byval fd as long, byval when as long)
    proc Fl_RemoveFD2*( fd:  long;  when_TT:  long) {.cdecl, importc: "Fl_RemoveFD2", dynlib: fltk, discardable.}
    #_  Install a function to parse unrecognized events.
    ## original: declare sub      Fl_AddHandler(byval h as Fl_Event_Handler)
    proc Fl_AddHandler*( h:  Fl_Event_Handler) {.cdecl, importc: "Fl_AddHandler", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_RemoveHandler(byval h as Fl_Event_Handler)
    proc Fl_RemoveHandler*( h:  Fl_Event_Handler) {.cdecl, importc: "Fl_RemoveHandler", dynlib: fltk, discardable.}
    #_  Adds a callback function that is called every time by Fl_Wait() and also makes it act as though the timeout is zero
    #_  (this makes Fl_Wait() return immediately, so if it's in a loop it's called repeatedly, and thus the idle fucntion is called repeatedly).
    ## original: declare sub      Fl_AddIdle(byval h as Fl_Idle_Handler, byval pArg as any ptr = 0)
    proc Fl_AddIdle*( h:  Fl_Idle_Handler;  pArg:  pointer=nil) {.cdecl, importc: "Fl_AddIdle", dynlib: fltk, discardable.}

    ## original: declare function Fl_HasIdle(byval h as Fl_Idle_Handler, byval pArg as any ptr = 0) as long
    proc Fl_HasIdle* ( h:  Fl_Idle_Handler;  pArg:  pointer=nil):  long {.cdecl, importc: "Fl_HasIdle", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_RemoveIdle(byval h as Fl_Idle_Handler, byval pArg as any ptr = 0)
    proc Fl_RemoveIdle*( h:  Fl_Idle_Handler;  pArg:  pointer=nil) {.cdecl, importc: "Fl_RemoveIdle", dynlib: fltk, discardable.}
    #_  will be removed use Fl_AddIdle() instead
    ## original: declare sub      Fl_SetIdle(byval h as Fl_Old_Idle_Handler)
    proc Fl_SetIdle*( h:  Fl_Old_Idle_Handler) {.cdecl, importc: "Fl_SetIdle", dynlib: fltk, discardable.}
    #_  Adds a one-shot timeout callback.
    ## original: declare sub      Fl_AddTimeout   (byval t as double, byval h as Fl_Timeout_Handler, byval pArg as any ptr = 0)
    proc Fl_AddTimeout*( t:  double;  h:  Fl_Timeout_Handler;  pArg:  pointer=nil) {.cdecl, importc: "Fl_AddTimeout", dynlib: fltk, discardable.}

    ## original: declare function Fl_HasTimeout   (byval h as Fl_Timeout_Handler, byval pArg as any ptr = 0) as long
    proc Fl_HasTimeout* ( h:  Fl_Timeout_Handler;  pArg:  pointer=nil):  long {.cdecl, importc: "Fl_HasTimeout", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_RepeatTimeout(byval t as double, byval h as Fl_Timeout_Handler, byval pArg as any ptr = 0)
    proc Fl_RepeatTimeout*( t:  double;  h:  Fl_Timeout_Handler;  pArg:  pointer=nil) {.cdecl, importc: "Fl_RepeatTimeout", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_RemoveTimeout(byval h as Fl_Timeout_Handler, byval pArg as any ptr = 0)
    proc Fl_RemoveTimeout*( h:  Fl_Timeout_Handler;  pArg:  pointer=nil) {.cdecl, importc: "Fl_RemoveTimeout", dynlib: fltk, discardable.}
    #_  For back compatibility, sets the void Fl_Fatal handler callback.
    ## original: declare sub      Fl_SetAbort(byval h as Fl_Abort_Handler)
    #~ proc Fl_SetAbort*( h:  Fl_Abort_Handler) {.cdecl, importc: "Fl_SetAbort", dynlib: fltk, discardable.}
    #_  For back compatibility, sets the Fl_Atclose handler callback.
    ## original: declare sub      Fl_SetAtclose(byval h as Fl_Atclose_Handler)
    proc Fl_SetAtclose*( h:  Fl_Atclose_Handler) {.cdecl, importc: "Fl_SetAtclose", dynlib: fltk, discardable.}
    #_  Default callback for window widgets.
    ## original: declare sub      Fl_DefaultAtclose(byval win as Fl_Window ptr, byval pArg as any ptr)
    proc Fl_DefaultAtclose*( win:  ptr Fl_Window;  pArg:  pointer) {.cdecl, importc: "Fl_DefaultAtclose", dynlib: fltk, discardable.}

    #_  ##########
    #_  # thread #
    #_  ##########
    #_  The method blocks the current thread until it can safely access FLTK widgets and data.
    ## original: declare function Fl_Lock as long
    proc Fl_Lock* ():  long {.cdecl, importc: "Fl_Lock", dynlib: fltk, discardable.}
    #_  The method releases the lock that was set using the Fl_Lock() method.
    ## original: declare sub      Fl_Unlock
    proc Fl_Unlock*() {.cdecl, importc: "Fl_Unlock", dynlib: fltk, discardable.}
    #_  The Fl_ThreadMessage() method returns the last message that was sent from a child by the Fl_Awake() method.
    ## original: declare function Fl_ThreadMessage as any ptr
    proc Fl_ThreadMessage* ():  pointer {.cdecl, importc: "Fl_ThreadMessage", dynlib: fltk, discardable.}

    #_  ################
    #_  # message loop #
    #_  ################
    #_  Same as Fl_Wait2(0).
    ## original: declare function Fl_Check as long
    proc Fl_Check* ():  long {.cdecl, importc: "Fl_Check", dynlib: fltk, discardable.}
    #_  This is similar to Fl_Check() except this does not call Fl_Flush() or any callbacks,
    #_  which is useful if your program is in a state where such callbacks are illegal.
    ## original: declare function Fl_Ready as long
    proc Fl_Ready* ():  long {.cdecl, importc: "Fl_Ready", dynlib: fltk, discardable.}
    #_  Waits until "something happens" and then returns.
    #_  Call this repeatedly to "run" your program. You can also check what happened each time after this returns,
    #_  which is quite useful for managing program state.
    #_  What this really does is call all idle callbacks, all elapsed timeouts, call Fl_Flush() to get the screen to update,
    #_  and then wait some time (zero if there are idle callbacks, the shortest of all pending timeouts, or infinity),
    #_  for any events from the user or any Fl_Add_fd() callbacks. It then handles the events and calls the callbacks and then returns.
    ## original: declare function Fl_Wait as long
    proc Fl_Wait* ():  long {.cdecl, importc: "Fl_Wait", dynlib: fltk, discardable.}
    #_  Waits a maximum of time seconds. It can return much sooner if something happens.
    ## original: declare function Fl_Wait2(byval timeout as double) as double
    proc Fl_Wait2* ( timeout:  double):  double {.cdecl, importc: "Fl_Wait2", dynlib: fltk, discardable.}
    #_  As long as any windows are displayed this calls Fl_Wait() repeatedly.
    ## original: declare function Fl_Run as long
    proc Fl_Run* ():  long {.cdecl, importc: "Fl_Run", dynlib: fltk, discardable.}

    #_  ############
    #_  # Fl Color #
    #_  ############
    #_  Makes FLTK use its own colormap.
    ## original: declare sub      Fl_OwnColormap
    proc Fl_OwnColormap*() {.cdecl, importc: "Fl_OwnColormap", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_GetSystemColors
    proc Fl_GetSystemColors*() {.cdecl, importc: "Fl_GetSystemColors", dynlib: fltk, discardable.}
    #_  Changes Fl_COLOR(FL_FOREGROUND_COLOR).
    ## original: declare sub      Fl_Foreground(byval r as ubyte, byval g as ubyte, byval b as ubyte)
    proc Fl_Foreground*( r:  ubyte;  g:  ubyte;  b:  ubyte) {.cdecl, importc: "Fl_Foreground", dynlib: fltk, discardable.}
    #_  Frees the specified color from the colormap, if applicable.
    ## original: declare sub      Fl_FreeColor (byval i as Fl_COLOR, byval overlay as long=0)
    proc Fl_FreeColor*( i:  Fl_COLOR;  overlay:  long=0) {.cdecl, importc: "Fl_FreeColor", dynlib: fltk, discardable.}

    #_  Returns the RGB values for the given FLTK color.
    ## original: declare sub      Fl_GetColor(byval i as Fl_COLOR, byref r as ubyte, byref g as ubyte, byref b as ubyte)
    proc Fl_GetColor*( i:  Fl_COLOR;  r:  var ubyte;  g:  var ubyte;  b:  var ubyte) {.cdecl, importc: "Fl_GetColor", dynlib: fltk, discardable.}

    ## original: declare function Fl_GetColor2(byval i as Fl_COLOR) as ulong
    proc Fl_GetColor2* ( i:  Fl_COLOR):  ulong {.cdecl, importc: "Fl_GetColor2", dynlib: fltk, discardable.}
    #_  Sets an entry in the Fl_COLOR index table.
    ## original: declare sub      Fl_SetColor (byval n as Fl_COLOR, byval c as ulong)
    proc Fl_SetColor*( n:  Fl_COLOR;  c:  ulong) {.cdecl, importc: "Fl_SetColor", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_SetColor2(byval n as Fl_COLOR, byval r as ubyte, byval g as ubyte, byval b as ubyte)
    proc Fl_SetColor2*( n:  Fl_COLOR;  r:  ubyte;  g:  ubyte;  b:  ubyte) {.cdecl, importc: "Fl_SetColor2", dynlib: fltk, discardable.}

    #_  Returns Fl_COLOR value from rgb triples
    ## original: declare function Fl_RGB_Color(byval r as ubyte, byval g as ubyte, byval b as ubyte) as Fl_COLOR
    proc Fl_RGB_Color* ( r:  ubyte;  g:  ubyte;  b:  ubyte):  Fl_COLOR {.cdecl, importc: "Fl_RGB_Color", dynlib: fltk, discardable.}
    #_  Returns a gray Fl_COLOR value
    ## original: declare function Fl_Gray_Color(byval gray as ubyte) as Fl_COLOR
    proc Fl_Gray_Color* ( gray:  ubyte):  Fl_COLOR {.cdecl, importc: "Fl_Gray_Color", dynlib: fltk, discardable.}
    #_  Returns Fl_COLOR cube value from rgb triples
    ## original: declare function Fl_Color_Cube(byval r as long, byval g as long, byval b as long) as Fl_COLOR
    proc Fl_Color_Cube* ( r:  long;  g:  long;  b:  long):  Fl_COLOR {.cdecl, importc: "Fl_Color_Cube", dynlib: fltk, discardable.}

    ## original: declare function Fl_Inactive(byval c as Fl_COLOR) as Fl_COLOR
    proc Fl_Inactive* ( c:  Fl_COLOR):  Fl_COLOR {.cdecl, importc: "Fl_Inactive", dynlib: fltk, discardable.}

    ## original: declare function Fl_Contrast(byval fg as Fl_COLOR, byval bg as Fl_COLOR) as Fl_COLOR
    proc Fl_Contrast* ( fg:  Fl_COLOR;  bg:  Fl_COLOR):  Fl_COLOR {.cdecl, importc: "Fl_Contrast", dynlib: fltk, discardable.}

    ## original: declare function Fl_Color_Average(byval c1 as Fl_COLOR, byval c2 as Fl_COLOR, byval weight as single) as Fl_COLOR
    proc Fl_Color_Average* ( c1:  Fl_COLOR;  c2:  Fl_COLOR;  weight:  single):  Fl_COLOR {.cdecl, importc: "Fl_Color_Average", dynlib: fltk, discardable.}
    #_  Changes Fl_COLOR(FL_BACKGROUND_COLOR) to the given color, and changes the gray ramp from 32 to 56 to black to white.
    ## original: declare sub      Fl_Background(byval r as ubyte, byval g as ubyte, byval b as ubyte)
    proc Fl_Background*( r:  ubyte;  g:  ubyte;  b:  ubyte) {.cdecl, importc: "Fl_Background", dynlib: fltk, discardable.}
    #_  Changes the alternative background color.
    ## original: declare sub      Fl_Background2(byval r as ubyte, byval g as ubyte, byval b as ubyte)
    proc Fl_Background2*( r:  ubyte;  g:  ubyte;  b:  ubyte) {.cdecl, importc: "Fl_Background2", dynlib: fltk, discardable.}

    #_  #######
    #_  # box #
    #_  #######
    #_  Returns the offset's for the given boxtype.
    ## original: declare function Fl_BoxDX(byval bt as FL_BOXTYPE) as long
    proc Fl_BoxDX* ( bt:  FL_BOXTYPE):  long {.cdecl, importc: "Fl_BoxDX", dynlib: fltk, discardable.}

    ## original: declare function Fl_BoxDY(byval bt as FL_BOXTYPE) as long
    proc Fl_BoxDY* ( bt:  FL_BOXTYPE):  long {.cdecl, importc: "Fl_BoxDY", dynlib: fltk, discardable.}

    ## original: declare function Fl_BoxDW(byval bt as FL_BOXTYPE) as long
    proc Fl_BoxDW* ( bt:  FL_BOXTYPE):  long {.cdecl, importc: "Fl_BoxDW", dynlib: fltk, discardable.}

    ## original: declare function Fl_BoxDH(byval bt as FL_BOXTYPE) as long
    proc Fl_BoxDH* ( bt:  FL_BOXTYPE):  long {.cdecl, importc: "Fl_BoxDH", dynlib: fltk, discardable.}
    #_  Gets/Sets the current box drawing function for the specified box type.
    ## original: declare function Fl_GetBoxType(byval bt as FL_BOXTYPE) as Fl_Box_Draw_F
    proc Fl_GetBoxType* ( bt:  FL_BOXTYPE):  Fl_Box_Draw_F {.cdecl, importc: "Fl_GetBoxType", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_SetBoxType2(byval bt as FL_BOXTYPE, byval f as Fl_Box_Draw_F, byval a as ubyte, byval b as ubyte, byval c as ubyte, byval d as ubyte)
    proc Fl_SetBoxType2*( bt:  FL_BOXTYPE;  f:  Fl_Box_Draw_F;  a:  ubyte;  b:  ubyte;  c:  ubyte;  d:  ubyte) {.cdecl, importc: "Fl_SetBoxType2", dynlib: fltk, discardable.}
    #_  Determines if the current draw box is active or inactive.
    #_  (If inactive, the box color is changed by the inactive color.)
    ## original: declare function Fl_DrawBoxActive as long
    proc Fl_DrawBoxActive* ():  long {.cdecl, importc: "Fl_DrawBoxActive", dynlib: fltk, discardable.}
    #_  Copies the from boxtype.
    ## original: declare sub      Fl_SetBoxType(byval bt as FL_BOXTYPE, byval from as FL_BOXTYPE)
    proc Fl_SetBoxType*( bt:  FL_BOXTYPE;  from_TT:  FL_BOXTYPE) {.cdecl, importc: "Fl_SetBoxType", dynlib: fltk, discardable.}

    #_  ##########
    #_  # widget #
    #_  ##########
    #_  Adds a widget pointer to the widget watch list.
    ## original: declare sub      Fl_WatchWidgetPointer(byref widget as Fl_Widget ptr)
    proc Fl_WatchWidgetPointer*( widget:  var ptr Fl_Widget) {.cdecl, importc: "Fl_WatchWidgetPointer", dynlib: fltk, discardable.}
    #_  Clears a widget pointer in the watch list.(Internal use only !)
    ## original: declare sub      Fl_ClearWidgetPointer(byval wgt as const Fl_Widget ptr)
    proc Fl_ClearWidgetPointer*( wgt:  ptr Fl_Widget) {.cdecl, importc: "Fl_ClearWidgetPointer", dynlib: fltk, discardable.}
    #_  Releases a widget pointer from the watch list.
    ## original: declare sub      Fl_ReleaseWidgetPointer(byref widget as Fl_Widget ptr)
    proc Fl_ReleaseWidgetPointer*( widget:  var ptr Fl_Widget) {.cdecl, importc: "Fl_ReleaseWidgetPointer", dynlib: fltk, discardable.}
    #_  Schedules a widget for deletion at the next call to the event loop.
    #_  Use this method to delete a widget inside a callback function.
    ## original: declare sub      Fl_DeleteWidget(byval wgt as Fl_Widget ptr)
    proc Fl_DeleteWidget*( wgt:  ptr Fl_Widget) {.cdecl, importc: "Fl_DeleteWidget", dynlib: fltk, discardable.}
    #_  Deletes widgets previously scheduled for deletion. (This is for internal use only.)
    ## original: declare sub      Fl_DoWidgetDeletion
    proc Fl_DoWidgetDeletion*() {.cdecl, importc: "Fl_DoWidgetDeletion", dynlib: fltk, discardable.}
    #_  Sets/Gets the widget that is below the mouse.
    ## original: declare sub      Fl_SetBelowmouse(byval widget as Fl_Widget ptr)
    proc Fl_SetBelowmouse*( widget:  ptr Fl_Widget) {.cdecl, importc: "Fl_SetBelowmouse", dynlib: fltk, discardable.}

    ## original: declare function Fl_GetBelowmouse() as Fl_Widget ptr
    proc Fl_GetBelowmouse* ():  ptr Fl_Widget {.cdecl, importc: "Fl_GetBelowmouse", dynlib: fltk, discardable.}
    #_  Sets the widget that will receive FL_KEYBOARD events.
    ## original: declare sub      Fl_SetFocus(byval wgt as Fl_Widget ptr)
    proc Fl_SetFocus*( wgt:  ptr Fl_Widget) {.cdecl, importc: "Fl_SetFocus", dynlib: fltk, discardable.}
    #_  Gets the current widget with the focus.
    ## original: declare function Fl_GetFocus as Fl_Widget ptr
    proc Fl_GetFocus* ():  ptr Fl_Widget {.cdecl, importc: "Fl_GetFocus", dynlib: fltk, discardable.}
    #_  Gets/Sets the widget that is being pushed.
    ## original: declare function Fl_GetPushed as Fl_Widget ptr
    proc Fl_GetPushed* ():  ptr Fl_Widget {.cdecl, importc: "Fl_GetPushed", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_SetPushed(byval wgt as Fl_Widget ptr)
    proc Fl_SetPushed*( wgt:  ptr Fl_Widget) {.cdecl, importc: "Fl_SetPushed", dynlib: fltk, discardable.}
    #_  Redraws all widgets.
    ## original: declare sub      Fl_Redraw
    proc Fl_Redraw*() {.cdecl, importc: "Fl_Redraw", dynlib: fltk, discardable.}
    #_  All Fl_Widgets that don't have a callback defined use a default callback that puts a pointer
    #_  to the widget in this queue, and this method reads the oldest widget out of this queue.
    ## original: declare function Fl_ReadQueue as Fl_Widget ptr
    proc Fl_ReadQueue* ():  ptr Fl_Widget {.cdecl, importc: "Fl_ReadQueue", dynlib: fltk, discardable.}

    #_  ##########
    #_  # window #
    #_  ##########
    #_  Causes all the windows that need it to be redrawn and graphics forced out through the pipes.
    ## original: declare sub      Fl_Flush
    proc Fl_Flush*() {.cdecl, importc: "Fl_Flush", dynlib: fltk, discardable.}
    #_  Handle events from the window system.
    ## original: declare function Fl_Handle(byval event as FL_EVENT, byval win as Fl_Window ptr) as long
    proc Fl_Handle* ( event:  FL_EVENT;  win:  ptr Fl_Window):  long {.cdecl, importc: "Fl_Handle", dynlib: fltk, discardable.}

    ## original: declare function Fl_Handle_(byval event as FL_EVENT, byval win as Fl_Window ptr) as long
    #~ proc Fl_Handle_* ( event:  FL_EVENT;  win:  ptr Fl_Window):  long {.cdecl, importc: "Fl_Handle_", dynlib: fltk, discardable.}
    #_  Returns the top-most modal() window currently shown.
    ## original: declare function Fl_Modal as Fl_Window ptr
    proc Fl_Modal* ():  ptr Fl_Window {.cdecl, importc: "Fl_Modal", dynlib: fltk, discardable.}
    #_  Returns the first top-level window in the list of shown() windows.
    ## original: declare function Fl_GetFirstWindow as Fl_Window ptr
    proc Fl_GetFirstWindow* ():  ptr Fl_Window {.cdecl, importc: "Fl_GetFirstWindow", dynlib: fltk, discardable.}
    #_  Sets the window that is returned by Fl_GetFirstWindow().
    ## original: declare sub      Fl_SetFirstWindow(byval win as Fl_Window ptr)
    proc Fl_SetFirstWindow*( win:  ptr Fl_Window) {.cdecl, importc: "Fl_SetFirstWindow", dynlib: fltk, discardable.}
    #_  Returns the next top-level window in the list of shown() windows.
    ## original: declare function Fl_NextWindow(byval win as const Fl_Window ptr) as Fl_Window ptr
    proc Fl_NextWindow* ( win:  ptr Fl_Window):  ptr Fl_Window {.cdecl, importc: "Fl_NextWindow", dynlib: fltk, discardable.}
    #_  Returns the window that currently receives all events.
    ## original: declare function Fl_GetGrab as Fl_Window ptr
    proc Fl_GetGrab* ():  ptr Fl_Window {.cdecl, importc: "Fl_GetGrab", dynlib: fltk, discardable.}
    #_  Selects the window to grab.
    ## original: declare sub      Fl_SetGrab(byval win as Fl_Window ptr)
    proc Fl_SetGrab*( win:  ptr Fl_Window) {.cdecl, importc: "Fl_SetGrab", dynlib: fltk, discardable.}
    #_  Releases the current grabbed window, equals Fl_SetGrab(0).
    ## original: declare sub      Fl_Release
    proc Fl_Release*() {.cdecl, importc: "Fl_Release", dynlib: fltk, discardable.}

    #_  #################
    #_  # drag and drob #
    #_  #################
    #_  Initiate a Drag And Drop operation.
    ## original: declare function Fl_Dnd as long
    proc Fl_Dnd* ():  long {.cdecl, importc: "Fl_Dnd", dynlib: fltk, discardable.}
    #_  Gets or sets whether drag and drop text operations are supported.
    ## original: declare sub      Fl_SetDndTextOps(byval v as long)
    proc Fl_SetDndTextOps*( v:  long) {.cdecl, importc: "Fl_SetDndTextOps", dynlib: fltk, discardable.}
    ## original: declare function Fl_GetDndTextOps as long
    proc Fl_GetDndTextOps* ():  long {.cdecl, importc: "Fl_GetDndTextOps", dynlib: fltk, discardable.}

    #_  ###########################
    #_  # clipboard and selection #
    #_  ###########################
    #_  Copies the data pointed to by stuff to the selection buffer (destination is 0)
    #_  or the clipboard (destination is 1). length is the number of relevant bytes in stuff.
    #_  type is always Fl_clipboard_plain_text. ("text/plain")

    #_  The selection buffer is used for middle-mouse pastes and for drag-and-drop selections.
    #_  The clipboard is used for traditional copy/cut/paste operations.
    ## original: declare sub      Fl_Copy(byval stuff as cstring, byval length as long, byval destination as long=0, byval stuffType as cstring=@Fl_clipboard_plain_text)
    proc Fl_Copy*( stuff:  cstring;  length:  long;  destination:  long=0;  stuffType:  cstring=Fl_clipboard_plain_text) {.cdecl, importc: "Fl_Copy", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Paste(byval receiver as Fl_Widget ptr, byval source as long, byval type_ as cstring = @Fl_clipboard_plain_text)
    proc Fl_Paste*( receiver:  ptr Fl_Widget;  source:  long;  type_TT:  cstring=cstring(Fl_clipboard_plain_text)) {.cdecl, importc: "Fl_Paste", dynlib: fltk, discardable.}
    #_  Changes the current selection.
    #_  The block of text is copied to an internal buffer by FLTK
    #_  (be careful if doing this in response to an FL_PASTE as this may be the same buffer returned by event_text()).
    #_  The selection_owner() widget is set to the passed owner.
    ## original: declare sub      Fl_Selection(byval owner as Fl_Widget ptr, byval text as cstring, byval size as long)
    proc Fl_Selection*( owner:  ptr Fl_Widget;  text:  cstring;  size:  long) {.cdecl, importc: "Fl_Selection", dynlib: fltk, discardable.}
    #_  Back-compatibility only:
    #_  The single-argument call can be used to move the selection to another widget
    #_  or to set the owner to NULL, without changing the actual text of the selection.
    ## original: declare sub      Fl_SetSelectionOwner(byval wgt as Fl_Widget ptr)
    proc Fl_SetSelectionOwner*( wgt:  ptr Fl_Widget) {.cdecl, importc: "Fl_SetSelectionOwner", dynlib: fltk, discardable.}
    #_  back-compatibility only:
    #_  Gets the widget owning the current selection
    ## original: declare function Fl_GetSelectionOwner as Fl_Widget ptr
    proc Fl_GetSelectionOwner* ():  ptr Fl_Widget {.cdecl, importc: "Fl_GetSelectionOwner", dynlib: fltk, discardable.}

    #_  ###########
    #_  # options #
    #_  ###########
    #_  FLTK library options management. see also http://www.fltk.org/doc-1.3/classFl.html#a43e6e0bbbc03cad134d928d4edd48d1d
    ## original: declare function Fl_GetOption(byval opt as Fl_Option) as long
    proc Fl_GetOption* ( opt:  Fl_Option):  long {.cdecl, importc: "Fl_GetOption", dynlib: fltk, discardable.}
    #_  Override an option while the application is running.
    ## original: declare sub      Fl_SetOption(byval opt as Fl_Option, byval value as long)
    proc Fl_SetOption*( opt:  Fl_Option;  value:  long) {.cdecl, importc: "Fl_SetOption", dynlib: fltk, discardable.}

    #_  #########
    #_  # event #
    #_  #########
    #_  Returns the last event that was processed.
    ## original: declare function Fl_EventNumber as long
    proc Fl_EventNumber* ():  long {.cdecl, importc: "Fl_EventNumber", dynlib: fltk, discardable.}
    #_  Gets which particular mouse button caused the current event.
    ## original: declare function Fl_EventButton as long
    proc Fl_EventButton* ():  long {.cdecl, importc: "Fl_EventButton", dynlib: fltk, discardable.}
    #_  Returns non-zero if mouse button 1,2 or 3 is currently held down.
    ## original: declare function Fl_EventButton1 as long
    proc Fl_EventButton1* ():  long {.cdecl, importc: "Fl_EventButton1", dynlib: fltk, discardable.}

    ## original: declare function Fl_EventButton2 as long
    proc Fl_EventButton2* ():  long {.cdecl, importc: "Fl_EventButton2", dynlib: fltk, discardable.}

    ## original: declare function Fl_EventButton3 as long
    proc Fl_EventButton3* ():  long {.cdecl, importc: "Fl_EventButton3", dynlib: fltk, discardable.}
    #_  Returns the mouse buttons state bits if non-zero, then at least one button is pressed now.
    ## original: declare function Fl_EventButtons as long
    proc Fl_EventButtons* ():  long {.cdecl, importc: "Fl_EventButtons", dynlib: fltk, discardable.}
    #_  Returns non zero if we had a double click event.
    ## original: declare function Fl_GetEventClicks as long
    proc Fl_GetEventClicks* ():  long {.cdecl, importc: "Fl_GetEventClicks", dynlib: fltk, discardable.}
    #_  Manually sets the number returned by Fl_GetEventClicks().
    ## original: declare sub      Fl_SetEventClicks(byval i as long)
    proc Fl_SetEventClicks*( i:  long) {.cdecl, importc: "Fl_SetEventClicks", dynlib: fltk, discardable.}
    #_  Set a new event dispatch function.
    ## original: declare sub      Fl_SetEventDispatch(byval d as Fl_Event_Dispatch)
    proc Fl_SetEventDispatch*( d:  Fl_Event_Dispatch) {.cdecl, importc: "Fl_SetEventDispatch", dynlib: fltk, discardable.}
    #_  Return the current event dispatch function.
    ## original: declare function Fl_GetEventDispatch as Fl_Event_Dispatch
    proc Fl_GetEventDispatch* ():  Fl_Event_Dispatch {.cdecl, importc: "Fl_GetEventDispatch", dynlib: fltk, discardable.}
    #_  Returns whether or not the mouse event is inside a given child widget.
    ## original: declare function Fl_EventInside(byval wgt as const Fl_Widget ptr) as long
    proc Fl_EventInside* ( wgt:  ptr Fl_Widget):  long {.cdecl, importc: "Fl_EventInside", dynlib: fltk, discardable.}
    #_  Returns whether or not the mouse event is inside the given rectangle.
    ## original: declare function Fl_EventInside2(byval x as long, byval y as long, byval w as long, byval h as long) as long
    proc Fl_EventInside2* ( x:  long;  y:  long;  w:  long;  h:  long):  long {.cdecl, importc: "Fl_EventInside2", dynlib: fltk, discardable.}
    #_  Returns non-zero if the mouse has not moved far enough and not enough time has passed since
    #_  the last FL_PUSH or FL_KEYBOARD event for it to be considered a "drag" rather than a "click".
    ## original: declare function Fl_GetEventIsClick as long
    proc Fl_GetEventIsClick* ():  long {.cdecl, importc: "Fl_GetEventIsClick", dynlib: fltk, discardable.}
    #_  Clears the value returned by Fl_GetEventIsClick().
    ## original: declare sub      Fl_SetEventIsClick(byval i as long)
    proc Fl_SetEventIsClick*( i:  long) {.cdecl, importc: "Fl_SetEventIsClick", dynlib: fltk, discardable.}
    #_  Gets which key on the keyboard was last pushed.
    ## original: declare function Fl_EventKey as long
    proc Fl_EventKey* ():  long {.cdecl, importc: "Fl_EventKey", dynlib: fltk, discardable.}
    #_  Returns true if the given key was held down (or pressed) during the last event.
    ## original: declare function Fl_EventKey2(byval key as long) as long
    proc Fl_EventKey2* ( key:  long):  long {.cdecl, importc: "Fl_EventKey2", dynlib: fltk, discardable.}
    #_  Returns the keycode of the last key event, regardless of the NumLock state.
    ## original: declare function Fl_EventOriginalKey as long
    proc Fl_EventOriginalKey* ():  long {.cdecl, importc: "Fl_EventOriginalKey", dynlib: fltk, discardable.}
    #_  Returns non-zero if the Alt,Ctrl,Shift or Command key is pressed.
    ## original: declare function Fl_EventAlt as long
    proc Fl_EventAlt* ():  long {.cdecl, importc: "Fl_EventAlt", dynlib: fltk, discardable.}

    ## original: declare function Fl_EventCtrl as long
    proc Fl_EventCtrl* ():  long {.cdecl, importc: "Fl_EventCtrl", dynlib: fltk, discardable.}

    ## original: declare function Fl_EventShift as long
    proc Fl_EventShift* ():  long {.cdecl, importc: "Fl_EventShift", dynlib: fltk, discardable.}

    ## original: declare function Fl_EventCommand as long #_  ctrl or metha on Mac
    proc Fl_EventCommand* ():  long {.cdecl, importc: "Fl_EventCommand", dynlib: fltk, discardable.} #_  ctrl or metha on Mac
    #_  This is a bitfield of what shift states were on and what mouse buttons
    #_  were held down during the most recent event.
    ## original: declare function Fl_EventState as long
    proc Fl_EventState* ():  long {.cdecl, importc: "Fl_EventState", dynlib: fltk, discardable.}

    ## original: declare function Fl_EventState2(byval i as long) as long
    proc Fl_EventState2* ( i:  long):  long {.cdecl, importc: "Fl_EventState2", dynlib: fltk, discardable.}
    #_  Returns the length of the text in Fl_EventText().
    ## original: declare function Fl_EventLength as long
    proc Fl_EventLength* ():  long {.cdecl, importc: "Fl_EventLength", dynlib: fltk, discardable.}
    #_  Returns the text associated with the current event, including FL_EVENT_PASTE or FL_EVENT_DND_RELEASE events.
    ## original: declare function Fl_EventText as cstring
    proc Fl_EventText* ():  cstring {.cdecl, importc: "Fl_EventText", dynlib: fltk, discardable.}
    #_  Returns the mouse position of the event relative to the Fl_Window it was passed to.
    ## original: declare function Fl_EventX as long
    proc Fl_EventX* ():  long {.cdecl, importc: "Fl_EventX", dynlib: fltk, discardable.}

    ## original: declare function Fl_EventY as long
    proc Fl_EventY* ():  long {.cdecl, importc: "Fl_EventY", dynlib: fltk, discardable.}
    #_  Returns the mouse position on the screen of the event.
    ## original: declare function Fl_EventXRoot as long
    proc Fl_EventXRoot* ():  long {.cdecl, importc: "Fl_EventXRoot", dynlib: fltk, discardable.}

    ## original: declare function Fl_EventYRoot as long
    proc Fl_EventYRoot* ():  long {.cdecl, importc: "Fl_EventYRoot", dynlib: fltk, discardable.}
    #_  Returns the current horizontal / vertical mouse scrolling associated with the FL_MOUSEWHEEL event.
    ## original: declare function Fl_EventDX as long
    proc Fl_EventDX* ():  long {.cdecl, importc: "Fl_EventDX", dynlib: fltk, discardable.}

    ## original: declare function Fl_EventDY as long
    proc Fl_EventDY* ():  long {.cdecl, importc: "Fl_EventDY", dynlib: fltk, discardable.}
    #_  new
    #_  During an FL_PASTE event of non-textual data, returns a pointer to the pasted data.
    ## original: declare function Fl_EventClipboardData() as any ptr
    proc Fl_EventClipboardData* ():  pointer {.cdecl, importc: "Fl_EventClipboardData", dynlib: fltk, discardable.}
    #_  Returns the type of the pasted data during an FL_PASTE event.
    #_  Fl_clipboard_plain_text ("text/plain") or Fl_clipboard_image ("image")
    ## original: declare function Fl_EventClipboardType() as cstring
    proc Fl_EventClipboardType* ():  cstring {.cdecl, importc: "Fl_EventClipboardType", dynlib: fltk, discardable.}
    #_  Returns true if the given key is held down now.
    ## original: declare function Fl_GetKey(byval key as long) as long
    proc Fl_GetKey* ( key:  long):  long {.cdecl, importc: "Fl_GetKey", dynlib: fltk, discardable.}
    #_  Return where the mouse is on the screen by doing a round-trip query to the server.
    ## original: declare sub      Fl_GetMouse(byref x as long, byref y as long)
    proc Fl_GetMouse*( x:  var long;  y:  var long) {.cdecl, importc: "Fl_GetMouse", dynlib: fltk, discardable.}

    #_  ########
    #_  # font #
    #_  ########
    #_  Gets the string for this face.
    ## original: declare function Fl_GetFont(byval f as FL_FONT) as cstring
    proc Fl_GetFont* ( f:  FL_FONT):  cstring {.cdecl, importc: "Fl_GetFont", dynlib: fltk, discardable.}
    #_  Get a human-readable string describing the family of this face.
    #_  The long pointed to by attributes (if the pointer is not zero) is set to zero, FL_BOLD or FL_ITALIC or FL_BOLD | FL_ITALIC.
    #_  To locate a "family" of fonts, search forward and back for a set with non-zero attributes,
    #_  these faces along with the face with a zero attribute before them constitute a family.
    ## original: declare function Fl_GetFontName(byval f as FL_FONT, byval attributes as long ptr=0) as cstring
    proc Fl_GetFontName* ( f:  FL_FONT;  attributes:  ptr long=nil):  cstring {.cdecl, importc: "Fl_GetFontName", dynlib: fltk, discardable.}
    #_  Return an array of sizes in size.  A zero in the first location of the array indicates a scalable font, where any size works.
    ## original: declare function Fl_GetFontSizes alias "Fl_GeFontSizes"(byval f as FL_FONT, byref size as long ptr) as long
    proc Fl_GetFontSizes* ( f: FL_FONT, size: var ptr long): long  {.cdecl, importc: "Fl_GetFontSizes", dynlib: fltk, discardable.}

    #_  The string pointer is simply stored, the string is not copied, so the string must be in static memory.
    ## original: declare sub      Fl_SetFont(byval f as FL_FONT, byval n as cstring)
    proc Fl_SetFont*( f:  FL_FONT;  n:  cstring) {.cdecl, importc: "Fl_SetFont", dynlib: fltk, discardable.}
    #_  Copies one face to another.
    ## original: declare sub      Fl_SetFont2(byval f as FL_FONT, byval n as FL_FONT)
    proc Fl_SetFont2*( f:  FL_FONT;  n:  FL_FONT) {.cdecl, importc: "Fl_SetFont2", dynlib: fltk, discardable.}
    #_  FLTK will open the display, and add every fonts on the server to the face table.
    ## original: declare function Fl_SetFonts(byval n as cstring=0) as FL_FONT
    proc Fl_SetFonts* ( n:  cstring=nil):  FL_FONT {.cdecl, importc: "Fl_SetFonts", dynlib: fltk, discardable.}

    #_  #################
    #_  # look and feel #
    #_  #################
    #_  Called by scheme according to scheme name.
    ## original: declare function Fl_ReloadScheme as long
    proc Fl_ReloadScheme* ():  long {.cdecl, importc: "Fl_ReloadScheme", dynlib: fltk, discardable.}
    #_ Gets or sets the current widget scheme. sheme can be "none","plastic", "gtk+" or "gleam"
    ## original: declare function Fl_SetScheme(byval scheme as cstring) as long
    proc Fl_SetScheme* ( scheme:  cstring):  long {.cdecl, importc: "Fl_SetScheme", dynlib: fltk, discardable.}
    ## original: declare function Fl_GetScheme as cstring
    proc Fl_GetScheme* ():  cstring {.cdecl, importc: "Fl_GetScheme", dynlib: fltk, discardable.}
    #_  new
    #_  Returns whether the current scheme is the given name.
    ## original: declare function Fl_IsScheme(byval scheme as cstring) as long
    proc Fl_IsScheme* ( scheme:  cstring):  long {.cdecl, importc: "Fl_IsScheme", dynlib: fltk, discardable.}
    #_  Sets/Gets the default scrollbar size that is used by the Fl_Browser_, Fl_Help_View, Fl_Scroll, and Fl_Text_Display widgets.
    ## original: declare sub      Fl_SetScrollbarSize(byval size as long)
    proc Fl_SetScrollbarSize*( size:  long) {.cdecl, importc: "Fl_SetScrollbarSize", dynlib: fltk, discardable.}
    ## original: declare function Fl_GetScrollbarSize as long
    proc Fl_GetScrollbarSize* ():  long {.cdecl, importc: "Fl_GetScrollbarSize", dynlib: fltk, discardable.}
    #_  Sets the functions to call to draw and measure a specific labeltype.
    ## original: declare sub      Fl_SetLabeltype(byval labelType as FL_LABEL_TYPE, byval drawFunc as Fl_Label_Draw_F, byval measureFunc as Fl_Label_Measure_F)
    proc Fl_SetLabeltype*( labelType:  FL_LABEL_TYPE;  drawFunc:  Fl_Label_Draw_F;  measureFunc:  Fl_Label_Measure_F) {.cdecl, importc: "Fl_SetLabeltype", dynlib: fltk, discardable.}
    #_  log
    ## original: type MessageFunc as sub(byval msg as cstring,...)
    #~ type MessageFunc* = proc( msg:  cstring; ...) {.cdecl.}
    type MessageFunc* = proc( msg:  cstring) {.cdecl.}
    #_  overwrite Fl::warning()
    ## original: declare sub      Fl_SetWarningMessageFunc(byval func as MessageFunc)
    proc Fl_SetWarningMessageFunc*( func_TT:  MessageFunc) {.cdecl, importc: "Fl_SetWarningMessageFunc", dynlib: fltk, discardable.}
    #_  overwrite Fl::error()
    ## original: declare sub      Fl_SetErroreMessageFunc(byval func as MessageFunc)
    proc Fl_SetErroreMessageFunc*( func_TT:  MessageFunc) {.cdecl, importc: "Fl_SetErroreMessageFunc", dynlib: fltk, discardable.}
    #_  overwrite Fl::fatal()
    ## original: declare sub      Fl_SetFatalMessageFunc(byval func as MessageFunc)
    proc Fl_SetFatalMessageFunc*( func_TT:  MessageFunc) {.cdecl, importc: "Fl_SetFatalMessageFunc", dynlib: fltk, discardable.}
    #_  FLTK calls Fl::warning() to output a warning message.
    ## original: declare sub      Fl_WarningMessage(byval msg as cstring)
    proc Fl_WarningMessage*( msg:  cstring) {.cdecl, importc: "Fl_WarningMessage", dynlib: fltk, discardable.}
    #_  FLTK calls Fl::error() to output a normal error message.
    ## original: declare sub      Fl_ErrorMessage(byval msg as cstring)
    proc Fl_ErrorMessage*( msg:  cstring) {.cdecl, importc: "Fl_ErrorMessage", dynlib: fltk, discardable.}
    #_  FLTK calls Fl::fatal() to output a fatal error message.
    ## original: declare sub      Fl_FatalMessage(byval msg as cstring)
    proc Fl_FatalMessage*( msg:  cstring) {.cdecl, importc: "Fl_FatalMessage", dynlib: fltk, discardable.}
    #_  Tests the current event, which must be an FL_KEYBOARD or FL_SHORTCUT, against a shortcut value (described in Fl_Button).
    ## original: declare function Fl_TestShortcut(byval s as Fl_Shortcut) as long
    proc Fl_TestShortcut* ( s:  Fl_Shortcut):  long {.cdecl, importc: "Fl_TestShortcut", dynlib: fltk, discardable.}
    #_  Returns the compiled-in value of the FL_VERSION constant.
    ## original: declare function Fl_Version as double
    proc Fl_Version* ():  double {.cdecl, importc: "Fl_Version", dynlib: fltk, discardable.}
    #_ Gets or sets the visible keyboard focus on buttons and other non-text widgets.
    ## original: declare sub      Fl_SetVisibleFocus(byval v as long)
    proc Fl_SetVisibleFocus*( v:  long) {.cdecl, importc: "Fl_SetVisibleFocus", dynlib: fltk, discardable.}

    ## original: declare function Fl_GetVisibleFocus as long
    proc Fl_GetVisibleFocus* ():  long {.cdecl, importc: "Fl_GetVisibleFocus", dynlib: fltk, discardable.}
    #_  Selects a visual so that your graphics are drawn correctly.
    ## original: declare function Fl_Visual(byval v as long) as long
    proc Fl_Visual* ( v:  long):  long {.cdecl, importc: "Fl_Visual", dynlib: fltk, discardable.}
    #_  Any text editing widget should call this for each FL_KEYBOARD event.
    ## original: declare function Fl_Compose(byref del as long) as long
    proc Fl_Compose* ( del:  var long):  long {.cdecl, importc: "Fl_Compose", dynlib: fltk, discardable.}
    #_  If the user moves the cursor, be sure to call Fl_ComposeReset.
    ## original: declare sub      Fl_ComposeReset
    proc Fl_ComposeReset*() {.cdecl, importc: "Fl_ComposeReset", dynlib: fltk, discardable.}
    #_  If true then Fl_Flush() will do something.
    ## original: declare sub      Fl_SetDamage(byval b as long)
    proc Fl_SetDamage*( b:  long) {.cdecl, importc: "Fl_SetDamage", dynlib: fltk, discardable.}

    ## original: declare function Fl_GetDamage as long
    proc Fl_GetDamage* ():  long {.cdecl, importc: "Fl_GetDamage", dynlib: fltk, discardable.}
    #_  Sets the display to use for all windows.
    ## original: declare sub      Fl_Display(byval display as cstring)
    proc Fl_Display*( display:  cstring) {.cdecl, importc: "Fl_Display", dynlib: fltk, discardable.}

    #_  ##########
    #_  # screen #
    #_  ##########
    ## original: declare function Fl_GetX as long
    proc Fl_GetX* ():  long {.cdecl, importc: "Fl_GetX", dynlib: fltk, discardable.}
    ## original: declare function Fl_GetY as long
    proc Fl_GetY* ():  long {.cdecl, importc: "Fl_GetY", dynlib: fltk, discardable.}
    ## original: declare function Fl_GetW as long
    proc Fl_GetW* ():  long {.cdecl, importc: "Fl_GetW", dynlib: fltk, discardable.}
    ## original: declare function Fl_GetH as long
    proc Fl_GetH* ():  long {.cdecl, importc: "Fl_GetH", dynlib: fltk, discardable.}

    ## original: declare function Fl_ScreenX      alias "Fl_GetX" as long
    proc Fl_ScreenX* ():  long {.cdecl, importc: "Fl_GetX", dynlib: fltk, discardable.}
    ## original: declare function Fl_ScreenY      alias "Fl_GetX" as long
    proc Fl_ScreenY* ():  long {.cdecl, importc: "Fl_GetY", dynlib: fltk, discardable.}
    ## original: declare function Fl_ScreenWidth  alias "Fl_GetW" as long
    proc Fl_ScreenWidth* ():  long {.cdecl, importc: "Fl_GetW", dynlib: fltk, discardable.}
    ## original: declare function Fl_ScreenHeight alias "Fl_GetH" as long
    proc Fl_ScreenHeight* ():  long {.cdecl, importc: "Fl_GetH", dynlib: fltk, discardable.}

    ## original: declare function Fl_ScreenCount as long
    proc Fl_ScreenCount* ():  long {.cdecl, importc: "Fl_ScreenCount", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_ScreenDpi(byref w as single, byref h as single, byval  screenIndex as long=0)
    proc Fl_ScreenDpi*( w:  var single;  h:  var single;   screenIndex:  long=0) {.cdecl, importc: "Fl_ScreenDpi", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_ScreenWorkAreaXYWH(byref x as long, byref Y as long, byref w as long, byref h as long)
    proc Fl_ScreenWorkAreaXYWH*( x:  var long;  Y:  var long;  w:  var long;  h:  var long) {.cdecl, importc: "Fl_ScreenWorkAreaXYWH", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_ScreenWorkAreaXYWHN(byref x as long, byref Y as long, byref w as long, byref h as long, byval screenIndex as long)
    proc Fl_ScreenWorkAreaXYWHN*( x:  var   long;  Y:  var   long;  w:  var   long;  h:  var   long;  screenIndex:  long) {.cdecl, importc: "Fl_ScreenWorkAreaXYWHN", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_ScreenWorkAreaXYWHMXMY(byref x as long, byref Y as long, byref w as long, byref h as long, byval mx as long, byval my as long)
    proc Fl_ScreenWorkAreaXYWHMXMY*( x:  var   long;  Y:  var   long;  w:  var   long;  h:  var   long;  mx:  long;  my:  long) {.cdecl, importc: "Fl_ScreenWorkAreaXYWHMXMY", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_ScreenXYWH(byref x as long, byref Y as long, byref w as long, byref h as long)
    proc Fl_ScreenXYWH*( x:  var long;  Y:  var long;  w:  var long;  h:  var long) {.cdecl, importc: "Fl_ScreenXYWH", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_ScreenXYWHN (byref x as long, byref Y as long, byref w as long, byref h as long, byval screenIndex as long)
    proc Fl_ScreenXYWHN*( x:  var   long;  Y:  var   long;  w:  var   long;  h:  var   long;  screenIndex:  long) {.cdecl, importc: "Fl_ScreenXYWHN", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_ScreenXYWHMXMY(byref x as long, byref Y as long, byref w as long, byref h as long, byval mx as long, byval my as long)
    proc Fl_ScreenXYWHMXMY*( x:  var   long;  Y:  var   long;  w:  var   long;  h:  var   long;  mx:  long;  my:  long) {.cdecl, importc: "Fl_ScreenXYWHMXMY", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_ScreenXYWHMXMYMWMH(byref x as long, byref Y as long, byref w as long, byref h as long, byval mx as long, byval my as long, byval mw as long, byval mh as long)
    proc Fl_ScreenXYWHMXMYMWMH*( x:  var   long;  Y:  var   long;  w:  var   long;  h:  var   long;  mx:  long;  my:  long;  mw:  long;  mh:  long) {.cdecl, importc: "Fl_ScreenXYWHMXMYMWMH", dynlib: fltk, discardable.}

    #_  ###################
    #_  # class Fl_Widget #
    #_  ###################
    #_  De/Activates the widget.
    ## original: declare sub      Fl_WidgetActivate(byval wgt as Fl_Widget ptr)
    proc Fl_WidgetActivate*( wgt:  ptr Fl_Widget) {.cdecl, importc: "Fl_WidgetActivate", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_WidgetDeactivate(byval wgt as Fl_Widget ptr)
    proc Fl_WidgetDeactivate*( wgt:  ptr Fl_Widget) {.cdecl, importc: "Fl_WidgetDeactivate", dynlib: fltk, discardable.}
    #_  Returns whether the widget is active
    ## original: declare function Fl_WidgetActive(byval wgt as Fl_Widget ptr) as long
    proc Fl_WidgetActive* ( wgt:  ptr Fl_Widget):  long {.cdecl, importc: "Fl_WidgetActive", dynlib: fltk, discardable.}
    #_  Returns whether the widget and all of its parents are active.
    ## original: declare function Fl_WidgetActiveR(byval wgt as Fl_Widget ptr) as long
    proc Fl_WidgetActiveR* ( wgt:  ptr Fl_Widget):  long {.cdecl, importc: "Fl_WidgetActiveR", dynlib: fltk, discardable.}
    #_  Sets/Gets the label alignment.
    ## original: declare sub      Fl_WidgetSetAlign(byval wgt as Fl_Widget ptr, byval align as FL_ALIGN)
    proc Fl_WidgetSetAlign*( wgt:  ptr Fl_Widget;  align:  FL_ALIGN) {.cdecl, importc: "Fl_WidgetSetAlign", dynlib: fltk, discardable.}
    ## original: declare function Fl_WidgetGetAlign(byval wgt as Fl_Widget ptr) as FL_ALIGN
    proc Fl_WidgetGetAlign* ( wgt:  ptr Fl_Widget):  FL_ALIGN {.cdecl, importc: "Fl_WidgetGetAlign", dynlib: fltk, discardable.}
    #_  Returns an Fl_Group pointer if this widget is an Fl_Group
    ## original: declare function Fl_WidgetAsGroup(byval wgt as Fl_Widget ptr) as Fl_Group ptr
    proc Fl_WidgetAsGroup* ( wgt:  ptr Fl_Widget):  ptr Fl_Group {.cdecl, importc: "Fl_WidgetAsGroup", dynlib: fltk, discardable.}
    #_  Returns an Fl_Window pointer if this widget is an Fl_Window
    ## original: declare function Fl_WidgetAsWindow(byval wgt as Fl_Widget ptr) as Fl_Window ptr
    proc Fl_WidgetAsWindow* ( wgt:  ptr Fl_Widget):  ptr Fl_Window {.cdecl, importc: "Fl_WidgetAsWindow", dynlib: fltk, discardable.}

    #_  Gets/Sets the box type of the widget.
    ## original: declare function Fl_WidgetGetBox(byval wgt as Fl_Widget ptr) as FL_BOXTYPE
    proc Fl_WidgetGetBox* ( wgt:  ptr Fl_Widget):  FL_BOXTYPE {.cdecl, importc: "Fl_WidgetGetBox", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_WidgetSetBox(byval wgt as Fl_Widget ptr, byval bt as FL_BOXTYPE)
    proc Fl_WidgetSetBox*( wgt:  ptr Fl_Widget;  bt:  FL_BOXTYPE) {.cdecl, importc: "Fl_WidgetSetBox", dynlib: fltk, discardable.}

    #_  ###################
    #_  # Widget Callbacks#
    #_  ###################
    ## original: declare sub      Fl_WidgetSetCallback    (byval wgt as Fl_Widget ptr, byval cb as Fl_Callback)
    proc Fl_WidgetSetCallback*( wgt:  ptr Fl_Widget;  cb:  Fl_Callback) {.cdecl, importc: "Fl_WidgetSetCallback", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_WidgetSetCallbackArg (byval wgt as Fl_Widget ptr, byval cb as Fl_Callback, byval arg as any ptr)
    #~ proc Fl_WidgetSetCallbackArg*( wgt:  ptr Fl_Widget;  cb:  Fl_Callback;  arg:  pointer) {.cdecl, importc: "Fl_WidgetSetCallbackArg", dynlib: fltk, discardable.}
    proc Fl_WidgetSetCallbackArg*( wgt:  ptr Fl_Widget;  cb:  Fl_Callback;  arg:  pointer) {.cdecl, importc: "Fl_WidgetSetCallbackArg", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_WidgetSetCallback0   (byval wgt as Fl_Widget ptr, byval cb as Fl_Callback0)
    proc Fl_WidgetSetCallback0*( wgt:  ptr Fl_Widget;  cb:  Fl_Callback0) {.cdecl, importc: "Fl_WidgetSetCallback0", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_WidgetSetCallback1Arg(byval wgt as Fl_Widget ptr, byval cb as Fl_Callback1, byval arg as long)
    proc Fl_WidgetSetCallback1Arg*( wgt:  ptr Fl_Widget;  cb:  Fl_Callback1;  arg:  long) {.cdecl, importc: "Fl_WidgetSetCallback1Arg", dynlib: fltk, discardable.}

    ## original: declare function Fl_WidgetGetCallback    (byval wgt as Fl_Widget ptr) as Fl_Callback_p
    proc Fl_WidgetGetCallback* ( wgt:  ptr Fl_Widget):  Fl_Callback_p {.cdecl, importc: "Fl_WidgetGetCallback", dynlib: fltk, discardable.}
    #_  Sets/Gets the current user data (long) argument that is passed to the callback function.
    ## original: declare sub      Fl_WidgetSetArgument(byval wgt as Fl_Widget ptr, byval lArg as long)
    proc Fl_WidgetSetArgument*( wgt:  ptr Fl_Widget;  lArg:  long) {.cdecl, importc: "Fl_WidgetSetArgument", dynlib: fltk, discardable.}

    ## original: declare function Fl_WidgetGetArgument(byval wgt as Fl_Widget ptr) as long
    proc Fl_WidgetGetArgument* ( wgt:  ptr Fl_Widget):  long {.cdecl, importc: "Fl_WidgetGetArgument", dynlib: fltk, discardable.}
    #_  Checks if the widget value changed since the last callback.
    ## original: declare function Fl_WidgetChanged(byval wgt as Fl_Widget ptr) as ulong
    proc Fl_WidgetChanged* ( wgt:  ptr Fl_Widget):  ulong {.cdecl, importc: "Fl_WidgetChanged", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_WidgetSetChanged(byval wgt as Fl_Widget ptr)
    proc Fl_WidgetSetChanged*( wgt:  ptr Fl_Widget) {.cdecl, importc: "Fl_WidgetSetChanged", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_WidgetClearChanged(byval wgt as Fl_Widget ptr)
    proc Fl_WidgetClearChanged*( wgt:  ptr Fl_Widget) {.cdecl, importc: "Fl_WidgetClearChanged", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_WidgetSetOutput(byval wgt as Fl_Widget ptr)
    proc Fl_WidgetSetOutput*( wgt:  ptr Fl_Widget) {.cdecl, importc: "Fl_WidgetSetOutput", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_WidgetClearOutput(byval wgt as Fl_Widget ptr)
    proc Fl_WidgetClearOutput*( wgt:  ptr Fl_Widget) {.cdecl, importc: "Fl_WidgetClearOutput", dynlib: fltk, discardable.}

    ## original: declare function Fl_WidgetOutput(byval wgt as Fl_Widget ptr) as ulong
    proc Fl_WidgetOutput* ( wgt:  ptr Fl_Widget):  ulong {.cdecl, importc: "Fl_WidgetOutput", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_WidgetSetVisible(byval wgt as Fl_Widget ptr)
    proc Fl_WidgetSetVisible*( wgt:  ptr Fl_Widget) {.cdecl, importc: "Fl_WidgetSetVisible", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_WidgetClearVisible(byval wgt as Fl_Widget ptr)
    proc Fl_WidgetClearVisible*( wgt:  ptr Fl_Widget) {.cdecl, importc: "Fl_WidgetClearVisible", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_WidgetSetVisibleFocus(byval wgt as Fl_Widget ptr)
    proc Fl_WidgetSetVisibleFocus*( wgt:  ptr Fl_Widget) {.cdecl, importc: "Fl_WidgetSetVisibleFocus", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_WidgetClearVisibleFocus(byval wgt as Fl_Widget ptr)
    proc Fl_WidgetClearVisibleFocus*( wgt:  ptr Fl_Widget) {.cdecl, importc: "Fl_WidgetClearVisibleFocus", dynlib: fltk, discardable.}

    #_  ################
    #_  # Widget Color #
    #_  ################
    ## original: declare sub      Fl_WidgetSetColor(byval wgt as Fl_Widget ptr, byval bg as Fl_COLOR)
    proc Fl_WidgetSetColor*( wgt:  ptr Fl_Widget;  bg:  Fl_COLOR) {.cdecl, importc: "Fl_WidgetSetColor", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_WidgetSetColorSel(byval wgt as Fl_Widget ptr, byval bg as Fl_COLOR, byval sel as Fl_COLOR)
    proc Fl_WidgetSetColorSel*( wgt:  ptr Fl_Widget;  bg:  Fl_COLOR;  sel:  Fl_COLOR) {.cdecl, importc: "Fl_WidgetSetColorSel", dynlib: fltk, discardable.}

    ## original: declare function Fl_WidgetGetColor(byval wgt as Fl_Widget ptr) as Fl_COLOR
    proc Fl_WidgetGetColor* ( wgt:  ptr Fl_Widget):  Fl_COLOR {.cdecl, importc: "Fl_WidgetGetColor", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_WidgetSetSelectionColor(byval wgt as Fl_Widget ptr, byval c as Fl_COLOR)
    proc Fl_WidgetSetSelectionColor*( wgt:  ptr Fl_Widget;  c:  Fl_COLOR) {.cdecl, importc: "Fl_WidgetSetSelectionColor", dynlib: fltk, discardable.}

    ## original: declare function Fl_WidgetGetSelectionColor(byval wgt as Fl_Widget ptr) as Fl_COLOR
    proc Fl_WidgetGetSelectionColor* ( wgt:  ptr Fl_Widget):  Fl_COLOR {.cdecl, importc: "Fl_WidgetGetSelectionColor", dynlib: fltk, discardable.}
    #_  will be removed use Set/GetSelectionColor in new apps.
    ## original: declare sub      Fl_WidgetSetColor2(byval wgt as Fl_Widget ptr, byval c as Fl_COLOR)
    proc Fl_WidgetSetColor2*( wgt:  ptr Fl_Widget;  c:  Fl_COLOR) {.cdecl, importc: "Fl_WidgetSetColor2", dynlib: fltk, discardable.}

    ## original: declare function Fl_WidgetGetColor2(byval wgt as Fl_Widget ptr) as Fl_COLOR
    proc Fl_WidgetGetColor2* ( wgt:  ptr Fl_Widget):  Fl_COLOR {.cdecl, importc: "Fl_WidgetGetColor2", dynlib: fltk, discardable.}

    ## original: declare function Fl_WidgetContains(byval wgt as Fl_Widget ptr, byval other as const Fl_Widget ptr) as long
    proc Fl_WidgetContains* ( wgt:  ptr Fl_Widget;  other:  ptr Fl_Widget):  long {.cdecl, importc: "Fl_WidgetContains", dynlib: fltk, discardable.}
    #_  Sets the damage bits for the widget.
    ## original: declare sub      Fl_WidgetSetDamage(byval wgt as Fl_Widget ptr, byval c as ubyte)
    proc Fl_WidgetSetDamage*( wgt:  ptr Fl_Widget;  c:  ubyte) {.cdecl, importc: "Fl_WidgetSetDamage", dynlib: fltk, discardable.}
    #_  Sets the damage bits for an area inside the widget.
    ## original: declare sub      Fl_WidgetSetDamage2(byval wgt as Fl_Widget ptr, byval c as ubyte, byval x as long, byval y as long, byval w as long, byval h as long)
    proc Fl_WidgetSetDamage2*( wgt:  ptr Fl_Widget;  c:  ubyte;  x:  long;  y:  long;  w:  long;  h:  long) {.cdecl, importc: "Fl_WidgetSetDamage2", dynlib: fltk, discardable.}
    #_  Returns non-zero if draw() needs to be called.
    ## original: declare function Fl_WidgetGetDamage(byval wgt as Fl_Widget ptr) as ubyte
    proc Fl_WidgetGetDamage* ( wgt:  ptr Fl_Widget):  ubyte {.cdecl, importc: "Fl_WidgetGetDamage", dynlib: fltk, discardable.}
    #_  Clears or sets the damage flags.
    ## original: declare sub      Fl_WidgetClearDamage(byval wgt as Fl_Widget ptr, byval c as ubyte=0)
    proc Fl_WidgetClearDamage*( wgt:  ptr Fl_Widget;  c:  ubyte=0) {.cdecl, importc: "Fl_WidgetClearDamage", dynlib: fltk, discardable.}
    #_  Internal use only.
    ## original: declare function Fl_WidgetDamageResize(byval wgt as Fl_Widget ptr, byval x as long, byval y as long, byval w as long, byval h as long) as long
    proc Fl_WidgetDamageResize* ( wgt:  ptr Fl_Widget;  x:  long;  y:  long;  w:  long;  h:  long):  long {.cdecl, importc: "Fl_WidgetDamageResize", dynlib: fltk, discardable.}
    #_  Gets/Sets the image that is used as part of the widget label.
    ## original: declare function Fl_WidgetGetDeimage(byval wgt as Fl_Widget ptr) as Fl_Image ptr
    proc Fl_WidgetGetDeimage* ( wgt:  ptr Fl_Widget):  ptr Fl_Image {.cdecl, importc: "Fl_WidgetGetDeimage", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_WidgetSetDeimage(byval wgt as Fl_Widget ptr, byval img as Fl_Image ptr)
    proc Fl_WidgetSetDeimage*( wgt:  ptr Fl_Widget;  img:  ptr Fl_Image) {.cdecl, importc: "Fl_WidgetSetDeimage", dynlib: fltk, discardable.}
    #_  Calls the widget callback.
    ## original: declare sub      Fl_WidgetDoCallback(byval wgt as Fl_Widget ptr)
    proc Fl_WidgetDoCallback*( wgt:  ptr Fl_Widget) {.cdecl, importc: "Fl_WidgetDoCallback", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_WidgetDoCallback2(byval wgt as Fl_Widget ptr, byval other as Fl_Widget ptr, byval pArg as any ptr=0)
    proc Fl_WidgetDoCallback2*( wgt:  ptr Fl_Widget;  other:  ptr Fl_Widget;  pArg:  pointer=nil) {.cdecl, importc: "Fl_WidgetDoCallback2", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_WidgetDoCallback3(byval wgt as Fl_Widget ptr, byval other as Fl_Widget ptr, byval lArg as long)
    proc Fl_WidgetDoCallback3*( wgt:  ptr Fl_Widget;  other:  ptr Fl_Widget;  lArg:  long) {.cdecl, importc: "Fl_WidgetDoCallback3", dynlib: fltk, discardable.}
    #_  Draws the widget.
    ## original: declare sub      Fl_WidgetDraw(byval wgt as Fl_Widget ptr)
    proc Fl_WidgetDraw*( wgt:  ptr Fl_Widget) {.cdecl, importc: "Fl_WidgetDraw", dynlib: fltk, discardable.}
    #_  Draws the label in an arbitrary bounding box with an arbitrary alignment.
    ## original: declare sub      Fl_WidgetDrawLabel(byval wgt as Fl_Widget ptr, byval x as long, byval y as long, byval w as long, byval h as long, byval align as FL_ALIGN)
    proc Fl_WidgetDrawLabel*( wgt:  ptr Fl_Widget;  x:  long;  y:  long;  w:  long;  h:  long;  align:  FL_ALIGN) {.cdecl, importc: "Fl_WidgetDrawLabel", dynlib: fltk, discardable.}
    #_  Handles the specified event.
    ## original: declare function Fl_WidgetHandle(byval wgt as Fl_Widget ptr, byval event as FL_EVENT) as long
    proc Fl_WidgetHandle* ( wgt:  ptr Fl_Widget;  event:  FL_EVENT):  long {.cdecl, importc: "Fl_WidgetHandle", dynlib: fltk, discardable.}
    #_  Makes a widget in/visible.
    ## original: declare sub      Fl_WidgetHide(byval wgt as Fl_Widget ptr)
    proc Fl_WidgetHide*( wgt:  ptr Fl_Widget) {.cdecl, importc: "Fl_WidgetHide", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_WidgetShow(byval wgt as Fl_Widget ptr)
    proc Fl_WidgetShow*( wgt:  ptr Fl_Widget) {.cdecl, importc: "Fl_WidgetShow", dynlib: fltk, discardable.}
    #_  Gets/Sets the image that is used as part of the widget label.
    ## original: declare sub      Fl_WidgetSetImage(byval wgt as Fl_Widget ptr, byval img as Fl_Image ptr)
    proc Fl_WidgetSetImage*( wgt:  ptr Fl_Widget;  img:  ptr Fl_Image) {.cdecl, importc: "Fl_WidgetSetImage", dynlib: fltk, discardable.}

    ## original: declare function Fl_WidgetGetImage(byval wgt as Fl_Widget ptr) as Fl_Image ptr
    proc Fl_WidgetGetImage* ( wgt:  ptr Fl_Widget):  ptr Fl_Image {.cdecl, importc: "Fl_WidgetGetImage", dynlib: fltk, discardable.}

    ## original: declare function Fl_WidgetGetImage2(byval wgt as Fl_Widget ptr) as const Fl_Image ptr
    proc Fl_WidgetGetImage2* ( wgt:  ptr Fl_Widget):  ptr Fl_Image {.cdecl, importc: "Fl_WidgetGetImage2", dynlib: fltk, discardable.}
    #_  Checks if this widget is a child of wgt.
    ## original: declare function Fl_WidgetInside(byval wgt as Fl_Widget ptr, byval other as const Fl_Widget) as long
    proc Fl_WidgetInside* ( wgt:  ptr Fl_Widget;  other:  ptr Fl_Widget):  long {.cdecl, importc: "Fl_WidgetInside", dynlib: fltk, discardable.}

    #_  ################
    #_  # Widget Label #
    #_  ################
    #_  Gets/Sets the current label text.'
    ## original: declare function Fl_WidgetGetLabel(byval wgt as Fl_Widget ptr) as cstring
    proc Fl_WidgetGetLabel* ( wgt:  ptr Fl_Widget):  cstring {.cdecl, importc: "Fl_WidgetGetLabel", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_WidgetSetLabel(byval wgt as Fl_Widget ptr, byval text as cstring)
    proc Fl_WidgetSetLabel*( wgt:  ptr Fl_Widget;  text:  cstring) {.cdecl, importc: "Fl_WidgetSetLabel", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_WidgetSetLabel2(byval wgt as Fl_Widget ptr, byval a as FL_LABEL_TYPE, byval text as cstring)
    proc Fl_WidgetSetLabel2*( wgt:  ptr Fl_Widget;  a:  FL_LABEL_TYPE;  text:  cstring) {.cdecl, importc: "Fl_WidgetSetLabel2", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_WidgetCopyLabel(byval wgt as Fl_Widget ptr, byval caption as cstring)
    proc Fl_WidgetCopyLabel*( wgt:  ptr Fl_Widget;  caption:  cstring) {.cdecl, importc: "Fl_WidgetCopyLabel", dynlib: fltk, discardable.}
    #_  Gets/Sets the label color.
    ## original: declare sub      Fl_WidgetSetLabelColor(byval wgt as Fl_Widget ptr, byval c as Fl_COLOR)
    proc Fl_WidgetSetLabelColor*( wgt:  ptr Fl_Widget;  c:  Fl_COLOR) {.cdecl, importc: "Fl_WidgetSetLabelColor", dynlib: fltk, discardable.}
    ## original: declare function Fl_WidgetGetLabelColor(byval wgt as Fl_Widget ptr) as Fl_COLOR
    proc Fl_WidgetGetLabelColor* ( wgt:  ptr Fl_Widget):  Fl_COLOR {.cdecl, importc: "Fl_WidgetGetLabelColor", dynlib: fltk, discardable.}
    #_  Gets/Sets the label font.
    ## original: declare sub      Fl_WidgetSetLabelFont(byval wgt as Fl_Widget ptr, byval f as FL_FONT)
    proc Fl_WidgetSetLabelFont*( wgt:  ptr Fl_Widget;  f:  FL_FONT) {.cdecl, importc: "Fl_WidgetSetLabelFont", dynlib: fltk, discardable.}
    ## original: declare function Fl_WidgetGetLabelFont(byval wgt as Fl_Widget ptr) as FL_FONT
    proc Fl_WidgetGetLabelFont* ( wgt:  ptr Fl_Widget):  FL_FONT {.cdecl, importc: "Fl_WidgetGetLabelFont", dynlib: fltk, discardable.}
    #_  Gets/Sets the label fonstsize.
    ## original: declare sub      Fl_WidgetSetLabelSize(byval wgt as Fl_Widget ptr, byval fz as FL_FONTSIZE)
    proc Fl_WidgetSetLabelSize*( wgt:  ptr Fl_Widget;  fz:  FL_FONTSIZE|uint) {.cdecl, importc: "Fl_WidgetSetLabelSize", dynlib: fltk, discardable.}
    ## original: declare function Fl_WidgetGetLabelSize(byval wgt as Fl_Widget ptr) as FL_FONTSIZE
    proc Fl_WidgetGetLabelSize* ( wgt:  ptr Fl_Widget):  FL_FONTSIZE {.cdecl, importc: "Fl_WidgetGetLabelSize", dynlib: fltk, discardable.}
    #_  Gets/Sets the label type.
    ## original: declare function Fl_WidgetGetLabelType(byval wgt as Fl_Widget ptr) as FL_LABEL_TYPE
    proc Fl_WidgetGetLabelType* ( wgt:  ptr Fl_Widget):  FL_LABEL_TYPE {.cdecl, importc: "Fl_WidgetGetLabelType", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_WidgetSetLabelType(byval wgt as Fl_Widget ptr, byval lt as FL_LABEL_TYPE)
    proc Fl_WidgetSetLabelType*( wgt:  ptr Fl_Widget;  lt:  FL_LABEL_TYPE) {.cdecl, importc: "Fl_WidgetSetLabelType", dynlib: fltk, discardable.}
    #_  Returns w,h accordingly with the label size.
    ## original: declare sub      Fl_WidgetMeasureLabel(byval wgt as Fl_Widget ptr, byref w as long, byref h as long)
    proc Fl_WidgetMeasureLabel*( wgt:  ptr Fl_Widget;  w:  var long;  h:  var long) {.cdecl, importc: "Fl_WidgetMeasureLabel", dynlib: fltk, discardable.}
    #_  Returns a pointer to the parent widget.
    ## original: declare function Fl_WidgetGetParent(byval wgt as Fl_Widget ptr) as Fl_Group ptr
    proc Fl_WidgetGetParent* ( wgt:  ptr Fl_Widget):  ptr Fl_Group {.cdecl, importc: "Fl_WidgetGetParent", dynlib: fltk, discardable.}
    #_  Internal use only - "for hacks only"
    ## original: declare sub      Fl_WidgetSetParent(byval wgt as Fl_Widget ptr, byval p as Fl_Group ptr)
    proc Fl_WidgetSetParent*( wgt:  ptr Fl_Widget;  p:  ptr Fl_Group) {.cdecl, importc: "Fl_WidgetSetParent", dynlib: fltk, discardable.}

    #_  ###################
    #_  # Widget Position #
    #_  ###################
    #_  Repositions the window or widget.
    ## original: declare sub      Fl_WidgetPosition(byval wgt as Fl_Widget ptr, byval x as long, byval y as long)
    proc Fl_WidgetPosition*( wgt:  ptr Fl_Widget;  x:  long;  y:  long) {.cdecl, importc: "Fl_WidgetPosition", dynlib: fltk, discardable.}
    #_  Changes the size of the widget.
    ## original: declare sub      Fl_WidgetSize(byval wgt as Fl_Widget ptr, byval w as long, byval h as long)
    proc Fl_WidgetSize*( wgt:  ptr Fl_Widget;  w:  long;  h:  long) {.cdecl, importc: "Fl_WidgetSize", dynlib: fltk, discardable.}
    #_  Changes the size and position of the widget.
    ## original: declare sub      Fl_WidgetResize(byval wgt as Fl_Widget ptr, byval x as long, byval y as long, byval w as long, byval h as long)
    proc Fl_WidgetResize*( wgt:  ptr Fl_Widget;  x:  long;  y:  long;  w:  long;  h:  long) {.cdecl, importc: "Fl_WidgetResize", dynlib: fltk, discardable.}
    #_  Schedules the drawing of the widget.
    ## original: declare sub      Fl_WidgetRedraw(byval wgt as Fl_Widget ptr)
    proc Fl_WidgetRedraw*( wgt:  ptr Fl_Widget) {.cdecl, importc: "Fl_WidgetRedraw", dynlib: fltk, discardable.}
    #_  Schedules the drawing of the label.
    ## original: declare sub      Fl_WidgetRedrawLabel(byval wgt as Fl_Widget ptr)
    proc Fl_WidgetRedrawLabel*( wgt:  ptr Fl_Widget) {.cdecl, importc: "Fl_WidgetRedrawLabel", dynlib: fltk, discardable.}
    #_  Gives the widget the keyboard focus.
    ## original: declare function Fl_WidgetTakeFocus(byval wgt as Fl_Widget ptr) as long
    proc Fl_WidgetTakeFocus* ( wgt:  ptr Fl_Widget):  long {.cdecl, importc: "Fl_WidgetTakeFocus", dynlib: fltk, discardable.}
    #_  Returns if the widget is able to take events.
    ## original: declare function Fl_WidgetTakesEvents(byval wgt as Fl_Widget ptr) as ulong
    proc Fl_WidgetTakesEvents* ( wgt:  ptr Fl_Widget):  ulong {.cdecl, importc: "Fl_WidgetTakesEvents", dynlib: fltk, discardable.}
    #_  Returns true if the widget's label contains the entered '&x' shortcut.
    ## original: declare function Fl_WidgetTestShortcut(byval wgt as Fl_Widget ptr) as long
    proc Fl_WidgetTestShortcut* ( wgt:  ptr Fl_Widget):  long {.cdecl, importc: "Fl_WidgetTestShortcut", dynlib: fltk, discardable.}
    #_  Gets/Sets/Copy the current tooltip text.
    ## original: declare function Fl_WidgetGetTooltip(byval wgt as Fl_Widget ptr) as cstring
    proc Fl_WidgetGetTooltip* ( wgt:  ptr Fl_Widget):  cstring {.cdecl, importc: "Fl_WidgetGetTooltip", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_WidgetSetTooltip(byval wgt as Fl_Widget ptr, byval tip as cstring)
    proc Fl_WidgetSetTooltip*( wgt:  ptr Fl_Widget;  tip:  cstring) {.cdecl, importc: "Fl_WidgetSetTooltip", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_WidgetCopyTooltip(byval wgt as Fl_Widget ptr, byval tip as cstring)
    proc Fl_WidgetCopyTooltip*( wgt:  ptr Fl_Widget;  tip:  cstring) {.cdecl, importc: "Fl_WidgetCopyTooltip", dynlib: fltk, discardable.}
    #_  Gets/Sets the widget type.
    ## original: declare function Fl_WidgetGetType(byval wgt as Fl_Widget ptr) as ubyte
    proc Fl_WidgetGetType* ( wgt:  ptr Fl_Widget):  ubyte {.cdecl, importc: "Fl_WidgetGetType", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_WidgetSetType(byval wgt as Fl_Widget ptr, byval t as ubyte)
    proc Fl_WidgetSetType*( wgt:  ptr Fl_Widget;  t:  ubyte) {.cdecl, importc: "Fl_WidgetSetType", dynlib: fltk, discardable.}
    #_  Gets/Sets the user data for this widget.
    ## original: declare function Fl_WidgetGetUserData(byval wgt as Fl_Widget ptr) as any ptr
    proc Fl_WidgetGetUserData* ( wgt:  ptr Fl_Widget):  pointer {.cdecl, importc: "Fl_WidgetGetUserData", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_WidgetSetUserData(byval wgt as Fl_Widget ptr, byval v as any ptr)
    proc Fl_WidgetSetUserData*( wgt:  ptr Fl_Widget;  v:  pointer) {.cdecl, importc: "Fl_WidgetSetUserData", dynlib: fltk, discardable.}
    #_  Returns whether a widget is visible.
    ## original: declare function Fl_WidgetVisible(byval wgt as Fl_Widget ptr) as long
    proc Fl_WidgetVisible* ( wgt:  ptr Fl_Widget):  long {.cdecl, importc: "Fl_WidgetVisible", dynlib: fltk, discardable.}
    #_  Returns whether a widget and all its parents are visible.
    ## original: declare function Fl_WidgetVisibleR(byval wgt as Fl_Widget ptr) as long
    proc Fl_WidgetVisibleR* ( wgt:  ptr Fl_Widget):  long {.cdecl, importc: "Fl_WidgetVisibleR", dynlib: fltk, discardable.}
    #_  Checks whether this widget has a visible focus.
    ## original: declare function Fl_WidgetGetVisibleFocus(byval wgt as Fl_Widget ptr) as long
    proc Fl_WidgetGetVisibleFocus* ( wgt:  ptr Fl_Widget):  long {.cdecl, importc: "Fl_WidgetGetVisibleFocus", dynlib: fltk, discardable.}
    #_  Modifies keyboard focus navigation.
    ## original: declare sub      Fl_WidgetVisibleFocus(byval wgt as Fl_Widget ptr, byval v as long)
    proc Fl_WidgetVisibleFocus*( wgt:  ptr Fl_Widget;  v:  long) {.cdecl, importc: "Fl_WidgetVisibleFocus", dynlib: fltk, discardable.}
    #_  Sets the flags used to decide when a callback is called.
    ## original: declare sub      Fl_WidgetSetWhen(byval wgt as Fl_Widget ptr, byval w as FL_WHEN)
    proc Fl_WidgetSetWhen*( wgt:  ptr Fl_Widget;  w:  FL_WHEN) {.cdecl, importc: "Fl_WidgetSetWhen", dynlib: fltk, discardable.}
    #_  Returns the conditions under which the callback is called.
    ## original: declare function Fl_WidgetGetWhen(byval wgt as Fl_Widget ptr) as FL_WHEN
    proc Fl_WidgetGetWhen* ( wgt:  ptr Fl_Widget):  FL_WHEN {.cdecl, importc: "Fl_WidgetGetWhen", dynlib: fltk, discardable.}
    #_  Returns a pointer to the nearest parent window up the widget hierarchy.
    ## original: declare function Fl_WidgetWindow(byval wgt as Fl_Widget ptr) as Fl_Window ptr
    proc Fl_WidgetWindow* ( wgt:  ptr Fl_Widget):  ptr Fl_Window {.cdecl, importc: "Fl_WidgetWindow", dynlib: fltk, discardable.}

    ## original: declare function Fl_WidgetTopWindow(byval wgt as Fl_Widget ptr) as Fl_Window ptr
    proc Fl_WidgetTopWindow* ( wgt:  ptr Fl_Widget):  ptr Fl_Window {.cdecl, importc: "Fl_WidgetTopWindow", dynlib: fltk, discardable.}

    ## original: declare function Fl_WidgetTopWindowOffset(byval wgt as Fl_Widget ptr, byref xoff as long, byref yoff as long) as Fl_Window ptr
    proc Fl_WidgetTopWindowOffset* ( wgt:  ptr Fl_Widget;  xoff:  var long;  yoff:  var long):  ptr Fl_Window {.cdecl, importc: "Fl_WidgetTopWindowOffset", dynlib: fltk, discardable.}

    ## original: declare function Fl_WidgetGetX(byval wgt as Fl_Widget ptr) as long
    proc Fl_WidgetGetX* ( wgt:  ptr Fl_Widget):  long {.cdecl, importc: "Fl_WidgetGetX", dynlib: fltk, discardable.}
    ## original: declare function Fl_WidgetGetY(byval wgt as Fl_Widget ptr) as long
    proc Fl_WidgetGetY* ( wgt:  ptr Fl_Widget):  long {.cdecl, importc: "Fl_WidgetGetY", dynlib: fltk, discardable.}
    ## original: declare function Fl_WidgetGetW(byval wgt as Fl_Widget ptr) as long
    proc Fl_WidgetGetW* ( wgt:  ptr Fl_Widget):  long {.cdecl, importc: "Fl_WidgetGetW", dynlib: fltk, discardable.}
    ## original: declare function Fl_WidgetGetH(byval wgt as Fl_Widget ptr) as long
    proc Fl_WidgetGetH* ( wgt:  ptr Fl_Widget):  long {.cdecl, importc: "Fl_WidgetGetH", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_WidgetDefaultCallback(byval cb as Fl_Widget ptr, byval pArg as any ptr)
    proc Fl_WidgetDefaultCallback*( cb:  ptr Fl_Widget;  pArg:  pointer) {.cdecl, importc: "Fl_WidgetDefaultCallback", dynlib: fltk, discardable.}
    #_  static members
    ## original: declare function Fl_WidgetLabelShortcut(byval t as cstring) as long
    proc Fl_WidgetLabelShortcut* ( t:  cstring):  long {.cdecl, importc: "Fl_WidgetLabelShortcut", dynlib: fltk, discardable.}

    ## original: declare function Fl_WidgetTestShortcut2(byval t as cstring, byval require_alt as long=0) as long
    proc Fl_WidgetTestShortcut2* ( t:  cstring;  require_alt:  long=0):  long {.cdecl, importc: "Fl_WidgetTestShortcut2", dynlib: fltk, discardable.}

    #_  ###########################
    #_  # class Fl_Widget_Tracker #
    #_  ###########################
    ## original: declare function Fl_Widget_TrackerNew(byval wgt as Fl_Widget ptr) as Fl_Widget_Tracker ptr
    proc Fl_Widget_TrackerNew* ( wgt:  ptr Fl_Widget):  ptr Fl_Widget_Tracker {.cdecl, importc: "Fl_Widget_TrackerNew", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Widget_TrackerDelete (byref wt as Fl_Widget_Tracker ptr)
    proc Fl_Widget_TrackerDelete*( wt:  var ptr Fl_Widget_Tracker) {.cdecl, importc: "Fl_Widget_TrackerDelete", dynlib: fltk, discardable.}

    ## original: declare function Fl_Widget_TrackerDeleted(byval wt as Fl_Widget_Tracker ptr) as long
    proc Fl_Widget_TrackerDeleted* ( wt:  ptr Fl_Widget_Tracker):  long {.cdecl, importc: "Fl_Widget_TrackerDeleted", dynlib: fltk, discardable.}

    ## original: declare function Fl_Widget_TrackerExists (byval wt as Fl_Widget_Tracker ptr) as long
    proc Fl_Widget_TrackerExists* ( wt:  ptr Fl_Widget_Tracker):  long {.cdecl, importc: "Fl_Widget_TrackerExists", dynlib: fltk, discardable.}

    ## original: declare function Fl_Widget_TrackerWidget (byval wt as Fl_Widget_Tracker ptr) as Fl_Widget ptr
    proc Fl_Widget_TrackerWidget* ( wt:  ptr Fl_Widget_Tracker):  ptr Fl_Widget {.cdecl, importc: "Fl_Widget_TrackerWidget", dynlib: fltk, discardable.}

    #_ #######################################
    #_ # class Fl_WidgetEx extends Fl_Widget #
    #_ #######################################
    ## original: declare function Fl_WidgetExNew(byval x as long, byval y as long, byval w as long, byval h as long, byval title as cstring=0) as Fl_WidgetEx ptr
    proc Fl_WidgetExNew* ( x:  long;  y:  long;  w:  long;  h:  long;  title:  cstring=nil):  ptr Fl_WidgetEx {.cdecl, importc: "Fl_WidgetExNew", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_WidgetExDelete         (byref ex as Fl_WidgetEx ptr)
    proc Fl_WidgetExDelete*( ex:  var ptr Fl_WidgetEx) {.cdecl, importc: "Fl_WidgetExDelete", dynlib: fltk, discardable.}
    ## original: declare function Fl_WidgetExHandleBase     (byval ex as Fl_WidgetEx ptr, byval event as FL_EVENT) as long
    proc Fl_WidgetExHandleBase* ( ex:  ptr Fl_WidgetEx;  event:  FL_EVENT):  long {.cdecl, importc: "Fl_WidgetExHandleBase", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_WidgetExSetDestructorCB(byval ex as Fl_WidgetEx ptr, byval cb as Fl_DestructorEx)
    proc Fl_WidgetExSetDestructorCB*( ex:  ptr Fl_WidgetEx;  cb:  Fl_DestructorEx) {.cdecl, importc: "Fl_WidgetExSetDestructorCB", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_WidgetExSetDrawCB      (byval ex as Fl_WidgetEx ptr, byval cb as Fl_DrawEx)
    proc Fl_WidgetExSetDrawCB*( ex:  ptr Fl_WidgetEx;  cb:  Fl_DrawEx) {.cdecl, importc: "Fl_WidgetExSetDrawCB", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_WidgetExSetHandleCB    (byval ex as Fl_WidgetEx ptr, byval cb as Fl_HandleEx)
    proc Fl_WidgetExSetHandleCB*( ex:  ptr Fl_WidgetEx;  cb:  Fl_HandleEx) {.cdecl, importc: "Fl_WidgetExSetHandleCB", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_WidgetExSetResizeCB    (byval ex as Fl_WidgetEx ptr, byval cb as Fl_ResizeEx)
    proc Fl_WidgetExSetResizeCB*( ex:  ptr Fl_WidgetEx;  cb:  Fl_ResizeEx) {.cdecl, importc: "Fl_WidgetExSetResizeCB", dynlib: fltk, discardable.}

    #_ ##################################
    #_ # class Fl_Box extends Fl_Widget #
    #_ ##################################
    #_  convert numeric boxtype 0-55 to FL_BOXTYPE
    ## original: declare function BoxType(byval nType as long) as FL_BOXTYPE
    proc BoxType* ( nType:  long):  FL_BOXTYPE {.cdecl, importc: "BoxType", dynlib: fltk, discardable.}

    ## DeclareEx(Fl_Box)
    ## expand by hand, begin
    ## original: declare function Fl_BoxExNew(byval x as long, byval y as long, byval w as long, byval h as long, byval title as cstring=0) as Fl_BoxEx ptr
    proc Fl_BoxExNew* ( x:  long;  y:  long;  w:  long;  h:  long;  title:  cstring=nil):  ptr Fl_BoxEx {.cdecl, importc: "Fl_BoxExNew", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_BoxExDelete         (byref ex as Fl_BoxEx ptr)
    proc Fl_BoxExDelete*( ex:  ptr Fl_BoxEx) {.cdecl, importc: "Fl_BoxExDelete", dynlib: fltk, discardable.}
    ## original: declare function Fl_BoxExHandleBase     (byval ex as Fl_BoxEx ptr, byval event as FL_EVENT) as long
    proc Fl_BoxExHandleBase* ( ex:  ptr Fl_BoxEx;  event:  FL_EVENT):  long {.cdecl, importc: "Fl_BoxExHandleBase", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_BoxExSetDestructorCB(byval ex as Fl_BoxEx ptr, byval cb as Fl_DestructorEx)
    proc Fl_BoxExSetDestructorCB*( ex:  ptr Fl_BoxEx;  cb:  Fl_DestructorEx) {.cdecl, importc: "Fl_BoxExSetDestructorCB", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_BoxExSetDrawCB      (byval ex as Fl_BoxEx ptr, byval cb as Fl_DrawEx)
    proc Fl_BoxExSetDrawCB*( ex:  ptr Fl_BoxEx;  cb:  Fl_DrawEx) {.cdecl, importc: "Fl_BoxExSetDrawCB", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_BoxExSetHandleCB    (byval ex as Fl_BoxEx ptr, byval cb as Fl_HandleEx)
    proc Fl_BoxExSetHandleCB*( ex:  ptr Fl_BoxEx;  cb:  Fl_HandleEx) {.cdecl, importc: "Fl_BoxExSetHandleCB", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_BoxExSetResizeCB    (byval ex as Fl_BoxEx ptr, byval cb as Fl_ResizeEx)
    proc Fl_BoxExSetResizeCB*( ex:  ptr Fl_BoxEx;  cb:  Fl_ResizeEx) {.cdecl, importc: "Fl_BoxExSetResizeCB", dynlib: fltk, discardable.}

    ## expand by hand, end



    ## original: declare function Fl_BoxNew (byval x as long, byval y as long, byval w as long, byval h as long, byval label as cstring=0) as Fl_Box ptr
    proc Fl_BoxNew* ( x:  long;  y:  long;  w:  long;  h:  long;  label:  cstring=nil):  ptr Fl_Box {.cdecl, importc: "Fl_BoxNew", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_BoxDelete(byref box as Fl_Box ptr)
    proc Fl_BoxDelete*( box:  var ptr Fl_Box) {.cdecl, importc: "Fl_BoxDelete", dynlib: fltk, discardable.}

    ## original: declare function Fl_BoxNew2(byval bt as FL_BOXTYPE, byval x as long, byval y as long, byval w as long, byval h as long, byval label as cstring=0) as Fl_Box ptr
    proc Fl_BoxNew2* ( bt:  FL_BOXTYPE;  x:  long;  y:  long;  w:  long;  h:  long;  label:  cstring=nil):  ptr Fl_Box {.cdecl, importc: "Fl_BoxNew2", dynlib: fltk, discardable.}

    ## original: declare function Fl_BoxHandle(byval box as Fl_Box ptr, byval e as FL_EVENT) as long
    proc Fl_BoxHandle* ( box:  ptr Fl_Box;  e:  FL_EVENT):  long {.cdecl, importc: "Fl_BoxHandle", dynlib: fltk, discardable.}

    #_ ##################################
    #_ # class Fl_Canvas extends Fl_Box #
    #_ ##################################
    ## original: declare function Fl_CanvasNew(byval x as long, byval y as long, byval w as long, byval h as long, byval title as cstring=0) as Fl_Canvas ptr
    proc Fl_CanvasNew* ( x:  long;  y:  long;  w:  long;  h:  long;  title:  cstring=nil):  ptr Fl_Canvas {.cdecl, importc: "Fl_CanvasNew", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_CanvasDelete         (byref can as Fl_Canvas ptr)
    proc Fl_CanvasDelete*( can:  var ptr Fl_Canvas) {.cdecl, importc: "Fl_CanvasDelete", dynlib: fltk, discardable.}

    ## original: declare function Fl_CanvasHandleBase     (byval can as Fl_Canvas ptr, byval event as FL_EVENT) as long
    proc Fl_CanvasHandleBase* ( can:  ptr Fl_Canvas;  event:  FL_EVENT):  long {.cdecl, importc: "Fl_CanvasHandleBase", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_CanvasSetDestructorCB(byval can as Fl_Canvas ptr, byval cb as Fl_DestructorEx)
    proc Fl_CanvasSetDestructorCB*( can:  ptr Fl_Canvas;  cb:  Fl_DestructorEx) {.cdecl, importc: "Fl_CanvasSetDestructorCB", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_CanvasSetDrawCB      (byval can as Fl_Canvas ptr, byval cb as Fl_CanvasDraw)
    proc Fl_CanvasSetDrawCB*( can:  ptr Fl_Canvas;  cb:  Fl_CanvasDraw) {.cdecl, importc: "Fl_CanvasSetDrawCB", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_CanvasSetHandleCB    (byval can as Fl_Canvas ptr, byval cb as Fl_HandleEx)
    proc Fl_CanvasSetHandleCB*( can:  ptr Fl_Canvas;  cb:  Fl_HandleEx) {.cdecl, importc: "Fl_CanvasSetHandleCB", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_CanvasSetResizeCB    (byval can as Fl_Canvas ptr, byval cb as Fl_ResizeEx)
    proc Fl_CanvasSetResizeCB*( can:  ptr Fl_Canvas;  cb:  Fl_ResizeEx) {.cdecl, importc: "Fl_CanvasSetResizeCB", dynlib: fltk, discardable.}

    #_ #####################################
    #_ # class Fl_Button extends Fl_Widget #
    #_ #####################################
    ## DeclareEx(Fl_Button)
    ## expand by hand, begin
    ## original: declare function Fl_ButtonExNew(byval x as long, byval y as long, byval w as long, byval h as long, byval title as cstring=0) as Fl_ButtonEx ptr
    proc Fl_ButtonExNew* ( x:  long;  y:  long;  w:  long;  h:  long;  title:  cstring=nil):  ptr Fl_ButtonEx {.cdecl, importc: "Fl_ButtonExNew", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_ButtonExDelete         (byref ex as Fl_ButtonEx ptr)
    proc Fl_ButtonExDelete*( ex:  ptr Fl_ButtonEx) {.cdecl, importc: "Fl_ButtonExDelete", dynlib: fltk, discardable.}
    ## original: declare function Fl_ButtonExHandleBase     (byval ex as Fl_ButtonEx ptr, byval event as FL_EVENT) as long
    proc Fl_ButtonExHandleBase* ( ex:  ptr Fl_ButtonEx;  event:  FL_EVENT):  long {.cdecl, importc: "Fl_ButtonExHandleBase", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_ButtonExSetDestructorCB(byval ex as Fl_ButtonEx ptr, byval cb as Fl_DestructorEx)
    proc Fl_ButtonExSetDestructorCB*( ex:  ptr Fl_ButtonEx;  cb:  Fl_DestructorEx) {.cdecl, importc: "Fl_ButtonExSetDestructorCB", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_ButtonExSetDrawCB      (byval ex as Fl_ButtonEx ptr, byval cb as Fl_DrawEx)
    proc Fl_ButtonExSetDrawCB*( ex:  ptr Fl_ButtonEx;  cb:  Fl_DrawEx) {.cdecl, importc: "Fl_ButtonExSetDrawCB", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_ButtonExSetHandleCB    (byval ex as Fl_ButtonEx ptr, byval cb as Fl_HandleEx)
    proc Fl_ButtonExSetHandleCB*( ex:  ptr Fl_ButtonEx;  cb:  Fl_HandleEx) {.cdecl, importc: "Fl_ButtonExSetHandleCB", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_ButtonExSetResizeCB    (byval ex as Fl_ButtonEx ptr, byval cb as Fl_ResizeEx)
    proc Fl_ButtonExSetResizeCB*( ex:  ptr Fl_ButtonEx;  cb:  Fl_ResizeEx) {.cdecl, importc: "Fl_ButtonExSetResizeCB", dynlib: fltk, discardable.}

    ## expand by hand, end


    ## original: declare function Fl_ButtonNew(byval x as long, byval y as long, byval w as long, byval h as long, byval label as cstring=0) as Fl_Button ptr
    proc Fl_ButtonNew* ( x:  long;  y:  long;  w:  long;  h:  long;  label:  cstring=nil):  ptr Fl_Button {.cdecl, importc: "Fl_ButtonNew", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_ButtonDelete(byref btn as Fl_Button ptr)
    proc Fl_ButtonDelete*( btn:  var ptr Fl_Button) {.cdecl, importc: "Fl_ButtonDelete", dynlib: fltk, discardable.}

    ## original: declare function Fl_ButtonClear(byval btn as Fl_Button ptr) as long
    proc Fl_ButtonClear* ( btn:  ptr Fl_Button):  long {.cdecl, importc: "Fl_ButtonClear", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_ButtonSetDownBox(byval btn as Fl_Button ptr, byval bt as FL_BOXTYPE)
    proc Fl_ButtonSetDownBox*( btn:  ptr Fl_Button;  bt:  FL_BOXTYPE) {.cdecl, importc: "Fl_ButtonSetDownBox", dynlib: fltk, discardable.}
    ## original: declare function Fl_ButtonGetDownBox(byval btn as Fl_Button ptr) as FL_BOXTYPE
    proc Fl_ButtonGetDownBox* ( btn:  ptr Fl_Button):  FL_BOXTYPE {.cdecl, importc: "Fl_ButtonGetDownBox", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_ButtonSetDownColor(byval btn as Fl_Button ptr, byval c as Fl_COLOR)
    proc Fl_ButtonSetDownColor*( btn:  ptr Fl_Button;  c:  Fl_COLOR) {.cdecl, importc: "Fl_ButtonSetDownColor", dynlib: fltk, discardable.}
    ## original: declare function Fl_ButtonGetDownColor(byval btn as Fl_Button ptr) as Fl_COLOR
    proc Fl_ButtonGetDownColor* ( btn:  ptr Fl_Button):  Fl_COLOR {.cdecl, importc: "Fl_ButtonGetDownColor", dynlib: fltk, discardable.}

    ## original: declare function Fl_ButtonHandle(byval btn as Fl_Button ptr, byval event as FL_EVENT) as long
    proc Fl_ButtonHandle* ( btn:  ptr Fl_Button;  event:  FL_EVENT):  long {.cdecl, importc: "Fl_ButtonHandle", dynlib: fltk, discardable.}

    ## original: declare function Fl_ButtonSet(byval btn as Fl_Button ptr) as long
    proc Fl_ButtonSet* ( btn:  ptr Fl_Button):  long {.cdecl, importc: "Fl_ButtonSet", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_ButtonSetOnly(byval btn as Fl_Button ptr)
    proc Fl_ButtonSetOnly*( btn:  ptr Fl_Button) {.cdecl, importc: "Fl_ButtonSetOnly", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_ButtonSetShortcut(byval btn as Fl_Button ptr, byval s as long)
    proc Fl_ButtonSetShortcut*( btn:  ptr Fl_Button;  s:  long) {.cdecl, importc: "Fl_ButtonSetShortcut", dynlib: fltk, discardable.}
    ## original: declare function Fl_ButtonGetShortcut(byval btn as Fl_Button ptr) as long
    proc Fl_ButtonGetShortcut* ( btn:  ptr Fl_Button):  long {.cdecl, importc: "Fl_ButtonGetShortcut", dynlib: fltk, discardable.}

    ## original: declare function Fl_ButtonSetValue(byval btn as Fl_Button ptr, byval v as long) as long
    proc Fl_ButtonSetValue* ( btn:  ptr Fl_Button;  v:  long):  long {.cdecl, importc: "Fl_ButtonSetValue", dynlib: fltk, discardable.}
    ## original: declare function Fl_ButtonGetValue(byval btn as Fl_Button ptr) as long
    proc Fl_ButtonGetValue* ( btn:  ptr Fl_Button):  long {.cdecl, importc: "Fl_ButtonGetValue", dynlib: fltk, discardable.}



    #_ ###########################################
    #_ # class Fl_Radio_Button extends Fl_Button #
    #_ ###########################################
    ## DeclareEx(Fl_Radio_Button)
    ## expand by hand, begin
    ## original: declare function Fl_Radio_ButtonExNew(byval x as long, byval y as long, byval w as long, byval h as long, byval title as cstring=0) as Fl_Radio_ButtonEx ptr
    proc Fl_Radio_ButtonExNew* ( x:  long;  y:  long;  w:  long;  h:  long;  title:  cstring=nil):  ptr Fl_Radio_ButtonEx {.cdecl, importc: "Fl_Radio_ButtonExNew", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Radio_ButtonExDelete         (byref ex as Fl_Radio_ButtonEx ptr)
    proc Fl_Radio_ButtonExDelete*( ex:  ptr Fl_Radio_ButtonEx) {.cdecl, importc: "Fl_Radio_ButtonExDelete", dynlib: fltk, discardable.}
    ## original: declare function Fl_Radio_ButtonExHandleBase     (byval ex as Fl_Radio_ButtonEx ptr, byval event as FL_EVENT) as long
    proc Fl_Radio_ButtonExHandleBase* ( ex:  ptr Fl_Radio_ButtonEx;  event:  FL_EVENT):  long {.cdecl, importc: "Fl_Radio_ButtonExHandleBase", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Radio_ButtonExSetDestructorCB(byval ex as Fl_Radio_ButtonEx ptr, byval cb as Fl_DestructorEx)
    proc Fl_Radio_ButtonExSetDestructorCB*( ex:  ptr Fl_Radio_ButtonEx;  cb:  Fl_DestructorEx) {.cdecl, importc: "Fl_Radio_ButtonExSetDestructorCB", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Radio_ButtonExSetDrawCB      (byval ex as Fl_Radio_ButtonEx ptr, byval cb as Fl_DrawEx)
    proc Fl_Radio_ButtonExSetDrawCB*( ex:  ptr Fl_Radio_ButtonEx;  cb:  Fl_DrawEx) {.cdecl, importc: "Fl_Radio_ButtonExSetDrawCB", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Radio_ButtonExSetHandleCB    (byval ex as Fl_Radio_ButtonEx ptr, byval cb as Fl_HandleEx)
    proc Fl_Radio_ButtonExSetHandleCB*( ex:  ptr Fl_Radio_ButtonEx;  cb:  Fl_HandleEx) {.cdecl, importc: "Fl_Radio_ButtonExSetHandleCB", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Radio_ButtonExSetResizeCB    (byval ex as Fl_Radio_ButtonEx ptr, byval cb as Fl_ResizeEx)
    proc Fl_Radio_ButtonExSetResizeCB*( ex:  ptr Fl_Radio_ButtonEx;  cb:  Fl_ResizeEx) {.cdecl, importc: "Fl_Radio_ButtonExSetResizeCB", dynlib: fltk, discardable.}

    ## expand by hand, end

    ## original: declare function Fl_Radio_ButtonNew(byval x as long, byval y as long, byval w as long, byval h as long, byval label as cstring=0) as Fl_Radio_Button ptr
    proc Fl_Radio_ButtonNew* ( x:  long;  y:  long;  w:  long;  h:  long;  label:  cstring=nil):  ptr Fl_Radio_Button {.cdecl, importc: "Fl_Radio_ButtonNew", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Radio_ButtonDelete(byref btn as Fl_Radio_Button ptr)
    proc Fl_Radio_ButtonDelete*( btn:  var ptr Fl_Radio_Button) {.cdecl, importc: "Fl_Radio_ButtonDelete", dynlib: fltk, discardable.}

    #_ ############################################
    #_ # class Fl_Repeat_Button extends Fl_Button #
    #_ ############################################
    ## DeclareEx(Fl_Repeat_Button)
    ## expand by hand, begin
    ## original: declare function Fl_Repeat_ButtonExNew(byval x as long, byval y as long, byval w as long, byval h as long, byval title as cstring=0) as Fl_Repeat_ButtonEx ptr
    proc Fl_Repeat_ButtonExNew* ( x:  long;  y:  long;  w:  long;  h:  long;  title:  cstring=nil):  ptr Fl_Repeat_ButtonEx {.cdecl, importc: "Fl_Repeat_ButtonExNew", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Repeat_ButtonExDelete         (byref ex as Fl_Repeat_ButtonEx ptr)
    proc Fl_Repeat_ButtonExDelete*( ex:  ptr Fl_Repeat_ButtonEx) {.cdecl, importc: "Fl_Repeat_ButtonExDelete", dynlib: fltk, discardable.}
    ## original: declare function Fl_Repeat_ButtonExHandleBase     (byval ex as Fl_Repeat_ButtonEx ptr, byval event as FL_EVENT) as long
    proc Fl_Repeat_ButtonExHandleBase* ( ex:  ptr Fl_Repeat_ButtonEx;  event:  FL_EVENT):  long {.cdecl, importc: "Fl_Repeat_ButtonExHandleBase", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Repeat_ButtonExSetDestructorCB(byval ex as Fl_Repeat_ButtonEx ptr, byval cb as Fl_DestructorEx)
    proc Fl_Repeat_ButtonExSetDestructorCB*( ex:  ptr Fl_Repeat_ButtonEx;  cb:  Fl_DestructorEx) {.cdecl, importc: "Fl_Repeat_ButtonExSetDestructorCB", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Repeat_ButtonExSetDrawCB      (byval ex as Fl_Repeat_ButtonEx ptr, byval cb as Fl_DrawEx)
    proc Fl_Repeat_ButtonExSetDrawCB*( ex:  ptr Fl_Repeat_ButtonEx;  cb:  Fl_DrawEx) {.cdecl, importc: "Fl_Repeat_ButtonExSetDrawCB", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Repeat_ButtonExSetHandleCB    (byval ex as Fl_Repeat_ButtonEx ptr, byval cb as Fl_HandleEx)
    proc Fl_Repeat_ButtonExSetHandleCB*( ex:  ptr Fl_Repeat_ButtonEx;  cb:  Fl_HandleEx) {.cdecl, importc: "Fl_Repeat_ButtonExSetHandleCB", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Repeat_ButtonExSetResizeCB    (byval ex as Fl_Repeat_ButtonEx ptr, byval cb as Fl_ResizeEx)
    proc Fl_Repeat_ButtonExSetResizeCB*( ex:  ptr Fl_Repeat_ButtonEx;  cb:  Fl_ResizeEx) {.cdecl, importc: "Fl_Repeat_ButtonExSetResizeCB", dynlib: fltk, discardable.}

    ## expand by hand, end

    ## original: declare function Fl_Repeat_ButtonNew(byval x as long, byval y as long, byval w as long, byval h as long, byval label as cstring=0) as Fl_Repeat_Button ptr
    proc Fl_Repeat_ButtonNew* ( x:  long;  y:  long;  w:  long;  h:  long;  label:  cstring=nil):  ptr Fl_Repeat_Button {.cdecl, importc: "Fl_Repeat_ButtonNew", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Repeat_ButtonDelete(byref btn as Fl_Repeat_Button ptr)
    proc Fl_Repeat_ButtonDelete*( btn:  var ptr Fl_Repeat_Button) {.cdecl, importc: "Fl_Repeat_ButtonDelete", dynlib: fltk, discardable.}

    ## original: declare function Fl_Repeat_ButtonHandle(byval btn as Fl_Repeat_Button ptr, byval ev as FL_EVENT) as long
    proc Fl_Repeat_ButtonHandle* ( btn:  ptr Fl_Repeat_Button;  ev:  FL_EVENT):  long {.cdecl, importc: "Fl_Repeat_ButtonHandle", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Repeat_ButtonDeactivate(byval btn as Fl_Repeat_Button ptr)
    proc Fl_Repeat_ButtonDeactivate*( btn:  ptr Fl_Repeat_Button) {.cdecl, importc: "Fl_Repeat_ButtonDeactivate", dynlib: fltk, discardable.}

    #_ ############################################
    #_ # class Fl_Return_Button extends Fl_Button #
    #_ ############################################
    ## DeclareEx(Fl_Return_Button)
    ## expand by hand, begin
    ## original: declare function Fl_Return_ButtonExNew(byval x as long, byval y as long, byval w as long, byval h as long, byval title as cstring=0) as Fl_Return_ButtonEx ptr
    proc Fl_Return_ButtonExNew* ( x:  long;  y:  long;  w:  long;  h:  long;  title:  cstring=nil):  ptr Fl_Return_ButtonEx {.cdecl, importc: "Fl_Return_ButtonExNew", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Return_ButtonExDelete         (byref ex as Fl_Return_ButtonEx ptr)
    proc Fl_Return_ButtonExDelete*( ex:  ptr Fl_Return_ButtonEx) {.cdecl, importc: "Fl_Return_ButtonExDelete", dynlib: fltk, discardable.}
    ## original: declare function Fl_Return_ButtonExHandleBase     (byval ex as Fl_Return_ButtonEx ptr, byval event as FL_EVENT) as long
    proc Fl_Return_ButtonExHandleBase* ( ex:  ptr Fl_Return_ButtonEx;  event:  FL_EVENT):  long {.cdecl, importc: "Fl_Return_ButtonExHandleBase", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Return_ButtonExSetDestructorCB(byval ex as Fl_Return_ButtonEx ptr, byval cb as Fl_DestructorEx)
    proc Fl_Return_ButtonExSetDestructorCB*( ex:  ptr Fl_Return_ButtonEx;  cb:  Fl_DestructorEx) {.cdecl, importc: "Fl_Return_ButtonExSetDestructorCB", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Return_ButtonExSetDrawCB      (byval ex as Fl_Return_ButtonEx ptr, byval cb as Fl_DrawEx)
    proc Fl_Return_ButtonExSetDrawCB*( ex:  ptr Fl_Return_ButtonEx;  cb:  Fl_DrawEx) {.cdecl, importc: "Fl_Return_ButtonExSetDrawCB", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Return_ButtonExSetHandleCB    (byval ex as Fl_Return_ButtonEx ptr, byval cb as Fl_HandleEx)
    proc Fl_Return_ButtonExSetHandleCB*( ex:  ptr Fl_Return_ButtonEx;  cb:  Fl_HandleEx) {.cdecl, importc: "Fl_Return_ButtonExSetHandleCB", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Return_ButtonExSetResizeCB    (byval ex as Fl_Return_ButtonEx ptr, byval cb as Fl_ResizeEx)
    proc Fl_Return_ButtonExSetResizeCB*( ex:  ptr Fl_Return_ButtonEx;  cb:  Fl_ResizeEx) {.cdecl, importc: "Fl_Return_ButtonExSetResizeCB", dynlib: fltk, discardable.}

    ## expand by hand, end

    ## original: declare function Fl_Return_ButtonNew(byval x as long, byval y as long, byval w as long, byval h as long, byval label as cstring=0) as Fl_Return_Button ptr
    proc Fl_Return_ButtonNew* ( x:  long;  y:  long;  w:  long;  h:  long;  label:  cstring=nil):  ptr Fl_Return_Button {.cdecl, importc: "Fl_Return_ButtonNew", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Return_ButtonDelete(byref btn as Fl_Return_Button ptr)
    proc Fl_Return_ButtonDelete*( btn:  var ptr Fl_Return_Button) {.cdecl, importc: "Fl_Return_ButtonDelete", dynlib: fltk, discardable.}
    ## original: declare function Fl_Return_ButtonHandle(byval btn as Fl_Return_Button ptr, byval ev as FL_EVENT) as long
    proc Fl_Return_ButtonHandle* ( btn:  ptr Fl_Return_Button;  ev:  FL_EVENT):  long {.cdecl, importc: "Fl_Return_ButtonHandle", dynlib: fltk, discardable.}

    #_ ############################################
    #_ # class Fl_Toggle_Button extends Fl_Button #
    #_ ############################################
    ## DeclareEx(Fl_Toggle_Button)
    ## expand by hand, begin
    ## original: declare function Fl_Toggle_ButtonExNew(byval x as long, byval y as long, byval w as long, byval h as long, byval title as cstring=0) as Fl_Toggle_ButtonEx ptr
    proc Fl_Toggle_ButtonExNew* ( x:  long;  y:  long;  w:  long;  h:  long;  title:  cstring=nil):  ptr Fl_Toggle_ButtonEx {.cdecl, importc: "Fl_Toggle_ButtonExNew", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Toggle_ButtonExDelete         (byref ex as Fl_Toggle_ButtonEx ptr)
    proc Fl_Toggle_ButtonExDelete*( ex:  ptr Fl_Toggle_ButtonEx) {.cdecl, importc: "Fl_Toggle_ButtonExDelete", dynlib: fltk, discardable.}
    ## original: declare function Fl_Toggle_ButtonExHandleBase     (byval ex as Fl_Toggle_ButtonEx ptr, byval event as FL_EVENT) as long
    proc Fl_Toggle_ButtonExHandleBase* ( ex:  ptr Fl_Toggle_ButtonEx;  event:  FL_EVENT):  long {.cdecl, importc: "Fl_Toggle_ButtonExHandleBase", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Toggle_ButtonExSetDestructorCB(byval ex as Fl_Toggle_ButtonEx ptr, byval cb as Fl_DestructorEx)
    proc Fl_Toggle_ButtonExSetDestructorCB*( ex:  ptr Fl_Toggle_ButtonEx;  cb:  Fl_DestructorEx) {.cdecl, importc: "Fl_Toggle_ButtonExSetDestructorCB", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Toggle_ButtonExSetDrawCB      (byval ex as Fl_Toggle_ButtonEx ptr, byval cb as Fl_DrawEx)
    proc Fl_Toggle_ButtonExSetDrawCB*( ex:  ptr Fl_Toggle_ButtonEx;  cb:  Fl_DrawEx) {.cdecl, importc: "Fl_Toggle_ButtonExSetDrawCB", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Toggle_ButtonExSetHandleCB    (byval ex as Fl_Toggle_ButtonEx ptr, byval cb as Fl_HandleEx)
    proc Fl_Toggle_ButtonExSetHandleCB*( ex:  ptr Fl_Toggle_ButtonEx;  cb:  Fl_HandleEx) {.cdecl, importc: "Fl_Toggle_ButtonExSetHandleCB", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Toggle_ButtonExSetResizeCB    (byval ex as Fl_Toggle_ButtonEx ptr, byval cb as Fl_ResizeEx)
    proc Fl_Toggle_ButtonExSetResizeCB*( ex:  ptr Fl_Toggle_ButtonEx;  cb:  Fl_ResizeEx) {.cdecl, importc: "Fl_Toggle_ButtonExSetResizeCB", dynlib: fltk, discardable.}

    ## expand by hand, end

    ## original: declare function Fl_Toggle_ButtonNew(byval x as long, byval y as long, byval w as long, byval h as long, byval label as cstring=0) as Fl_Toggle_Button  ptr
    proc Fl_Toggle_ButtonNew* ( x:  long;  y:  long;  w:  long;  h:  long;  label:  cstring=nil):   ptr Fl_Toggle_Button {.cdecl, importc: "Fl_Toggle_ButtonNew", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Toggle_ButtonDelete(byref btn as Fl_Toggle_Button ptr)
    proc Fl_Toggle_ButtonDelete*( btn:  var ptr Fl_Toggle_Button) {.cdecl, importc: "Fl_Toggle_ButtonDelete", dynlib: fltk, discardable.}

    #_ ###########################################
    #_ # class Fl_Light_Button extends Fl_Button #
    #_ ###########################################
    ## DeclareEx(Fl_Light_Button)
    ## expand by hand, begin
    ## original: declare function Fl_Light_ButtonExNew(byval x as long, byval y as long, byval w as long, byval h as long, byval title as cstring=0) as Fl_Light_ButtonEx ptr
    proc Fl_Light_ButtonExNew* ( x:  long;  y:  long;  w:  long;  h:  long;  title:  cstring=nil):  ptr Fl_Light_ButtonEx {.cdecl, importc: "Fl_Light_ButtonExNew", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Light_ButtonExDelete         (byref ex as Fl_Light_ButtonEx ptr)
    proc Fl_Light_ButtonExDelete*( ex:  ptr Fl_Light_ButtonEx) {.cdecl, importc: "Fl_Light_ButtonExDelete", dynlib: fltk, discardable.}
    ## original: declare function Fl_Light_ButtonExHandleBase     (byval ex as Fl_Light_ButtonEx ptr, byval event as FL_EVENT) as long
    proc Fl_Light_ButtonExHandleBase* ( ex:  ptr Fl_Light_ButtonEx;  event:  FL_EVENT):  long {.cdecl, importc: "Fl_Light_ButtonExHandleBase", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Light_ButtonExSetDestructorCB(byval ex as Fl_Light_ButtonEx ptr, byval cb as Fl_DestructorEx)
    proc Fl_Light_ButtonExSetDestructorCB*( ex:  ptr Fl_Light_ButtonEx;  cb:  Fl_DestructorEx) {.cdecl, importc: "Fl_Light_ButtonExSetDestructorCB", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Light_ButtonExSetDrawCB      (byval ex as Fl_Light_ButtonEx ptr, byval cb as Fl_DrawEx)
    proc Fl_Light_ButtonExSetDrawCB*( ex:  ptr Fl_Light_ButtonEx;  cb:  Fl_DrawEx) {.cdecl, importc: "Fl_Light_ButtonExSetDrawCB", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Light_ButtonExSetHandleCB    (byval ex as Fl_Light_ButtonEx ptr, byval cb as Fl_HandleEx)
    proc Fl_Light_ButtonExSetHandleCB*( ex:  ptr Fl_Light_ButtonEx;  cb:  Fl_HandleEx) {.cdecl, importc: "Fl_Light_ButtonExSetHandleCB", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Light_ButtonExSetResizeCB    (byval ex as Fl_Light_ButtonEx ptr, byval cb as Fl_ResizeEx)
    proc Fl_Light_ButtonExSetResizeCB*( ex:  ptr Fl_Light_ButtonEx;  cb:  Fl_ResizeEx) {.cdecl, importc: "Fl_Light_ButtonExSetResizeCB", dynlib: fltk, discardable.}

    ## expand by hand, end

    ## original: declare function Fl_Light_ButtonNew(byval x as long, byval y as long, byval w as long, byval h as long, byval label as cstring=0) as Fl_Light_Button  ptr
    proc Fl_Light_ButtonNew* ( x:  long;  y:  long;  w:  long;  h:  long;  label:  cstring=nil):   ptr Fl_Light_Button {.cdecl, importc: "Fl_Light_ButtonNew", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Light_ButtonDelete(byref btn as Fl_Light_Button ptr)
    proc Fl_Light_ButtonDelete*( btn:  var ptr Fl_Light_Button) {.cdecl, importc: "Fl_Light_ButtonDelete", dynlib: fltk, discardable.}

    ## original: declare function Fl_Light_ButtonHandle(byval btn as Fl_Light_Button ptr, byval ev as FL_EVENT) as long
    proc Fl_Light_ButtonHandle* ( btn:  ptr Fl_Light_Button;  ev:  FL_EVENT):  long {.cdecl, importc: "Fl_Light_ButtonHandle", dynlib: fltk, discardable.}

    #_ #################################################
    #_ # class Fl_Check_Button extends Fl_Light_Button #
    #_ #################################################
    ## DeclareEx(Fl_Check_Button)
    ## expand by hand, begin
    ## original: declare function Fl_Check_ButtonExNew(byval x as long, byval y as long, byval w as long, byval h as long, byval title as cstring=0) as Fl_Check_ButtonEx ptr
    proc Fl_Check_ButtonExNew* ( x:  long;  y:  long;  w:  long;  h:  long;  title:  cstring=nil):  ptr Fl_Check_ButtonEx {.cdecl, importc: "Fl_Check_ButtonExNew", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Check_ButtonExDelete         (byref ex as Fl_Check_ButtonEx ptr)
    proc Fl_Check_ButtonExDelete*( ex:  ptr Fl_Check_ButtonEx) {.cdecl, importc: "Fl_Check_ButtonExDelete", dynlib: fltk, discardable.}
    ## original: declare function Fl_Check_ButtonExHandleBase     (byval ex as Fl_Check_ButtonEx ptr, byval event as FL_EVENT) as long
    proc Fl_Check_ButtonExHandleBase* ( ex:  ptr Fl_Check_ButtonEx;  event:  FL_EVENT):  long {.cdecl, importc: "Fl_Check_ButtonExHandleBase", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Check_ButtonExSetDestructorCB(byval ex as Fl_Check_ButtonEx ptr, byval cb as Fl_DestructorEx)
    proc Fl_Check_ButtonExSetDestructorCB*( ex:  ptr Fl_Check_ButtonEx;  cb:  Fl_DestructorEx) {.cdecl, importc: "Fl_Check_ButtonExSetDestructorCB", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Check_ButtonExSetDrawCB      (byval ex as Fl_Check_ButtonEx ptr, byval cb as Fl_DrawEx)
    proc Fl_Check_ButtonExSetDrawCB*( ex:  ptr Fl_Check_ButtonEx;  cb:  Fl_DrawEx) {.cdecl, importc: "Fl_Check_ButtonExSetDrawCB", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Check_ButtonExSetHandleCB    (byval ex as Fl_Check_ButtonEx ptr, byval cb as Fl_HandleEx)
    proc Fl_Check_ButtonExSetHandleCB*( ex:  ptr Fl_Check_ButtonEx;  cb:  Fl_HandleEx) {.cdecl, importc: "Fl_Check_ButtonExSetHandleCB", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Check_ButtonExSetResizeCB    (byval ex as Fl_Check_ButtonEx ptr, byval cb as Fl_ResizeEx)
    proc Fl_Check_ButtonExSetResizeCB*( ex:  ptr Fl_Check_ButtonEx;  cb:  Fl_ResizeEx) {.cdecl, importc: "Fl_Check_ButtonExSetResizeCB", dynlib: fltk, discardable.}

    ## expand by hand, end


    ## original: declare function Fl_Check_ButtonNew(byval x as long, byval y as long, byval w as long, byval h as long, byval label as cstring=0) as Fl_Check_Button ptr
    proc Fl_Check_ButtonNew* ( x:  long;  y:  long;  w:  long;  h:  long;  label:  cstring=nil):  ptr Fl_Check_Button {.cdecl, importc: "Fl_Check_ButtonNew", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Check_ButtonDelete(byref btn as Fl_Check_Button ptr)
    proc Fl_Check_ButtonDelete*( btn:  var ptr Fl_Check_Button) {.cdecl, importc: "Fl_Check_ButtonDelete", dynlib: fltk, discardable.}

    #_ #######################################################
    #_ # class Fl_Radio_Light_Button extends Fl_Light_Button #
    #_ #######################################################
    ## DeclareEx(Fl_Radio_Light_Button)
    ## expand by hand, begin
    ## original: declare function Fl_Radio_Light_ButtonExNew(byval x as long, byval y as long, byval w as long, byval h as long, byval title as cstring=0) as Fl_Radio_Light_ButtonEx ptr
    proc Fl_Radio_Light_ButtonExNew* ( x:  long;  y:  long;  w:  long;  h:  long;  title:  cstring=nil):  ptr Fl_Radio_Light_ButtonEx {.cdecl, importc: "Fl_Radio_Light_ButtonExNew", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Radio_Light_ButtonExDelete         (byref ex as Fl_Radio_Light_ButtonEx ptr)
    proc Fl_Radio_Light_ButtonExDelete*( ex:  ptr Fl_Radio_Light_ButtonEx) {.cdecl, importc: "Fl_Radio_Light_ButtonExDelete", dynlib: fltk, discardable.}
    ## original: declare function Fl_Radio_Light_ButtonExHandleBase     (byval ex as Fl_Radio_Light_ButtonEx ptr, byval event as FL_EVENT) as long
    proc Fl_Radio_Light_ButtonExHandleBase* ( ex:  ptr Fl_Radio_Light_ButtonEx;  event:  FL_EVENT):  long {.cdecl, importc: "Fl_Radio_Light_ButtonExHandleBase", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Radio_Light_ButtonExSetDestructorCB(byval ex as Fl_Radio_Light_ButtonEx ptr, byval cb as Fl_DestructorEx)
    proc Fl_Radio_Light_ButtonExSetDestructorCB*( ex:  ptr Fl_Radio_Light_ButtonEx;  cb:  Fl_DestructorEx) {.cdecl, importc: "Fl_Radio_Light_ButtonExSetDestructorCB", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Radio_Light_ButtonExSetDrawCB      (byval ex as Fl_Radio_Light_ButtonEx ptr, byval cb as Fl_DrawEx)
    proc Fl_Radio_Light_ButtonExSetDrawCB*( ex:  ptr Fl_Radio_Light_ButtonEx;  cb:  Fl_DrawEx) {.cdecl, importc: "Fl_Radio_Light_ButtonExSetDrawCB", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Radio_Light_ButtonExSetHandleCB    (byval ex as Fl_Radio_Light_ButtonEx ptr, byval cb as Fl_HandleEx)
    proc Fl_Radio_Light_ButtonExSetHandleCB*( ex:  ptr Fl_Radio_Light_ButtonEx;  cb:  Fl_HandleEx) {.cdecl, importc: "Fl_Radio_Light_ButtonExSetHandleCB", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Radio_Light_ButtonExSetResizeCB    (byval ex as Fl_Radio_Light_ButtonEx ptr, byval cb as Fl_ResizeEx)
    proc Fl_Radio_Light_ButtonExSetResizeCB*( ex:  ptr Fl_Radio_Light_ButtonEx;  cb:  Fl_ResizeEx) {.cdecl, importc: "Fl_Radio_Light_ButtonExSetResizeCB", dynlib: fltk, discardable.}

    ## expand by hand, end


    ## original: declare function Fl_Radio_Light_ButtonNew(byval x as long, byval y as long, byval w as long, byval h as long, byval label as cstring=0) as Fl_Radio_Light_Button ptr
    proc Fl_Radio_Light_ButtonNew* ( x:  long;  y:  long;  w:  long;  h:  long;  label:  cstring=nil):  ptr Fl_Radio_Light_Button {.cdecl, importc: "Fl_Radio_Light_ButtonNew", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Radio_Light_ButtonDelete(byref btn as Fl_Radio_Light_Button ptr)
    proc Fl_Radio_Light_ButtonDelete*( btn:  var ptr Fl_Radio_Light_Button) {.cdecl, importc: "Fl_Radio_Light_ButtonDelete", dynlib: fltk, discardable.}

    #_ #################################################
    #_ # class Fl_Round_Button extends Fl_Light_Button #
    #_ #################################################
    ## DeclareEx(Fl_Round_Button)
    ## expand by hand, begin
    ## original: declare function Fl_Round_ButtonExNew(byval x as long, byval y as long, byval w as long, byval h as long, byval title as cstring=0) as Fl_Round_ButtonEx ptr
    proc Fl_Round_ButtonExNew* ( x:  long;  y:  long;  w:  long;  h:  long;  title:  cstring=nil):  ptr Fl_Round_ButtonEx {.cdecl, importc: "Fl_Round_ButtonExNew", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Round_ButtonExDelete         (byref ex as Fl_Round_ButtonEx ptr)
    proc Fl_Round_ButtonExDelete*( ex:  ptr Fl_Round_ButtonEx) {.cdecl, importc: "Fl_Round_ButtonExDelete", dynlib: fltk, discardable.}
    ## original: declare function Fl_Round_ButtonExHandleBase     (byval ex as Fl_Round_ButtonEx ptr, byval event as FL_EVENT) as long
    proc Fl_Round_ButtonExHandleBase* ( ex:  ptr Fl_Round_ButtonEx;  event:  FL_EVENT):  long {.cdecl, importc: "Fl_Round_ButtonExHandleBase", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Round_ButtonExSetDestructorCB(byval ex as Fl_Round_ButtonEx ptr, byval cb as Fl_DestructorEx)
    proc Fl_Round_ButtonExSetDestructorCB*( ex:  ptr Fl_Round_ButtonEx;  cb:  Fl_DestructorEx) {.cdecl, importc: "Fl_Round_ButtonExSetDestructorCB", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Round_ButtonExSetDrawCB      (byval ex as Fl_Round_ButtonEx ptr, byval cb as Fl_DrawEx)
    proc Fl_Round_ButtonExSetDrawCB*( ex:  ptr Fl_Round_ButtonEx;  cb:  Fl_DrawEx) {.cdecl, importc: "Fl_Round_ButtonExSetDrawCB", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Round_ButtonExSetHandleCB    (byval ex as Fl_Round_ButtonEx ptr, byval cb as Fl_HandleEx)
    proc Fl_Round_ButtonExSetHandleCB*( ex:  ptr Fl_Round_ButtonEx;  cb:  Fl_HandleEx) {.cdecl, importc: "Fl_Round_ButtonExSetHandleCB", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Round_ButtonExSetResizeCB    (byval ex as Fl_Round_ButtonEx ptr, byval cb as Fl_ResizeEx)
    proc Fl_Round_ButtonExSetResizeCB*( ex:  ptr Fl_Round_ButtonEx;  cb:  Fl_ResizeEx) {.cdecl, importc: "Fl_Round_ButtonExSetResizeCB", dynlib: fltk, discardable.}

    ## expand by hand, end
    ## original: declare function Fl_Round_ButtonNew(byval x as long, byval y as long, byval w as long, byval h as long, byval label as cstring=0) as Fl_Round_Button ptr
    proc Fl_Round_ButtonNew* ( x:  long;  y:  long;  w:  long;  h:  long;  label:  cstring=nil):  ptr Fl_Round_Button {.cdecl, importc: "Fl_Round_ButtonNew", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Round_ButtonDelete(byref btn as Fl_Round_Button ptr)
    proc Fl_Round_ButtonDelete*( btn:  var ptr Fl_Round_Button) {.cdecl, importc: "Fl_Round_ButtonDelete", dynlib: fltk, discardable.}

    #_ #######################################################
    #_ # class Fl_Radio_Round_Button extends Fl_Round_Button #
    #_ #######################################################
    ## DeclareEx(Fl_Radio_Round_Button)
    ## expand by hand, begin
    ## original: declare function Fl_Radio_Round_ButtonExNew(byval x as long, byval y as long, byval w as long, byval h as long, byval title as cstring=0) as Fl_Radio_Round_ButtonEx ptr
    proc Fl_Radio_Round_ButtonExNew* ( x:  long;  y:  long;  w:  long;  h:  long;  title:  cstring=nil):  ptr Fl_Radio_Round_ButtonEx {.cdecl, importc: "Fl_Radio_Round_ButtonExNew", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Radio_Round_ButtonExDelete         (byref ex as Fl_Radio_Round_ButtonEx ptr)
    proc Fl_Radio_Round_ButtonExDelete*( ex:  ptr Fl_Radio_Round_ButtonEx) {.cdecl, importc: "Fl_Radio_Round_ButtonExDelete", dynlib: fltk, discardable.}
    ## original: declare function Fl_Radio_Round_ButtonExHandleBase     (byval ex as Fl_Radio_Round_ButtonEx ptr, byval event as FL_EVENT) as long
    proc Fl_Radio_Round_ButtonExHandleBase* ( ex:  ptr Fl_Radio_Round_ButtonEx;  event:  FL_EVENT):  long {.cdecl, importc: "Fl_Radio_Round_ButtonExHandleBase", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Radio_Round_ButtonExSetDestructorCB(byval ex as Fl_Radio_Round_ButtonEx ptr, byval cb as Fl_DestructorEx)
    proc Fl_Radio_Round_ButtonExSetDestructorCB*( ex:  ptr Fl_Radio_Round_ButtonEx;  cb:  Fl_DestructorEx) {.cdecl, importc: "Fl_Radio_Round_ButtonExSetDestructorCB", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Radio_Round_ButtonExSetDrawCB      (byval ex as Fl_Radio_Round_ButtonEx ptr, byval cb as Fl_DrawEx)
    proc Fl_Radio_Round_ButtonExSetDrawCB*( ex:  ptr Fl_Radio_Round_ButtonEx;  cb:  Fl_DrawEx) {.cdecl, importc: "Fl_Radio_Round_ButtonExSetDrawCB", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Radio_Round_ButtonExSetHandleCB    (byval ex as Fl_Radio_Round_ButtonEx ptr, byval cb as Fl_HandleEx)
    proc Fl_Radio_Round_ButtonExSetHandleCB*( ex:  ptr Fl_Radio_Round_ButtonEx;  cb:  Fl_HandleEx) {.cdecl, importc: "Fl_Radio_Round_ButtonExSetHandleCB", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Radio_Round_ButtonExSetResizeCB    (byval ex as Fl_Radio_Round_ButtonEx ptr, byval cb as Fl_ResizeEx)
    proc Fl_Radio_Round_ButtonExSetResizeCB*( ex:  ptr Fl_Radio_Round_ButtonEx;  cb:  Fl_ResizeEx) {.cdecl, importc: "Fl_Radio_Round_ButtonExSetResizeCB", dynlib: fltk, discardable.}

    ## expand by hand, end


    ## original: declare function Fl_Radio_Round_ButtonNew(byval x as long, byval y as long, byval w as long, byval h as long, byval label as cstring=0) as Fl_Radio_Round_Button ptr
    proc Fl_Radio_Round_ButtonNew* ( x:  long;  y:  long;  w:  long;  h:  long;  label:  cstring=nil):  ptr Fl_Radio_Round_Button {.cdecl, importc: "Fl_Radio_Round_ButtonNew", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Radio_Round_ButtonDelete(byref btn as Fl_Radio_Round_Button ptr)
    proc Fl_Radio_Round_ButtonDelete*( btn:  var ptr Fl_Radio_Round_Button) {.cdecl, importc: "Fl_Radio_Round_ButtonDelete", dynlib: fltk, discardable.}
    #endif #_  NO_BUTTON

    #ifndef NO_CHART
    #_ ####################################
    #_ # class Fl_Chart extends Fl_Widget #
    #_ ####################################
    ## DeclareEx(Fl_Chart)
    ## expand by hand, begin
    ## original: declare function Fl_ChartExNew(byval x as long, byval y as long, byval w as long, byval h as long, byval title as cstring=0) as Fl_ChartEx ptr
    proc Fl_ChartExNew* ( x:  long;  y:  long;  w:  long;  h:  long;  title:  cstring=nil):  ptr Fl_ChartEx {.cdecl, importc: "Fl_ChartExNew", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_ChartExDelete         (byref ex as Fl_ChartEx ptr)
    proc Fl_ChartExDelete*( ex:  ptr Fl_ChartEx) {.cdecl, importc: "Fl_ChartExDelete", dynlib: fltk, discardable.}
    ## original: declare function Fl_ChartExHandleBase     (byval ex as Fl_ChartEx ptr, byval event as FL_EVENT) as long
    proc Fl_ChartExHandleBase* ( ex:  ptr Fl_ChartEx;  event:  FL_EVENT):  long {.cdecl, importc: "Fl_ChartExHandleBase", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_ChartExSetDestructorCB(byval ex as Fl_ChartEx ptr, byval cb as Fl_DestructorEx)
    proc Fl_ChartExSetDestructorCB*( ex:  ptr Fl_ChartEx;  cb:  Fl_DestructorEx) {.cdecl, importc: "Fl_ChartExSetDestructorCB", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_ChartExSetDrawCB      (byval ex as Fl_ChartEx ptr, byval cb as Fl_DrawEx)
    proc Fl_ChartExSetDrawCB*( ex:  ptr Fl_ChartEx;  cb:  Fl_DrawEx) {.cdecl, importc: "Fl_ChartExSetDrawCB", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_ChartExSetHandleCB    (byval ex as Fl_ChartEx ptr, byval cb as Fl_HandleEx)
    proc Fl_ChartExSetHandleCB*( ex:  ptr Fl_ChartEx;  cb:  Fl_HandleEx) {.cdecl, importc: "Fl_ChartExSetHandleCB", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_ChartExSetResizeCB    (byval ex as Fl_ChartEx ptr, byval cb as Fl_ResizeEx)
    proc Fl_ChartExSetResizeCB*( ex:  ptr Fl_ChartEx;  cb:  Fl_ResizeEx) {.cdecl, importc: "Fl_ChartExSetResizeCB", dynlib: fltk, discardable.}

    ## expand by hand, end



    ## original: declare function Fl_ChartNew(byval x as long, byval y as long, byval w as long, byval h as long, byval label as cstring=0) as Fl_Chart ptr
    proc Fl_ChartNew* ( x:  long;  y:  long;  w:  long;  h:  long;  label:  cstring=nil):  ptr Fl_Chart {.cdecl, importc: "Fl_ChartNew", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_ChartDelete(byref ch as Fl_Chart ptr)
    proc Fl_ChartDelete*( ch:  var ptr Fl_Chart) {.cdecl, importc: "Fl_ChartDelete", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_ChartAdd(byval ch as Fl_Chart ptr, byval v as double, byval label as cstring=0, byval c as Fl_COLOR=0)
    proc Fl_ChartAdd*( ch:  ptr Fl_Chart;  v:  double;  label:  cstring=nil;  c:  Fl_COLOR=0) {.cdecl, importc: "Fl_ChartAdd", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_ChartSetAutoSize(byval ch as Fl_Chart ptr, byval n as long)
    proc Fl_ChartSetAutoSize*( ch:  ptr Fl_Chart;  n:  long) {.cdecl, importc: "Fl_ChartSetAutoSize", dynlib: fltk, discardable.}
    ## original: declare function Fl_ChartGetAutoSize(byval ch as Fl_Chart ptr) as long
    proc Fl_ChartGetAutoSize* ( ch:  ptr Fl_Chart):  long {.cdecl, importc: "Fl_ChartGetAutoSize", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_ChartSetBounds(byval ch as Fl_Chart ptr, byval a as double, byval b as double)
    proc Fl_ChartSetBounds*( ch:  ptr Fl_Chart;  a:  double;  b:  double) {.cdecl, importc: "Fl_ChartSetBounds", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_ChartGetBounds(byval ch as Fl_Chart ptr, byref a as double, byref b as double)
    proc Fl_ChartGetBounds*( ch:  ptr Fl_Chart;  a:  var double;  b:  var double) {.cdecl, importc: "Fl_ChartGetBounds", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_ChartClear(byval ch as Fl_Chart ptr)
    proc Fl_ChartClear*( ch:  ptr Fl_Chart) {.cdecl, importc: "Fl_ChartClear", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_ChartInsert(byval ch as Fl_Chart ptr, byval ind as long, byval v as double, byval label as cstring=0, byval c as Fl_COLOR=0)
    proc Fl_ChartInsert*( ch:  ptr Fl_Chart;  ind:  long;  v:  double;  label:  cstring=nil;  c:  Fl_COLOR=0) {.cdecl, importc: "Fl_ChartInsert", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_ChartSetMaxSize(byval ch as Fl_Chart ptr, byval m as long)
    proc Fl_ChartSetMaxSize*( ch:  ptr Fl_Chart;  m:  long) {.cdecl, importc: "Fl_ChartSetMaxSize", dynlib: fltk, discardable.}
    ## original: declare function Fl_ChartGetMaxSize(byval ch as Fl_Chart ptr) as long
    proc Fl_ChartGetMaxSize* ( ch:  ptr Fl_Chart):  long {.cdecl, importc: "Fl_ChartGetMaxSize", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_ChartReplace(byval ch as Fl_Chart ptr, byval ind as long, byval v as double, byval vlabel as cstring=0, byval c as Fl_COLOR=0)
    proc Fl_ChartReplace*( ch:  ptr Fl_Chart;  ind:  long;  v:  double;  vlabel:  cstring=nil;  c:  Fl_COLOR=0) {.cdecl, importc: "Fl_ChartReplace", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_ChartSetSize(byval ch as Fl_Chart ptr, byval w as long, byval h as long)
    proc Fl_ChartSetSize*( ch:  ptr Fl_Chart;  w:  long;  h:  long) {.cdecl, importc: "Fl_ChartSetSize", dynlib: fltk, discardable.}
    ## original: declare function Fl_ChartGetSize(byval ch as Fl_Chart ptr) as long
    proc Fl_ChartGetSize* ( ch:  ptr Fl_Chart):  long {.cdecl, importc: "Fl_ChartGetSize", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_ChartSetTextColor(byval ch as Fl_Chart ptr, byval c as Fl_COLOR)
    proc Fl_ChartSetTextColor*( ch:  ptr Fl_Chart;  c:  Fl_COLOR) {.cdecl, importc: "Fl_ChartSetTextColor", dynlib: fltk, discardable.}
    ## original: declare function Fl_ChartGetTextColor(byval ch as Fl_Chart ptr) as Fl_COLOR
    proc Fl_ChartGetTextColor* ( ch:  ptr Fl_Chart):  Fl_COLOR {.cdecl, importc: "Fl_ChartGetTextColor", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_ChartSetTextFont(byval ch as Fl_Chart ptr, byval f as FL_FONT)
    proc Fl_ChartSetTextFont*( ch:  ptr Fl_Chart;  f:  FL_FONT) {.cdecl, importc: "Fl_ChartSetTextFont", dynlib: fltk, discardable.}
    ## original: declare function Fl_ChartGetTextFont(byval ch as Fl_Chart ptr) as FL_FONT
    proc Fl_ChartGetTextFont* ( ch:  ptr Fl_Chart):  FL_FONT {.cdecl, importc: "Fl_ChartGetTextFont", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_ChartSetTextSize(byval ch as Fl_Chart ptr, byval s as FL_FONTSIZE)
    proc Fl_ChartSetTextSize*( ch:  ptr Fl_Chart;  s:  FL_FONTSIZE) {.cdecl, importc: "Fl_ChartSetTextSize", dynlib: fltk, discardable.}
    ## original: declare function Fl_ChartGetTextSize(byval ch as Fl_Chart ptr) as FL_FONTSIZE
    proc Fl_ChartGetTextSize* ( ch:  ptr Fl_Chart):  FL_FONTSIZE {.cdecl, importc: "Fl_ChartGetTextSize", dynlib: fltk, discardable.}

    #_ ###########################################
    #_ # class Fl_Clock_Output extends Fl_Widget #
    #_ ###########################################
    ## DeclareEx(Fl_Clock_Output)
    ## expand by hand, begin
    ## original: declare function Fl_Clock_OutputExNew(byval x as long, byval y as long, byval w as long, byval h as long, byval title as cstring=0) as Fl_Clock_OutputEx ptr
    proc Fl_Clock_OutputExNew* ( x:  long;  y:  long;  w:  long;  h:  long;  title:  cstring=nil):  ptr Fl_Clock_OutputEx {.cdecl, importc: "Fl_Clock_OutputExNew", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Clock_OutputExDelete         (byref ex as Fl_Clock_OutputEx ptr)
    proc Fl_Clock_OutputExDelete*( ex:  ptr Fl_Clock_OutputEx) {.cdecl, importc: "Fl_Clock_OutputExDelete", dynlib: fltk, discardable.}
    ## original: declare function Fl_Clock_OutputExHandleBase     (byval ex as Fl_Clock_OutputEx ptr, byval event as FL_EVENT) as long
    proc Fl_Clock_OutputExHandleBase* ( ex:  ptr Fl_Clock_OutputEx;  event:  FL_EVENT):  long {.cdecl, importc: "Fl_Clock_OutputExHandleBase", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Clock_OutputExSetDestructorCB(byval ex as Fl_Clock_OutputEx ptr, byval cb as Fl_DestructorEx)
    proc Fl_Clock_OutputExSetDestructorCB*( ex:  ptr Fl_Clock_OutputEx;  cb:  Fl_DestructorEx) {.cdecl, importc: "Fl_Clock_OutputExSetDestructorCB", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Clock_OutputExSetDrawCB      (byval ex as Fl_Clock_OutputEx ptr, byval cb as Fl_DrawEx)
    proc Fl_Clock_OutputExSetDrawCB*( ex:  ptr Fl_Clock_OutputEx;  cb:  Fl_DrawEx) {.cdecl, importc: "Fl_Clock_OutputExSetDrawCB", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Clock_OutputExSetHandleCB    (byval ex as Fl_Clock_OutputEx ptr, byval cb as Fl_HandleEx)
    proc Fl_Clock_OutputExSetHandleCB*( ex:  ptr Fl_Clock_OutputEx;  cb:  Fl_HandleEx) {.cdecl, importc: "Fl_Clock_OutputExSetHandleCB", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Clock_OutputExSetResizeCB    (byval ex as Fl_Clock_OutputEx ptr, byval cb as Fl_ResizeEx)
    proc Fl_Clock_OutputExSetResizeCB*( ex:  ptr Fl_Clock_OutputEx;  cb:  Fl_ResizeEx) {.cdecl, importc: "Fl_Clock_OutputExSetResizeCB", dynlib: fltk, discardable.}

    ## expand by hand, end


    ## original: declare function Fl_Clock_OutputNew(byval x as long, byval y as long, byval w as long, byval h as long, byval label as cstring=0) as Fl_Clock_Output ptr
    proc Fl_Clock_OutputNew* ( x:  long;  y:  long;  w:  long;  h:  long;  label:  cstring=nil):  ptr Fl_Clock_Output {.cdecl, importc: "Fl_Clock_OutputNew", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Clock_OutputDelete  (byref co as Fl_Clock_Output ptr)
    proc Fl_Clock_OutputDelete*( co:  var ptr Fl_Clock_Output) {.cdecl, importc: "Fl_Clock_OutputDelete", dynlib: fltk, discardable.}

    ## original: declare function Fl_Clock_OutputHour    (byval co as Fl_Clock_Output ptr) as long
    proc Fl_Clock_OutputHour* ( co:  ptr Fl_Clock_Output):  long {.cdecl, importc: "Fl_Clock_OutputHour", dynlib: fltk, discardable.}

    ## original: declare function Fl_Clock_OutputMinute  (byval co as Fl_Clock_Output ptr) as long
    proc Fl_Clock_OutputMinute* ( co:  ptr Fl_Clock_Output):  long {.cdecl, importc: "Fl_Clock_OutputMinute", dynlib: fltk, discardable.}

    ## original: declare function Fl_Clock_OutputSecond  (byval co as Fl_Clock_Output ptr) as long
    proc Fl_Clock_OutputSecond* ( co:  ptr Fl_Clock_Output):  long {.cdecl, importc: "Fl_Clock_OutputSecond", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Clock_OutputValue   (byval co as Fl_Clock_Output ptr, byval h as long, byval m as long, byval s as long)
    proc Fl_Clock_OutputValue*( co:  ptr Fl_Clock_Output;  h:  long;  m:  long;  s:  long) {.cdecl, importc: "Fl_Clock_OutputValue", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Clock_OutputSetValue(byval co as Fl_Clock_Output ptr, byval v as ulong)
    proc Fl_Clock_OutputSetValue*( co:  ptr Fl_Clock_Output;  v:  ulong) {.cdecl, importc: "Fl_Clock_OutputSetValue", dynlib: fltk, discardable.}
    ## original: declare function Fl_Clock_OutputGetValue(byval co as Fl_Clock_Output ptr) as ulong
    proc Fl_Clock_OutputGetValue* ( co:  ptr Fl_Clock_Output):  ulong {.cdecl, importc: "Fl_Clock_OutputGetValue", dynlib: fltk, discardable.}

    #_ ##########################################
    #_ # class Fl_Clock extends Fl_Clock_Output #
    #_ ##########################################
    ## DeclareEx(Fl_Clock)
    ## expand by hand, begin
    ## original: declare function Fl_ClockExNew(byval x as long, byval y as long, byval w as long, byval h as long, byval title as cstring=0) as Fl_ClockEx ptr
    proc Fl_ClockExNew* ( x:  long;  y:  long;  w:  long;  h:  long;  title:  cstring=nil):  ptr Fl_ClockEx {.cdecl, importc: "Fl_ClockExNew", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_ClockExDelete         (byref ex as Fl_ClockEx ptr)
    proc Fl_ClockExDelete*( ex:  ptr Fl_ClockEx) {.cdecl, importc: "Fl_ClockExDelete", dynlib: fltk, discardable.}
    ## original: declare function Fl_ClockExHandleBase     (byval ex as Fl_ClockEx ptr, byval event as FL_EVENT) as long
    proc Fl_ClockExHandleBase* ( ex:  ptr Fl_ClockEx;  event:  FL_EVENT):  long {.cdecl, importc: "Fl_ClockExHandleBase", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_ClockExSetDestructorCB(byval ex as Fl_ClockEx ptr, byval cb as Fl_DestructorEx)
    proc Fl_ClockExSetDestructorCB*( ex:  ptr Fl_ClockEx;  cb:  Fl_DestructorEx) {.cdecl, importc: "Fl_ClockExSetDestructorCB", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_ClockExSetDrawCB      (byval ex as Fl_ClockEx ptr, byval cb as Fl_DrawEx)
    proc Fl_ClockExSetDrawCB*( ex:  ptr Fl_ClockEx;  cb:  Fl_DrawEx) {.cdecl, importc: "Fl_ClockExSetDrawCB", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_ClockExSetHandleCB    (byval ex as Fl_ClockEx ptr, byval cb as Fl_HandleEx)
    proc Fl_ClockExSetHandleCB*( ex:  ptr Fl_ClockEx;  cb:  Fl_HandleEx) {.cdecl, importc: "Fl_ClockExSetHandleCB", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_ClockExSetResizeCB    (byval ex as Fl_ClockEx ptr, byval cb as Fl_ResizeEx)
    proc Fl_ClockExSetResizeCB*( ex:  ptr Fl_ClockEx;  cb:  Fl_ResizeEx) {.cdecl, importc: "Fl_ClockExSetResizeCB", dynlib: fltk, discardable.}

    ## expand by hand, end


    ## original: declare function Fl_ClockNew(byval x as long, byval y as long, byval w as long, byval h as long, byval label as cstring=0) as Fl_Clock ptr
    proc Fl_ClockNew* ( x:  long;  y:  long;  w:  long;  h:  long;  label:  cstring=nil):  ptr Fl_Clock {.cdecl, importc: "Fl_ClockNew", dynlib: fltk, discardable.}
    ## original: declare function Fl_ClockNew2(byval boxtype as ubyte, byval x as long, byval y as long, byval w as long, byval h as long, byval label as cstring=0) as Fl_Clock ptr
    proc Fl_ClockNew2* ( boxtype:  ubyte;  x:  long;  y:  long;  w:  long;  h:  long;  label:  cstring=nil):  ptr Fl_Clock {.cdecl, importc: "Fl_ClockNew2", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_ClockDelete(byref c as Fl_Clock ptr)
    proc Fl_ClockDelete*( c:  var ptr Fl_Clock) {.cdecl, importc: "Fl_ClockDelete", dynlib: fltk, discardable.}

    #_ #########################################
    #_ # class Fl_Round_Clock extends Fl_Clock #
    #_ #########################################
    ## DeclareEx(Fl_Round_Clock)
    ## expand by hand, begin
    ## original: declare function Fl_Round_ClockExNew(byval x as long, byval y as long, byval w as long, byval h as long, byval title as cstring=0) as Fl_Round_ClockEx ptr
    proc Fl_Round_ClockExNew* ( x:  long;  y:  long;  w:  long;  h:  long;  title:  cstring=nil):  ptr Fl_Round_ClockEx {.cdecl, importc: "Fl_Round_ClockExNew", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Round_ClockExDelete         (byref ex as Fl_Round_ClockEx ptr)
    proc Fl_Round_ClockExDelete*( ex:  ptr Fl_Round_ClockEx) {.cdecl, importc: "Fl_Round_ClockExDelete", dynlib: fltk, discardable.}
    ## original: declare function Fl_Round_ClockExHandleBase     (byval ex as Fl_Round_ClockEx ptr, byval event as FL_EVENT) as long
    proc Fl_Round_ClockExHandleBase* ( ex:  ptr Fl_Round_ClockEx;  event:  FL_EVENT):  long {.cdecl, importc: "Fl_Round_ClockExHandleBase", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Round_ClockExSetDestructorCB(byval ex as Fl_Round_ClockEx ptr, byval cb as Fl_DestructorEx)
    proc Fl_Round_ClockExSetDestructorCB*( ex:  ptr Fl_Round_ClockEx;  cb:  Fl_DestructorEx) {.cdecl, importc: "Fl_Round_ClockExSetDestructorCB", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Round_ClockExSetDrawCB      (byval ex as Fl_Round_ClockEx ptr, byval cb as Fl_DrawEx)
    proc Fl_Round_ClockExSetDrawCB*( ex:  ptr Fl_Round_ClockEx;  cb:  Fl_DrawEx) {.cdecl, importc: "Fl_Round_ClockExSetDrawCB", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Round_ClockExSetHandleCB    (byval ex as Fl_Round_ClockEx ptr, byval cb as Fl_HandleEx)
    proc Fl_Round_ClockExSetHandleCB*( ex:  ptr Fl_Round_ClockEx;  cb:  Fl_HandleEx) {.cdecl, importc: "Fl_Round_ClockExSetHandleCB", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Round_ClockExSetResizeCB    (byval ex as Fl_Round_ClockEx ptr, byval cb as Fl_ResizeEx)
    proc Fl_Round_ClockExSetResizeCB*( ex:  ptr Fl_Round_ClockEx;  cb:  Fl_ResizeEx) {.cdecl, importc: "Fl_Round_ClockExSetResizeCB", dynlib: fltk, discardable.}

    ## expand by hand, end



    ## original: declare function Fl_Round_ClockNew(byval x as long, byval y as long, byval w as long, byval h as long, byval label as cstring=0) as Fl_Round_Clock ptr
    proc Fl_Round_ClockNew* ( x:  long;  y:  long;  w:  long;  h:  long;  label:  cstring=nil):  ptr Fl_Round_Clock {.cdecl, importc: "Fl_Round_ClockNew", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Round_ClockDelete(byref c as Fl_Round_Clock ptr)
    proc Fl_Round_ClockDelete*( c:  var ptr Fl_Round_Clock) {.cdecl, importc: "Fl_Round_ClockDelete", dynlib: fltk, discardable.}

    #_ #####################################
    #_ # class Fl_Input_ extends Fl_Widget #
    #_ #####################################
    #_  Changes the widget text.
    ## original: declare function Fl_Input_StaticValue(byval ip_ as Fl_Input_ ptr, byval text as cstring) as long
    proc Fl_Input_StaticValue* ( ip_TT:  ptr Fl_Input;  text:  cstring):  long {.cdecl, importc: "Fl_Input_StaticValue", dynlib: fltk, discardable.}

    ## original: declare function Fl_Input_StaticValue2(byval ip_ as Fl_Input_ ptr, byval text as cstring, byval nChars as long) as long
    proc Fl_Input_StaticValue2* ( ip_TT:  ptr Fl_Input;  text:  cstring;  nChars:  long):  long {.cdecl, importc: "Fl_Input_StaticValue2", dynlib: fltk, discardable.}

    ## original: declare function Fl_Input_SetValue(byval ip_ as Fl_Input_ ptr, byval text as cstring) as long
    proc Fl_Input_SetValue* ( ip_TT:  ptr Fl_Input;  text:  cstring):  long {.cdecl, importc: "Fl_Input_SetValue", dynlib: fltk, discardable.}

    ## original: declare function Fl_Input_SetValue2(byval ip_ as Fl_Input_ ptr, byval  text as cstring, byval nChars as long) as long
    proc Fl_Input_SetValue2* ( ip_TT:  ptr Fl_Input;   text:  cstring;  nChars:  long):  long {.cdecl, importc: "Fl_Input_SetValue2", dynlib: fltk, discardable.}
    #_  Returns the widget text.
    ## original: declare function Fl_Input_GetValue(byval ip_ as Fl_Input_ ptr) as cstring
    proc Fl_Input_GetValue* ( ip_TT:  ptr Fl_Input):  cstring {.cdecl, importc: "Fl_Input_GetValue", dynlib: fltk, discardable.}
    #_  Inserts text at the cursor position.
    ## original: declare function Fl_Input_Insert(byval ip_ as Fl_Input_ ptr, byval text as cstring, byval cpos as long=0) as long
    proc Fl_Input_Insert* ( ip_TT:  ptr Fl_Input;  text:  cstring;  cpos:  long=0):  long {.cdecl, importc: "Fl_Input_Insert", dynlib: fltk, discardable.}
    #_  Deletes text from begin to end and inserts the new string text.
    ## original: declare function Fl_Input_Replace(byval ip_ as Fl_Input_ ptr, byval begin as long, byval end_ as long, byval text as cstring, byval nChars as long=0) as long
    proc Fl_Input_Replace* ( ip_TT:  ptr Fl_Input;  begin:  long;  end_TT:  long;  text:  cstring;  nChars:  long=0):  long {.cdecl, importc: "Fl_Input_Replace", dynlib: fltk, discardable.}
    #_  Returns the number of bytes in value
    ## original: declare function Fl_Input_GetSize(byval ip_ as Fl_Input_ ptr) as long
    proc Fl_Input_GetSize* ( ip_TT:  ptr Fl_Input):  long {.cdecl, importc: "Fl_Input_GetSize", dynlib: fltk, discardable.}
    #_  Returns the character at index i
    ## original: declare function Fl_Input_Index(byval ip_ as Fl_Input_ ptr, byval i as long) as Fl_Char
    proc Fl_Input_Index* ( ip_TT:  ptr Fl_Input;  i:  long):  Fl_Char {.cdecl, importc: "Fl_Input_Index", dynlib: fltk, discardable.}
    #_  Put the current selection into the clipboard.
    ## original: declare function Fl_Input_Copy(byval ip_ as Fl_Input_ ptr, byval clipboard as long) as long
    proc Fl_Input_Copy* ( ip_TT:  ptr Fl_Input;  clipboard:  long):  long {.cdecl, importc: "Fl_Input_Copy", dynlib: fltk, discardable.}
    #_  Copies the yank buffer to the clipboard.
    ## original: declare function Fl_Input_CopyCuts(byval ip_ as Fl_Input_ ptr) as long
    proc Fl_Input_CopyCuts* ( ip_TT:  ptr Fl_Input):  long {.cdecl, importc: "Fl_Input_CopyCuts", dynlib: fltk, discardable.}
    #_  Deletes the current selection.
    ## original: declare function Fl_Input_Cut(byval ip_ as Fl_Input_ ptr) as long
    proc Fl_Input_Cut* ( ip_TT:  ptr Fl_Input):  long {.cdecl, importc: "Fl_Input_Cut", dynlib: fltk, discardable.}
    #_  Deletes the next n bytes rounded to characters before or after the cursor.
    ## original: declare function Fl_Input_Cut1(byval ip_ as Fl_Input_ ptr, byval n as long) as long
    proc Fl_Input_Cut1* ( ip_TT:  ptr Fl_Input;  n:  long):  long {.cdecl, importc: "Fl_Input_Cut1", dynlib: fltk, discardable.}
    #_  Deletes all characters between index a and b.
    ## original: declare function Fl_Input_Cut2(byval ip_ as Fl_Input_ ptr, byval a as long, byval b as long) as long
    proc Fl_Input_Cut2* ( ip_TT:  ptr Fl_Input;  a:  long;  b:  long):  long {.cdecl, importc: "Fl_Input_Cut2", dynlib: fltk, discardable.}

    ## original: declare function Fl_Input_Undo(byval ip_ as Fl_Input_ ptr) as long
    proc Fl_Input_Undo* ( ip_TT:  ptr Fl_Input):  long {.cdecl, importc: "Fl_Input_Undo", dynlib: fltk, discardable.}
    #_  Sets/Gets the input field type.
    ## original: declare sub      Fl_Input_SetInputType(byval ip_ as Fl_Input_ ptr, byval typ as FL_INPUT_TYPE)
    proc Fl_Input_SetInputType*( ip_TT:  ptr Fl_Input;  typ:  FL_INPUT_TYPE) {.cdecl, importc: "Fl_Input_SetInputType", dynlib: fltk, discardable.}

    ## original: declare function Fl_Input_GetInputType(byval ip_ as Fl_Input_ ptr) as FL_INPUT_TYPE
    proc Fl_Input_GetInputType* ( ip_TT:  ptr Fl_Input):  FL_INPUT_TYPE {.cdecl, importc: "Fl_Input_GetInputType", dynlib: fltk, discardable.}
    #_  Sets/Gets the color of the cursor.
    ## original: declare sub      Fl_Input_SetCursorColor(byval ip_ as Fl_Input_ ptr, byval c as Fl_COLOR)
    proc Fl_Input_SetCursorColor*( ip_TT:  ptr Fl_Input;  c:  Fl_COLOR) {.cdecl, importc: "Fl_Input_SetCursorColor", dynlib: fltk, discardable.}
    ## original: declare function Fl_Input_GetCursorColor(byval ip_ as Fl_Input_ ptr) as Fl_COLOR
    proc Fl_Input_GetCursorColor* ( ip_TT:  ptr Fl_Input):  Fl_COLOR {.cdecl, importc: "Fl_Input_GetCursorColor", dynlib: fltk, discardable.}
    #_  Sets/Gets the current selection mark.
    ## original: declare function Fl_Input_SetMark(byval ip_ as Fl_Input_ ptr, byval m as long) as long
    proc Fl_Input_SetMark* ( ip_TT:  ptr Fl_Input;  m:  long):  long {.cdecl, importc: "Fl_Input_SetMark", dynlib: fltk, discardable.}
    ## original: declare function Fl_Input_GetMark(byval ip_ as Fl_Input_ ptr) as long
    proc Fl_Input_GetMark* ( ip_TT:  ptr Fl_Input):  long {.cdecl, importc: "Fl_Input_GetMark", dynlib: fltk, discardable.}
    #_  Sets/Gets the maximum length of the input field in characters.
    ## original: declare sub      Fl_Input_SetMaximumSize(byval ip_ as Fl_Input_ ptr, byval maxsize as long)
    proc Fl_Input_SetMaximumSize*( ip_TT:  ptr Fl_Input;  maxsize:  long) {.cdecl, importc: "Fl_Input_SetMaximumSize", dynlib: fltk, discardable.}
    ## original: declare function Fl_Input_GetMaximumSize(byval ip_ as Fl_Input_ ptr) as long
    proc Fl_Input_GetMaximumSize* ( ip_TT:  ptr Fl_Input):  long {.cdecl, importc: "Fl_Input_GetMaximumSize", dynlib: fltk, discardable.}
    #_  Sets the cursor position and mark.
    ## original: declare function Fl_Input_SetPosition(byval ip_ as Fl_Input_ ptr, byval p as long) as long
    proc Fl_Input_SetPosition* ( ip_TT:  ptr Fl_Input;  p:  long):  long {.cdecl, importc: "Fl_Input_SetPosition", dynlib: fltk, discardable.}
    #_  Sets the index for the cursor and mark.
    ## original: declare function Fl_Input_SetPosition2(byval ip_ as Fl_Input_ ptr, byval p as long, byval m as long) as long
    proc Fl_Input_SetPosition2* ( ip_TT:  ptr Fl_Input;  p:  long;  m:  long):  long {.cdecl, importc: "Fl_Input_SetPosition2", dynlib: fltk, discardable.}
    #_  Gets the position of the text cursor.
    ## original: declare function Fl_Input_GetPosition(byval ip_ as Fl_Input_ ptr) as long
    proc Fl_Input_GetPosition* ( ip_TT:  ptr Fl_Input):  long {.cdecl, importc: "Fl_Input_GetPosition", dynlib: fltk, discardable.}
    #_  Sets/Gets the read-only state of the input field.
    ## original: declare sub      Fl_Input_SetReadonly(byval ip_ as Fl_Input_ ptr, byval readonly as long)
    proc Fl_Input_SetReadonly*( ip_TT:  ptr Fl_Input;  readonly:  long) {.cdecl, importc: "Fl_Input_SetReadonly", dynlib: fltk, discardable.}
    ## original: declare function Fl_Input_GetReadonly(byval ip_ as Fl_Input_ ptr) as long
    proc Fl_Input_GetReadonly* ( ip_TT:  ptr Fl_Input):  long {.cdecl, importc: "Fl_Input_GetReadonly", dynlib: fltk, discardable.}
    #_  Sets/Gets the shortcut key associated with this widget.
    ## original: declare sub      Fl_Input_SetShortcut(byval ip_ as Fl_Input_ ptr, byval shortcut as long)
    proc Fl_Input_SetShortcut*( ip_TT:  ptr Fl_Input;  shortcut:  long) {.cdecl, importc: "Fl_Input_SetShortcut", dynlib: fltk, discardable.}
    ## original: declare function Fl_Input_GetShortcut(byval ip_ as Fl_Input_ ptr) as long
    proc Fl_Input_GetShortcut* ( ip_TT:  ptr Fl_Input):  long {.cdecl, importc: "Fl_Input_GetShortcut", dynlib: fltk, discardable.}
    #_  Changes the position and size of the widget.
    ## original: declare sub      Fl_Input_Resize(byval ip_ as Fl_Input_ ptr, byval x as long, byval y as long, byval w as long, byval h as long)
    proc Fl_Input_Resize*( ip_TT:  ptr Fl_Input;  x:  long;  y:  long;  w:  long;  h:  long) {.cdecl, importc: "Fl_Input_Resize", dynlib: fltk, discardable.}
    #_  Changes the size of the widget.
    ## original: declare sub      Fl_Input_SetSize(byval ip_ as Fl_Input_ ptr, byval w as long, byval h as long)
    proc Fl_Input_SetSize*( ip_TT:  ptr Fl_Input;  w:  long;  h:  long) {.cdecl, importc: "Fl_Input_SetSize", dynlib: fltk, discardable.}
    #_  Sets/Gets whether the Tab key causes focus navigation in multiline input fields or not.
    ## original: declare sub      Fl_Input_SetTabNav(byval ip_ as Fl_Input_ ptr, byval v as long)
    proc Fl_Input_SetTabNav*( ip_TT:  ptr Fl_Input;  v:  long) {.cdecl, importc: "Fl_Input_SetTabNav", dynlib: fltk, discardable.}
    ## original: declare function Fl_Input_GetTabNav(byval ip_ as Fl_Input_ ptr) as long
    proc Fl_Input_GetTabNav* ( ip_TT:  ptr Fl_Input):  long {.cdecl, importc: "Fl_Input_GetTabNav", dynlib: fltk, discardable.}
    #_  Sets/Gets the color of the text in the input field.
    ## original: declare sub      Fl_Input_SetTextColor(byval ip_ as Fl_Input_ ptr, byval c as Fl_COLOR)
    proc Fl_Input_SetTextColor*( ip_TT:  ptr Fl_Input;  c:  Fl_COLOR) {.cdecl, importc: "Fl_Input_SetTextColor", dynlib: fltk, discardable.}
    ## original: declare function Fl_Input_GetTextColor(byval ip_ as Fl_Input_ ptr) as Fl_COLOR
    proc Fl_Input_GetTextColor* ( ip_TT:  ptr Fl_Input):  Fl_COLOR {.cdecl, importc: "Fl_Input_GetTextColor", dynlib: fltk, discardable.}
    #_  Sets/Gets the font of the text in the input field.
    ## original: declare sub      Fl_Input_SetTextFont(byval ip_ as Fl_Input_ ptr, byval f as FL_FONT)
    proc Fl_Input_SetTextFont*( ip_TT:  ptr Fl_Input;  f:  FL_FONT) {.cdecl, importc: "Fl_Input_SetTextFont", dynlib: fltk, discardable.}
    ## original: declare function Fl_Input_GetTextFont(byval ip_ as Fl_Input_ ptr) as FL_FONT
    proc Fl_Input_GetTextFont* ( ip_TT:  ptr Fl_Input):  FL_FONT {.cdecl, importc: "Fl_Input_GetTextFont", dynlib: fltk, discardable.}
    #_  Sets/Gets the size of the text in the input field.
    ## original: declare sub      Fl_Input_SetTextSize(byval ip_ as Fl_Input_ ptr, byval s as FL_FONTSIZE)
    proc Fl_Input_SetTextSize*( ip_TT:  ptr Fl_Input;  s:  FL_FONTSIZE) {.cdecl, importc: "Fl_Input_SetTextSize", dynlib: fltk, discardable.}
    ## original: declare function Fl_Input_GetTextSize(byval ip_ as Fl_Input_ ptr) as FL_FONTSIZE
    proc Fl_Input_GetTextSize* ( ip_TT:  ptr Fl_Input):  FL_FONTSIZE {.cdecl, importc: "Fl_Input_GetTextSize", dynlib: fltk, discardable.}
    #_  Sets/Gets the word wrapping state of the input field.
    ## original: declare sub      Fl_Input_SetWrap(byval ip_ as Fl_Input_ ptr, byval wrap as long)
    proc Fl_Input_SetWrap*( ip_TT:  ptr Fl_Input;  wrap:  long) {.cdecl, importc: "Fl_Input_SetWrap", dynlib: fltk, discardable.}
    ## original: declare function Fl_Input_GetWrap(byval ip_ as Fl_Input_ ptr) as long
    proc Fl_Input_GetWrap* ( ip_TT:  ptr Fl_Input):  long {.cdecl, importc: "Fl_Input_GetWrap", dynlib: fltk, discardable.}

    #_ ####################################
    #_ # class Fl_Input extends Fl_Input_ #
    #_ ####################################
    ## DeclareEx(Fl_Input)
    ## expand by hand, begin
    ## original: declare function Fl_InputExNew(byval x as long, byval y as long, byval w as long, byval h as long, byval title as cstring=0) as Fl_InputEx ptr
    proc Fl_InputExNew* ( x:  long;  y:  long;  w:  long;  h:  long;  title:  cstring=nil):  ptr Fl_InputEx {.cdecl, importc: "Fl_InputExNew", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_InputExDelete         (byref ex as Fl_InputEx ptr)
    proc Fl_InputExDelete*( ex:  ptr Fl_InputEx) {.cdecl, importc: "Fl_InputExDelete", dynlib: fltk, discardable.}
    ## original: declare function Fl_InputExHandleBase     (byval ex as Fl_InputEx ptr, byval event as FL_EVENT) as long
    proc Fl_InputExHandleBase* ( ex:  ptr Fl_InputEx;  event:  FL_EVENT):  long {.cdecl, importc: "Fl_InputExHandleBase", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_InputExSetDestructorCB(byval ex as Fl_InputEx ptr, byval cb as Fl_DestructorEx)
    proc Fl_InputExSetDestructorCB*( ex:  ptr Fl_InputEx;  cb:  Fl_DestructorEx) {.cdecl, importc: "Fl_InputExSetDestructorCB", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_InputExSetDrawCB      (byval ex as Fl_InputEx ptr, byval cb as Fl_DrawEx)
    proc Fl_InputExSetDrawCB*( ex:  ptr Fl_InputEx;  cb:  Fl_DrawEx) {.cdecl, importc: "Fl_InputExSetDrawCB", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_InputExSetHandleCB    (byval ex as Fl_InputEx ptr, byval cb as Fl_HandleEx)
    proc Fl_InputExSetHandleCB*( ex:  ptr Fl_InputEx;  cb:  Fl_HandleEx) {.cdecl, importc: "Fl_InputExSetHandleCB", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_InputExSetResizeCB    (byval ex as Fl_InputEx ptr, byval cb as Fl_ResizeEx)
    proc Fl_InputExSetResizeCB*( ex:  ptr Fl_InputEx;  cb:  Fl_ResizeEx) {.cdecl, importc: "Fl_InputExSetResizeCB", dynlib: fltk, discardable.}

    ## expand by hand, end


    #_  Creates a new Fl_Input widget using the given position, size, and label string.
    ## original: declare function Fl_InputNew(byval x as long, byval y as long, byval w as long, byval h as long, byval label as cstring=0) as Fl_Input ptr
    proc Fl_InputNew* ( x:  long|int;  y:  long|int;  w:  long|int;  h:  long|int;  label:  cstring=nil):  ptr Fl_Input {.cdecl, importc: "Fl_InputNew", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_InputDelete(byref ip as Fl_Input ptr)
    proc Fl_InputDelete*( ip:  var ptr Fl_Input) {.cdecl, importc: "Fl_InputDelete", dynlib: fltk, discardable.}
    #_  Handles the specified event.
    ## original: declare function Fl_InputHandle(byval ip as Fl_Input ptr, byval event as FL_EVENT) as long
    proc Fl_InputHandle* ( ip:  ptr Fl_Input;  event:  FL_EVENT):  long {.cdecl, importc: "Fl_InputHandle", dynlib: fltk, discardable.}

    #_ #########################################
    #_ # class Fl_Float_Input extends Fl_Input #
    #_ #########################################
    DeclareEx(Fl_Float_Input)
    ## original: declare function Fl_Float_InputNew(byval x as long, byval y as long, byval w as long, byval h as long, byval label as cstring=0) as Fl_Float_Input ptr
    proc Fl_Float_InputNew* ( x:  long|int;  y:  long|int;  w:  long|int;  h:  long|int;  label:  cstring=nil):  ptr Fl_Float_Input {.cdecl, importc: "Fl_Float_InputNew", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Float_InputDelete(byref fip as Fl_Float_Input ptr)
    proc Fl_Float_InputDelete*( fip:  var ptr Fl_Float_Input) {.cdecl, importc: "Fl_Float_InputDelete", dynlib: fltk, discardable.}

    #_ #######################################
    #_ # class Fl_Int_Input extends Fl_Input #
    #_ #######################################
    DeclareEx(Fl_Int_Input)
    ## original: declare function Fl_Int_InputNew(byval x as long, byval y as long, byval w as long, byval h as long, byval label as cstring=0) as Fl_Int_Input ptr
    proc Fl_Int_InputNew* ( x:  long|int;  y:  long|int;  w:  long|int;  h:  long|int;  label:  cstring=nil):  ptr Fl_Int_Input {.cdecl, importc: "Fl_Int_InputNew", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Int_InputDelete(byref iip as Fl_Int_Input ptr)
    proc Fl_Int_InputDelete*( iip:  var ptr Fl_Int_Input) {.cdecl, importc: "Fl_Int_InputDelete", dynlib: fltk, discardable.}

    #_ #############################################
    #_ # class Fl_Multiline_Input extends Fl_Input #
    #_ #############################################
    DeclareEx(Fl_Multiline_Input)
    ## original: declare function Fl_Multiline_InputNew(byval x as long, byval y as long, byval w as long, byval h as long, byval label as cstring=0) as Fl_Multiline_Input ptr
    proc Fl_Multiline_InputNew* ( x:  long|int;  y:  long|int;  w:  long|int;  h:  long|int;  label:  cstring=nil):  ptr Fl_Multiline_Input {.cdecl, importc: "Fl_Multiline_InputNew", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Multiline_InputDelete(byref mip as Fl_Multiline_Input ptr)
    proc Fl_Multiline_InputDelete*( mip:  var ptr Fl_Multiline_Input) {.cdecl, importc: "Fl_Multiline_InputDelete", dynlib: fltk, discardable.}

    #_ ##########################################
    #_ # class Fl_Secret_Input extends Fl_Input #
    #_ ##########################################
    DeclareEx(Fl_Secret_Input)
    ## original: declare function Fl_Secret_InputNew(byval x as long, byval y as long, byval w as long, byval h as long, byval label as cstring=0) as Fl_Secret_Input ptr
    proc Fl_Secret_InputNew* ( x:  long|int;  y:  long|int;  w:  long|int;  h:  long|int;  label:  cstring=nil):  ptr Fl_Secret_Input {.cdecl, importc: "Fl_Secret_InputNew", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Secret_InputDelete(byref sip as Fl_Secret_Input ptr)
    proc Fl_Secret_InputDelete*( sip:  var ptr Fl_Secret_Input) {.cdecl, importc: "Fl_Secret_InputDelete", dynlib: fltk, discardable.}

    ## original: declare function Fl_Secret_InputHandle(byval sip as Fl_Secret_Input ptr, byval event as FL_EVENT) as long
    proc Fl_Secret_InputHandle* ( sip:  ptr Fl_Secret_Input;  event:  FL_EVENT):  long {.cdecl, importc: "Fl_Secret_InputHandle", dynlib: fltk, discardable.}

    #_ ####################################
    #_ # class Fl_Output extends Fl_Input #
    #_ ####################################
    DeclareEx(Fl_Output)
    ## original: declare function Fl_OutputNew(byval x as long, byval y as long, byval w as long, byval h as long, byval label as cstring=0) as Fl_Output ptr
    proc Fl_OutputNew* ( x:  long|int;  y:  long|int;  w:  long|int;  h:  long|int;  label:  cstring=nil):  ptr Fl_Output {.cdecl, importc: "Fl_OutputNew", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_OutputDelete(byref op as Fl_Output ptr)
    proc Fl_OutputDelete*( op:  var ptr Fl_Output) {.cdecl, importc: "Fl_OutputDelete", dynlib: fltk, discardable.}
    #_ ###############################################
    #_ # class Fl_Multiline_Output extends Fl_Output #
    #_ ###############################################
    DeclareEx(Fl_Multiline_Output)
    ## original: declare function Fl_Multiline_OutputNew(byval x as long, byval y as long, byval w as long, byval h as long, byval label as cstring=0) as Fl_Multiline_Output ptr
    proc Fl_Multiline_OutputNew* ( x:  long|int;  y:  long|int;  w:  long|int;  h:  long|int;  label:  cstring=nil):  ptr Fl_Multiline_Output {.cdecl, importc: "Fl_Multiline_OutputNew", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Multiline_OutputDelete(byref op as Fl_Multiline_Output ptr)
    proc Fl_Multiline_OutputDelete*( op:  var ptr Fl_Multiline_Output) {.cdecl, importc: "Fl_Multiline_OutputDelete", dynlib: fltk, discardable.}

    #_ ########################################
    #_ # class Fl_File_Input extends Fl_Input #
    #_ ########################################
    DeclareEx(Fl_File_Input)
    #_  Creates a new Fl_File_Input widget using the given position, size, and label string.
    ## original: declare function Fl_File_InputNew(byval x as long, byval y as long, byval w as long, byval h as long, byval label as cstring=0) as Fl_File_Input ptr
    proc Fl_File_InputNew* ( x:  long|int;  y:  long|int;  w:  long|int;  h:  long|int;  label:  cstring=nil):  ptr Fl_File_Input {.cdecl, importc: "Fl_File_InputNew", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_File_InputDelete(byref fip as Fl_File_Input ptr)
    proc Fl_File_InputDelete*( fip:  var ptr Fl_File_Input) {.cdecl, importc: "Fl_File_InputDelete", dynlib: fltk, discardable.}
    #_  Handles the specified event.
    ## original: declare function Fl_File_InputHandle(byval fip as Fl_File_Input ptr, byval event as FL_EVENT) as long
    proc Fl_File_InputHandle* ( fip:  ptr Fl_File_Input;  event:  FL_EVENT):  long {.cdecl, importc: "Fl_File_InputHandle", dynlib: fltk, discardable.}
    #_  Sets/Gets the box type to use for the navigation bar.
    ## original: declare sub      Fl_File_InputSetDownBox(byval fip as Fl_File_Input ptr, byval b as FL_BOXTYPE)
    proc Fl_File_InputSetDownBox*( fip:  ptr Fl_File_Input;  b:  FL_BOXTYPE) {.cdecl, importc: "Fl_File_InputSetDownBox", dynlib: fltk, discardable.}
    ## original: declare function Fl_File_InputGetDownBox(byval fip as Fl_File_Input ptr) as FL_BOXTYPE
    proc Fl_File_InputGetDownBox* ( fip:  ptr Fl_File_Input):  FL_BOXTYPE {.cdecl, importc: "Fl_File_InputGetDownBox", dynlib: fltk, discardable.}
    #_  Gets/Sets the current error color to c
    ## original: declare function Fl_File_InputGetErrorColor(byval fip as Fl_File_Input ptr) as Fl_COLOR
    proc Fl_File_InputGetErrorColor* ( fip:  ptr Fl_File_Input):  Fl_COLOR {.cdecl, importc: "Fl_File_InputGetErrorColor", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_File_InputSetErrorColor(byval fip as Fl_File_Input ptr, byval c as Fl_COLOR)
    proc Fl_File_InputSetErrorColor*( fip:  ptr Fl_File_Input;  c:  Fl_COLOR) {.cdecl, importc: "Fl_File_InputSetErrorColor", dynlib: fltk, discardable.}
    #_  Sets the value of the widget given a new string value.
    ## original: declare function Fl_File_InputSetValue(byval fip as Fl_File_Input ptr, byval txt as cstring) as long
    proc Fl_File_InputSetValue* ( fip:  ptr Fl_File_Input;  txt:  cstring):  long {.cdecl, importc: "Fl_File_InputSetValue", dynlib: fltk, discardable.}
    #_  Sets the value of the widget given a new string value and its length.
    ## original: declare function Fl_File_InputSetValue2(byval fip as Fl_File_Input ptr, byval txt as cstring, byval nChars as long) as long
    proc Fl_File_InputSetValue2* ( fip:  ptr Fl_File_Input;  txt:  cstring;  nChars:  long):  long {.cdecl, importc: "Fl_File_InputSetValue2", dynlib: fltk, discardable.}
    #_  Returns the current value, which is a pointer to an internal buffer and is valid only until the next event is handled.
    ## original: declare function Fl_File_InputGetValue(byval fip as Fl_File_Input ptr) as cstring
    proc Fl_File_InputGetValue* ( fip:  ptr Fl_File_Input):  cstring {.cdecl, importc: "Fl_File_InputGetValue", dynlib: fltk, discardable.}

    #_ ######################
    #_ # class Fl_Menu_Item #
    #_ ######################
    #_  Allows a menu item to be picked.
    ## original: declare sub      Fl_Menu_ItemActivate(byval it as Fl_Menu_Item ptr)
    proc Fl_Menu_ItemActivate*( it:  ptr Fl_Menu_Item) {.cdecl, importc: "Fl_Menu_ItemActivate", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Menu_ItemDeactivate(byval it as Fl_Menu_Item ptr)
    proc Fl_Menu_ItemDeactivate*( it:  ptr Fl_Menu_Item) {.cdecl, importc: "Fl_Menu_ItemDeactivate", dynlib: fltk, discardable.}
    #_  Gets whether or not the item can be picked.
    ## original: declare function Fl_Menu_ItemActive(byval it as Fl_Menu_Item ptr) as long
    proc Fl_Menu_ItemActive* ( it:  ptr Fl_Menu_Item):  long {.cdecl, importc: "Fl_Menu_ItemActive", dynlib: fltk, discardable.}
    #_  Returns non 0 if FL_INACTIVE and FL_INVISIBLE are cleared, 0 otherwise.
    ## original: declare function Fl_Menu_ItemActiveVisible(byval it as Fl_Menu_Item ptr) as long
    proc Fl_Menu_ItemActiveVisible* ( it:  ptr Fl_Menu_Item):  long {.cdecl, importc: "Fl_Menu_ItemActiveVisible", dynlib: fltk, discardable.}
    #_  Adds an item.
    ## original: declare function Fl_Menu_ItemAdd (byval it as Fl_Menu_Item ptr, byval label as cstring, byval shortcut as long=0, byval cb as Fl_Callback=0, byval userdata as any ptr=0, byval flag as FL_MENUITEM_FLAG=0) as long
    proc Fl_Menu_ItemAdd* ( it:  ptr Fl_Menu_Item;  label:  cstring;  shortcut:  long=0;  cb:  Fl_Callback=nil;  userdata:  pointer=nil;  flag:  FL_MENUITEM_FLAG=0):  long {.cdecl, importc: "Fl_Menu_ItemAdd", dynlib: fltk, discardable.}

    ## original: declare function Fl_Menu_ItemAdd2(byval it as Fl_Menu_Item ptr, byval label as cstring, byval shortcut as cstring, byval cb as Fl_Callback=0, byval userdata as any ptr=0, byval flag as FL_MENUITEM_FLAG=0) as long
    proc Fl_Menu_ItemAdd2* ( it:  ptr Fl_Menu_Item;  label:  cstring;  shortcut:  cstring;  cb:  Fl_Callback=nil;  userdata:  pointer=nil;  flag:  FL_MENUITEM_FLAG=0):  long {.cdecl, importc: "Fl_Menu_ItemAdd2", dynlib: fltk, discardable.}
    #_  Inserts an item at position index.
    ## original: declare function Fl_Menu_ItemInsert(byval it as Fl_Menu_Item ptr, byval index as long, byval label as cstring, byval shortcut as long, byval cb as Fl_Callback, byval userdata as any ptr=0, byval flag as FL_MENUITEM_FLAG=0) as long
    proc Fl_Menu_ItemInsert* ( it:  ptr Fl_Menu_Item;  index:  long;  label:  cstring;  shortcut:  long;  cb:  Fl_Callback;  userdata:  pointer=nil;  flag:  FL_MENUITEM_FLAG=0):  long {.cdecl, importc: "Fl_Menu_ItemInsert", dynlib: fltk, discardable.}
    #_  Sets/Gets the user data argument that is sent to the callback function.
    ## original: declare sub      Fl_Menu_ItemSetArgument(byval it as Fl_Menu_Item ptr, byval v as long)
    proc Fl_Menu_ItemSetArgument*( it:  ptr Fl_Menu_Item;  v:  long) {.cdecl, importc: "Fl_Menu_ItemSetArgument", dynlib: fltk, discardable.}

    ## original: declare function Fl_Menu_ItemGetArgument(byval it as Fl_Menu_Item ptr) as long
    proc Fl_Menu_ItemGetArgument* ( it:  ptr Fl_Menu_Item):  long {.cdecl, importc: "Fl_Menu_ItemGetArgument", dynlib: fltk, discardable.}
    #_  Sets the menu item's callback functions and optional the userdata argument.
    ## original: declare sub      Fl_Menu_ItemCallback (byval it as Fl_Menu_Item ptr, byval cb as Fl_Callback)
    proc Fl_Menu_ItemCallback*( it:  ptr Fl_Menu_Item;  cb:  Fl_Callback) {.cdecl, importc: "Fl_Menu_ItemCallback", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Menu_ItemCallbackArg alias "Fl_Menu_ItemCallback2" (byval it as Fl_Menu_Item ptr, byval cb as Fl_Callback, byval pData as any ptr)
    proc Fl_Menu_ItemCallbackArg*() {.cdecl, importc: "Fl_Menu_ItemCallbackArg", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Menu_ItemCallback0(byval it as Fl_Menu_Item ptr, byval cb as Fl_Callback0)
    proc Fl_Menu_ItemCallback0*( it:  ptr Fl_Menu_Item;  cb:  Fl_Callback0) {.cdecl, importc: "Fl_Menu_ItemCallback0", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Menu_ItemCallback1(byval it as Fl_Menu_Item ptr, byval cb as Fl_Callback1, byval lData as long=0)
    proc Fl_Menu_ItemCallback1*( it:  ptr Fl_Menu_Item;  cb:  Fl_Callback1;  lData:  long=0) {.cdecl, importc: "Fl_Menu_ItemCallback1", dynlib: fltk, discardable.}
    #_  Returns the callback function that is set for the menu item.
    ## original: declare function Fl_Menu_ItemGetCallback_p(byval it as Fl_Menu_Item ptr) as Fl_Callback_p
    proc Fl_Menu_ItemGetCallback_p* ( it:  ptr Fl_Menu_Item):  Fl_Callback_p {.cdecl, importc: "Fl_Menu_ItemGetCallback_p", dynlib: fltk, discardable.}
    #_  Returns true if a checkbox will be drawn next to this item.
    ## original: declare function Fl_Menu_ItemCheckBox(byval it as Fl_Menu_Item ptr) as long
    proc Fl_Menu_ItemCheckBox* ( it:  ptr Fl_Menu_Item):  long {.cdecl, importc: "Fl_Menu_ItemCheckBox", dynlib: fltk, discardable.}
    #_  Returns true if this item is a radio item.
    ## original: declare function Fl_Menu_ItemRadio(byval it as Fl_Menu_Item ptr) as long
    proc Fl_Menu_ItemRadio* ( it:  ptr Fl_Menu_Item):  long {.cdecl, importc: "Fl_Menu_ItemRadio", dynlib: fltk, discardable.}
    #_  next 3 declares for backward compatibility only
    ## original: declare sub      Fl_Menu_ItemCheck(byval it as Fl_Menu_Item ptr)
    proc Fl_Menu_ItemCheck*( it:  ptr Fl_Menu_Item) {.cdecl, importc: "Fl_Menu_ItemCheck", dynlib: fltk, discardable.}

    ## original: declare function Fl_Menu_ItemChecked(byval it as Fl_Menu_Item ptr) as long
    proc Fl_Menu_ItemChecked* ( it:  ptr Fl_Menu_Item):  long {.cdecl, importc: "Fl_Menu_ItemChecked", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Menu_ItemUncheck(byval it as Fl_Menu_Item ptr)
    proc Fl_Menu_ItemUncheck*( it:  ptr Fl_Menu_Item) {.cdecl, importc: "Fl_Menu_ItemUncheck", dynlib: fltk, discardable.}
    #_  Turns the check or radio item "off" for the menu item.
    ## original: declare sub      Fl_Menu_ItemClear(byval it as Fl_Menu_Item ptr)
    proc Fl_Menu_ItemClear*( it:  ptr Fl_Menu_Item) {.cdecl, importc: "Fl_Menu_ItemClear", dynlib: fltk, discardable.}
    #_  Calls the Fl_Menu_Item item's callback, and provides the Fl_Widget argument.
    ## original: declare sub      Fl_Menu_ItemDoCallback                                     (byval it as Fl_Menu_Item ptr, byval wgt as Fl_Widget ptr, byval pData as any ptr=0)
    proc Fl_Menu_ItemDoCallback*( it:  ptr Fl_Menu_Item;  wgt:  ptr Fl_Widget;  pData:  pointer=nil) {.cdecl, importc: "Fl_Menu_ItemDoCallback", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Menu_ItemDoCallbackArg  alias "Fl_Menu_ItemDoCallback"  (byval it as Fl_Menu_Item ptr, byval wgt as Fl_Widget ptr, byval pData as any ptr)
    proc Fl_Menu_ItemDoCallbackArg*() {.cdecl, importc: "Fl_Menu_ItemDoCallbackArg", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Menu_ItemDoCallback0    alias "Fl_Menu_ItemDoCallback3" (byval it as Fl_Menu_Item ptr, byval wgt as Fl_Widget ptr)
    proc Fl_Menu_ItemDoCallback0*() {.cdecl, importc: "Fl_Menu_ItemDoCallback0", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Menu_ItemDoCallback1Arg alias "Fl_Menu_ItemDoCallback2" (byval it as Fl_Menu_Item ptr, byval wgt as Fl_Widget ptr, byval lData as long)
    proc Fl_Menu_ItemDoCallback1Arg*() {.cdecl, importc: "Fl_Menu_ItemDoCallback1Arg", dynlib: fltk, discardable.}
    #_  Draws the menu item in bounding box x,y,w,h, optionally selects the item.
    ## original: declare sub      Fl_Menu_ItemDraw(byval it as Fl_Menu_Item ptr, byval x as long, byval y as long, byval w as long, byval h as long, byval m as const Fl_Menu_ ptr, byval t as long=0)
    #~ proc Fl_Menu_ItemDraw*( it:  ptr Fl_Menu_Item;  x:  long;  y:  long;  w:  long;  h:  long;  m:  ptr Fl_Menu;  t:  long = 0) {.cdecl, importc: "Fl_Menu_ItemDraw", dynlib: fltk, discardable.}
    #_  Search only the top level menu for a shortcut.
    ## original: declare function Fl_Menu_ItemFindShortcut(byval it as Fl_Menu_Item ptr, byval ip as long ptr=0, byval require_alt as const long=0) as Fl_Menu_Item ptr
    proc Fl_Menu_ItemFindShortcut* ( it:  ptr Fl_Menu_Item;  ip:  ptr long=nil;  require_alt:  long = 0):  ptr Fl_Menu_Item {.cdecl, importc: "Fl_Menu_ItemFindShortcut", dynlib: fltk, discardable.}
    #_  Returns the first menu item, same as next(0)
    ## original: declare function Fl_Menu_ItemFirst(byval it as Fl_Menu_Item ptr) as Fl_Menu_Item ptr
    proc Fl_Menu_ItemFirst* ( it:  ptr Fl_Menu_Item):  ptr Fl_Menu_Item {.cdecl, importc: "Fl_Menu_ItemFirst", dynlib: fltk, discardable.}

    ## original: declare function Fl_Menu_ItemFirst2(byval it as Fl_Menu_Item ptr) as const Fl_Menu_Item ptr
    proc Fl_Menu_ItemFirst2* ( it:  ptr Fl_Menu_Item):  ptr Fl_Menu_Item {.cdecl, importc: "Fl_Menu_ItemFirst2", dynlib: fltk, discardable.}
    #_  Advance a pointer by n items through a menu array, skipping the contents of submenus and invisible items.
    ## original: declare function Fl_Menu_ItemNext(byval it as Fl_Menu_Item ptr, byval index as long=1) as Fl_Menu_Item ptr
    proc Fl_Menu_ItemNext* ( it:  ptr Fl_Menu_Item;  index:  long=1):  ptr Fl_Menu_Item {.cdecl, importc: "Fl_Menu_ItemNext", dynlib: fltk, discardable.}

    ## original: declare function Fl_Menu_ItemNext2(byval it as Fl_Menu_Item ptr, byval index as long=1) as const Fl_Menu_Item ptr
    proc Fl_Menu_ItemNext2* ( it:  ptr Fl_Menu_Item;  index:  long=1):  ptr Fl_Menu_Item {.cdecl, importc: "Fl_Menu_ItemNext2", dynlib: fltk, discardable.}
    #_  Hides an item in the menu.
    ## original: declare sub      Fl_Menu_ItemHide(byval it as Fl_Menu_Item ptr)
    proc Fl_Menu_ItemHide*( it:  ptr Fl_Menu_Item) {.cdecl, importc: "Fl_Menu_ItemHide", dynlib: fltk, discardable.}
    #_  Makes an item visible in the menu.
    ## original: declare sub      Fl_Menu_ItemShow(byval it as Fl_Menu_Item ptr)
    proc Fl_Menu_ItemShow*( it:  ptr Fl_Menu_Item) {.cdecl, importc: "Fl_Menu_ItemShow", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Menu_ItemImage(byval it as const Fl_Menu_Item ptr, byval img as Fl_Image ptr)
    proc Fl_Menu_ItemImage*( it:  ptr Fl_Menu_Item;  img:  ptr Fl_Image) {.cdecl, importc: "Fl_Menu_ItemImage", dynlib: fltk, discardable.}
    #_  Sets or Returns the title of the item.
    ## original: declare sub      Fl_Menu_ItemSetLabel(byval it as Fl_Menu_Item ptr, byval label as cstring)
    proc Fl_Menu_ItemSetLabel*( it:  ptr Fl_Menu_Item;  label:  cstring) {.cdecl, importc: "Fl_Menu_ItemSetLabel", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Menu_ItemSetLabel2(byval it as Fl_Menu_Item ptr, byval lt as FL_LABEL_TYPE, byval label as cstring)
    proc Fl_Menu_ItemSetLabel2*( it:  ptr Fl_Menu_Item;  lt:  FL_LABEL_TYPE;  label:  cstring) {.cdecl, importc: "Fl_Menu_ItemSetLabel2", dynlib: fltk, discardable.}
    ## original: declare function Fl_Menu_ItemGetLabel(byval it as Fl_Menu_Item ptr) as cstring
    proc Fl_Menu_ItemGetLabel* ( it:  ptr Fl_Menu_Item):  cstring {.cdecl, importc: "Fl_Menu_ItemGetLabel", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Menu_ItemSetLabelColor(byval it as Fl_Menu_Item ptr, byval c as Fl_COLOR)
    proc Fl_Menu_ItemSetLabelColor*( it:  ptr Fl_Menu_Item;  c:  Fl_COLOR) {.cdecl, importc: "Fl_Menu_ItemSetLabelColor", dynlib: fltk, discardable.}
    ## original: declare function Fl_Menu_ItemGetLabelColor(byval it as Fl_Menu_Item ptr) as Fl_COLOR
    proc Fl_Menu_ItemGetLabelColor* ( it:  ptr Fl_Menu_Item):  Fl_COLOR {.cdecl, importc: "Fl_Menu_ItemGetLabelColor", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Menu_ItemSetLabelFont(byval it as Fl_Menu_Item ptr, byval f as FL_FONT)
    proc Fl_Menu_ItemSetLabelFont*( it:  ptr Fl_Menu_Item;  f:  FL_FONT) {.cdecl, importc: "Fl_Menu_ItemSetLabelFont", dynlib: fltk, discardable.}
    ## original: declare function Fl_Menu_ItemGetLabelFont(byval it as Fl_Menu_Item ptr) as FL_FONT
    proc Fl_Menu_ItemGetLabelFont* ( it:  ptr Fl_Menu_Item):  FL_FONT {.cdecl, importc: "Fl_Menu_ItemGetLabelFont", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Menu_ItemSetLabelSize(byval it as Fl_Menu_Item ptr, byval fs as FL_FONTSIZE)
    proc Fl_Menu_ItemSetLabelSize*( it:  ptr Fl_Menu_Item;  fs:  FL_FONTSIZE) {.cdecl, importc: "Fl_Menu_ItemSetLabelSize", dynlib: fltk, discardable.}
    ## original: declare function Fl_Menu_ItemGetLabelSize(byval it as Fl_Menu_Item ptr) as FL_FONTSIZE
    proc Fl_Menu_ItemGetLabelSize* ( it:  ptr Fl_Menu_Item):  FL_FONTSIZE {.cdecl, importc: "Fl_Menu_ItemGetLabelSize", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Menu_ItemSetLabelType(byval it as Fl_Menu_Item ptr, byval lt as Fl_LABEL_TYPE)
    proc Fl_Menu_ItemSetLabelType*( it:  ptr Fl_Menu_Item;  lt:  Fl_LABEL_TYPE) {.cdecl, importc: "Fl_Menu_ItemSetLabelType", dynlib: fltk, discardable.}
    ## original: declare function Fl_Menu_ItemGetLabelType(byval it as Fl_Menu_Item ptr) as Fl_LABEL_TYPE
    proc Fl_Menu_ItemGetLabelType* ( it:  ptr Fl_Menu_Item):  Fl_LABEL_TYPE {.cdecl, importc: "Fl_Menu_ItemGetLabelType", dynlib: fltk, discardable.}

    #_  Measures width of label, including effect of & characters.
    ## original: declare function Fl_Menu_ItemMeasure(byval it as Fl_Menu_Item ptr, byval h as long ptr, byval m as const Fl_Menu_ ptr) as long
    proc Fl_Menu_ItemMeasure* ( it:  ptr Fl_Menu_Item;  h:  ptr long;  m:  ptr FL_Menu_TT):  long {.cdecl, importc: "Fl_Menu_ItemMeasure", dynlib: fltk, discardable.}

    #_  This method is called by widgets that want to display menus.
    ## original: declare function Fl_Menu_ItemPopup   (byval it as Fl_Menu_Item ptr, byval x as long, byval y as long, byval title as cstring=0, byval picked as Fl_Menu_Item ptr=0, byval m as const Fl_Menu_ ptr=0) as Fl_Menu_Item ptr
    proc Fl_Menu_ItemPopup* ( it:  ptr Fl_Menu_Item;  x:  long;  y:  long;  title:  cstring=nil;  picked:  ptr Fl_Menu_Item;  m:  ptr FL_Menu_TT):  ptr Fl_Menu_Item {.cdecl, importc: "Fl_Menu_ItemPopup", dynlib: fltk, discardable.}

    #_  Pulldown() is similar to popup(), but a rectangle is provided to position the menu.
    ## original: declare function Fl_Menu_ItemPulldown(byval it as Fl_Menu_Item ptr, byval x as long, byval y as long, byval w as long, byval h as long, byval picked as Fl_Menu_Item ptr=0, byval m as const Fl_Menu_ ptr=0, byval title as Fl_Menu_Item ptr=0, byval menubar as long=0) as Fl_Menu_Item ptr
    proc Fl_Menu_ItemPulldown* ( it:  ptr Fl_Menu_Item;  x:  long;  y:  long;  w:  long;  h:  long;  picked:  ptr Fl_Menu_Item;  m: ptr FL_Menu_TT;  title:  ptr Fl_Menu_Item;  menubar:  long=0):  ptr Fl_Menu_Item {.cdecl, importc: "Fl_Menu_ItemPulldown", dynlib: fltk, discardable.}

    #_  Turns the check or radio item "on" for the menu item.
    ## original: declare sub      Fl_Menu_ItemSet(byval it as Fl_Menu_Item ptr)
    proc Fl_Menu_ItemSet*( it:  ptr Fl_Menu_Item) {.cdecl, importc: "Fl_Menu_ItemSet", dynlib: fltk, discardable.}

    #_  Turns the radio item "on" for the menu item and turns off adjacent radio items set.
    ## original: declare sub      Fl_Menu_ItemSetonly(byval it as Fl_Menu_Item ptr)
    proc Fl_Menu_ItemSetonly*( it:  ptr Fl_Menu_Item) {.cdecl, importc: "Fl_Menu_ItemSetonly", dynlib: fltk, discardable.}

    #_  Sets/Gets exactly what key combination will trigger the menu item.
    ## original: declare sub      Fl_Menu_ItemSetShortcut(byval it as Fl_Menu_Item ptr, byval s as long)
    proc Fl_Menu_ItemSetShortcut*( it:  ptr Fl_Menu_Item;  s:  long) {.cdecl, importc: "Fl_Menu_ItemSetShortcut", dynlib: fltk, discardable.}

    ## original: declare function Fl_Menu_ItemGetShortcut(byval it as Fl_Menu_Item ptr) as long
    proc Fl_Menu_ItemGetShortcut* ( it:  ptr Fl_Menu_Item):  long {.cdecl, importc: "Fl_Menu_ItemGetShortcut", dynlib: fltk, discardable.}
    #_  This is designed to be called by a widgets handle() method in response to a FL_SHORTCUT event.
    ## original: declare function Fl_Menu_ItemTestShortcut(byval it as Fl_Menu_Item ptr) as Fl_Menu_Item ptr
    proc Fl_Menu_ItemTestShortcut* ( it:  ptr Fl_Menu_Item):  ptr Fl_Menu_Item {.cdecl, importc: "Fl_Menu_ItemTestShortcut", dynlib: fltk, discardable.}
    #_  Size of the menu starting from this menu item.
    ## original: declare function Fl_Menu_ItemSize(byval it as Fl_Menu_Item ptr) as long
    proc Fl_Menu_ItemSize* ( it:  ptr Fl_Menu_Item):  long {.cdecl, importc: "Fl_Menu_ItemSize", dynlib: fltk, discardable.}
    #_  Returns true if either FL_SUBMENU or FL_SUBMENU_POINTER is on in the flags.
    ## original: declare function Fl_Menu_ItemSubmenu(byval it as Fl_Menu_Item ptr) as long
    proc Fl_Menu_ItemSubmenu* ( it:  ptr Fl_Menu_Item):  long {.cdecl, importc: "Fl_Menu_ItemSubmenu", dynlib: fltk, discardable.}
    #_  Sets/Gets the user data argument that is sent to the callback function.
    ## original: declare sub      Fl_Menu_ItemSetUserData(byval it as Fl_Menu_Item ptr, byval userdata as any ptr)
    proc Fl_Menu_ItemSetUserData*( it:  ptr Fl_Menu_Item;  userdata:  pointer) {.cdecl, importc: "Fl_Menu_ItemSetUserData", dynlib: fltk, discardable.}
    ## original: declare function Fl_Menu_ItemGetUserData(byval it as Fl_Menu_Item ptr) as any ptr
    proc Fl_Menu_ItemGetUserData* ( it:  ptr Fl_Menu_Item):  pointer {.cdecl, importc: "Fl_Menu_ItemGetUserData", dynlib: fltk, discardable.}
    #_  Returns the current value of the check or radio item.
    ## original: declare function Fl_Menu_ItemValue(byval it as Fl_Menu_Item ptr) as long
    proc Fl_Menu_ItemValue* ( it:  ptr Fl_Menu_Item):  long {.cdecl, importc: "Fl_Menu_ItemValue", dynlib: fltk, discardable.}
    #_  Gets the visibility of an item.
    ## original: declare function Fl_Menu_ItemVisible(byval it as Fl_Menu_Item ptr) as long
    proc Fl_Menu_ItemVisible* ( it:  ptr Fl_Menu_Item):  long {.cdecl, importc: "Fl_Menu_ItemVisible", dynlib: fltk, discardable.}

    #_ ####################################
    #_ # class Fl_Menu_ extends Fl_Widget #
    #_ ####################################
    ## original: declare function Fl_Menu_Add (byval m_ as Fl_Menu_ ptr, byval label as cstring, byval shortcut as long=0             , byval cb as Fl_Callback=0, byval userdata as any ptr=0, byval flag as long=0) as long
    proc Fl_Menu_Add* ( m:  ptr Fl_Menu_TT;  label:  cstring;  shortcut:  long=0;  cb:  Fl_Callback=nil;  userdata:  pointer=nil;  flag:  long=0):  long {.cdecl, importc: "Fl_Menu_Add", dynlib: fltk, discardable.}
    ## original: declare function Fl_Menu_Add2(byval m_ as Fl_Menu_ ptr, byval label as cstring, byval shortcut as cstring=0, byval cb as Fl_Callback=0, byval userdata as any ptr=0, byval flag as long=0) as long
    proc Fl_Menu_Add2* ( m:  ptr Fl_Menu_TT;  label:  cstring;  shortcut:  cstring=nil;  cb:  ptr Fl_Callback=nil;  userdata:  pointer=nil;  flag:  long=0):  long {.cdecl, importc: "Fl_Menu_Add2", dynlib: fltk, discardable.}
    ## original: declare function Fl_Menu_Add3(byval m_ as Fl_Menu_ ptr, byval label as cstring) as long
    proc Fl_Menu_Add3* ( m:  ptr Fl_Menu_TT;  label:  cstring):  long {.cdecl, importc: "Fl_Menu_Add3", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Menu_Clear(byval m_ as Fl_Menu_ ptr)
    proc Fl_Menu_Clear*( m:  ptr Fl_Menu_TT) {.cdecl, importc: "Fl_Menu_Clear", dynlib: fltk, discardable.}

    ## original: declare function Fl_Menu_ClearSubmenu(byval m_ as Fl_Menu_ ptr, byval index as long) as long
    proc Fl_Menu_ClearSubmenu* ( m:  ptr Fl_Menu_TT;  index:  long):  long {.cdecl, importc: "Fl_Menu_ClearSubmenu", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Menu_Copy(byval m_ as Fl_Menu_ ptr, byval mi as Fl_Menu_Item ptr, byval userdata as any ptr=0)
    proc Fl_Menu_Copy*( m:  ptr Fl_Menu_TT;  mi:  ptr Fl_Menu_Item;  userdata:  pointer=nil) {.cdecl, importc: "Fl_Menu_Copy", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Menu_SetDownBox(byval m_ as Fl_Menu_ ptr, byval bt as FL_BOXTYPE)
    proc Fl_Menu_SetDownBox*( m:  ptr Fl_Menu_TT;  bt:  FL_BOXTYPE) {.cdecl, importc: "Fl_Menu_SetDownBox", dynlib: fltk, discardable.}
    ## original: declare function Fl_Menu_GetDownBox(byval m_ as Fl_Menu_ ptr) as FL_BOXTYPE
    proc Fl_Menu_GetDownBox* ( m:  ptr Fl_Menu_TT):  FL_BOXTYPE {.cdecl, importc: "Fl_Menu_GetDownBox", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Menu_SetDownColor(byval m_ as Fl_Menu_ ptr, byval c as Fl_COLOR)
    proc Fl_Menu_SetDownColor*( m_TT:  ptr Fl_Menu_TT;  c:  Fl_COLOR) {.cdecl, importc: "Fl_Menu_SetDownColor", dynlib: fltk, discardable.}
    ## original: declare function Fl_Menu_GetDownColor(byval m_ as Fl_Menu_ ptr) as Fl_COLOR
    proc Fl_Menu_GetDownColor* ( m:  ptr Fl_Menu_TT):  Fl_COLOR {.cdecl, importc: "Fl_Menu_GetDownColor", dynlib: fltk, discardable.}

    ## original: declare function Fl_Menu_FindIndexByName(byval m_ as Fl_Menu_ ptr, byval name_ as cstring) as long
    proc Fl_Menu_FindIndexByName* ( m:  ptr Fl_Menu_TT;  name_TT:  cstring):  long {.cdecl, importc: "Fl_Menu_FindIndexByName", dynlib: fltk, discardable.}

    ## original: declare function Fl_Menu_FindIndexByItem(byval m_ as Fl_Menu_ ptr, byval item as Fl_Menu_Item ptr) as long
    proc Fl_Menu_FindIndexByItem* ( m:  ptr Fl_Menu_TT;  item:  ptr Fl_Menu_Item):  long {.cdecl, importc: "Fl_Menu_FindIndexByItem", dynlib: fltk, discardable.}

    ## original: declare function Fl_Menu_FindIndexByCallback(byval m_ as Fl_Menu_ ptr, byval cb as Fl_Callback) as long
    proc Fl_Menu_FindIndexByCallback* ( m:  ptr Fl_Menu_TT;  cb:  Fl_Callback):  long {.cdecl, importc: "Fl_Menu_FindIndexByCallback", dynlib: fltk, discardable.}

    ## original: declare function Fl_Menu_FindItemByName(byval m_ as Fl_Menu_ ptr, byval name_ as cstring) as Fl_Menu_Item ptr
    proc Fl_Menu_FindItemByName* ( m_TT:  ptr Fl_Menu_TT;  name_TT:  cstring):  ptr Fl_Menu_Item {.cdecl, importc: "Fl_Menu_FindItemByName", dynlib: fltk, discardable.}

    ## original: declare function Fl_Menu_FindItemByCallback(byval m_ as Fl_Menu_ ptr, byval cb as Fl_Callback) as Fl_Menu_Item ptr
    proc Fl_Menu_FindItemByCallback* ( m:  ptr Fl_Menu_TT;  cb:  Fl_Callback):  ptr Fl_Menu_Item {.cdecl, importc: "Fl_Menu_FindItemByCallback", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Menu_Global(byval m_ as Fl_Menu_ ptr)
    proc Fl_Menu_Global*( m_TT:  ptr Fl_Menu_TT) {.cdecl, importc: "Fl_Menu_Global", dynlib: fltk, discardable.}

    ## original: declare function Fl_Menu_Insert (byval m_ as Fl_Menu_ ptr, byval index as long, byval label as cstring, byval shortcut as cstring=0, byval cb as Fl_Callback=0, byval userdata as any ptr=0, byval flag as long=0) as long
    proc Fl_Menu_Insert* ( m:  ptr Fl_Menu_TT;  index:  long;  label:  cstring;  shortcut:  cstring=nil;  cb:  Fl_Callback=nil;  userdata:  pointer=nil;  flag:  long=0):  long {.cdecl, importc: "Fl_Menu_Insert", dynlib: fltk, discardable.}

    ## original: declare function Fl_Menu_Insert2(byval m_ as Fl_Menu_ ptr, byval index as long, byval label as cstring, byval shortcut as long          =0, byval cb as Fl_Callback=0, byval userdata as any ptr=0, byval flag as long=0) as long
    proc Fl_Menu_Insert2* ( m:  ptr Fl_Menu_TT;  index:  long;  label:  cstring;  shortcut:  long;  cb:  Fl_Callback=nil;  userdata:  pointer;  flag:  long=0):  long {.cdecl, importc: "Fl_Menu_Insert2", dynlib: fltk, discardable.}

    ## original: declare function Fl_Menu_ItemPathName(byval m_ as Fl_Menu_ ptr, byval name_ as cstring, byval namelen as long, byval item as Fl_Menu_Item ptr=0) as long
    proc Fl_Menu_ItemPathName* ( m:  ptr Fl_Menu_TT;  name_TT:  cstring;  namelen:  long;  item:  ptr Fl_Menu_Item=nil):  long {.cdecl, importc: "Fl_Menu_ItemPathName", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Menu_SetMenu(byval m_ as Fl_Menu_ ptr, byval item as Fl_Menu_Item ptr)
    proc Fl_Menu_SetMenu*( m:  ptr Fl_Menu_TT;  item:  ptr Fl_Menu_Item) {.cdecl, importc: "Fl_Menu_SetMenu", dynlib: fltk, discardable.}
    ## original: declare function Fl_Menu_GetMenu(byval m_ as Fl_Menu_ ptr) as Fl_Menu_Item ptr
    proc Fl_Menu_GetMenu* ( m:  ptr Fl_Menu_TT):  ptr Fl_Menu_Item {.cdecl, importc: "Fl_Menu_GetMenu", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Menu_SetMode(byval m_ as Fl_Menu_ ptr, byval index as long, byval flag as long)
    proc Fl_Menu_SetMode*( m:  ptr Fl_Menu_TT;  index:  long;  flag:  long) {.cdecl, importc: "Fl_Menu_SetMode", dynlib: fltk, discardable.}
    ## original: declare function Fl_Menu_GetMode(byval m_ as Fl_Menu_ ptr, byval index as long) as long
    proc Fl_Menu_GetMode* ( m:  ptr Fl_Menu_TT;  index:  long):  long {.cdecl, importc: "Fl_Menu_GetMode", dynlib: fltk, discardable.}

    ## original: declare function Fl_Menu_MValue(byval m_ as Fl_Menu_ ptr) as Fl_Menu_Item ptr
    proc Fl_Menu_MValue* ( m:  ptr Fl_Menu_TT):  ptr Fl_Menu_Item {.cdecl, importc: "Fl_Menu_MValue", dynlib: fltk, discardable.}

    ## original: declare function Fl_Menu_Picked(byval m_ as Fl_Menu_ ptr, byval item as Fl_Menu_Item ptr) as Fl_Menu_Item ptr
    proc Fl_Menu_Picked* ( m:  ptr Fl_Menu_TT;  item:  ptr Fl_Menu_Item):  ptr Fl_Menu_Item {.cdecl, importc: "Fl_Menu_Picked", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Menu_Remove(byval m_ as Fl_Menu_ ptr, byval index as long)
    proc Fl_Menu_Remove*( m:  ptr Fl_Menu_TT;  index:  long) {.cdecl, importc: "Fl_Menu_Remove", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Menu_Replace(byval m_ as Fl_Menu_ ptr, byval index as long, byval label as cstring)
    proc Fl_Menu_Replace*( m:  ptr Fl_Menu_TT;  index:  long;  label:  cstring) {.cdecl, importc: "Fl_Menu_Replace", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Menu_Shortcut(byval m_ as Fl_Menu_ ptr, byval index as long, byval shortcut as long)
    proc Fl_Menu_Shortcut*( m:  ptr Fl_Menu_TT;  index:  long;  shortcut:  long) {.cdecl, importc: "Fl_Menu_Shortcut", dynlib: fltk, discardable.}

    ## original: declare function Fl_Menu_GetSize(byval m_ as Fl_Menu_ ptr) as long
    proc Fl_Menu_GetSize* ( m:  ptr Fl_Menu_TT):  long {.cdecl, importc: "Fl_Menu_GetSize", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Menu_SetSize(byval m_ as Fl_Menu_ ptr, byval w as long, byval h as long)
    proc Fl_Menu_SetSize*( m:  ptr Fl_Menu_TT;  w:  long;  h:  long) {.cdecl, importc: "Fl_Menu_SetSize", dynlib: fltk, discardable.}

    ## original: declare function Fl_Menu_TestShortcut(byval m_ as Fl_Menu_ ptr) as Fl_Menu_Item ptr
    proc Fl_Menu_TestShortcut* ( m:  ptr Fl_Menu_TT):  ptr Fl_Menu_Item {.cdecl, importc: "Fl_Menu_TestShortcut", dynlib: fltk, discardable.}

    ## original: declare function Fl_Menu_Text(byval m_ as Fl_Menu_ ptr) as cstring
    proc Fl_Menu_Text* ( m:  ptr Fl_Menu_TT):  cstring {.cdecl, importc: "Fl_Menu_Text", dynlib: fltk, discardable.}

    ## original: declare function Fl_Menu_TextByIndex(byval m_ as Fl_Menu_ ptr, byval index as long) as cstring
    proc Fl_Menu_TextByIndex* ( m:  ptr Fl_Menu_TT;  index:  long):  cstring {.cdecl, importc: "Fl_Menu_TextByIndex", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Menu_SetTextColor(byval m_ as Fl_Menu_ ptr, byval c as Fl_COLOR)
    proc Fl_Menu_SetTextColor*( m:  ptr Fl_Menu_TT;  c:  Fl_COLOR) {.cdecl, importc: "Fl_Menu_SetTextColor", dynlib: fltk, discardable.}
    ## original: declare function Fl_Menu_GetTextColor(byval m_ as Fl_Menu_ ptr) as Fl_COLOR
    proc Fl_Menu_GetTextColor* ( m:  ptr Fl_Menu_TT):  Fl_COLOR {.cdecl, importc: "Fl_Menu_GetTextColor", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Menu_SetTextFont(byval m_ as Fl_Menu_ ptr, byval f as FL_FONT)
    proc Fl_Menu_SetTextFont*( m:  ptr Fl_Menu_TT;  f:  FL_FONT) {.cdecl, importc: "Fl_Menu_SetTextFont", dynlib: fltk, discardable.}
    ## original: declare function Fl_Menu_GetTextFont(byval m_ as Fl_Menu_ ptr) as FL_FONT
    proc Fl_Menu_GetTextFont* ( m:  ptr Fl_Menu_TT):  FL_FONT {.cdecl, importc: "Fl_Menu_GetTextFont", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Menu_SetTextSize(byval m_ as Fl_Menu_ ptr, byval fs as FL_FONTSIZE)
    proc Fl_Menu_SetTextSize*( m:  ptr Fl_Menu_TT;  fs:  FL_FONTSIZE) {.cdecl, importc: "Fl_Menu_SetTextSize", dynlib: fltk, discardable.}
    ## original: declare function Fl_Menu_GetTextSize(byval m_ as Fl_Menu_ ptr) as FL_FONTSIZE
    proc Fl_Menu_GetTextSize* ( m:  ptr Fl_Menu_TT):  FL_FONTSIZE {.cdecl, importc: "Fl_Menu_GetTextSize", dynlib: fltk, discardable.}

    ## original: declare function Fl_Menu_GetValue        alias "Fl_Menu_Value"        (byval m_ as Fl_Menu_ ptr) as long
    proc Fl_Menu_GetValue* (m: ptr Fl_Menu_TT): long  {.cdecl, importc: "Fl_Menu_GetValue", dynlib: fltk, discardable.}

    ## original: declare function Fl_Menu_GetValueByItem  alias "Fl_Menu_ValueByItem"  (byval m_ as Fl_Menu_ ptr, byval m as Fl_Menu_Item ptr) as long
    proc Fl_Menu_GetValueByItem* (m: ptr Fl_Menu_TT; mi: ptr Fl_Menu_Item): long  {.cdecl, importc: "Fl_Menu_GetValueByItem", dynlib: fltk, discardable.}

    ## original: declare function Fl_Menu_GetValueByIndex alias "Fl_Menu_ValueByIndex" (byval m_ as Fl_Menu_ ptr, byval index as long) as long
    proc Fl_Menu_GetValueByIndex* (m: ptr Fl_Menu_TT; index: long): long  {.cdecl, importc: "Fl_Menu_GetValueByIndex", dynlib: fltk, discardable.}

    #_ #########################################
    #_ # class Fl_Menu_Button extends Fl_Menu_ #
    #_ #########################################
    DeclareEx(Fl_Menu_Button)
    ## original: declare function Fl_Menu_ButtonNew(byval x as long, byval y as long, byval w as long, byval h as long, byval label as cstring=0) as Fl_Menu_Button ptr
    proc Fl_Menu_ButtonNew* ( x:  long;  y:  long;  w:  long;  h:  long;  label:  cstring=nil):  ptr Fl_Menu_Button {.cdecl, importc: "Fl_Menu_ButtonNew", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Menu_ButtonDelete(byref mb as Fl_Menu_Button ptr)
    proc Fl_Menu_ButtonDelete*( mb:  var ptr Fl_Menu_Button) {.cdecl, importc: "Fl_Menu_ButtonDelete", dynlib: fltk, discardable.}

    ## original: declare function Fl_Menu_ButtonHandle(byval mb as Fl_Menu_Button ptr, byval event as FL_EVENT) as long
    proc Fl_Menu_ButtonHandle* ( mb:  ptr Fl_Menu_Button;  event:  FL_EVENT):  long {.cdecl, importc: "Fl_Menu_ButtonHandle", dynlib: fltk, discardable.}

    ## original: declare function Fl_Menu_ButtonPopup(byval mb as Fl_Menu_Button ptr) as Fl_Menu_Item ptr
    proc Fl_Menu_ButtonPopup* ( mb:  ptr Fl_Menu_Button):  ptr Fl_Menu_Item {.cdecl, importc: "Fl_Menu_ButtonPopup", dynlib: fltk, discardable.}

    #_ ######################################
    #_ # class Fl_Menu_Bar extends Fl_Menu_ #
    #_ ######################################
    DeclareEx(Fl_Menu_Bar)
    ## original: declare function Fl_Menu_BarNew(byval x as long, byval y as long, byval w as long, byval h as long, byval label as cstring=0) as Fl_Menu_Bar ptr
    proc Fl_Menu_BarNew* ( x:  long;  y:  long;  w:  long;  h:  long;  label:  cstring=nil):  ptr Fl_Menu_Bar {.cdecl, importc: "Fl_Menu_BarNew", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Menu_BarDelete(byref mb as Fl_Menu_Bar ptr)
    proc Fl_Menu_BarDelete*( mb:  var ptr Fl_Menu_Bar) {.cdecl, importc: "Fl_Menu_BarDelete", dynlib: fltk, discardable.}

    ## original: declare function Fl_Menu_BarHandle(byval mb as Fl_Menu_Bar ptr, byval event as FL_EVENT) as long
    proc Fl_Menu_BarHandle* ( mb:  ptr Fl_Menu_Bar;  event:  FL_EVENT):  long {.cdecl, importc: "Fl_Menu_BarHandle", dynlib: fltk, discardable.}

    #_ ####################################
    #_ # class Fl_Choice extends Fl_Menu_ #
    #_ ####################################
    DeclareEx(Fl_Choice)
    #_  Create a new Fl_Choice widget using the given position, size and label string.
    ## original: declare function Fl_ChoiceNew(byval x as long, byval y as long, byval w as long, byval h as long, byval label as cstring=0) as Fl_Choice ptr
    proc Fl_ChoiceNew* ( x:  long;  y:  long;  w:  long;  h:  long;  label:  cstring=nil):  ptr Fl_Choice {.cdecl, importc: "Fl_ChoiceNew", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_ChoiceDelete(byref mb as Fl_Choice ptr)
    proc Fl_ChoiceDelete*( mb:  var ptr Fl_Choice) {.cdecl, importc: "Fl_ChoiceDelete", dynlib: fltk, discardable.}
    #_  Handles the specified event.
    ## original: declare function Fl_ChoiceHandle(byval c as Fl_Choice ptr, byval event as FL_EVENT) as long
    proc Fl_ChoiceHandle* ( c:  ptr Fl_Choice;  event:  FL_EVENT):  long {.cdecl, importc: "Fl_ChoiceHandle", dynlib: fltk, discardable.}
    #_  Sets the currently selected value using the index into the menu item array.
    ## original: declare function Fl_ChoiceSetValue(byval c as Fl_Choice ptr, byval index as long) as long
    proc Fl_ChoiceSetValue* ( c:  ptr Fl_Choice;  index:  long):  long {.cdecl, importc: "Fl_ChoiceSetValue", dynlib: fltk, discardable.}
    #_  Sets the currently selected value using a pointer to menu item.
    ## original: declare function Fl_ChoiceSetValueByItem(byval c as Fl_Choice ptr, byval item as Fl_Menu_Item ptr) as long
    proc Fl_ChoiceSetValueByItem* ( c:  ptr Fl_Choice;  item:  ptr Fl_Menu_Item):  long {.cdecl, importc: "Fl_ChoiceSetValueByItem", dynlib: fltk, discardable.}
    #_  Gets the index of the last item chosen by the user.
    ## original: declare function Fl_ChoiceGetValue(byval c as Fl_Choice ptr) as long
    proc Fl_ChoiceGetValue* ( c:  ptr Fl_Choice):  long {.cdecl, importc: "Fl_ChoiceGetValue", dynlib: fltk, discardable.}

    #_ #######################################
    #_ # class Fl_Progress extends Fl_Widget #
    #_ #######################################
    DeclareEx(Fl_Progress)
    #_  The constructor creates the progress bar using the position, size, and label.
    ## original: declare function Fl_ProgressNew(byval x as long, byval y as long, byval w as long, byval h as long, byval label as cstring=0) as Fl_Progress ptr
    proc Fl_ProgressNew* ( x:  long;  y:  long;  w:  long;  h:  long;  label:  cstring=nil):  ptr Fl_Progress {.cdecl, importc: "Fl_ProgressNew", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_ProgressDelete(byref prg as Fl_Progress ptr)
    proc Fl_ProgressDelete*( prg:  var ptr Fl_Progress) {.cdecl, importc: "Fl_ProgressDelete", dynlib: fltk, discardable.}
    #_  Sets/Gets the minimum value in the progress widget.
    ## original: declare sub      Fl_ProgressSetMinimum(byval prg as Fl_Progress ptr, byval minValue as single)
    proc Fl_ProgressSetMinimum*( prg:  ptr Fl_Progress;  minValue:  single) {.cdecl, importc: "Fl_ProgressSetMinimum", dynlib: fltk, discardable.}
    ## original: declare function Fl_ProgressGetMinimum(byval prg as Fl_Progress ptr) as single
    proc Fl_ProgressGetMinimum* ( prg:  ptr Fl_Progress):  single {.cdecl, importc: "Fl_ProgressGetMinimum", dynlib: fltk, discardable.}
    #_  Sets/Gets the maximum value in the progress widget.
    ## original: declare sub      Fl_ProgressSetMaximum(byval prg as Fl_Progress ptr, byval maxValue as single)
    proc Fl_ProgressSetMaximum*( prg:  ptr Fl_Progress;  maxValue:  single) {.cdecl, importc: "Fl_ProgressSetMaximum", dynlib: fltk, discardable.}
    ## original: declare function Fl_ProgressGetMaximum(byval prg as Fl_Progress ptr) as single
    proc Fl_ProgressGetMaximum* ( prg:  ptr Fl_Progress):  single {.cdecl, importc: "Fl_ProgressGetMaximum", dynlib: fltk, discardable.}
    #_  Sets/Gets the current value in the progress widget.
    ## original: declare sub      Fl_ProgressSetValue  (byval prg as Fl_Progress ptr, byval curValue as single)
    proc Fl_ProgressSetValue*( prg:  ptr Fl_Progress;  curValue:  single) {.cdecl, importc: "Fl_ProgressSetValue", dynlib: fltk, discardable.}
    ## original: declare function Fl_ProgressGetValue  (byval prg as Fl_Progress ptr) as single
    proc Fl_ProgressGetValue* ( prg:  ptr Fl_Progress):  single {.cdecl, importc: "Fl_ProgressGetValue", dynlib: fltk, discardable.}

    #_ #######################################
    #_ # class Fl_Valuator extends Fl_Widget #
    #_ #######################################
    #_  Sets the minimum and maximum values for the valuator widget.
    ## original: declare sub      Fl_ValuatorBounds(byval va as Fl_Valuator ptr, byval minValue as double, byval maxValue as double)
    proc Fl_ValuatorBounds*( va:  ptr Fl_Valuator;  minValue:  double;  maxValue:  double) {.cdecl, importc: "Fl_ValuatorBounds", dynlib: fltk, discardable.}
    #_  Clamps the passed value to the valuator range.
    ## original: declare function Fl_ValuatorClamp(byval va as Fl_Valuator ptr, byval value as double) as double
    proc Fl_ValuatorClamp* ( va:  ptr Fl_Valuator;  value:  double):  double {.cdecl, importc: "Fl_ValuatorClamp", dynlib: fltk, discardable.}
    #_  Uses internal rules to format the fields numerical value into the character array pointed to by the passed parameter.
    ## original: declare function Fl_ValuatorFormat(byval va as Fl_Valuator ptr, byval fmt as cstring) as long
    proc Fl_ValuatorFormat* ( va:  ptr Fl_Valuator;  fmt:  cstring):  long {.cdecl, importc: "Fl_ValuatorFormat", dynlib: fltk, discardable.}
    #_  Adds n times the step value to the passed value.
    ## original: declare function Fl_ValuatorIncrement(byval va as Fl_Valuator ptr, byval stepValue as double, byval nTimes as long) as double
    proc Fl_ValuatorIncrement* ( va:  ptr Fl_Valuator;  stepValue:  double;  nTimes:  long):  double {.cdecl, importc: "Fl_ValuatorIncrement", dynlib: fltk, discardable.}
    #_  Sets the step value to 1/10 digits
    ## original: declare sub      Fl_ValuatorPrecision(byval va as Fl_Valuator ptr, byval p as long)
    proc Fl_ValuatorPrecision*( va:  ptr Fl_Valuator;  p:  long) {.cdecl, importc: "Fl_ValuatorPrecision", dynlib: fltk, discardable.}
    #_  Sets the minimum and maximum values for the valuator.
    ## original: declare sub      Fl_ValuatorRange(byval va as Fl_Valuator ptr, byval minValue as double, byval maxValue as double)
    proc Fl_ValuatorRange*( va:  ptr Fl_Valuator;  minValue:  double;  maxValue:  double) {.cdecl, importc: "Fl_ValuatorRange", dynlib: fltk, discardable.}
    #_  Round the passed value to the nearest step increment.
    ## original: declare function Fl_ValuatorRound(byval va as Fl_Valuator ptr, byval value as double) as double
    proc Fl_ValuatorRound* ( va:  ptr Fl_Valuator;  value:  double):  double {.cdecl, importc: "Fl_ValuatorRound", dynlib: fltk, discardable.}
    #_  Sets/Gets the step value.
    ## original: declare sub      Fl_ValuatorSetStep(byval va as Fl_Valuator ptr, byval s as double)
    proc Fl_ValuatorSetStep*( va:  ptr Fl_Valuator;  s:  double) {.cdecl, importc: "Fl_ValuatorSetStep", dynlib: fltk, discardable.}
    ## original: declare function Fl_ValuatorGetStep(byval va as Fl_Valuator ptr) as double
    proc Fl_ValuatorGetStep* ( va:  ptr Fl_Valuator):  double {.cdecl, importc: "Fl_ValuatorGetStep", dynlib: fltk, discardable.}
    #_  Sets/Gets the minimum value for the valuator.
    ## original: declare sub      Fl_ValuatorSetMinimum(byval va as Fl_Valuator ptr, byval minValue as double)
    proc Fl_ValuatorSetMinimum*( va:  ptr Fl_Valuator;  minValue:  double) {.cdecl, importc: "Fl_ValuatorSetMinimum", dynlib: fltk, discardable.}
    ## original: declare function Fl_ValuatorGetMinimum(byval va as Fl_Valuator ptr) as double
    proc Fl_ValuatorGetMinimum* ( va:  ptr Fl_Valuator):  double {.cdecl, importc: "Fl_ValuatorGetMinimum", dynlib: fltk, discardable.}
    #_  Sets/Gets the maximum value for the valuator.
    ## original: declare sub      Fl_ValuatorSetMaximum(byval va as Fl_Valuator ptr, byval maxValue as double)
    proc Fl_ValuatorSetMaximum*( va:  ptr Fl_Valuator;  maxValue:  double) {.cdecl, importc: "Fl_ValuatorSetMaximum", dynlib: fltk, discardable.}
    ## original: declare function Fl_ValuatorGetMaximum(byval va as Fl_Valuator ptr) as double
    proc Fl_ValuatorGetMaximum* ( va:  ptr Fl_Valuator):  double {.cdecl, importc: "Fl_ValuatorGetMaximum", dynlib: fltk, discardable.}
    #_  Sets the current value.
    ## original: declare function Fl_ValuatorSetValue(byval va as Fl_Valuator ptr, byval curValue as double) as long
    proc Fl_ValuatorSetValue* ( va:  ptr Fl_Valuator;  curValue:  double):  long {.cdecl, importc: "Fl_ValuatorSetValue", dynlib: fltk, discardable.}
    #_  Gets the floating point(double) value.
    ## original: declare function Fl_ValuatorGetValue(byval va as Fl_Valuator ptr) as double
    proc Fl_ValuatorGetValue* ( va:  ptr Fl_Valuator):  double {.cdecl, importc: "Fl_ValuatorGetValue", dynlib: fltk, discardable.}

    #_ #########################################
    #_ # class Fl_Adjuster extends Fl_Valuator #
    #_ #########################################
    DeclareEx(Fl_Adjuster)
    ## original: declare function Fl_AdjusterNew(byval x as long, byval y as long, byval w as long, byval h as long, byval label as cstring=0) as Fl_Adjuster ptr
    proc Fl_AdjusterNew* ( x:  long;  y:  long;  w:  long;  h:  long;  label:  cstring=nil):  ptr Fl_Adjuster {.cdecl, importc: "Fl_AdjusterNew", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_AdjusterDelete(byref adj as Fl_Adjuster ptr)
    proc Fl_AdjusterDelete*( adj:  var ptr Fl_Adjuster) {.cdecl, importc: "Fl_AdjusterDelete", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_AdjusterSetSoft(byval adj as Fl_Adjuster ptr, byval s as long)
    proc Fl_AdjusterSetSoft*( adj:  ptr Fl_Adjuster;  s:  long) {.cdecl, importc: "Fl_AdjusterSetSoft", dynlib: fltk, discardable.}
    ## original: declare function Fl_AdjusterGetSoft(byval adj as Fl_Adjuster ptr) as long
    proc Fl_AdjusterGetSoft* ( adj:  ptr Fl_Adjuster):  long {.cdecl, importc: "Fl_AdjusterGetSoft", dynlib: fltk, discardable.}

    #_ ########################################
    #_ # class Fl_Counter extends Fl_Valuator #
    #_ ########################################
    DeclareEx(Fl_Counter)
    ## original: declare function Fl_CounterNew(byval x as long, byval y as long, byval w as long, byval h as long, byval label as cstring=0) as Fl_Counter ptr
    proc Fl_CounterNew* ( x:  long;  y:  long;  w:  long;  h:  long;  label:  cstring=nil):  ptr Fl_Counter {.cdecl, importc: "Fl_CounterNew", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_CounterDelete    (byref cnt as Fl_Counter ptr)
    proc Fl_CounterDelete*( cnt:  var ptr Fl_Counter) {.cdecl, importc: "Fl_CounterDelete", dynlib: fltk, discardable.}

    ## original: declare function Fl_CounterHandle    (byval cnt as Fl_Counter ptr, byval event      as FL_EVENT) as long
    proc Fl_CounterHandle* ( cnt:  ptr Fl_Counter;  event:  FL_EVENT):  long {.cdecl, importc: "Fl_CounterHandle", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_CounterLargeStep (byval cnt as Fl_Counter ptr, byval largeStep  as double)
    proc Fl_CounterLargeStep*( cnt:  ptr Fl_Counter;  largeStep:  double) {.cdecl, importc: "Fl_CounterLargeStep", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_CounterNormalStep(byval cnt as Fl_Counter ptr, byval normalStep as double)
    proc Fl_CounterNormalStep*( cnt:  ptr Fl_Counter;  normalStep:  double) {.cdecl, importc: "Fl_CounterNormalStep", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_CounterStep      (byval cnt as Fl_Counter ptr, byval minValue   as double, byval maxValue as double)
    proc Fl_CounterStep*( cnt:  ptr Fl_Counter;  minValue:  double;  maxValue:  double) {.cdecl, importc: "Fl_CounterStep", dynlib: fltk, discardable.}

    #_ ##############################################
    #_ # class Fl_Simple_Counter extends Fl_Counter #
    #_ ##############################################
    DeclareEx(Fl_Simple_Counter)
    ## original: declare function Fl_Simple_CounterNew(byval x as long, byval y as long, byval w as long, byval h as long, byval label as cstring=0) as Fl_Simple_Counter ptr
    proc Fl_Simple_CounterNew* ( x:  long;  y:  long;  w:  long;  h:  long;  label:  cstring=nil):  ptr Fl_Simple_Counter {.cdecl, importc: "Fl_Simple_CounterNew", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Simple_CounterDelete(byref cnt as Fl_Simple_Counter ptr)
    proc Fl_Simple_CounterDelete*( cnt:  var ptr Fl_Simple_Counter) {.cdecl, importc: "Fl_Simple_CounterDelete", dynlib: fltk, discardable.}

    #_ #####################################
    #_ # class Fl_Dial extends Fl_Valuator #
    #_ #####################################
    DeclareEx(Fl_Dial)
    ## original: declare function Fl_DialNew(byval x as long, byval y as long, byval w as long, byval h as long, byval label as cstring=0) as Fl_Dial ptr
    proc Fl_DialNew* ( x:  long;  y:  long;  w:  long;  h:  long;  label:  cstring=nil):  ptr Fl_Dial {.cdecl, importc: "Fl_DialNew", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_DialDelete(byref dial as Fl_Dial ptr)
    proc Fl_DialDelete*( dial:  var ptr Fl_Dial) {.cdecl, importc: "Fl_DialDelete", dynlib: fltk, discardable.}

    ## original: declare function Fl_DialHandle(byval dial as Fl_Dial ptr, byval event as FL_EVENT) as long
    proc Fl_DialHandle* ( dial:  ptr Fl_Dial;  event:  FL_EVENT):  long {.cdecl, importc: "Fl_DialHandle", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_DialAngles(byval dial as Fl_Dial ptr, byval angle1 as short, byval angle2 as short)
    proc Fl_DialAngles*( dial:  ptr Fl_Dial;  angle1:  short;  angle2:  short) {.cdecl, importc: "Fl_DialAngles", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_DialSetAngle1(byval dial as Fl_Dial ptr, byval angle1 as short)
    proc Fl_DialSetAngle1*( dial:  ptr Fl_Dial;  angle1:  short) {.cdecl, importc: "Fl_DialSetAngle1", dynlib: fltk, discardable.}
    ## original: declare function Fl_DialGetAngle1(byval dial as Fl_Dial ptr) as short
    proc Fl_DialGetAngle1* ( dial:  ptr Fl_Dial):  short {.cdecl, importc: "Fl_DialGetAngle1", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_DialSetAngle2(byval dial as Fl_Dial ptr, byval angle2 as short)
    proc Fl_DialSetAngle2*( dial:  ptr Fl_Dial;  angle2:  short) {.cdecl, importc: "Fl_DialSetAngle2", dynlib: fltk, discardable.}
    ## original: declare function Fl_DialGetAngle2(byval dial as Fl_Dial ptr) as short
    proc Fl_DialGetAngle2* ( dial:  ptr Fl_Dial):  short {.cdecl, importc: "Fl_DialGetAngle2", dynlib: fltk, discardable.}

    #_ ######################################
    #_ # class Fl_Fill_Dial extends Fl_Dial #
    #_ ######################################
    DeclareEx(Fl_Fill_Dial)
    ## original: declare function Fl_Fill_DialNew(byval x as long, byval y as long, byval w as long, byval h as long, byval label as cstring=0) as Fl_Fill_Dial ptr
    proc Fl_Fill_DialNew* ( x:  long;  y:  long;  w:  long;  h:  long;  label:  cstring=nil):  ptr Fl_Fill_Dial {.cdecl, importc: "Fl_Fill_DialNew", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Fill_DialDelete(byref dial as Fl_Fill_Dial ptr)
    proc Fl_Fill_DialDelete*( dial:  var ptr Fl_Fill_Dial) {.cdecl, importc: "Fl_Fill_DialDelete", dynlib: fltk, discardable.}

    #_ ######################################
    #_ # class Fl_Line_Dial extends Fl_Dial #
    #_ ######################################
    DeclareEx(Fl_Line_Dial)
    ## original: declare function Fl_Line_DialNew(byval x as long, byval y as long, byval w as long, byval h as long, byval label as cstring=0) as Fl_Line_Dial ptr
    proc Fl_Line_DialNew* ( x:  long;  y:  long;  w:  long;  h:  long;  label:  cstring=nil):  ptr Fl_Line_Dial {.cdecl, importc: "Fl_Line_DialNew", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Line_DialDelete(byref dial as Fl_Line_Dial ptr)
    proc Fl_Line_DialDelete*( dial:  var ptr Fl_Line_Dial) {.cdecl, importc: "Fl_Line_DialDelete", dynlib: fltk, discardable.}

    #_ #######################################
    #_ # class Fl_Roller extends Fl_Valuator #
    #_ #######################################
    DeclareEx(Fl_Roller)
    ## original: declare function Fl_RollerNew(byval x as long, byval y as long, byval w as long, byval h as long, byval label as cstring=0) as Fl_Roller ptr
    proc Fl_RollerNew* ( x:  long;  y:  long;  w:  long;  h:  long;  label:  cstring=nil):  ptr Fl_Roller {.cdecl, importc: "Fl_RollerNew", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_RollerDelete(byref rol as Fl_Roller ptr)
    proc Fl_RollerDelete*( rol:  var ptr Fl_Roller) {.cdecl, importc: "Fl_RollerDelete", dynlib: fltk, discardable.}

    #_ #######################################
    #_ # class Fl_Slider extends Fl_Valuator #
    #_ #######################################
    ## DeclareEx(Fl_Slider)
    ## expand by hand, begin
    ## original: declare function Fl_SliderExNew(byval x as long, byval y as long, byval w as long, byval h as long, byval title as cstring=0) as Fl_SliderEx ptr
    proc Fl_SliderExNew* ( x:  long;  y:  long;  w:  long;  h:  long;  title:  cstring=nil):  ptr Fl_SliderEx {.cdecl, importc: "Fl_SliderExNew", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_SliderExDelete         (byref ex as Fl_SliderEx ptr)
    proc Fl_SliderExDelete*( ex:  ptr Fl_SliderEx) {.cdecl, importc: "Fl_SliderExDelete", dynlib: fltk, discardable.}
    ## original: declare function Fl_SliderExHandleBase     (byval ex as Fl_SliderEx ptr, byval event as FL_EVENT) as long
    proc Fl_SliderExHandleBase* ( ex:  ptr Fl_SliderEx;  event:  FL_EVENT):  long {.cdecl, importc: "Fl_SliderExHandleBase", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_SliderExSetDestructorCB(byval ex as Fl_SliderEx ptr, byval cb as Fl_DestructorEx)
    proc Fl_SliderExSetDestructorCB*( ex:  ptr Fl_SliderEx;  cb:  Fl_DestructorEx) {.cdecl, importc: "Fl_SliderExSetDestructorCB", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_SliderExSetDrawCB      (byval ex as Fl_SliderEx ptr, byval cb as Fl_DrawEx)
    proc Fl_SliderExSetDrawCB*( ex:  ptr Fl_SliderEx;  cb:  Fl_DrawEx) {.cdecl, importc: "Fl_SliderExSetDrawCB", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_SliderExSetHandleCB    (byval ex as Fl_SliderEx ptr, byval cb as Fl_HandleEx)
    proc Fl_SliderExSetHandleCB*( ex:  ptr Fl_SliderEx;  cb:  Fl_HandleEx) {.cdecl, importc: "Fl_SliderExSetHandleCB", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_SliderExSetResizeCB    (byval ex as Fl_SliderEx ptr, byval cb as Fl_ResizeEx)
    proc Fl_SliderExSetResizeCB*( ex:  ptr Fl_SliderEx;  cb:  Fl_ResizeEx) {.cdecl, importc: "Fl_SliderExSetResizeCB", dynlib: fltk, discardable.}

    #~ converter toFl_Window*(x: Fl_SliderEx): Fl_Window = cast[Fl_Window](x)
    #~ converter toFl_HandleEx*(x: FL_EVENT): Fl_HandleEx = cast[Fl_HandleEx](x)
    ## expand by hand, end

    ## original: declare function Fl_SliderNew(byval x as long, byval y as long, byval w as long, byval h as long, byval label as cstring=0) as Fl_Slider ptr
    proc Fl_SliderNew* ( x:  long;  y:  long;  w:  long;  h:  long;  label:  cstring=nil):  ptr Fl_Slider {.cdecl, importc: "Fl_SliderNew", dynlib: fltk, discardable.}
    ## original: declare function Fl_SliderNew2(byval t as ubyte, byval x as long, byval y as long, byval w as long, byval h as long, byval label as cstring=0) as Fl_Slider ptr
    proc Fl_SliderNew2* ( t:  ubyte;  x:  long;  y:  long;  w:  long;  h:  long;  label:  cstring=nil):  ptr Fl_Slider {.cdecl, importc: "Fl_SliderNew2", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_SliderDelete(byref sl as Fl_Slider ptr)
    proc Fl_SliderDelete*( sl:  var ptr Fl_Slider) {.cdecl, importc: "Fl_SliderDelete", dynlib: fltk, discardable.}

    ## original: declare function Fl_SliderHandle(byval sl as Fl_Slider ptr, byval event as FL_EVENT) as long
    proc Fl_SliderHandle* ( sl:  ptr Fl_Slider;  event:  FL_EVENT):  long {.cdecl, importc: "Fl_SliderHandle", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_SliderBounds(byval sl as Fl_Slider ptr, byval a as double, byval b as double)
    proc Fl_SliderBounds*( sl:  ptr Fl_Slider;  a:  double;  b:  double) {.cdecl, importc: "Fl_SliderBounds", dynlib: fltk, discardable.}

    ## original: declare function Fl_SliderScrollValue(byval sl as Fl_Slider ptr, byval p as long, byval size as long, byval first as long, byval total as long) as long
    proc Fl_SliderScrollValue* ( sl:  ptr Fl_Slider;  p:  long;  size:  long;  first:  long;  total:  long):  long {.cdecl, importc: "Fl_SliderScrollValue", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_SliderSetSlider(byval sl as Fl_Slider ptr, byval c as FL_BOXTYPE)
    proc Fl_SliderSetSlider*( sl:  ptr Fl_Slider;  c:  FL_BOXTYPE) {.cdecl, importc: "Fl_SliderSetSlider", dynlib: fltk, discardable.}
    ## original: declare function Fl_SliderGetSlider(byval sl as Fl_Slider ptr) as FL_BOXTYPE
    proc Fl_SliderGetSlider* ( sl:  ptr Fl_Slider):  FL_BOXTYPE {.cdecl, importc: "Fl_SliderGetSlider", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_SliderSetSliderSize(byval sl as Fl_Slider ptr, byval v as double)
    proc Fl_SliderSetSliderSize*( sl:  ptr Fl_Slider;  v:  double) {.cdecl, importc: "Fl_SliderSetSliderSize", dynlib: fltk, discardable.}
    ## original: declare function Fl_SliderGetSliderSize(byval sl as Fl_Slider ptr) as double
    proc Fl_SliderGetSliderSize* ( sl:  ptr Fl_Slider):  double {.cdecl, importc: "Fl_SliderGetSliderSize", dynlib: fltk, discardable.}

    #_ #########################################
    #_ # class Fl_Hor_Slider extends Fl_Slider #
    #_ #########################################
    DeclareEx(Fl_Hor_Slider)
    ## original: declare function Fl_Hor_SliderNew(byval x as long, byval y as long, byval w as long, byval h as long, byval label as cstring=0) as Fl_Hor_Slider ptr
    proc Fl_Hor_SliderNew* ( x:  long;  y:  long;  w:  long;  h:  long;  label:  cstring=nil):  ptr Fl_Hor_Slider {.cdecl, importc: "Fl_Hor_SliderNew", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Hor_SliderDelete(byref sl as Fl_Hor_Slider ptr)
    proc Fl_Hor_SliderDelete*( sl:  var ptr Fl_Hor_Slider) {.cdecl, importc: "Fl_Hor_SliderDelete", dynlib: fltk, discardable.}

    #_ ##########################################
    #_ # class Fl_Fill_Slider extends Fl_Slider #
    #_ ##########################################
    DeclareEx(Fl_Fill_Slider)
    ## original: declare function Fl_Fill_SliderNew(byval x as long, byval y as long, byval w as long, byval h as long, byval label as cstring=0) as Fl_Fill_Slider ptr
    proc Fl_Fill_SliderNew* ( x:  long;  y:  long;  w:  long;  h:  long;  label:  cstring=nil):  ptr Fl_Fill_Slider {.cdecl, importc: "Fl_Fill_SliderNew", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Fill_SliderDelete(byref sl as Fl_Fill_Slider ptr)
    proc Fl_Fill_SliderDelete*( sl:  var ptr Fl_Fill_Slider) {.cdecl, importc: "Fl_Fill_SliderDelete", dynlib: fltk, discardable.}

    #_ ##############################################
    #_ # class Fl_Hor_Fill_Slider extends Fl_Slider #
    #_ ##############################################
    DeclareEx(Fl_Hor_Fill_Slider)
    ## original: declare function Fl_Hor_Fill_SliderNew(byval x as long, byval y as long, byval w as long, byval h as long, byval label as cstring=0) as Fl_Hor_Fill_Slider ptr
    proc Fl_Hor_Fill_SliderNew* ( x:  long;  y:  long;  w:  long;  h:  long;  label:  cstring=nil):  ptr Fl_Hor_Fill_Slider {.cdecl, importc: "Fl_Hor_Fill_SliderNew", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Hor_Fill_SliderDelete(byref sl as Fl_Hor_Fill_Slider ptr)
    proc Fl_Hor_Fill_SliderDelete*( sl:  var ptr Fl_Hor_Fill_Slider) {.cdecl, importc: "Fl_Hor_Fill_SliderDelete", dynlib: fltk, discardable.}

    #_ ##########################################
    #_ # class Fl_Nice_Slider extends Fl_Slider #
    #_ ##########################################
    DeclareEx(Fl_Nice_Slider)
    ## original: declare function Fl_Nice_SliderNew(byval x as long, byval y as long, byval w as long, byval h as long, byval label as cstring=0) as Fl_Nice_Slider ptr
    proc Fl_Nice_SliderNew* ( x:  long;  y:  long;  w:  long;  h:  long;  label:  cstring=nil):  ptr Fl_Nice_Slider {.cdecl, importc: "Fl_Nice_SliderNew", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Nice_SliderDelete(byref sl as Fl_Nice_Slider ptr)
    proc Fl_Nice_SliderDelete*( sl:  var ptr Fl_Nice_Slider) {.cdecl, importc: "Fl_Nice_SliderDelete", dynlib: fltk, discardable.}

    #_ ##############################################
    #_ # class Fl_Hor_Nice_Slider extends Fl_Slider #
    #_ ##############################################
    DeclareEx(Fl_Hor_Nice_Slider)
    ## original: declare function Fl_Hor_Nice_SliderNew(byval x as long, byval y as long, byval w as long, byval h as long, byval label as cstring=0) as Fl_Hor_Nice_Slider ptr
    proc Fl_Hor_Nice_SliderNew* ( x:  long;  y:  long;  w:  long;  h:  long;  label:  cstring=nil):  ptr Fl_Hor_Nice_Slider {.cdecl, importc: "Fl_Hor_Nice_SliderNew", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Hor_Nice_SliderDelete(byref sl as Fl_Hor_Nice_Slider ptr)
    proc Fl_Hor_Nice_SliderDelete*( sl:  var ptr Fl_Hor_Nice_Slider) {.cdecl, importc: "Fl_Hor_Nice_SliderDelete", dynlib: fltk, discardable.}

    #_ ########################################
    #_ # class Fl_Scrollbar extends Fl_Slider #
    #_ ########################################
    DeclareEx(Fl_Scrollbar)
    ## original: declare function Fl_ScrollbarNew(byval x as long, byval y as long, byval w as long, byval h as long, byval label as cstring=0) as Fl_Scrollbar ptr
    proc Fl_ScrollbarNew* ( x:  long;  y:  long;  w:  long;  h:  long;  label:  cstring=nil):  ptr Fl_Scrollbar {.cdecl, importc: "Fl_ScrollbarNew", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_ScrollbarDelete(byref sb as Fl_Scrollbar ptr)
    proc Fl_ScrollbarDelete*( sb:  var ptr Fl_Scrollbar) {.cdecl, importc: "Fl_ScrollbarDelete", dynlib: fltk, discardable.}

    ## original: declare function Fl_ScrollbarHandle(byval sb as Fl_Scrollbar ptr, byval event as FL_EVENT) as long
    proc Fl_ScrollbarHandle* ( sb:  ptr Fl_Scrollbar;  event:  FL_EVENT):  long {.cdecl, importc: "Fl_ScrollbarHandle", dynlib: fltk, discardable.}

    ## original: declare function Fl_ScrollbarValue(byval sb as Fl_Scrollbar ptr, byval p as long, byval windowSize as long, byval first as long, byval total as long) as long
    proc Fl_ScrollbarValue* ( sb:  ptr Fl_Scrollbar;  p:  long;  windowSize:  long;  first:  long;  total:  long):  long {.cdecl, importc: "Fl_ScrollbarValue", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_ScrollbarSetLineSize(byval sb as Fl_Scrollbar ptr, byval lz as long)
    proc Fl_ScrollbarSetLineSize*( sb:  ptr Fl_Scrollbar;  lz:  long) {.cdecl, importc: "Fl_ScrollbarSetLineSize", dynlib: fltk, discardable.}
    ## original: declare function Fl_ScrollbarGetLineSize(byval sb as Fl_Scrollbar ptr) as long
    proc Fl_ScrollbarGetLineSize* ( sb:  ptr Fl_Scrollbar):  long {.cdecl, importc: "Fl_ScrollbarGetLineSize", dynlib: fltk, discardable.}

    ## original: declare function Fl_ScrollbarSetValue(byval sb as Fl_Scrollbar ptr, byval p as long) as long
    proc Fl_ScrollbarSetValue* ( sb:  ptr Fl_Scrollbar;  p:  long):  long {.cdecl, importc: "Fl_ScrollbarSetValue", dynlib: fltk, discardable.}
    ## original: declare function Fl_ScrollbarGetValue(byval sb as Fl_Scrollbar ptr) as long
    proc Fl_ScrollbarGetValue* ( sb:  ptr Fl_Scrollbar):  long {.cdecl, importc: "Fl_ScrollbarGetValue", dynlib: fltk, discardable.}

    #_ ###########################################
    #_ # class Fl_Value_Slider extends Fl_Slider #
    #_ ###########################################
    DeclareEx(Fl_Value_Slider)
    ## original: declare function Fl_Value_SliderNew(byval x as long, byval y as long, byval w as long, byval h as long, byval label as cstring=0) as Fl_Value_Slider ptr
    proc Fl_Value_SliderNew* ( x:  long;  y:  long;  w:  long;  h:  long;  label:  cstring=nil):  ptr Fl_Value_Slider {.cdecl, importc: "Fl_Value_SliderNew", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Value_SliderDelete(byref sl as Fl_Value_Slider ptr)
    proc Fl_Value_SliderDelete*( sl:  var ptr Fl_Value_Slider) {.cdecl, importc: "Fl_Value_SliderDelete", dynlib: fltk, discardable.}

    ## original: declare function Fl_Value_SliderHandle(byval sl as Fl_Value_Slider ptr, byval event as FL_EVENT) as long
    proc Fl_Value_SliderHandle* ( sl:  ptr Fl_Value_Slider;  event:  FL_EVENT):  long {.cdecl, importc: "Fl_Value_SliderHandle", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Value_SliderSetTextColor(byval sl as Fl_Value_Slider ptr, byval c as Fl_COLOR)
    proc Fl_Value_SliderSetTextColor*( sl:  ptr Fl_Value_Slider;  c:  Fl_COLOR) {.cdecl, importc: "Fl_Value_SliderSetTextColor", dynlib: fltk, discardable.}
    ## original: declare function Fl_Value_SliderGetTextColor(byval sl as Fl_Value_Slider ptr) as Fl_COLOR
    proc Fl_Value_SliderGetTextColor* ( sl:  ptr Fl_Value_Slider):  Fl_COLOR {.cdecl, importc: "Fl_Value_SliderGetTextColor", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Value_SliderSetTextFont(byval sl as Fl_Value_Slider ptr, byval f as FL_FONT)
    proc Fl_Value_SliderSetTextFont*( sl:  ptr Fl_Value_Slider;  f:  FL_FONT) {.cdecl, importc: "Fl_Value_SliderSetTextFont", dynlib: fltk, discardable.}
    ## original: declare function Fl_Value_SliderGetTextFont(byval sl as Fl_Value_Slider ptr) as FL_FONT
    proc Fl_Value_SliderGetTextFont* ( sl:  ptr Fl_Value_Slider):  FL_FONT {.cdecl, importc: "Fl_Value_SliderGetTextFont", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Value_SliderSetTextSize(byval sl as Fl_Value_Slider ptr, byval s as FL_FONTSIZE)
    proc Fl_Value_SliderSetTextSize*( sl:  ptr Fl_Value_Slider;  s:  FL_FONTSIZE) {.cdecl, importc: "Fl_Value_SliderSetTextSize", dynlib: fltk, discardable.}
    ## original: declare function Fl_Value_SliderGetTextSize(byval sl as Fl_Value_Slider ptr) as FL_FONTSIZE
    proc Fl_Value_SliderGetTextSize* ( sl:  ptr Fl_Value_Slider):  FL_FONTSIZE {.cdecl, importc: "Fl_Value_SliderGetTextSize", dynlib: fltk, discardable.}

    #_ #####################################################
    #_ # class Fl_Hor_Value_Slider extends Fl_Value_Slider #
    #_ #####################################################
    DeclareEx(Fl_Hor_Value_Slider)
    ## original: declare function Fl_Hor_Value_SliderNew(byval x as long, byval y as long, byval w as long, byval h as long, byval label as cstring=0) as Fl_Hor_Value_Slider ptr
    proc Fl_Hor_Value_SliderNew* ( x:  long;  y:  long;  w:  long;  h:  long;  label:  cstring=nil):  ptr Fl_Hor_Value_Slider {.cdecl, importc: "Fl_Hor_Value_SliderNew", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Hor_Value_SliderDelete(byref sl as Fl_Hor_Value_Slider ptr)
    proc Fl_Hor_Value_SliderDelete*( sl:  var ptr Fl_Hor_Value_Slider) {.cdecl, importc: "Fl_Hor_Value_SliderDelete", dynlib: fltk, discardable.}

    #_ ############################################
    #_ # class Fl_Value_Input extends Fl_Valuator #
    #_ ############################################
    DeclareEx(Fl_Value_Input)
    ## original: declare function Fl_Value_InputNew(byval x as long, byval y as long, byval w as long, byval h as long, byval label as cstring=0) as Fl_Value_Input ptr
    proc Fl_Value_InputNew* ( x:  long;  y:  long;  w:  long;  h:  long;  label:  cstring=nil):  ptr Fl_Value_Input {.cdecl, importc: "Fl_Value_InputNew", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Value_InputDelete(byref vi as Fl_Value_Input ptr)
    proc Fl_Value_InputDelete*( vi:  var ptr Fl_Value_Input) {.cdecl, importc: "Fl_Value_InputDelete", dynlib: fltk, discardable.}

    ## original: declare function Fl_Value_InputHandle(byval vi as Fl_Value_Input ptr, byval event as FL_EVENT) as long
    proc Fl_Value_InputHandle* ( vi:  ptr Fl_Value_Input;  event:  FL_EVENT):  long {.cdecl, importc: "Fl_Value_InputHandle", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Value_InputResize(byval vi as Fl_Value_Input ptr, byval x as long, byval y as long, byval w as long, byval h as long)
    proc Fl_Value_InputResize*( vi:  ptr Fl_Value_Input;  x:  long;  y:  long;  w:  long;  h:  long) {.cdecl, importc: "Fl_Value_InputResize", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Value_InputSetCursorColor(byval vi as Fl_Value_Input ptr, byval c as Fl_COLOR)
    proc Fl_Value_InputSetCursorColor*( vi:  ptr Fl_Value_Input;  c:  Fl_COLOR) {.cdecl, importc: "Fl_Value_InputSetCursorColor", dynlib: fltk, discardable.}
    ## original: declare function Fl_Value_InputGetCursorColor(byval vi as Fl_Value_Input ptr) as Fl_COLOR
    proc Fl_Value_InputGetCursorColor* ( vi:  ptr Fl_Value_Input):  Fl_COLOR {.cdecl, importc: "Fl_Value_InputGetCursorColor", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Value_InputSetShortcut(byval vi as Fl_Value_Input ptr, byval s as long)
    proc Fl_Value_InputSetShortcut*( vi:  ptr Fl_Value_Input;  s:  long) {.cdecl, importc: "Fl_Value_InputSetShortcut", dynlib: fltk, discardable.}
    ## original: declare function Fl_Value_InputGetShortcut(byval vi as Fl_Value_Input ptr) as long
    proc Fl_Value_InputGetShortcut* ( vi:  ptr Fl_Value_Input):  long {.cdecl, importc: "Fl_Value_InputGetShortcut", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Value_InputSetSoft(byval vi as Fl_Value_Input ptr, byval s as long)
    proc Fl_Value_InputSetSoft*( vi:  ptr Fl_Value_Input;  s:  long) {.cdecl, importc: "Fl_Value_InputSetSoft", dynlib: fltk, discardable.}
    ## original: declare function Fl_Value_InputGetSoft(byval vi as Fl_Value_Input ptr) as long
    proc Fl_Value_InputGetSoft* ( vi:  ptr Fl_Value_Input):  long {.cdecl, importc: "Fl_Value_InputGetSoft", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Value_InputSetTextColor(byval vi as Fl_Value_Input ptr, byval c as Fl_COLOR)
    proc Fl_Value_InputSetTextColor*( vi:  ptr Fl_Value_Input;  c:  Fl_COLOR) {.cdecl, importc: "Fl_Value_InputSetTextColor", dynlib: fltk, discardable.}
    ## original: declare function Fl_Value_InputGetTextColor(byval vi as Fl_Value_Input ptr) as Fl_COLOR
    proc Fl_Value_InputGetTextColor* ( vi:  ptr Fl_Value_Input):  Fl_COLOR {.cdecl, importc: "Fl_Value_InputGetTextColor", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Value_InputSetTextFont(byval vi as Fl_Value_Input ptr, byval f as FL_FONT)
    proc Fl_Value_InputSetTextFont*( vi:  ptr Fl_Value_Input;  f:  FL_FONT) {.cdecl, importc: "Fl_Value_InputSetTextFont", dynlib: fltk, discardable.}
    ## original: declare function Fl_Value_InputGetTextFont(byval vi as Fl_Value_Input ptr) as FL_FONT
    proc Fl_Value_InputGetTextFont* ( vi:  ptr Fl_Value_Input):  FL_FONT {.cdecl, importc: "Fl_Value_InputGetTextFont", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Value_InputSetTextSize(byval vi as Fl_Value_Input ptr, byval s as FL_FONTSIZE)
    proc Fl_Value_InputSetTextSize*( vi:  ptr Fl_Value_Input;  s:  FL_FONTSIZE) {.cdecl, importc: "Fl_Value_InputSetTextSize", dynlib: fltk, discardable.}
    ## original: declare function Fl_Value_InputGetTextSize(byval vi as Fl_Value_Input ptr) as FL_FONTSIZE
    proc Fl_Value_InputGetTextSize* ( vi:  ptr Fl_Value_Input):  FL_FONTSIZE {.cdecl, importc: "Fl_Value_InputGetTextSize", dynlib: fltk, discardable.}

    #_ #############################################
    #_ # class Fl_Value_Output extends Fl_Valuator #
    #_ #############################################
    DeclareEx(Fl_Value_Output)
    ## original: declare function Fl_Value_OutputNew(byval x as long, byval y as long, byval w as long, byval h as long, byval label as cstring=0) as Fl_Value_Output ptr
    proc Fl_Value_OutputNew* ( x:  long;  y:  long;  w:  long;  h:  long;  label:  cstring=nil):  ptr Fl_Value_Output {.cdecl, importc: "Fl_Value_OutputNew", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Value_OutputDelete(byref vo as Fl_Value_Output ptr)
    proc Fl_Value_OutputDelete*( vo:  var ptr Fl_Value_Output) {.cdecl, importc: "Fl_Value_OutputDelete", dynlib: fltk, discardable.}

    ## original: declare function Fl_Value_OutputHandle(byval vo as Fl_Value_Output ptr, byval event as FL_EVENT) as long
    proc Fl_Value_OutputHandle* ( vo:  ptr Fl_Value_Output;  event:  FL_EVENT):  long {.cdecl, importc: "Fl_Value_OutputHandle", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Value_OutputResize(byval vo as Fl_Value_Output ptr, byval x as long, byval y as long, byval w as long, byval h as long)
    proc Fl_Value_OutputResize*( vo:  ptr Fl_Value_Output;  x:  long;  y:  long;  w:  long;  h:  long) {.cdecl, importc: "Fl_Value_OutputResize", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Value_OutputSetSoft(byval vo as Fl_Value_Output ptr, byval s as long)
    proc Fl_Value_OutputSetSoft*( vo:  ptr Fl_Value_Output;  s:  long) {.cdecl, importc: "Fl_Value_OutputSetSoft", dynlib: fltk, discardable.}
    ## original: declare function Fl_Value_OutputGetSoft(byval vo as Fl_Value_Output ptr) as long
    proc Fl_Value_OutputGetSoft* ( vo:  ptr Fl_Value_Output):  long {.cdecl, importc: "Fl_Value_OutputGetSoft", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Value_OutputSetTextColor(byval vo as Fl_Value_Output ptr, byval c as Fl_COLOR)
    proc Fl_Value_OutputSetTextColor*( vo:  ptr Fl_Value_Output;  c:  Fl_COLOR) {.cdecl, importc: "Fl_Value_OutputSetTextColor", dynlib: fltk, discardable.}
    ## original: declare function Fl_Value_OutputGetTextColor(byval vo as Fl_Value_Output ptr) as Fl_COLOR
    proc Fl_Value_OutputGetTextColor* ( vo:  ptr Fl_Value_Output):  Fl_COLOR {.cdecl, importc: "Fl_Value_OutputGetTextColor", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Value_OutputSetTextFont(byval vo as Fl_Value_Output ptr, byval f as FL_FONT)
    proc Fl_Value_OutputSetTextFont*( vo:  ptr Fl_Value_Output;  f:  FL_FONT) {.cdecl, importc: "Fl_Value_OutputSetTextFont", dynlib: fltk, discardable.}
    ## original: declare function Fl_Value_OutputGetTextFont(byval vo as Fl_Value_Output ptr) as FL_FONT
    proc Fl_Value_OutputGetTextFont* ( vo:  ptr Fl_Value_Output):  FL_FONT {.cdecl, importc: "Fl_Value_OutputGetTextFont", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Value_OutputSetTextSize(byval vo as Fl_Value_Output ptr, byval s as FL_FONTSIZE)
    proc Fl_Value_OutputSetTextSize*( vo:  ptr Fl_Value_Output;  s:  FL_FONTSIZE) {.cdecl, importc: "Fl_Value_OutputSetTextSize", dynlib: fltk, discardable.}
    ## original: declare function Fl_Value_OutputGetTextSize(byval vo as Fl_Value_Output ptr) as FL_FONTSIZE
    proc Fl_Value_OutputGetTextSize* ( vo:  ptr Fl_Value_Output):  FL_FONTSIZE {.cdecl, importc: "Fl_Value_OutputGetTextSize", dynlib: fltk, discardable.}

    #_ ####################################
    #_ # class Fl_Group extends Fl_Widget #
    #_ ####################################
    DeclareEx(Fl_Group)
    #_  Creates a new Fl_Group widget using the given position, size, and label string.
    ## original: declare function Fl_GroupNew(byval x as long, byval y as long, byval w as long, byval h as long, byval label as cstring=0) as Fl_Group ptr
    proc Fl_GroupNew* ( x:  long;  y:  long;  w:  long;  h:  long;  label:  cstring=nil):  ptr Fl_Group {.cdecl, importc: "Fl_GroupNew", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_GroupDelete(byref grp as Fl_Group ptr)
    proc Fl_GroupDelete*( grp:  var ptr Fl_Group) {.cdecl, importc: "Fl_GroupDelete", dynlib: fltk, discardable.}
    #_  Handles the specified event
    ## original: declare function Fl_GroupHandle(byval grp as Fl_Group ptr, byval ev as FL_EVENT) as long
    proc Fl_GroupHandle* ( grp:  ptr Fl_Group;  ev:  FL_EVENT):  long {.cdecl, importc: "Fl_GroupHandle", dynlib: fltk, discardable.}
    #_  The widget is removed from its current group (if any) and then added to the end of this group.
    ## original: declare sub      Fl_GroupAdd(byval grp as Fl_Group ptr, byval wgt as Fl_Widget ptr)
    proc Fl_GroupAdd*( grp:  ptr Fl_Group;  wgt:  ptr Fl_Widget) {.cdecl, importc: "Fl_GroupAdd", dynlib: fltk, discardable.}
    #_  Returns an Fl_Group pointer if this widget is an Fl_Group
    ## original: declare function Fl_GroupAsGroup(byval grp as Fl_Widget ptr) as Fl_Group ptr
    proc Fl_GroupAsGroup* ( grp:  ptr Fl_Widget):  ptr Fl_Group {.cdecl, importc: "Fl_GroupAsGroup", dynlib: fltk, discardable.}
    #_  Sets the current group so you can build the widget tree by just constructing the widgets.
    ## original: declare sub      Fl_GroupBegin(byval grp as Fl_Group ptr)
    proc Fl_GroupBegin*( grp:  ptr Fl_Group) {.cdecl, importc: "Fl_GroupBegin", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_GroupEnd(byval grp as Fl_Group ptr)
    proc Fl_GroupEnd*( grp:  ptr Fl_Group) {.cdecl, importc: "Fl_GroupEnd", dynlib: fltk, discardable.}
    #_  Returns how many child widgets the group has.
    ## original: declare function Fl_GroupChildren(byval grp as Fl_Group ptr) as long
    proc Fl_GroupChildren* ( grp:  ptr Fl_Group):  long {.cdecl, importc: "Fl_GroupChildren", dynlib: fltk, discardable.}
    #_  Returns a pointer to the children.
    ## original: declare function Fl_GroupChild(byval grp as Fl_Group ptr, byval childIndex as long) as Fl_Widget ptr
    proc Fl_GroupChild* ( grp:  ptr Fl_Group;  childIndex:  long):  ptr Fl_Widget {.cdecl, importc: "Fl_GroupChild", dynlib: fltk, discardable.}
    #_  Returns a pointer to the array of all children.
    ## original: declare function Fl_GroupArray(byval grp as Fl_Group ptr) as Fl_Widget ptr ptr
    proc Fl_GroupArray* ( grp:  ptr Fl_Group):  ptr ptr Fl_Widget {.cdecl, importc: "Fl_GroupArray", dynlib: fltk, discardable.}
    ## original: declare function Fl_GroupConstArray alias "Fl_GroupArray2" (byval grp as Fl_Group ptr) as const Fl_Widget ptr ptr
    proc Fl_GroupConstArray* (grp: ptr Fl_Group):  ptr ptr  Fl_Widget{.cdecl, importc: "Fl_GroupConstArray2", dynlib: fltk, discardable.}
    ## original: declare function Fl_GroupArray2(byval grp as Fl_Group ptr) as const Fl_Widget ptr ptr
    proc Fl_GroupArray2* ( grp:  ptr Fl_Group):  ptr ptr Fl_Widget {.cdecl, importc: "Fl_GroupArray2", dynlib: fltk, discardable.}
    #_  Deletes all child widgets from memory recursively.
    ## original: declare sub      Fl_GroupClear(byval grp as Fl_Group ptr)
    proc Fl_GroupClear*( grp:  ptr Fl_Group) {.cdecl, importc: "Fl_GroupClear", dynlib: fltk, discardable.}
    #_  Controls whether the group widget clips the drawing of child widgets to its bounding box
    ## original: declare sub      Fl_GroupSetClipChildren(byval grp as Fl_Group ptr, byval clip as long)
    proc Fl_GroupSetClipChildren*( grp:  ptr Fl_Group;  clip:  long) {.cdecl, importc: "Fl_GroupSetClipChildren", dynlib: fltk, discardable.}
    #_  Returns the current clipping mode
    ## original: declare function Fl_GroupGetClipChildren(byval grp as Fl_Group ptr) as long
    proc Fl_GroupGetClipChildren* ( grp:  ptr Fl_Group):  long {.cdecl, importc: "Fl_GroupGetClipChildren", dynlib: fltk, discardable.}
    #_  Searches the child array for the widget and returns the index
    ## original: declare function Fl_GroupFind(byval grp as Fl_Group ptr, byval wgt as const Fl_Widget ptr) as long
    proc Fl_GroupFind* ( grp:  ptr Fl_Group;  wgt:  ptr FL_Widget):  long {.cdecl, importc: "Fl_GroupFind", dynlib: fltk, discardable.}
    #_  Resets the internal array of widget sizes and positions.
    ## original: declare sub      Fl_GroupInitSizes(byval grp as Fl_Group ptr)
    proc Fl_GroupInitSizes*( grp:  ptr Fl_Group) {.cdecl, importc: "Fl_GroupInitSizes", dynlib: fltk, discardable.}
    #_  Resizes the Fl_Group widget and all of its children
    ## original: declare sub      Fl_GroupResize(byval grp as Fl_Group ptr, byval x as long, byval y as long, byval w as long, byval h as long)
    proc Fl_GroupResize*( grp:  ptr Fl_Group;  x:  long;  y:  long;  w:  long;  h:  long) {.cdecl, importc: "Fl_GroupResize", dynlib: fltk, discardable.}
    #_  The widget is removed from its current group (if any) and then inserted into this group.
    ## original: declare sub      Fl_GroupInsert(byval grp as Fl_Group ptr, byref widget as Fl_Widget ptr, byval before as Fl_Widget ptr)
    proc Fl_GroupInsert*( grp:  ptr Fl_Group;  widget:  var ptr Fl_Widget;  before:  ptr Fl_Widget) {.cdecl, importc: "Fl_GroupInsert", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_GroupInsert2(byval grp as Fl_Group ptr, byref widget as Fl_Widget ptr, byval childIndex as long)
    proc Fl_GroupInsert2*( grp:  ptr Fl_Group;  widget:  var ptr Fl_Widget;  childIndex:  long) {.cdecl, importc: "Fl_GroupInsert2", dynlib: fltk, discardable.}
    #_  Removes the widget at index from the group but does not delete it.
    ## original: declare sub      Fl_GroupRemove (byval grp as Fl_Group ptr, byval childIndex as long)
    proc Fl_GroupRemove*( grp:  ptr Fl_Group;  childIndex:  long) {.cdecl, importc: "Fl_GroupRemove", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_GroupRemove2(byval grp as Fl_Group ptr, byval childWgt as Fl_Widget ptr)
    proc Fl_GroupRemove2*( grp:  ptr Fl_Group;  childWgt:  ptr Fl_Widget) {.cdecl, importc: "Fl_GroupRemove2", dynlib: fltk, discardable.}
    #_  The resizable widget defines the resizing box for the group.
    ## original: declare sub      Fl_GroupSetResizable(byval grp as Fl_Group ptr, byval wgt as Fl_Widget ptr)
    proc Fl_GroupSetResizable*( grp:  ptr Fl_Group;  wgt:  ptr Fl_Widget) {.cdecl, importc: "Fl_GroupSetResizable", dynlib: fltk, discardable.}
    ## original: declare function Fl_GroupGetResizable(byval grp as Fl_Group ptr) as Fl_Widget ptr
    proc Fl_GroupGetResizable* ( grp:  ptr Fl_Group):  ptr Fl_Widget {.cdecl, importc: "Fl_GroupGetResizable", dynlib: fltk, discardable.}
    #_  Aaternative form
    let
        Fl_GroupResizeable* = Fl_GroupSetResizable

    #_ ##################################
    #_ # class Fl_Pack extends Fl_Group #
    #_ ##################################
    DeclareEx(Fl_Pack)
    ## original: declare function Fl_PackNew(byval x as long, byval y as long, byval w as long, byval h as long, byval label as cstring=0) as Fl_Pack ptr
    proc Fl_PackNew* ( x:  long;  y:  long;  w:  long;  h:  long;  label:  cstring=nil):  ptr Fl_Pack {.cdecl, importc: "Fl_PackNew", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_PackDelete(byref pac as Fl_Pack ptr)
    proc Fl_PackDelete*( pac:  var ptr Fl_Pack) {.cdecl, importc: "Fl_PackDelete", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_PackSetSpacing(byval pac as Fl_Pack ptr, byval spacing as long)
    proc Fl_PackSetSpacing*( pac:  ptr Fl_Pack;  spacing:  long) {.cdecl, importc: "Fl_PackSetSpacing", dynlib: fltk, discardable.}
    ## original: declare function Fl_PackGetSpacing(byval pac as Fl_Pack ptr) as long
    proc Fl_PackGetSpacing* ( pac:  ptr Fl_Pack):  long {.cdecl, importc: "Fl_PackGetSpacing", dynlib: fltk, discardable.}

    #define Fl_PackBegin Fl_GroupBegin
    #define Fl_PackEnd Fl_GroupEnd

    #_ ##################################
    #_ # class Fl_Tile extends Fl_Group #
    #_ ##################################
    ## original: declare function Fl_TileNew(byval x as long, byval y as long, byval w as long, byval h as long, byval label as cstring=0) as Fl_Tile ptr
    proc Fl_TileNew* ( x:  long;  y:  long;  w:  long;  h:  long;  label:  cstring=nil):  ptr Fl_Tile {.cdecl, importc: "Fl_TileNew", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_TileDelete(byref til as Fl_Tile ptr)
    proc Fl_TileDelete*( til:  var ptr Fl_Tile) {.cdecl, importc: "Fl_TileDelete", dynlib: fltk, discardable.}

    ## original: declare function Fl_TileHandle(byval til as Fl_Tile ptr, byval event as FL_EVENT) as long
    proc Fl_TileHandle* ( til:  ptr Fl_Tile;  event:  FL_EVENT):  long {.cdecl, importc: "Fl_TileHandle", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_TilePosition(byval til as Fl_Tile ptr, byval from_x as long, byval from_y as long, byval to_x as long, byval to_y as long)
    proc Fl_TilePosition*( til:  ptr Fl_Tile;  from_x:  long;  from_y:  long;  to_x:  long;  to_y:  long) {.cdecl, importc: "Fl_TilePosition", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_TileResize(byval til as Fl_Tile ptr, byval x as long, byval y as long, byval w as long, byval h as long)
    proc Fl_TileResize*( til:  ptr Fl_Tile;  x:  long;  y:  long;  w:  long;  h:  long) {.cdecl, importc: "Fl_TileResize", dynlib: fltk, discardable.}

    let
        Fl_TileBegin* = Fl_GroupBegin
        Fl_TileEnd* = Fl_GroupEnd

    #_ ####################################
    #_ # class Fl_Scroll extends Fl_Group #
    #_ ####################################
    DeclareEx(Fl_Scroll)
    ## original: declare function Fl_ScrollNew(byval x as long, byval y as long, byval w as long, byval h as long, byval label as cstring=0) as Fl_Scroll ptr
    proc Fl_ScrollNew* ( x:  long;  y:  long;  w:  long;  h:  long;  label:  cstring=nil):  ptr Fl_Scroll {.cdecl, importc: "Fl_ScrollNew", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_ScrollDelete(byref sc as Fl_Scroll ptr)
    proc Fl_ScrollDelete*( sc:  var ptr Fl_Scroll) {.cdecl, importc: "Fl_ScrollDelete", dynlib: fltk, discardable.}

    ## original: declare function Fl_ScrollHandle(byval sc as Fl_Scroll ptr, byval event as FL_EVENT) as long
    proc Fl_ScrollHandle* ( sc:  ptr Fl_Scroll;  event:  FL_EVENT):  long {.cdecl, importc: "Fl_ScrollHandle", dynlib: fltk, discardable.}
    #_  Clear all but the scrollbars
    ## original: declare sub      Fl_ScrollClear(byval sc as Fl_Scroll ptr)
    proc Fl_ScrollClear*( sc:  ptr Fl_Scroll) {.cdecl, importc: "Fl_ScrollClear", dynlib: fltk, discardable.}
    #_  Resizes the scroll group and all of its children.
    ## original: declare sub      Fl_ScrollResize(byval sc as Fl_Scroll ptr, byval x as long, byval y as long, byval w as long, byval h as long)
    proc Fl_ScrollResize*( sc:  ptr Fl_Scroll;  x:  long;  y:  long;  w:  long;  h:  long) {.cdecl, importc: "Fl_ScrollResize", dynlib: fltk, discardable.}
    #_  Moves the contents of the scroll group to a new position.
    ## original: declare sub      Fl_ScrollScrollTo(byval sc as Fl_Scroll ptr, byval x as long, byval y as long)
    proc Fl_ScrollScrollTo*( sc:  ptr Fl_Scroll;  x:  long;  y:  long) {.cdecl, importc: "Fl_ScrollScrollTo", dynlib: fltk, discardable.}
    #_  Gets/sets the current size of the scrollbars in pixels.
    ## original: declare sub      Fl_ScrollSetScrollbarSize(byval sc as Fl_Scroll ptr, byval newSize as long)
    proc Fl_ScrollSetScrollbarSize*( sc:  ptr Fl_Scroll;  newSize:  long) {.cdecl, importc: "Fl_ScrollSetScrollbarSize", dynlib: fltk, discardable.}
    ## original: declare function Fl_ScrollGetScrollbarSize(byval sc as Fl_Scroll ptr) as long
    proc Fl_ScrollGetScrollbarSize* ( sc:  ptr Fl_Scroll):  long {.cdecl, importc: "Fl_ScrollGetScrollbarSize", dynlib: fltk, discardable.}
    #_  Gets the current horizontal or vertical scrolling position.
    ## original: declare function Fl_ScrollXPosition(byval sc as Fl_Scroll ptr) as long
    proc Fl_ScrollXPosition* ( sc:  ptr Fl_Scroll):  long {.cdecl, importc: "Fl_ScrollXPosition", dynlib: fltk, discardable.}
    ## original: declare function Fl_ScrollYPosition(byval sc as Fl_Scroll ptr) as long
    proc Fl_ScrollYPosition* ( sc:  ptr Fl_Scroll):  long {.cdecl, importc: "Fl_ScrollYPosition", dynlib: fltk, discardable.}
    #_  Gets the horizontal or vertical scrollbar widget
    ## original: declare function Fl_ScrollHScrollbar(byval sc as Fl_Scroll ptr) as Fl_Scrollbar ptr
    proc Fl_ScrollHScrollbar* ( sc:  ptr Fl_Scroll):  ptr Fl_Scrollbar {.cdecl, importc: "Fl_ScrollHScrollbar", dynlib: fltk, discardable.}

    ## original: declare function Fl_ScrollScrollbar(byval sc as Fl_Scroll ptr) as Fl_Scrollbar ptr
    proc Fl_ScrollScrollbar* ( sc:  ptr Fl_Scroll):  ptr Fl_Scrollbar {.cdecl, importc: "Fl_ScrollScrollbar", dynlib: fltk, discardable.}

    #define Fl_ScrollBegin Fl_GroupBegin
    #define Fl_ScrollEnd Fl_GroupEnd

    #_ ######################################
    #_ # class Fl_Browser_ extends Fl_Group #
    #_ ######################################
    #_  Handles the event within the normal widget bounding box.
    ## original: declare function Fl_Browser_Handle(byval br as Fl_Browser_ ptr, byval event as FL_EVENT) as long
    proc Fl_Browser_Handle* ( br:  ptr Fl_Browser;  event:  FL_EVENT):  long {.cdecl, importc: "Fl_Browser_Handle", dynlib: fltk, discardable.}
    #_  Deselects all items in the list and returns 1 if the state changed or 0 if it did not.
    ## original: declare function Fl_Browser_Deselect(byval br as Fl_Browser_ ptr, byval docallbacks as long=0) as long
    proc Fl_Browser_Deselect* ( br:  ptr Fl_Browser;  docallbacks:  long=0):  long {.cdecl, importc: "Fl_Browser_Deselect", dynlib: fltk, discardable.}
    #_  Displays the item, scrolling the list as necessary.
    ## original: declare sub      Fl_Browser_Display(byval br as Fl_Browser_ ptr, byval item as any ptr)
    proc Fl_Browser_Display*( br:  ptr Fl_Browser;  item:  pointer) {.cdecl, importc: "Fl_Browser_Display", dynlib: fltk, discardable.}
    #_  Sets/Gets whether the widget should have scrollbars or not (default FL_SCROLL_BOTH).
    ## original: declare sub      Fl_Browser_SetHasScrollbar(byval br as Fl_Browser_ ptr, byval mode as ubyte)
    proc Fl_Browser_SetHasScrollbar*( br:  ptr Fl_Browser;  mode:  ubyte) {.cdecl, importc: "Fl_Browser_SetHasScrollbar", dynlib: fltk, discardable.}
    ## original: declare function Fl_Browser_GetHasSscrollbar(byval br as Fl_Browser_ ptr) as ubyte
    proc Fl_Browser_GetHasSscrollbar* ( br:  ptr Fl_Browser):  ubyte {.cdecl, importc: "Fl_Browser_GetHasSscrollbar", dynlib: fltk, discardable.}
    #_  Sets/Gets the horizontal scroll position of the list to pixel position pos.
    ## original: declare sub      Fl_Browser_SetHPosition(byval br as Fl_Browser_ ptr, byval p as long)
    proc Fl_Browser_SetHPosition*( br:  ptr Fl_Browser;  p:  long) {.cdecl, importc: "Fl_Browser_SetHPosition", dynlib: fltk, discardable.}
    ## original: declare function Fl_Browser_GetHPosition(byval br as Fl_Browser_ ptr) as long
    proc Fl_Browser_GetHPosition* ( br:  ptr Fl_Browser):  long {.cdecl, importc: "Fl_Browser_GetHPosition", dynlib: fltk, discardable.}
    #_  Sets/Gets the vertical scroll position of the list to pixel position pos.
    ## original: declare sub      Fl_Browser_SetPosition(byval br as Fl_Browser_ ptr, byval p as long)
    proc Fl_Browser_SetPosition*( br:  ptr Fl_Browser;  p:  long) {.cdecl, importc: "Fl_Browser_SetPosition", dynlib: fltk, discardable.}
    ## original: declare function Fl_Browser_GetPosition(byval br as Fl_Browser_ ptr) as long
    proc Fl_Browser_GetPosition* ( br:  ptr Fl_Browser):  long {.cdecl, importc: "Fl_Browser_GetPosition", dynlib: fltk, discardable.}
    #_  Repositions and/or resizes the browser.
    ## original: declare sub      Fl_Browser_Resize(byval br as Fl_Browser_ ptr, byval x as long, byval y as long, byval w as long, byval h as long)
    proc Fl_Browser_Resize*( br:  ptr Fl_Browser;  x:  long;  y:  long;  w:  long;  h:  long) {.cdecl, importc: "Fl_Browser_Resize", dynlib: fltk, discardable.}
    #_  Moves the vertical scrollbar to the left- or righthand side of the list.
    ## original: declare sub      Fl_Browser_ScrollbarLeft(byval br as Fl_Browser_ ptr)
    proc Fl_Browser_ScrollbarLeft*( br:  ptr Fl_Browser) {.cdecl, importc: "Fl_Browser_ScrollbarLeft", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Browser_ScrollbarRight(byval br as Fl_Browser_ ptr)
    proc Fl_Browser_ScrollbarRight*( br:  ptr Fl_Browser) {.cdecl, importc: "Fl_Browser_ScrollbarRight", dynlib: fltk, discardable.}
    #_  Sets/Gets the pixel size of the scrollbars' troughs to newSize, in pixels.
    ## original: declare sub      Fl_Browser_SetScrollbarSize(byval br as Fl_Browser_ ptr, byval newSize as long)
    proc Fl_Browser_SetScrollbarSize*( br:  ptr Fl_Browser;  newSize:  long) {.cdecl, importc: "Fl_Browser_SetScrollbarSize", dynlib: fltk, discardable.}
    ## original: declare function Fl_Browser_GetScrollbarSize(byval br as Fl_Browser_ ptr) as long
    proc Fl_Browser_GetScrollbarSize* ( br:  ptr Fl_Browser):  long {.cdecl, importc: "Fl_Browser_GetScrollbarSize", dynlib: fltk, discardable.}
    #_  !!! deprecated use Set/Get ScrollbarSize !!!
    ## original: declare sub      Fl_Browser_SetScrollbarWidth(byval br as Fl_Browser_ ptr, byval w as long)
    proc Fl_Browser_SetScrollbarWidth*( br:  ptr Fl_Browser;  w:  long) {.cdecl, importc: "Fl_Browser_SetScrollbarWidth", dynlib: fltk, discardable.}
    ## original: declare function Fl_Browser_GetScrollbarWidth(byval br as Fl_Browser_ ptr) as long
    proc Fl_Browser_GetScrollbarWidth* ( br:  ptr Fl_Browser):  long {.cdecl, importc: "Fl_Browser_GetScrollbarWidth", dynlib: fltk, discardable.}
    #_  Sets the selection state of item to val, and returns 1 if the state changed or 0 if it did not.
    ## original: declare function Fl_Browser_Select(byval br as Fl_Browser_ ptr, byval item as any ptr, byval v as long=1, byval docallbacks as long=0) as long
    proc Fl_Browser_Select* ( br:  ptr Fl_Browser;  item:  pointer;  v:  long=1;  docallbacks:  long=0):  long {.cdecl, importc: "Fl_Browser_Select", dynlib: fltk, discardable.}
    #_  Selects item and returns 1 if the state changed or 0 if it did not.
    ## original: declare function Fl_Browser_SelectOnly(byval br as Fl_Browser_ ptr, byval item as any ptr, byval docallbacks as long=0) as long
    proc Fl_Browser_SelectOnly* ( br:  ptr Fl_Browser;  item:  pointer;  docallbacks:  long=0):  long {.cdecl, importc: "Fl_Browser_SelectOnly", dynlib: fltk, discardable.}
    #_  Sort the items in the browser based on flags.
    ## original: declare sub      Fl_Browser_Sort(byval br as Fl_Browser_ ptr, byval flags as long=0)
    proc Fl_Browser_Sort*( br:  ptr Fl_Browser;  flags:  long=0) {.cdecl, importc: "Fl_Browser_Sort", dynlib: fltk, discardable.}
    #_  Sets/Gets the default text color for the lines in the browser to color col.
    ## original: declare sub      Fl_Browser_SetTextColor(byval br as Fl_Browser_ ptr, byval c as Fl_COLOR)
    proc Fl_Browser_SetTextColor*( br:  ptr Fl_Browser;  c:  Fl_COLOR) {.cdecl, importc: "Fl_Browser_SetTextColor", dynlib: fltk, discardable.}
    ## original: declare function Fl_Browser_GetTextColor(byval br as Fl_Browser_ ptr) as Fl_COLOR
    proc Fl_Browser_GetTextColor* ( br:  ptr Fl_Browser):  Fl_COLOR {.cdecl, importc: "Fl_Browser_GetTextColor", dynlib: fltk, discardable.}
    #_  Sets/Gets the default text font for the lines in the browser to font.
    ## original: declare sub      Fl_Browser_SetTextFont(byval br as Fl_Browser_ ptr, byval f as FL_FONT)
    proc Fl_Browser_SetTextFont*( br:  ptr Fl_Browser;  f:  FL_FONT) {.cdecl, importc: "Fl_Browser_SetTextFont", dynlib: fltk, discardable.}
    ## original: declare function Fl_Browser_GetTextFont(byval br as Fl_Browser_ ptr) as FL_FONT
    proc Fl_Browser_GetTextFont* ( br:  ptr Fl_Browser):  FL_FONT {.cdecl, importc: "Fl_Browser_GetTextFont", dynlib: fltk, discardable.}
    #_  Sets/Gets the default text size (in pixels) for the lines in the browser to size.
    ## original: declare sub      Fl_Browser_SetTextsize(byval br as Fl_Browser_ ptr, byval fs as FL_FONTSIZE)
    proc Fl_Browser_SetTextsize*( br:  ptr Fl_Browser;  fs:  FL_FONTSIZE) {.cdecl, importc: "Fl_Browser_SetTextsize", dynlib: fltk, discardable.}
    ## original: declare function Fl_Browser_GetTextsize(byval br as Fl_Browser_ ptr) as FL_FONTSIZE
    proc Fl_Browser_GetTextsize* ( br:  ptr Fl_Browser):  FL_FONTSIZE {.cdecl, importc: "Fl_Browser_GetTextsize", dynlib: fltk, discardable.}

    #define Fl_Browser_Begin Fl_GroupBegin
    #define Fl_Browser_End Fl_GroupEnd

    #_ ##############################################
    #_ # class Fl_Check_Browser extends Fl_Browser_ #
    #_ ##############################################
    DeclareEx(Fl_Check_Browser)
    ## original: declare function Fl_Check_BrowserNew(byval x as long, byval y as long, byval w as long, byval h as long, byval label as cstring=0) as Fl_Check_Browser ptr
    proc Fl_Check_BrowserNew* ( x:  long;  y:  long;  w:  long;  h:  long;  label:  cstring=nil):  ptr Fl_Check_Browser {.cdecl, importc: "Fl_Check_BrowserNew", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Check_BrowserDelete    (byref cb as Fl_Check_Browser ptr)
    proc Fl_Check_BrowserDelete*( cb:  var ptr Fl_Check_Browser) {.cdecl, importc: "Fl_Check_BrowserDelete", dynlib: fltk, discardable.}

    ## original: declare function Fl_Check_BrowserAdd       (byval cb as Fl_Check_Browser ptr, byval s as cstring) as long
    proc Fl_Check_BrowserAdd* ( cb:  ptr Fl_Check_Browser;  s:  cstring):  long {.cdecl, importc: "Fl_Check_BrowserAdd", dynlib: fltk, discardable.}
    ## original: declare function Fl_Check_BrowserAdd2      (byval cb as Fl_Check_Browser ptr, byval s as cstring, byval b as long) as long
    proc Fl_Check_BrowserAdd2* ( cb:  ptr Fl_Check_Browser;  s:  cstring;  b:  long):  long {.cdecl, importc: "Fl_Check_BrowserAdd2", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Check_BrowserCheckAll  (byval cb as Fl_Check_Browser ptr)
    proc Fl_Check_BrowserCheckAll*( cb:  ptr Fl_Check_Browser) {.cdecl, importc: "Fl_Check_BrowserCheckAll", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Check_BrowserCheckNone (byval cb as Fl_Check_Browser ptr)
    proc Fl_Check_BrowserCheckNone*( cb:  ptr Fl_Check_Browser) {.cdecl, importc: "Fl_Check_BrowserCheckNone", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Check_BrowserChecked   (byval cb as Fl_Check_Browser ptr, byval item as long, byval b as long)
    proc Fl_Check_BrowserChecked*( cb:  ptr Fl_Check_Browser;  item:  long;  b:  long) {.cdecl, importc: "Fl_Check_BrowserChecked", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Check_BrowserClear     (byval cb as Fl_Check_Browser ptr)
    proc Fl_Check_BrowserClear*( cb:  ptr Fl_Check_Browser) {.cdecl, importc: "Fl_Check_BrowserClear", dynlib: fltk, discardable.}

    ## original: declare function Fl_Check_BrowserNChecked  (byval cb as Fl_Check_Browser ptr) as long
    proc Fl_Check_BrowserNChecked* ( cb:  ptr Fl_Check_Browser):  long {.cdecl, importc: "Fl_Check_BrowserNChecked", dynlib: fltk, discardable.}

    ## original: declare function Fl_Check_BrowserNItems    (byval cb as Fl_Check_Browser ptr) as long
    proc Fl_Check_BrowserNItems* ( cb:  ptr Fl_Check_Browser):  long {.cdecl, importc: "Fl_Check_BrowserNItems", dynlib: fltk, discardable.}

    ## original: declare function Fl_Check_BrowserRemove    (byval cb as Fl_Check_Browser ptr, byval item as long) as long
    proc Fl_Check_BrowserRemove* ( cb:  ptr Fl_Check_Browser;  item:  long):  long {.cdecl, importc: "Fl_Check_BrowserRemove", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Check_BrowserSetChecked(byval cb as Fl_Check_Browser ptr, byval item as long)
    proc Fl_Check_BrowserSetChecked*( cb:  ptr Fl_Check_Browser;  item:  long) {.cdecl, importc: "Fl_Check_BrowserSetChecked", dynlib: fltk, discardable.}
    ## original: declare function Fl_Check_BrowserGetChecked(byval cb as Fl_Check_Browser ptr, byval item as long) as long
    proc Fl_Check_BrowserGetChecked* ( cb:  ptr Fl_Check_Browser;  item:  long):  long {.cdecl, importc: "Fl_Check_BrowserGetChecked", dynlib: fltk, discardable.}

    ## original: declare function Fl_Check_BrowserText      (byval cb as Fl_Check_Browser ptr, byval item as long) as cstring
    proc Fl_Check_BrowserText* ( cb:  ptr Fl_Check_Browser;  item:  long):  cstring {.cdecl, importc: "Fl_Check_BrowserText", dynlib: fltk, discardable.}

    ## original: declare function Fl_Check_BrowserValue     (byval cb as Fl_Check_Browser ptr) as long
    proc Fl_Check_BrowserValue* ( cb:  ptr Fl_Check_Browser):  long {.cdecl, importc: "Fl_Check_BrowserValue", dynlib: fltk, discardable.}

    #_ ########################################
    #_ # class Fl_Browser extends Fl_Browser_ #
    #_ ########################################
    DeclareEx(Fl_Browser)
    #_  The constructor makes an empty browser.
    ## original: declare function Fl_BrowserNew(byval x as long, byval y as long, byval w as long, byval h as long, byval label as cstring=0) as Fl_Browser ptr
    proc Fl_BrowserNew* ( x:  long;  y:  long;  w:  long;  h:  long;  label:  cstring=nil):  ptr Fl_Browser {.cdecl, importc: "Fl_BrowserNew", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_BrowserDelete(byref br as Fl_Browser ptr)
    proc Fl_BrowserDelete*( br:  var ptr Fl_Browser) {.cdecl, importc: "Fl_BrowserDelete", dynlib: fltk, discardable.}
    #_  Shows the entire Fl_Browser widget -- opposite of Fl_BrowserHide().
    ## original: declare sub      Fl_BrowserShow(byval br as Fl_Browser ptr)
    proc Fl_BrowserShow*( br:  ptr Fl_Browser) {.cdecl, importc: "Fl_BrowserShow", dynlib: fltk, discardable.}
    #_  Hides the entire Fl_Browser widget -- opposite of Fl_BrowserShow().
    ## original: declare sub      Fl_BrowserHide(byval br as Fl_Browser ptr)
    proc Fl_BrowserHide*( br:  ptr Fl_Browser) {.cdecl, importc: "Fl_BrowserHide", dynlib: fltk, discardable.}
    #_  Makes line visible, and available for selection by user.
    ## original: declare sub      Fl_BrowserShow2(byval br as Fl_Browser ptr, byval line_ as long)
    proc Fl_BrowserShow2*( br:  ptr Fl_Browser;  line_TT:  long) {.cdecl, importc: "Fl_BrowserShow2", dynlib: fltk, discardable.}
    #_  Makes line invisible, preventing selection by the user.
    ## original: declare sub      Fl_BrowserHide2(byval br as Fl_Browser ptr, byval line_ as long)
    proc Fl_BrowserHide2*( br:  ptr Fl_Browser;  line_TT:  long) {.cdecl, importc: "Fl_BrowserHide2", dynlib: fltk, discardable.}
    #_  Returns non-zero if the specified line is visible, 0 if hidden.
    ## original: declare function Fl_BrowserVisible(byval br as Fl_Browser ptr, byval line_ as long) as long
    proc Fl_BrowserVisible* ( br:  ptr Fl_Browser;  line_TT:  long):  long {.cdecl, importc: "Fl_BrowserVisible", dynlib: fltk, discardable.}
    #_  Removes all the lines in the browser.
    ## original: declare sub      Fl_BrowserClear(byval br as Fl_Browser ptr)
    proc Fl_BrowserClear*( br:  ptr Fl_Browser) {.cdecl, importc: "Fl_BrowserClear", dynlib: fltk, discardable.}
    #_  Clears the browser and reads the file, adding each line from the file to the browser.
    ## original: declare function Fl_BrowserLoad(byval br as Fl_Browser ptr, byval filename as cstring) as long
    proc Fl_BrowserLoad* ( br:  ptr Fl_Browser;  filename:  cstring):  long {.cdecl, importc: "Fl_BrowserLoad", dynlib: fltk, discardable.}
    #_  Adds a new line to the end of the browser.
    ## original: declare sub      Fl_BrowserAdd(byval br as Fl_Browser ptr, byval newtext as cstring, byval pData as any ptr=0)
    proc Fl_BrowserAdd*( br:  ptr Fl_Browser;  newtext:  cstring;  pData:  pointer=nil) {.cdecl, importc: "Fl_BrowserAdd", dynlib: fltk, discardable.}
    #_  Insert a new entry whose label is newtext above given line, optional data d.
    ## original: declare sub      Fl_BrowserInsert(byval br as Fl_Browser ptr, byval line_ as long, byval newtext as cstring, byval pDatat as any ptr=0)
    proc Fl_BrowserInsert*( br:  ptr Fl_Browser;  line_TT:  long;  newtext:  cstring;  pDatat:  pointer=nil) {.cdecl, importc: "Fl_BrowserInsert", dynlib: fltk, discardable.}
    #_  Remove entry for given line number, making the browser one line shorter.
    ## original: declare sub      Fl_BrowserRemove(byval br as Fl_Browser ptr, byval line_ as long)
    proc Fl_BrowserRemove*( br:  ptr Fl_Browser;  line_TT:  long) {.cdecl, importc: "Fl_BrowserRemove", dynlib: fltk, discardable.}
    #_  Removes the icon for line.
    ## original: declare sub      Fl_BrowserRemoveIcon(byval br as Fl_Browser ptr, byval line_ as long)
    proc Fl_BrowserRemoveIcon*( br:  ptr Fl_Browser;  line_TT:  long) {.cdecl, importc: "Fl_BrowserRemoveIcon", dynlib: fltk, discardable.}
    #_  Returns the line that is currently visible at the top of the browser.
    ## original: declare function Fl_BrowserGetTopline(byval br as Fl_Browser ptr) as long
    proc Fl_BrowserGetTopline* ( br:  ptr Fl_Browser):  long {.cdecl, importc: "Fl_BrowserGetTopline", dynlib: fltk, discardable.}
    #_  Scrolls the browser so the top item in the browser is showing the specified line.
    ## original: declare sub      Fl_BrowserSetTopline(byval br as Fl_Browser ptr, byval line_ as long)
    proc Fl_BrowserSetTopline*( br:  ptr Fl_Browser;  line_TT:  long) {.cdecl, importc: "Fl_BrowserSetTopline", dynlib: fltk, discardable.}
    #_  Scrolls the browser so the middle item in the browser is showing the specified line.
    ## original: declare sub      Fl_BrowserMiddleLine(byval br as Fl_Browser ptr, byval line_ as long)
    proc Fl_BrowserMiddleLine*( br:  ptr Fl_Browser;  line_TT:  long) {.cdecl, importc: "Fl_BrowserMiddleLine", dynlib: fltk, discardable.}
    #_  Scrolls the browser so the bottom item in the browser is showing the specified line.
    ## original: declare sub      Fl_BrowserBottomLine(byval br as Fl_Browser ptr, byval line_ as long)
    proc Fl_BrowserBottomLine*( br:  ptr Fl_Browser;  line_TT:  long) {.cdecl, importc: "Fl_BrowserBottomLine", dynlib: fltk, discardable.}
    #_  Sets the column separator to c.
    ## original: declare sub      Fl_BrowserSetColumnChar(byval br as Fl_Browser ptr, byval c as ubyte)
    proc Fl_BrowserSetColumnChar*( br:  ptr Fl_Browser;  c:  ubyte) {.cdecl, importc: "Fl_BrowserSetColumnChar", dynlib: fltk, discardable.}
    #_  Gets the current column separator character.
    ## original: declare function Fl_BrowserGetColumnChar(byval br as Fl_Browser ptr) as ubyte
    proc Fl_BrowserGetColumnChar* ( br:  ptr Fl_Browser):  ubyte {.cdecl, importc: "Fl_BrowserGetColumnChar", dynlib: fltk, discardable.}
    #_  Sets the current array to arr.
    ## original: declare sub      Fl_BrowserSetColumnWidths(byval br as Fl_Browser ptr, byval arr as const long ptr)
    proc Fl_BrowserSetColumnWidths*( br:  ptr Fl_Browser;  arr:  ptr long) {.cdecl, importc: "Fl_BrowserSetColumnWidths", dynlib: fltk, discardable.}
    #_  Gets the current column width array.
    ## original: declare function Fl_BrowserGetColumnWidths(byval br as Fl_Browser ptr) as const long ptr
    proc Fl_BrowserGetColumnWidths* ( br:  ptr Fl_Browser):  ptr long {.cdecl, importc: "Fl_BrowserGetColumnWidths", dynlib: fltk, discardable.}
    #_  Sets the user data for specified line.
    ## original: declare sub      Fl_BrowserSetData(byval br as Fl_Browser ptr, byval line_ as long, byval pData as any ptr)
    proc Fl_BrowserSetData*( br:  ptr Fl_Browser;  line_TT:  long;  pData:  pointer) {.cdecl, importc: "Fl_BrowserSetData", dynlib: fltk, discardable.}
    #_  Returns the user data for specified line.
    ## original: declare function Fl_BrowserGetData(byval br as Fl_Browser ptr, byval line_ as long) as any ptr
    proc Fl_BrowserGetData* ( br:  ptr Fl_Browser;  line_TT:  long):  pointer {.cdecl, importc: "Fl_BrowserGetData", dynlib: fltk, discardable.}
    #_  For back compatibility.
    ## original: declare sub      Fl_BrowserDisplay(byval br as Fl_Browser ptr, byval line_ as long, byval v as long=1)
    proc Fl_BrowserDisplay*( br:  ptr Fl_Browser;  line_TT:  long;  v:  long=1) {.cdecl, importc: "Fl_BrowserDisplay", dynlib: fltk, discardable.}
    #_  Returns non-zero if line has been scrolled to a position where it is being displayed.
    ## original: declare function Fl_BrowserDisplayed(byval br as Fl_Browser ptr, byval line_ as long) as long
    proc Fl_BrowserDisplayed* ( br:  ptr Fl_Browser;  line_TT:  long):  long {.cdecl, importc: "Fl_BrowserDisplayed", dynlib: fltk, discardable.}
    #_  Sets the current format code prefix character to c.
    ## original: declare sub      Fl_BrowserSetFormatChar(byval br as Fl_Browser ptr, byval c as ubyte)
    proc Fl_BrowserSetFormatChar*( br:  ptr Fl_Browser;  c:  ubyte) {.cdecl, importc: "Fl_BrowserSetFormatChar", dynlib: fltk, discardable.}
    #_  Gets the current format code prefix character, which by default is '@'.
    ## original: declare function Fl_BrowserGetFormatChar(byval br as Fl_Browser ptr) as ubyte
    proc Fl_BrowserGetFormatChar* ( br:  ptr Fl_Browser):  ubyte {.cdecl, importc: "Fl_BrowserGetFormatChar", dynlib: fltk, discardable.}
    #_  Set the image icon for line to the value icon.
    ## original: declare sub      Fl_BrowserSetIcon(byval br as Fl_Browser ptr, byval line_ as long, byval icon as Fl_Image ptr)
    proc Fl_BrowserSetIcon*( br:  ptr Fl_Browser;  line_TT:  long;  icon:  ptr Fl_Image) {.cdecl, importc: "Fl_BrowserSetIcon", dynlib: fltk, discardable.}
    #_  Returns the icon currently defined for line.
    ## original: declare function Fl_BrowserGetIcon(byval br as Fl_Browser ptr, byval line_ as long) as Fl_Image ptr
    proc Fl_BrowserGetIcon* ( br:  ptr Fl_Browser;  line_TT:  long):  ptr Fl_Image {.cdecl, importc: "Fl_BrowserGetIcon", dynlib: fltk, discardable.}
    #_  Updates the browser so that line is shown at position pos.
    ## original: declare sub      Fl_BrowserLinePosition(byval br as Fl_Browser ptr, byval line_ as long, byval p as FL_LINE_POSITION)
    proc Fl_BrowserLinePosition*( br:  ptr Fl_Browser;  line_TT:  long;  p:  FL_LINE_POSITION) {.cdecl, importc: "Fl_BrowserLinePosition", dynlib: fltk, discardable.}
    #_  Make the item at the specified line visible.
    ## original: declare sub      Fl_BrowserMakeVisible(byval br as Fl_Browser ptr, byval line_ as long)
    proc Fl_BrowserMakeVisible*( br:  ptr Fl_Browser;  line_TT:  long) {.cdecl, importc: "Fl_BrowserMakeVisible", dynlib: fltk, discardable.}
    #_  Line from is removed and reinserted at to.
    ## original: declare sub      Fl_BrowserMove(byval br as Fl_Browser ptr, byval to_ as long, byval from as long)
    proc Fl_BrowserMove*( br:  ptr Fl_Browser;  to_TT:  long;  from_TT:  long) {.cdecl, importc: "Fl_BrowserMove", dynlib: fltk, discardable.}
    #_  For back compatibility only.
    ## original: declare sub      Fl_BrowserReplace(byval br as Fl_Browser ptr, byval a as long, byval b as cstring)
    proc Fl_BrowserReplace*( br:  ptr Fl_Browser;  a:  long;  b:  cstring) {.cdecl, importc: "Fl_BrowserReplace", dynlib: fltk, discardable.}
    #_  Sets the selection state of the item at line to the value val.
    ## original: declare function Fl_BrowserSelect(byval br as Fl_Browser ptr, byval line_ as long, byval v as long=1) as long
    proc Fl_BrowserSelect* ( br:  ptr Fl_Browser;  line_TT:  long;  v:  long=1):  long {.cdecl, importc: "Fl_BrowserSelect", dynlib: fltk, discardable.}
    #_  Returns 1 if specified line is selected, 0 if not.
    ## original: declare function Fl_BrowserSelected(byval br as Fl_Browser ptr, byval line_ as long) as long
    proc Fl_BrowserSelected* ( br:  ptr Fl_Browser;  line_TT:  long):  long {.cdecl, importc: "Fl_BrowserSelected", dynlib: fltk, discardable.}
    #_  Changes the size of the widget.
    ## original: declare sub      Fl_BrowserSetSize(byval br as Fl_Browser ptr, byval w as long, byval h as long)
    proc Fl_BrowserSetSize*( br:  ptr Fl_Browser;  w:  long;  h:  long) {.cdecl, importc: "Fl_BrowserSetSize", dynlib: fltk, discardable.}
    #_  Returns how many lines are in the browser.
    ## original: declare function Fl_BrowserGetSize(byval br as Fl_Browser ptr) as long
    proc Fl_BrowserGetSize* ( br:  ptr Fl_Browser):  long {.cdecl, importc: "Fl_BrowserGetSize", dynlib: fltk, discardable.}
    #_  Swaps two browser lines a and b.
    ## original: declare sub      Fl_BrowserSwap(byval br as Fl_Browser ptr, byval a as long, byval b as long)
    proc Fl_BrowserSwap*( br:  ptr Fl_Browser;  a:  long;  b:  long) {.cdecl, importc: "Fl_BrowserSwap", dynlib: fltk, discardable.}
    #_  Sets the text for the specified line to newtext.
    ## original: declare sub      Fl_BrowserSetText(byval br as Fl_Browser ptr, byval line_ as long, byval newtext as cstring)
    proc Fl_BrowserSetText*( br:  ptr Fl_Browser;  line_TT:  long;  newtext:  cstring) {.cdecl, importc: "Fl_BrowserSetText", dynlib: fltk, discardable.}
    #_  Returns the label text for the specified line.
    ## original: declare function Fl_BrowserGetText(byval br as Fl_Browser ptr, byval line_ as long) as cstring
    proc Fl_BrowserGetText* ( br:  ptr Fl_Browser;  line_TT:  long):  cstring {.cdecl, importc: "Fl_BrowserGetText", dynlib: fltk, discardable.}
    #_  Sets the browser's value, which selects the specified line.
    ## original: declare sub      Fl_BrowserSetValue(byval br as Fl_Browser ptr, byval line_ as long)
    proc Fl_BrowserSetValue*( br:  ptr Fl_Browser;  line_TT:  long) {.cdecl, importc: "Fl_BrowserSetValue", dynlib: fltk, discardable.}
    #_  Returns the line number of the currently selected line, or 0 if none.
    ## original: declare function Fl_BrowserGetValue(byval br as Fl_Browser ptr) as long
    proc Fl_BrowserGetValue* ( br:  ptr Fl_Browser):  long {.cdecl, importc: "Fl_BrowserGetValue", dynlib: fltk, discardable.}

    let
        Fl_BrowserEnd* = Fl_GroupEnd

    #_ ############################################
    #_ # class Fl_File_Browser extends Fl_Browser #
    #_ ############################################
    DeclareEx(Fl_File_Browser)
    ## original: declare function Fl_File_BrowserNew(byval x as long, byval y as long, byval w as long, byval h as long, byval label as cstring=0) as Fl_File_Browser ptr
    proc Fl_File_BrowserNew* ( x:  long;  y:  long;  w:  long;  h:  long;  label:  cstring=nil):  ptr Fl_File_Browser {.cdecl, importc: "Fl_File_BrowserNew", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_File_BrowserDelete(byref f as Fl_File_Browser ptr)
    proc Fl_File_BrowserDelete*( f:  var ptr Fl_File_Browser) {.cdecl, importc: "Fl_File_BrowserDelete", dynlib: fltk, discardable.}

    ## original: declare function Fl_File_BrowserLoad(byval f as Fl_File_Browser ptr, byval directory as cstring) as long
    proc Fl_File_BrowserLoad* ( f:  ptr Fl_File_Browser;  directory:  cstring):  long {.cdecl, importc: "Fl_File_BrowserLoad", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_File_BrowserSetFiletype(byval f as Fl_File_Browser ptr, byval type_ as FL_FILE_TYPE)
    proc Fl_File_BrowserSetFiletype*( f:  ptr Fl_File_Browser;  type_TT:  FL_FILE_TYPE) {.cdecl, importc: "Fl_File_BrowserSetFiletype", dynlib: fltk, discardable.}
    ## original: declare function Fl_File_BrowserGetFiletype(byval f as Fl_File_Browser ptr) as FL_FILE_TYPE
    proc Fl_File_BrowserGetFiletype* ( f:  ptr Fl_File_Browser):  FL_FILE_TYPE {.cdecl, importc: "Fl_File_BrowserGetFiletype", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_File_BrowserSetFilter(byval f as Fl_File_Browser ptr, byval pattern as cstring)
    proc Fl_File_BrowserSetFilter*( f:  ptr Fl_File_Browser;  pattern:  cstring) {.cdecl, importc: "Fl_File_BrowserSetFilter", dynlib: fltk, discardable.}
    ## original: declare function Fl_File_BrowserGetFilter(byval f as Fl_File_Browser ptr) as cstring
    proc Fl_File_BrowserGetFilter* ( f:  ptr Fl_File_Browser):  cstring {.cdecl, importc: "Fl_File_BrowserGetFilter", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_File_BrowserSetIconSize(byval f as Fl_File_Browser ptr, byval s as ubyte)
    proc Fl_File_BrowserSetIconSize*( f:  ptr Fl_File_Browser;  s:  ubyte) {.cdecl, importc: "Fl_File_BrowserSetIconSize", dynlib: fltk, discardable.}
    ## original: declare function Fl_File_BrowserGetIconSize(byval f as Fl_File_Browser ptr) as ubyte
    proc Fl_File_BrowserGetIconSize* ( f:  ptr Fl_File_Browser):  ubyte {.cdecl, importc: "Fl_File_BrowserGetIconSize", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_File_BrowserSetTextSize(byval f as Fl_File_Browser ptr, byval s as FL_FONTSIZE)
    proc Fl_File_BrowserSetTextSize*( f:  ptr Fl_File_Browser;  s:  FL_FONTSIZE) {.cdecl, importc: "Fl_File_BrowserSetTextSize", dynlib: fltk, discardable.}
    ## original: declare function Fl_File_BrowserGetTextSize(byval f as Fl_File_Browser ptr) as FL_FONTSIZE
    proc Fl_File_BrowserGetTextSize* ( f:  ptr Fl_File_Browser):  FL_FONTSIZE {.cdecl, importc: "Fl_File_BrowserGetTextSize", dynlib: fltk, discardable.}

    #_ ############################################
    #_ # class Fl_Hold_Browser extends Fl_Browser #
    #_ ############################################
    DeclareEx(Fl_Hold_Browser)
    ## original: declare function Fl_Hold_BrowserNew(byval x as long, byval y as long, byval w as long, byval h as long, byval label as cstring=0) as Fl_Hold_Browser ptr
    proc Fl_Hold_BrowserNew* ( x:  long;  y:  long;  w:  long;  h:  long;  label:  cstring=nil):  ptr Fl_Hold_Browser {.cdecl, importc: "Fl_Hold_BrowserNew", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Hold_BrowserDelete(byref br as Fl_Hold_Browser ptr)
    proc Fl_Hold_BrowserDelete*( br:  var ptr Fl_Hold_Browser) {.cdecl, importc: "Fl_Hold_BrowserDelete", dynlib: fltk, discardable.}

    #_ #############################################
    #_ # class Fl_Multi_Browser extends Fl_Browser #
    #_ #############################################
    DeclareEx(Fl_Multi_Browser)
    ## original: declare function Fl_Multi_BrowserNew(byval x as long, byval y as long, byval w as long, byval h as long, byval label as cstring=0) as Fl_Multi_Browser ptr
    proc Fl_Multi_BrowserNew* ( x:  long;  y:  long;  w:  long;  h:  long;  label:  cstring=nil):  ptr Fl_Multi_Browser {.cdecl, importc: "Fl_Multi_BrowserNew", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Multi_BrowserDelete(byref br as Fl_Multi_Browser ptr)
    proc Fl_Multi_BrowserDelete*( br:  var ptr Fl_Multi_Browser) {.cdecl, importc: "Fl_Multi_BrowserDelete", dynlib: fltk, discardable.}

    #_ ##############################################
    #_ # class Fl_Select_Browser extends Fl_Browser #
    #_ ##############################################
    DeclareEx(Fl_Select_Browser)
    ## original: declare function Fl_Select_BrowserNew(byval x as long, byval y as long, byval w as long, byval h as long, byval label as cstring=0) as Fl_Select_Browser ptr
    proc Fl_Select_BrowserNew* ( x:  long;  y:  long;  w:  long;  h:  long;  label:  cstring=nil):  ptr Fl_Select_Browser {.cdecl, importc: "Fl_Select_BrowserNew", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Select_BrowserDelete(byref br as Fl_Select_Browser ptr)
    proc Fl_Select_BrowserDelete*( br:  var ptr Fl_Select_Browser) {.cdecl, importc: "Fl_Select_BrowserDelete", dynlib: fltk, discardable.}

    #_ ###########################################
    #_ # class Fl_Color_Chooser extends Fl_Group #
    #_ ###########################################
    DeclareEx(Fl_Color_Chooser)
    ## original: declare function Fl_Color_ChooserNew(byval x as long, byval y as long, byval w as long, byval h as long, byval label as cstring=0) as Fl_Color_Chooser ptr
    proc Fl_Color_ChooserNew* ( x:  long;  y:  long;  w:  long;  h:  long;  label:  cstring=nil):  ptr Fl_Color_Chooser {.cdecl, importc: "Fl_Color_ChooserNew", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Color_ChooserDelete(byref cc as Fl_Color_Chooser ptr)
    proc Fl_Color_ChooserDelete*( cc:  var ptr Fl_Color_Chooser) {.cdecl, importc: "Fl_Color_ChooserDelete", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Color_ChooserSetMode(byval cc as Fl_Color_Chooser ptr, byval newMode as FL_ColorChooserModes)
    proc Fl_Color_ChooserSetMode*( cc:  ptr Fl_Color_Chooser;  newMode:  FL_ColorChooserModes) {.cdecl, importc: "Fl_Color_ChooserSetMode", dynlib: fltk, discardable.}
    ## original: declare function Fl_Color_ChooserGetMode(byval cc as Fl_Color_Chooser ptr) as FL_ColorChooserModes
    proc Fl_Color_ChooserGetMode* ( cc:  ptr Fl_Color_Chooser):  FL_ColorChooserModes {.cdecl, importc: "Fl_Color_ChooserGetMode", dynlib: fltk, discardable.}

    ## original: declare function Fl_Color_ChooserRGB(byval cc as Fl_Color_Chooser ptr, byval r as double, byval g as double, byval b as double) as long
    proc Fl_Color_ChooserRGB* ( cc:  ptr Fl_Color_Chooser;  r:  double;  g:  double;  b:  double):  long {.cdecl, importc: "Fl_Color_ChooserRGB", dynlib: fltk, discardable.}
    ## original: declare function Fl_Color_ChooserR(byval cc as Fl_Color_Chooser ptr) as double
    proc Fl_Color_ChooserR* ( cc:  ptr Fl_Color_Chooser):  double {.cdecl, importc: "Fl_Color_ChooserR", dynlib: fltk, discardable.}
    ## original: declare function Fl_Color_ChooserG(byval cc as Fl_Color_Chooser ptr) as double
    proc Fl_Color_ChooserG* ( cc:  ptr Fl_Color_Chooser):  double {.cdecl, importc: "Fl_Color_ChooserG", dynlib: fltk, discardable.}
    ## original: declare function Fl_Color_ChooserB(byval cc as Fl_Color_Chooser ptr) as double
    proc Fl_Color_ChooserB* ( cc:  ptr Fl_Color_Chooser):  double {.cdecl, importc: "Fl_Color_ChooserB", dynlib: fltk, discardable.}

    ## original: declare function Fl_Color_ChooserHSV(byval cc as Fl_Color_Chooser ptr, byval h as double, byval s as double, byval v as double) as long
    proc Fl_Color_ChooserHSV* ( cc:  ptr Fl_Color_Chooser;  h:  double;  s:  double;  v:  double):  long {.cdecl, importc: "Fl_Color_ChooserHSV", dynlib: fltk, discardable.}

    ## original: declare function Fl_Color_ChooserHue(byval cc as Fl_Color_Chooser ptr) as double
    proc Fl_Color_ChooserHue* ( cc:  ptr Fl_Color_Chooser):  double {.cdecl, importc: "Fl_Color_ChooserHue", dynlib: fltk, discardable.}

    ## original: declare function Fl_Color_ChooserSaturation(byval cc as Fl_Color_Chooser ptr) as double
    proc Fl_Color_ChooserSaturation* ( cc:  ptr Fl_Color_Chooser):  double {.cdecl, importc: "Fl_Color_ChooserSaturation", dynlib: fltk, discardable.}

    ## original: declare function Fl_Color_ChooserValue(byval cc as Fl_Color_Chooser ptr) as double
    proc Fl_Color_ChooserValue* ( cc:  ptr Fl_Color_Chooser):  double {.cdecl, importc: "Fl_Color_ChooserValue", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Color_ChooserHSV2RGB(byval cc as Fl_Color_Chooser ptr, byval h as double, byval s as double, byval v as double, byref r as double, byref g as double, byref b as double)
    proc Fl_Color_ChooserHSV2RGB*( cc:  ptr Fl_Color_Chooser;  h:  double;  s:  double;  v:  double;  r:  var double;  g:  var double;  b:  var double) {.cdecl, importc: "Fl_Color_ChooserHSV2RGB", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Color_ChooserRGB2HSV(byval cc as Fl_Color_Chooser ptr, byval r as double, byval g as double, byval b as double, byref h as double, byref s as double, byref v as double)
    proc Fl_Color_ChooserRGB2HSV*( cc:  ptr Fl_Color_Chooser;  r:  double;  g:  double;  b:  double;  h:  var double;  s:  var double;  v:  var double) {.cdecl, importc: "Fl_Color_ChooserRGB2HSV", dynlib: fltk, discardable.}

    #_ #######################################
    #_ # class Fl_Help_View extends Fl_Group #
    #_ #######################################
    ## original: declare function Fl_Help_ViewNew(byval x as long, byval y as long, byval w as long, byval h as long, byval label as cstring=0) as Fl_Help_View ptr
    proc Fl_Help_ViewNew* ( x:  long;  y:  long;  w:  long;  h:  long;  label:  cstring=nil):  ptr Fl_Help_View {.cdecl, importc: "Fl_Help_ViewNew", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Help_ViewDelete(byref hv as Fl_Help_View ptr)
    proc Fl_Help_ViewDelete*( hv:  var ptr Fl_Help_View) {.cdecl, importc: "Fl_Help_ViewDelete", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Help_ViewClearSelection(byval hv as Fl_Help_View ptr)
    proc Fl_Help_ViewClearSelection*( hv:  ptr Fl_Help_View) {.cdecl, importc: "Fl_Help_ViewClearSelection", dynlib: fltk, discardable.}

    ## original: declare function Fl_Help_ViewDirectory(byval hv as Fl_Help_View ptr) as cstring
    proc Fl_Help_ViewDirectory* ( hv:  ptr Fl_Help_View):  cstring {.cdecl, importc: "Fl_Help_ViewDirectory", dynlib: fltk, discardable.}

    ## original: declare function Fl_Help_ViewFilename(byval hv as Fl_Help_View ptr) as cstring
    proc Fl_Help_ViewFilename* ( hv:  ptr Fl_Help_View):  cstring {.cdecl, importc: "Fl_Help_ViewFilename", dynlib: fltk, discardable.}

    ## original: declare function Fl_Help_ViewFind(byval hv as Fl_Help_View ptr, byval s as cstring, byval p as long=0) as long
    proc Fl_Help_ViewFind* ( hv:  ptr Fl_Help_View;  s:  cstring;  p:  long=0):  long {.cdecl, importc: "Fl_Help_ViewFind", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Help_ViewSetLeftLine(byval hv as Fl_Help_View ptr, byval LeftLine as long)
    proc Fl_Help_ViewSetLeftLine*( hv:  ptr Fl_Help_View;  LeftLine:  long) {.cdecl, importc: "Fl_Help_ViewSetLeftLine", dynlib: fltk, discardable.}
    ## original: declare function Fl_Help_ViewGetLeftLine(byval hv as Fl_Help_View ptr) as long
    proc Fl_Help_ViewGetLeftLine* ( hv:  ptr Fl_Help_View):  long {.cdecl, importc: "Fl_Help_ViewGetLeftLine", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Help_ViewLink(byval hv as Fl_Help_View ptr, byval fn as Fl_Help_F)
    proc Fl_Help_ViewLink*( hv:  ptr Fl_Help_View;  fn:  Fl_Help_F) {.cdecl, importc: "Fl_Help_ViewLink", dynlib: fltk, discardable.}

    ## original: declare function Fl_Help_ViewLoad(byval hv as Fl_Help_View ptr, byval filename as cstring) as long
    proc Fl_Help_ViewLoad* ( hv:  ptr Fl_Help_View;  filename:  cstring):  long {.cdecl, importc: "Fl_Help_ViewLoad", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Help_ViewResize(byval hv as Fl_Help_View ptr, byval x as long, byval y as long, byval w as long, byval h as long)
    proc Fl_Help_ViewResize*( hv:  ptr Fl_Help_View;  x:  long;  y:  long;  w:  long;  h:  long) {.cdecl, importc: "Fl_Help_ViewResize", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Help_ViewSetScrollbarSize(byval hv as Fl_Help_View ptr, byval s as long)
    proc Fl_Help_ViewSetScrollbarSize*( hv:  ptr Fl_Help_View;  s:  long) {.cdecl, importc: "Fl_Help_ViewSetScrollbarSize", dynlib: fltk, discardable.}
    ## original: declare function Fl_Help_ViewGetScrollbarSize(byval hv as Fl_Help_View ptr) as long
    proc Fl_Help_ViewGetScrollbarSize* ( hv:  ptr Fl_Help_View):  long {.cdecl, importc: "Fl_Help_ViewGetScrollbarSize", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Help_ViewSelectAll(byval hv as Fl_Help_View ptr)
    proc Fl_Help_ViewSelectAll*( hv:  ptr Fl_Help_View) {.cdecl, importc: "Fl_Help_ViewSelectAll", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Help_ViewSetSize(byval hv as Fl_Help_View ptr, byval w as long, byval h as long)
    proc Fl_Help_ViewSetSize*( hv:  ptr Fl_Help_View;  w:  long;  h:  long) {.cdecl, importc: "Fl_Help_ViewSetSize", dynlib: fltk, discardable.}
    ## original: declare function Fl_Help_ViewGetSize(byval hv as Fl_Help_View ptr) as long
    proc Fl_Help_ViewGetSize* ( hv:  ptr Fl_Help_View):  long {.cdecl, importc: "Fl_Help_ViewGetSize", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Help_ViewSetTextColor(byval hv as Fl_Help_View ptr, byval c as Fl_COLOR)
    proc Fl_Help_ViewSetTextColor*( hv:  ptr Fl_Help_View;  c:  Fl_COLOR) {.cdecl, importc: "Fl_Help_ViewSetTextColor", dynlib: fltk, discardable.}
    ## original: declare function Fl_Help_ViewGetTextColor(byval hv as Fl_Help_View ptr) as Fl_COLOR
    proc Fl_Help_ViewGetTextColor* ( hv:  ptr Fl_Help_View):  Fl_COLOR {.cdecl, importc: "Fl_Help_ViewGetTextColor", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Help_ViewSetTextFont(byval hv as Fl_Help_View ptr, byval f as FL_FONT)
    proc Fl_Help_ViewSetTextFont*( hv:  ptr Fl_Help_View;  f:  FL_FONT) {.cdecl, importc: "Fl_Help_ViewSetTextFont", dynlib: fltk, discardable.}
    ## original: declare function Fl_Help_ViewGetTextFont(byval hv as Fl_Help_View ptr) as FL_FONT
    proc Fl_Help_ViewGetTextFont* ( hv:  ptr Fl_Help_View):  FL_FONT {.cdecl, importc: "Fl_Help_ViewGetTextFont", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Help_ViewSetTextSize(byval hv as Fl_Help_View ptr, byval s as FL_FONTSIZE)
    proc Fl_Help_ViewSetTextSize*( hv:  ptr Fl_Help_View;  s:  FL_FONTSIZE) {.cdecl, importc: "Fl_Help_ViewSetTextSize", dynlib: fltk, discardable.}
    ## original: declare function Fl_Help_ViewGetTextSize(byval hv as Fl_Help_View ptr) as FL_FONTSIZE
    proc Fl_Help_ViewGetTextSize* ( hv:  ptr Fl_Help_View):  FL_FONTSIZE {.cdecl, importc: "Fl_Help_ViewGetTextSize", dynlib: fltk, discardable.}

    ## original: declare function Fl_Help_ViewTitle(byval hv as Fl_Help_View ptr) as cstring
    proc Fl_Help_ViewTitle* ( hv:  ptr Fl_Help_View):  cstring {.cdecl, importc: "Fl_Help_ViewTitle", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Help_ViewTopline(byval hv as Fl_Help_View ptr, byval by_name as cstring)
    proc Fl_Help_ViewTopline*( hv:  ptr Fl_Help_View;  by_name:  cstring) {.cdecl, importc: "Fl_Help_ViewTopline", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Help_ViewSetTopline(byval hv as Fl_Help_View ptr, byval pixel as long)
    proc Fl_Help_ViewSetTopline*( hv:  ptr Fl_Help_View;  pixel:  long) {.cdecl, importc: "Fl_Help_ViewSetTopline", dynlib: fltk, discardable.}
    ## original: declare function Fl_Help_ViewGetTopline(byval hv as Fl_Help_View ptr) as long
    proc Fl_Help_ViewGetTopline* ( hv:  ptr Fl_Help_View):  long {.cdecl, importc: "Fl_Help_ViewGetTopline", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Help_ViewSetValue(byval hv as Fl_Help_View ptr, byval v as cstring)
    proc Fl_Help_ViewSetValue*( hv:  ptr Fl_Help_View;  v:  cstring) {.cdecl, importc: "Fl_Help_ViewSetValue", dynlib: fltk, discardable.}
    ## original: declare function Fl_Help_ViewGetValue(byval hv as Fl_Help_View ptr) as cstring
    proc Fl_Help_ViewGetValue* ( hv:  ptr Fl_Help_View):  cstring {.cdecl, importc: "Fl_Help_ViewGetValue", dynlib: fltk, discardable.}

    #_ ##########################################
    #_ # class Fl_Input_Choice extends Fl_Group #
    #_ ##########################################
    DeclareEx(Fl_Input_Choice)
    ## original: declare function Fl_Input_ChoiceNew(byval x as long, byval y as long, byval w as long, byval h as long, byval label as cstring=0) as Fl_Input_Choice ptr
    proc Fl_Input_ChoiceNew* ( x:  long;  y:  long;  w:  long;  h:  long;  label:  cstring=nil):  ptr Fl_Input_Choice {.cdecl, importc: "Fl_Input_ChoiceNew", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Input_ChoiceDelete(byref ic as Fl_Input_Choice ptr)
    proc Fl_Input_ChoiceDelete*( ic:  var ptr Fl_Input_Choice) {.cdecl, importc: "Fl_Input_ChoiceDelete", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Input_ChoiceAdd(byval ic as Fl_Input_Choice ptr, byval s as cstring)
    proc Fl_Input_ChoiceAdd*( ic:  ptr Fl_Input_Choice;  s:  cstring) {.cdecl, importc: "Fl_Input_ChoiceAdd", dynlib: fltk, discardable.}

    ## original: declare function Fl_Input_ChoiceChanged(byval ic as Fl_Input_Choice ptr) as long
    proc Fl_Input_ChoiceChanged* ( ic:  ptr Fl_Input_Choice):  long {.cdecl, importc: "Fl_Input_ChoiceChanged", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Input_ChoiceClear(byval ic as Fl_Input_Choice ptr)
    proc Fl_Input_ChoiceClear*( ic:  ptr Fl_Input_Choice) {.cdecl, importc: "Fl_Input_ChoiceClear", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Input_ChoiceClearChanged(byval ic as Fl_Input_Choice ptr)
    proc Fl_Input_ChoiceClearChanged*( ic:  ptr Fl_Input_Choice) {.cdecl, importc: "Fl_Input_ChoiceClearChanged", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Input_ChoiceSetDownBox(byval ic as Fl_Input_Choice ptr, byval b as FL_BOXTYPE)
    proc Fl_Input_ChoiceSetDownBox*( ic:  ptr Fl_Input_Choice;  b:  FL_BOXTYPE) {.cdecl, importc: "Fl_Input_ChoiceSetDownBox", dynlib: fltk, discardable.}
    ## original: declare function Fl_Input_ChoiceGetDownBox(byval ic as Fl_Input_Choice ptr) as FL_BOXTYPE
    proc Fl_Input_ChoiceGetDownBox* ( ic:  ptr Fl_Input_Choice):  FL_BOXTYPE {.cdecl, importc: "Fl_Input_ChoiceGetDownBox", dynlib: fltk, discardable.}

    ## original: declare function Fl_Input_ChoiceInput(byval ic as Fl_Input_Choice ptr) as Fl_Input ptr
    proc Fl_Input_ChoiceInput* ( ic:  ptr Fl_Input_Choice):  ptr Fl_Input {.cdecl, importc: "Fl_Input_ChoiceInput", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Input_ChoiceSetMenu(byval ic as Fl_Input_Choice ptr, byval m as Fl_Menu_Item ptr)
    proc Fl_Input_ChoiceSetMenu*( ic:  ptr Fl_Input_Choice;  m:  ptr Fl_Menu_Item) {.cdecl, importc: "Fl_Input_ChoiceSetMenu", dynlib: fltk, discardable.}
    ## original: declare function Fl_Input_ChoiceGetMenu(byval ic as Fl_Input_Choice ptr) as Fl_Menu_Item ptr
    proc Fl_Input_ChoiceGetMenu* ( ic:  ptr Fl_Input_Choice):  ptr Fl_Menu_Item {.cdecl, importc: "Fl_Input_ChoiceGetMenu", dynlib: fltk, discardable.}

    ## original: declare function Fl_Input_ChoiceMenuButton(byval ic as Fl_Input_Choice ptr) as Fl_Menu_Button ptr
    proc Fl_Input_ChoiceMenuButton* ( ic:  ptr Fl_Input_Choice):  ptr Fl_Menu_Button {.cdecl, importc: "Fl_Input_ChoiceMenuButton", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Input_ChoiceResize(byval ic as Fl_Input_Choice ptr, byval x as long, byval y as long, byval w as long, byval h as long)
    proc Fl_Input_ChoiceResize*( ic:  ptr Fl_Input_Choice;  x:  long;  y:  long;  w:  long;  h:  long) {.cdecl, importc: "Fl_Input_ChoiceResize", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Input_ChoiceSetChanged(byval ic as Fl_Input_Choice ptr)
    proc Fl_Input_ChoiceSetChanged*( ic:  ptr Fl_Input_Choice) {.cdecl, importc: "Fl_Input_ChoiceSetChanged", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Input_ChoiceSetTextColor(byval ic as Fl_Input_Choice ptr, byval c as Fl_COLOR)
    proc Fl_Input_ChoiceSetTextColor*( ic:  ptr Fl_Input_Choice;  c:  Fl_COLOR) {.cdecl, importc: "Fl_Input_ChoiceSetTextColor", dynlib: fltk, discardable.}
    ## original: declare function Fl_Input_ChoiceGetTextColor(byval ic as Fl_Input_Choice ptr) as Fl_COLOR
    proc Fl_Input_ChoiceGetTextColor* ( ic:  ptr Fl_Input_Choice):  Fl_COLOR {.cdecl, importc: "Fl_Input_ChoiceGetTextColor", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Input_ChoiceSetTextFont(byval ic as Fl_Input_Choice ptr, byval f as FL_FONT)
    proc Fl_Input_ChoiceSetTextFont*( ic:  ptr Fl_Input_Choice;  f:  FL_FONT) {.cdecl, importc: "Fl_Input_ChoiceSetTextFont", dynlib: fltk, discardable.}
    ## original: declare function Fl_Input_ChoiceGetTextFont(byval ic as Fl_Input_Choice ptr) as FL_FONT
    proc Fl_Input_ChoiceGetTextFont* ( ic:  ptr Fl_Input_Choice):  FL_FONT {.cdecl, importc: "Fl_Input_ChoiceGetTextFont", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Input_ChoiceSetTextSize(byval ic as Fl_Input_Choice ptr, byval s as FL_FONTSIZE)
    proc Fl_Input_ChoiceSetTextSize*( ic:  ptr Fl_Input_Choice;  s:  FL_FONTSIZE) {.cdecl, importc: "Fl_Input_ChoiceSetTextSize", dynlib: fltk, discardable.}
    ## original: declare function Fl_Input_ChoiceGetTextSize(byval ic as Fl_Input_Choice ptr) as FL_FONTSIZE
    proc Fl_Input_ChoiceGetTextSize* ( ic:  ptr Fl_Input_Choice):  FL_FONTSIZE {.cdecl, importc: "Fl_Input_ChoiceGetTextSize", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Input_ChoiceValue(byval ic as Fl_Input_Choice ptr, byval v as long)
    proc Fl_Input_ChoiceValue*( ic:  ptr Fl_Input_Choice;  v:  long) {.cdecl, importc: "Fl_Input_ChoiceValue", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Input_ChoiceSetValue(byval ic as Fl_Input_Choice ptr, byval v as cstring)
    proc Fl_Input_ChoiceSetValue*( ic:  ptr Fl_Input_Choice;  v:  cstring) {.cdecl, importc: "Fl_Input_ChoiceSetValue", dynlib: fltk, discardable.}
    ## original: declare function Fl_Input_ChoiceGetValue(byval ic as Fl_Input_Choice ptr) as cstring
    proc Fl_Input_ChoiceGetValue* ( ic:  ptr Fl_Input_Choice):  cstring {.cdecl, importc: "Fl_Input_ChoiceGetValue", dynlib: fltk, discardable.}

    #_ #####################################
    #_ # class Fl_Spinner extends Fl_Group #
    #_ #####################################
    ## original: declare function Fl_SpinnerNew(byval x as long, byval y as long, byval w as long, byval h as long, byval label as cstring=0) as Fl_Spinner ptr
    proc Fl_SpinnerNew* ( x:  long;  y:  long;  w:  long;  h:  long;  label:  cstring=nil):  ptr Fl_Spinner {.cdecl, importc: "Fl_SpinnerNew", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_SpinnerDelete(byref spi as Fl_Spinner ptr)
    proc Fl_SpinnerDelete*( spi:  var ptr Fl_Spinner) {.cdecl, importc: "Fl_SpinnerDelete", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_SpinnerSetColor(byval spi as Fl_Spinner ptr, byval c as Fl_COLOR)
    proc Fl_SpinnerSetColor*( spi:  ptr Fl_Spinner;  c:  Fl_COLOR) {.cdecl, importc: "Fl_SpinnerSetColor", dynlib: fltk, discardable.}
    ## original: declare function Fl_SpinnerGetColor(byval spi as Fl_Spinner ptr) as Fl_COLOR
    proc Fl_SpinnerGetColor* ( spi:  ptr Fl_Spinner):  Fl_COLOR {.cdecl, importc: "Fl_SpinnerGetColor", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_SpinnerSetFormat(byval spi as Fl_Spinner ptr, byval f as cstring)
    proc Fl_SpinnerSetFormat*( spi:  ptr Fl_Spinner;  f:  cstring) {.cdecl, importc: "Fl_SpinnerSetFormat", dynlib: fltk, discardable.}
    ## original: declare function Fl_SpinnerGetFormat(byval spi as Fl_Spinner ptr) as cstring
    proc Fl_SpinnerGetFormat* ( spi:  ptr Fl_Spinner):  cstring {.cdecl, importc: "Fl_SpinnerGetFormat", dynlib: fltk, discardable.}

    ## original: declare function Fl_SpinnerHandle(byval spi as Fl_Spinner ptr, byval e as FL_EVENT) as long
    proc Fl_SpinnerHandle* ( spi:  ptr Fl_Spinner;  e:  FL_EVENT):  long {.cdecl, importc: "Fl_SpinnerHandle", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_SpinnerSetMaximum(byval spi as Fl_Spinner ptr, byval m as double)
    proc Fl_SpinnerSetMaximum*( spi:  ptr Fl_Spinner;  m:  double) {.cdecl, importc: "Fl_SpinnerSetMaximum", dynlib: fltk, discardable.}
    ## original: declare function Fl_SpinnerGetMaximum(byval spi as Fl_Spinner ptr) as double
    proc Fl_SpinnerGetMaximum* ( spi:  ptr Fl_Spinner):  double {.cdecl, importc: "Fl_SpinnerGetMaximum", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_SpinnerSetMinimum(byval spi as Fl_Spinner ptr, byval m as double)
    proc Fl_SpinnerSetMinimum*( spi:  ptr Fl_Spinner;  m:  double) {.cdecl, importc: "Fl_SpinnerSetMinimum", dynlib: fltk, discardable.}
    ## original: declare function Fl_SpinnerGetMinimum(byval spi as Fl_Spinner ptr) as double
    proc Fl_SpinnerGetMinimum* ( spi:  ptr Fl_Spinner):  double {.cdecl, importc: "Fl_SpinnerGetMinimum", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_SpinnerRange(byval spi as Fl_Spinner ptr, byval a as double, byval b as double)
    proc Fl_SpinnerRange*( spi:  ptr Fl_Spinner;  a:  double;  b:  double) {.cdecl, importc: "Fl_SpinnerRange", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_SpinnerResize(byval spi as Fl_Spinner ptr, byval x as long, byval y as long, byval w as long, byval h as long)
    proc Fl_SpinnerResize*( spi:  ptr Fl_Spinner;  x:  long;  y:  long;  w:  long;  h:  long) {.cdecl, importc: "Fl_SpinnerResize", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_SpinnerSetStep(byval spi as Fl_Spinner ptr, byval s as double)
    proc Fl_SpinnerSetStep*( spi:  ptr Fl_Spinner;  s:  double) {.cdecl, importc: "Fl_SpinnerSetStep", dynlib: fltk, discardable.}
    ## original: declare function Fl_SpinnerGetStep(byval spi as Fl_Spinner ptr) as double
    proc Fl_SpinnerGetStep* ( spi:  ptr Fl_Spinner):  double {.cdecl, importc: "Fl_SpinnerGetStep", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_SpinnerSetTextColor(byval spi as Fl_Spinner ptr, byval c as Fl_COLOR)
    proc Fl_SpinnerSetTextColor*( spi:  ptr Fl_Spinner;  c:  Fl_COLOR) {.cdecl, importc: "Fl_SpinnerSetTextColor", dynlib: fltk, discardable.}
    ## original: declare function Fl_SpinnerGetTextColor(byval spi as Fl_Spinner ptr) as Fl_COLOR
    proc Fl_SpinnerGetTextColor* ( spi:  ptr Fl_Spinner):  Fl_COLOR {.cdecl, importc: "Fl_SpinnerGetTextColor", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_SpinnerSetTextFont(byval spi as Fl_Spinner ptr, byval f as FL_FONT)
    proc Fl_SpinnerSetTextFont*( spi:  ptr Fl_Spinner;  f:  FL_FONT) {.cdecl, importc: "Fl_SpinnerSetTextFont", dynlib: fltk, discardable.}
    ## original: declare function Fl_SpinnerGetTextFont(byval spi as Fl_Spinner ptr) as FL_FONT
    proc Fl_SpinnerGetTextFont* ( spi:  ptr Fl_Spinner):  FL_FONT {.cdecl, importc: "Fl_SpinnerGetTextFont", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_SpinnerSetTextSize(byval spi as Fl_Spinner ptr, byval s as FL_FONTSIZE)
    proc Fl_SpinnerSetTextSize*( spi:  ptr Fl_Spinner;  s:  FL_FONTSIZE) {.cdecl, importc: "Fl_SpinnerSetTextSize", dynlib: fltk, discardable.}
    ## original: declare function Fl_SpinnerGetTextSize(byval spi as Fl_Spinner ptr) as FL_FONTSIZE
    proc Fl_SpinnerGetTextSize* ( spi:  ptr Fl_Spinner):  FL_FONTSIZE {.cdecl, importc: "Fl_SpinnerGetTextSize", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_SpinnerSetType(byval spi as Fl_Spinner ptr, byval v as ubyte)
    proc Fl_SpinnerSetType*( spi:  ptr Fl_Spinner;  v:  ubyte) {.cdecl, importc: "Fl_SpinnerSetType", dynlib: fltk, discardable.}
    ## original: declare function Fl_SpinnerGetType(byval spi as Fl_Spinner ptr) as ubyte
    proc Fl_SpinnerGetType* ( spi:  ptr Fl_Spinner):  ubyte {.cdecl, importc: "Fl_SpinnerGetType", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_SpinnerSetValue(byval spi as Fl_Spinner ptr, byval v as double)
    proc Fl_SpinnerSetValue*( spi:  ptr Fl_Spinner;  v:  double) {.cdecl, importc: "Fl_SpinnerSetValue", dynlib: fltk, discardable.}
    ## original: declare function Fl_SpinnerGetValue(byval spi as Fl_Spinner ptr) as double
    proc Fl_SpinnerGetValue* ( spi:  ptr Fl_Spinner):  double {.cdecl, importc: "Fl_SpinnerGetValue", dynlib: fltk, discardable.}

    #_ ###################################
    #_ # class Fl_Table extends Fl_Group #
    #_ ###################################
    ## original: declare function Fl_TableNew(byval x as long, byval y as long, byval w as long, byval h as long, byval label as cstring=0) as Fl_Table ptr
    proc Fl_TableNew* ( x:  long;  y:  long;  w:  long;  h:  long;  label:  cstring=nil):  ptr Fl_Table {.cdecl, importc: "Fl_TableNew", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_TableDelete(byref t as Fl_Table ptr)
    proc Fl_TableDelete*( t:  var ptr Fl_Table) {.cdecl, importc: "Fl_TableDelete", dynlib: fltk, discardable.}
    #_  Sets the current group so you can build the widget tree by just constructing the widgets.
    ## original: declare sub      Fl_TableBegin(byval t as Fl_Table ptr)
    proc Fl_TableBegin*( t:  ptr Fl_Table) {.cdecl, importc: "Fl_TableBegin", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_TableEnd(byval t as Fl_Table ptr)
    proc Fl_TableEnd*( t:  ptr Fl_Table) {.cdecl, importc: "Fl_TableEnd", dynlib: fltk, discardable.}
    #_  The widget is removed from its current group (if any) and then added to the end of this group.
    ## original: declare sub      Fl_TableAdd(byval t as Fl_Table ptr, byval wgt as Fl_Widget ptr)
    proc Fl_TableAdd*( t:  ptr Fl_Table;  wgt:  ptr Fl_Widget) {.cdecl, importc: "Fl_TableAdd", dynlib: fltk, discardable.}

    ## original: declare function Fl_TableArray(byval t as Fl_Table ptr) as Fl_Widget ptr const ptr
    proc Fl_TableArray* ( t:  ptr Fl_Table):  ptr Fl_Widget {.cdecl, importc: "Fl_TableArray", dynlib: fltk, discardable.}
    #_  Returns the current column and row inside the callback.
    ## original: declare function Fl_TableCallbackCol(byval t as Fl_Table ptr) as long
    proc Fl_TableCallbackCol* ( t:  ptr Fl_Table):  long {.cdecl, importc: "Fl_TableCallbackCol", dynlib: fltk, discardable.}

    ## original: declare function Fl_TableCallbackRow(byval t as Fl_Table ptr) as long
    proc Fl_TableCallbackRow* ( t:  ptr Fl_Table):  long {.cdecl, importc: "Fl_TableCallbackRow", dynlib: fltk, discardable.}
    #_  Returns the current 'table context' inside the callback.
    ## original: declare function Fl_TableCallbackContext(byval t as Fl_Table ptr) as FL_TABLECONTEXT
    proc Fl_TableCallbackContext* ( t:  ptr Fl_Table):  FL_TABLECONTEXT {.cdecl, importc: "Fl_TableCallbackContext", dynlib: fltk, discardable.}
    #_  Returns the number of children in the table.
    ## original: declare function Fl_TableChildren(byval t as Fl_Table ptr) as long
    proc Fl_TableChildren* ( t:  ptr Fl_Table):  long {.cdecl, importc: "Fl_TableChildren", dynlib: fltk, discardable.}
    #_  Returns the child widget by an index.
    ## original: declare function Fl_TableChild(byval t as Fl_Table ptr, byval nChildIndex as long) as Fl_Widget ptr
    proc Fl_TableChild* ( t:  ptr Fl_Table;  nChildIndex:  long):  ptr Fl_Widget {.cdecl, importc: "Fl_TableChild", dynlib: fltk, discardable.}
    #_  Clears the table to zero rows,columns and clears any widgets that were added with Fl_TableBegin()/Fl_TableEnd().
    ## original: declare sub      Fl_TableClear(byval t as Fl_Table ptr)
    proc Fl_TableClear*( t:  ptr Fl_Table) {.cdecl, importc: "Fl_TableClear", dynlib: fltk, discardable.}
    #_  Enable or disable column headers.
    ## original: declare sub      Fl_TableSetColHeader(byval t as Fl_Table ptr, byval bFlag as long)
    proc Fl_TableSetColHeader*( t:  ptr Fl_Table;  bFlag:  long) {.cdecl, importc: "Fl_TableSetColHeader", dynlib: fltk, discardable.}
    #_  Returns if column headers are enabled or not.
    ## original: declare function Fl_TableGetColHeader(byval t as Fl_Table ptr) as long
    proc Fl_TableGetColHeader* ( t:  ptr Fl_Table):  long {.cdecl, importc: "Fl_TableGetColHeader", dynlib: fltk, discardable.}
    #_  Sets the color for column headers and redraws the table.
    ## original: declare sub      Fl_TableSetColHeaderColor(byval t as Fl_Table ptr, byval c as Fl_COLOR)
    proc Fl_TableSetColHeaderColor*( t:  ptr Fl_Table;  c:  Fl_COLOR) {.cdecl, importc: "Fl_TableSetColHeaderColor", dynlib: fltk, discardable.}
    #_  Gets the color for column headers.
    ## original: declare function Fl_TableGetColHeaderColor(byval t as Fl_Table ptr) as Fl_COLOR
    proc Fl_TableGetColHeaderColor* ( t:  ptr Fl_Table):  Fl_COLOR {.cdecl, importc: "Fl_TableGetColHeaderColor", dynlib: fltk, discardable.}
    #_  Sets the height in pixels for column headers and redraws the table.
    ## original: declare sub      Fl_TableSetColHeaderHeight(byval t as Fl_Table ptr, byval h as long)
    proc Fl_TableSetColHeaderHeight*( t:  ptr Fl_Table;  h:  long) {.cdecl, importc: "Fl_TableSetColHeaderHeight", dynlib: fltk, discardable.}
    #_  Gets the height in pixels for column headers
    ## original: declare function Fl_TableGetColHeaderHeight(byval t as Fl_Table ptr) as long
    proc Fl_TableGetColHeaderHeight* ( t:  ptr Fl_Table):  long {.cdecl, importc: "Fl_TableGetColHeaderHeight", dynlib: fltk, discardable.}
    #_  Sets the column scroll position to column 'col', and causes the screen to redraw.
    ## original: declare sub      Fl_TableSetColPosition(byval t as Fl_Table ptr, byval col as long)
    proc Fl_TableSetColPosition*( t:  ptr Fl_Table;  col:  long) {.cdecl, importc: "Fl_TableSetColPosition", dynlib: fltk, discardable.}
    #_  Gets the column scroll position.
    ## original: declare function Fl_TableGetColPosition(byval t as Fl_Table ptr) as long
    proc Fl_TableGetColPosition* ( t:  ptr Fl_Table):  long {.cdecl, importc: "Fl_TableGetColPosition", dynlib: fltk, discardable.}
    #_  Enable / disable column resizing by the user.
    ## original: declare sub      Fl_TableSetColResize(byval t as Fl_Table ptr, byval bFlag as long)
    proc Fl_TableSetColResize*( t:  ptr Fl_Table;  bFlag:  long) {.cdecl, importc: "Fl_TableSetColResize", dynlib: fltk, discardable.}
    #_  Returns if column resizing by the user is enabled or not.
    ## original: declare function Fl_TableGetColResize(byval t as Fl_Table ptr) as long
    proc Fl_TableGetColResize* ( t:  ptr Fl_Table):  long {.cdecl, importc: "Fl_TableGetColResize", dynlib: fltk, discardable.}
    #_  Sets/Returns the current column minimum resize value.
    ## original: declare sub      Fl_TableSetColResizeMin(byval t as Fl_Table ptr, byval m as long)
    proc Fl_TableSetColResizeMin*( t:  ptr Fl_Table;  m:  long) {.cdecl, importc: "Fl_TableSetColResizeMin", dynlib: fltk, discardable.}
    ## original: declare function Fl_TableGetColResizeMin(byval t as Fl_Table ptr) as long
    proc Fl_TableGetColResizeMin* ( t:  ptr Fl_Table):  long {.cdecl, importc: "Fl_TableGetColResizeMin", dynlib: fltk, discardable.}
    #_  Sets the width of the specified column in pixels, and the table is redrawn.
    ## original: declare sub      Fl_TableSetColWidth(byval t as Fl_Table ptr, byval col as long, byval w as long)
    proc Fl_TableSetColWidth*( t:  ptr Fl_Table;  col:  long;  w:  long) {.cdecl, importc: "Fl_TableSetColWidth", dynlib: fltk, discardable.}
    #_  Returns the current width of the specified column in pixels.
    ## original: declare function Fl_TableGetColWidth(byval t as Fl_Table ptr, byval col as long) as long
    proc Fl_TableGetColWidth* ( t:  ptr Fl_Table;  col:  long):  long {.cdecl, importc: "Fl_TableGetColWidth", dynlib: fltk, discardable.}
    #_  Convenience method to set the width of all columns to the same value, in pixels.
    ## original: declare sub      Fl_TableColWidthAll(byval t as Fl_Table ptr, byval w as long)
    proc Fl_TableColWidthAll*( t:  ptr Fl_Table;  w:  long) {.cdecl, importc: "Fl_TableColWidthAll", dynlib: fltk, discardable.}
    #_  Set the number of columns in the table and redraw.
    ## original: declare sub      Fl_TableSetCols(byval t as Fl_Table ptr, byval nColumns as long)
    proc Fl_TableSetCols*( t:  ptr Fl_Table;  nColumns:  long) {.cdecl, importc: "Fl_TableSetCols", dynlib: fltk, discardable.}
    #_  Get the number of columns in the table.
    ## original: declare function Fl_TableGetCols(byval t as Fl_Table ptr) as long
    proc Fl_TableGetCols* ( t:  ptr Fl_Table):  long {.cdecl, importc: "Fl_TableGetCols", dynlib: fltk, discardable.}
    #_  Trigger as table callback.
    ## original: declare sub      Fl_TableDoCallback(byval t as Fl_Table ptr, byval context as FL_TABLECONTEXT, byval r as long, byval c as long)
    proc Fl_TableDoCallback*( t:  ptr Fl_Table;  context:  FL_TABLECONTEXT;  r:  long;  c:  long) {.cdecl, importc: "Fl_TableDoCallback", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_TableDraw(byval t as Fl_Table ptr)
    proc Fl_TableDraw*( t:  ptr Fl_Table) {.cdecl, importc: "Fl_TableDraw", dynlib: fltk, discardable.}
    #_  Searches the child array for the widget and returns the index.
    ## original: declare function Fl_TableFind(byval t as Fl_Table ptr, byval wgt as const Fl_Widget ptr) as long
    proc Fl_TableFind* ( t:  ptr Fl_Table;  wgt:  ptr FL_Widget):  long {.cdecl, importc: "Fl_TableFind", dynlib: fltk, discardable.}
    #_  Sets/gets the region of cells selected (highlighted).
    ## original: declare sub      Fl_TableSetSelection(byval t as Fl_Table ptr, byval row_top as long, byval col_left as long, byval row_bot as long, byval col_right as long)
    proc Fl_TableSetSelection*( t:  ptr Fl_Table;  row_top:  long;  col_left:  long;  row_bot:  long;  col_right:  long) {.cdecl, importc: "Fl_TableSetSelection", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_TableGetSelection(byval t as Fl_Table ptr, byref row_top as long, byref col_left as long, byref row_bot as long, byref col_right as long)
    proc Fl_TableGetSelection*( t:  ptr Fl_Table;  row_top:  var long;  col_left:  var long;  row_bot:  var long;  col_right:  var long) {.cdecl, importc: "Fl_TableGetSelection", dynlib: fltk, discardable.}
    #_  Resets the internal array of widget sizes and positions.
    ## original: declare sub      Fl_TableInitSizes(byval t as Fl_Table ptr)
    proc Fl_TableInitSizes*( t:  ptr Fl_Table) {.cdecl, importc: "Fl_TableInitSizes", dynlib: fltk, discardable.}
    #_  The widget is removed from its current group (if any) and then inserted into this group.
    ## original: declare sub      Fl_TableInsert(byval t as Fl_Table ptr, byval wgt as Fl_Widget ptr, byval n as long)
    proc Fl_TableInsert*( t:  ptr Fl_Table;  wgt:  ptr Fl_Widget;  n:  long) {.cdecl, importc: "Fl_TableInsert", dynlib: fltk, discardable.}
    #_  This does Fl_TableInsert(w2, Fl_TbleFind(w1)) before.
    ## original: declare sub      Fl_TableInsert2(byval t as Fl_Table ptr, byval w1 as Fl_Widget ptr, byval w2 as Fl_Widget ptr)
    proc Fl_TableInsert2*( t:  ptr Fl_Table;  w1:  ptr Fl_Widget;  w2:  ptr Fl_Widget) {.cdecl, importc: "Fl_TableInsert2", dynlib: fltk, discardable.}
    #_  Returns 1 if someone is interactively resizing a row or column.
    ## original: declare function Fl_TableIsInteractiveResize(byval t as Fl_Table ptr) as long
    proc Fl_TableIsInteractiveResize* ( t:  ptr Fl_Table):  long {.cdecl, importc: "Fl_TableIsInteractiveResize", dynlib: fltk, discardable.}
    #_  See if the cell at row and column is selected.
    ## original: declare function Fl_TableIsSelected(byval t as Fl_Table ptr, byval row as long, byval col as long) as long
    proc Fl_TableIsSelected* ( t:  ptr Fl_Table;  row:  long;  col:  long):  long {.cdecl, importc: "Fl_TableIsSelected", dynlib: fltk, discardable.}
    #_
    ## original: declare function Fl_TableMoveCursor(byval t as Fl_Table ptr, byval ror as long, byval col as long) as long
    proc Fl_TableMoveCursor* ( t:  ptr Fl_Table;  ror:  long;  col:  long):  long {.cdecl, importc: "Fl_TableMoveCursor", dynlib: fltk, discardable.}
    #_  Removes a widget from the group but does not delete it.
    ## original: declare sub      Fl_TableRemove(byval t as Fl_Table ptr, byval wgt as Fl_Widget ptr)
    proc Fl_TableRemove*( t:  ptr Fl_Table;  wgt:  ptr Fl_Widget) {.cdecl, importc: "Fl_TableRemove", dynlib: fltk, discardable.}
    #_  Changes the size of the Fl_Table, causing it to redraw.
    ## original: declare sub      Fl_TableResize(byval t as Fl_Table ptr, byval x as long, byval y as long, byval w as long, byval h as long)
    proc Fl_TableResize*( t:  ptr Fl_Table;  x:  long;  y:  long;  w:  long;  h:  long) {.cdecl, importc: "Fl_TableResize", dynlib: fltk, discardable.}
    #_  Sets/Returns enables/disables showing the row headers.
    ## original: declare sub      Fl_TableSetRowHeader(byval t as Fl_Table ptr, byval flag as long)
    proc Fl_TableSetRowHeader*( t:  ptr Fl_Table;  flag:  long) {.cdecl, importc: "Fl_TableSetRowHeader", dynlib: fltk, discardable.}
    ## original: declare function Fl_TableGetRowHeader(byval t as Fl_Table ptr) as long
    proc Fl_TableGetRowHeader* ( t:  ptr Fl_Table):  long {.cdecl, importc: "Fl_TableGetRowHeader", dynlib: fltk, discardable.}
    #_  Sets the row header color and causes the screen to redraw.
    ## original: declare sub      Fl_TableSetRowHeaderColor(byval t as Fl_Table ptr, byval c as Fl_COLOR)
    proc Fl_TableSetRowHeaderColor*( t:  ptr Fl_Table;  c:  Fl_COLOR) {.cdecl, importc: "Fl_TableSetRowHeaderColor", dynlib: fltk, discardable.}
    #_  Returns the current row header color.
    ## original: declare function Fl_TableGetRowHeaderColor(byval t as Fl_Table ptr) as Fl_COLOR
    proc Fl_TableGetRowHeaderColor* ( t:  ptr Fl_Table):  Fl_COLOR {.cdecl, importc: "Fl_TableGetRowHeaderColor", dynlib: fltk, discardable.}
    #_  Sets width in pixels for row headers and redraws the table.
    ## original: declare sub      Fl_TableSetRowHeaderWidth(byval t as Fl_Table ptr, byval w as long)
    proc Fl_TableSetRowHeaderWidth*( t:  ptr Fl_Table;  w:  long) {.cdecl, importc: "Fl_TableSetRowHeaderWidth", dynlib: fltk, discardable.}
    #_  Returns the current row header width (in pixels).
    ## original: declare function Fl_TableGetRowHeaderWidth(byval t as Fl_Table ptr) as long
    proc Fl_TableGetRowHeaderWidth* ( t:  ptr Fl_Table):  long {.cdecl, importc: "Fl_TableGetRowHeaderWidth", dynlib: fltk, discardable.}
    #_  Sets the height of the specified row in pixels, and the table is redrawn.
    ## original: declare sub      Fl_TableSetRowHeight(byval t as Fl_Table ptr, byval row as long, byval h as long)
    proc Fl_TableSetRowHeight*( t:  ptr Fl_Table;  row:  long;  h:  long) {.cdecl, importc: "Fl_TableSetRowHeight", dynlib: fltk, discardable.}
    #_  Returns the current height of the specified row in pixels.
    ## original: declare function Fl_TableGetRowHeight(byval t as Fl_Table ptr, byval row as long) as long
    proc Fl_TableGetRowHeight* ( t:  ptr Fl_Table;  row:  long):  long {.cdecl, importc: "Fl_TableGetRowHeight", dynlib: fltk, discardable.}
    #_  Convenience method to set the height of all rows to the same value, in pixels.
    ## original: declare sub      Fl_TableRowHeightAll(byval t as Fl_Table ptr, byval h as long)
    proc Fl_TableRowHeightAll*( t:  ptr Fl_Table;  h:  long) {.cdecl, importc: "Fl_TableRowHeightAll", dynlib: fltk, discardable.}
    #_  Sets the row scroll position to 'row' and causes the screen to redraw.
    ## original: declare sub      Fl_TableSetRowPosition(byval t as Fl_Table ptr, byval row as long)
    proc Fl_TableSetRowPosition*( t:  ptr Fl_Table;  row:  long) {.cdecl, importc: "Fl_TableSetRowPosition", dynlib: fltk, discardable.}
    #_  Returns the current row scroll position as a row number.
    ## original: declare function Fl_TableGetRowPosition(byval t as Fl_Table ptr) as long
    proc Fl_TableGetRowPosition* ( t:  ptr Fl_Table):  long {.cdecl, importc: "Fl_TableGetRowPosition", dynlib: fltk, discardable.}
    #_  Sets/Returns allows/disallows row resizing by the user.
    ## original: declare sub      Fl_TableSetRowResize(byval t as Fl_Table ptr, byval bFlag as long)
    proc Fl_TableSetRowResize*( t:  ptr Fl_Table;  bFlag:  long) {.cdecl, importc: "Fl_TableSetRowResize", dynlib: fltk, discardable.}
    ## original: declare function Fl_TableGetRowResize(byval t as Fl_Table ptr) as long
    proc Fl_TableGetRowResize* ( t:  ptr Fl_Table):  long {.cdecl, importc: "Fl_TableGetRowResize", dynlib: fltk, discardable.}
    #_  Sets/Gets the current row minimum resize value.
    ## original: declare sub      Fl_TableSetRowResizeMin(byval t as Fl_Table ptr, byval m as long)
    proc Fl_TableSetRowResizeMin*( t:  ptr Fl_Table;  m:  long) {.cdecl, importc: "Fl_TableSetRowResizeMin", dynlib: fltk, discardable.}
    ## original: declare function Fl_TableGetRowResizeMin(byval t as Fl_Table ptr) as long
    proc Fl_TableGetRowResizeMin* ( t:  ptr Fl_Table):  long {.cdecl, importc: "Fl_TableGetRowResizeMin", dynlib: fltk, discardable.}
    #_  Sets the number of rows in the table, and the table is redrawn.
    ## original: declare sub      Fl_TableSetRows(byval t as Fl_Table ptr, byval r as long)
    proc Fl_TableSetRows*( t:  ptr Fl_Table;  r:  long) {.cdecl, importc: "Fl_TableSetRows", dynlib: fltk, discardable.}
    ## original: declare function Fl_TableGetRows(byval t as Fl_Table ptr) as long
    proc Fl_TableGetRows* ( t:  ptr Fl_Table):  long {.cdecl, importc: "Fl_TableGetRows", dynlib: fltk, discardable.}
    #_  Sets/gets the kind of box drawn around the data table, the default being FL_NO_BOX.
    ## original: declare sub      Fl_TableSetTableBox(byval t as Fl_Table ptr, byval bt as FL_BOXTYPE)
    proc Fl_TableSetTableBox*( t:  ptr Fl_Table;  bt:  FL_BOXTYPE) {.cdecl, importc: "Fl_TableSetTableBox", dynlib: fltk, discardable.}
    ## original: declare function Fl_TableGetTableBox(byval t as Fl_Table ptr) as FL_BOXTYPE
    proc Fl_TableGetTableBox* ( t:  ptr Fl_Table):  FL_BOXTYPE {.cdecl, importc: "Fl_TableGetTableBox", dynlib: fltk, discardable.}
    #_  Sets which row should be at the top of the table, scrolling as necessary, and the table is redrawn.
    ## original: declare sub      Fl_TableSetTopRow(byval t as Fl_Table ptr, byval row as long)
    proc Fl_TableSetTopRow*( t:  ptr Fl_Table;  row:  long) {.cdecl, importc: "Fl_TableSetTopRow", dynlib: fltk, discardable.}
    #_  Returns the current top row shown in the table.
    ## original: declare function Fl_TableGetTopRow(byval t as Fl_Table ptr) as long
    proc Fl_TableGetTopRow* ( t:  ptr Fl_Table):  long {.cdecl, importc: "Fl_TableGetTopRow", dynlib: fltk, discardable.}
    #_  Returns the range of row and column numbers for all visible and partially visible cells in the table.
    ## original: declare sub      Fl_TableVisibleCells(byval t as Fl_Table ptr, byref r1 as long, byref r2 as long, byref c1 as long, byref c2 as long)
    proc Fl_TableVisibleCells*( t:  ptr Fl_Table;  r1:  var long;  r2:  var long;  c1:  var long;  c2:  var long) {.cdecl, importc: "Fl_TableVisibleCells", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_TableWhen(byval t as Fl_Table ptr, byval flags as FL_WHEN)
    proc Fl_TableWhen*( t:  ptr Fl_Table;  flags:  FL_WHEN) {.cdecl, importc: "Fl_TableWhen", dynlib: fltk, discardable.}

    #_ #####################################
    #_ # class Fl_TableEx extends Fl_Table #
    #_ #####################################
    ## original: declare function Fl_TableExNew(byval x as long, byval y as long, byval w as long, byval h as long, byval label as cstring=0) as Fl_TableEx ptr
    proc Fl_TableExNew* ( x:  long;  y:  long;  w:  long;  h:  long;  label:  cstring=nil):  ptr Fl_TableEx {.cdecl, importc: "Fl_TableExNew", dynlib: fltk, discardable.}
    ## original: declare function Fl_TableExHandleBase   (byval tex as Fl_TableEx ptr, byval event as FL_EVENT) as long
    proc Fl_TableExHandleBase* ( tex:  ptr Fl_TableEx;  event:  FL_EVENT):  long {.cdecl, importc: "Fl_TableExHandleBase", dynlib: fltk, discardable.}
    ## original: declare function Fl_TableExFindCell     (byval tex as Fl_TableEx ptr, byval ctx as FL_TABLECONTEXT, byval r as long, byval c as long, byref x as long, byref y as long, byref w as long, byref h as long) as long
    proc Fl_TableExFindCell* ( tex:  ptr Fl_TableEx;  ctx:  FL_TABLECONTEXT;  r:  long;  c:  long;  x:  var long;  y:  var long;  w:  var long;  h:  var long):  long {.cdecl, importc: "Fl_TableExFindCell", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_TableExSetDrawCB    (byval tex as Fl_TableEx ptr, byval cb as Fl_DrawEx)
    proc Fl_TableExSetDrawCB*( tex:  ptr Fl_TableEx;  cb:  Fl_DrawEx) {.cdecl, importc: "Fl_TableExSetDrawCB", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_TableExSetDrawCellCB(byval tex as Fl_TableEx ptr, byval cb as Fl_DrawcellEx)
    proc Fl_TableExSetDrawCellCB*( tex:  ptr Fl_TableEx;  cb:  Fl_DrawcellEx) {.cdecl, importc: "Fl_TableExSetDrawCellCB", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_TableExSetHandleCB  (byval tex as Fl_TableEx ptr, byval cb as Fl_HandleEx)
    proc Fl_TableExSetHandleCB*( tex:  ptr Fl_TableEx;  cb:  Fl_HandleEx) {.cdecl, importc: "Fl_TableExSetHandleCB", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_TableExSetResizeCB  (byval tex as Fl_TableEx ptr, byval cb as Fl_ResizeEx)
    proc Fl_TableExSetResizeCB*( tex:  ptr Fl_TableEx;  cb:  Fl_ResizeEx) {.cdecl, importc: "Fl_TableExSetResizeCB", dynlib: fltk, discardable.}

    #_ #######################################
    #_ # class Fl_Table_Row extends Fl_Table #
    #_ #######################################
    ## original: declare function Fl_Table_RowNew(byval x as long, byval y as long, byval w as long, byval h as long, byval label as cstring=0) as Fl_Table_Row ptr
    proc Fl_Table_RowNew* ( x:  long;  y:  long;  w:  long;  h:  long;  label:  cstring=nil):  ptr Fl_Table_Row {.cdecl, importc: "Fl_Table_RowNew", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Table_RowClear(byval tr as Fl_Table_Row ptr)
    proc Fl_Table_RowClear*( tr:  ptr Fl_Table_Row) {.cdecl, importc: "Fl_Table_RowClear", dynlib: fltk, discardable.}
    #_  Checks to see if 'row' is selected.
    ## original: declare function Fl_Table_RowRowSelected(byval tr as Fl_Table_Row ptr, byval r as long) as long
    proc Fl_Table_RowRowSelected* ( tr:  ptr Fl_Table_Row;  r:  long):  bool {.cdecl, importc: "Fl_Table_RowRowSelected", dynlib: fltk, discardable.}
    #_  Sets the number of rows in the table, and the table is redrawn.
    ## original: declare sub      Fl_Table_RowSetRows(byval tr as Fl_Table_Row ptr, byval nRows as long)
    proc Fl_Table_RowSetRows*( tr:  ptr Fl_Table_Row;  nRows:  long) {.cdecl, importc: "Fl_Table_RowSetRows", dynlib: fltk, discardable.}
    #_  Returns the number of rows in the table.
    ## original: declare function Fl_Table_RowGetRows(byval tr as Fl_Table_Row ptr) as long
    proc Fl_Table_RowGetRows* ( tr:  ptr Fl_Table_Row):  long {.cdecl, importc: "Fl_Table_RowGetRows", dynlib: fltk, discardable.}
    #_  This convenience function changes the selection state for all rows based on 'flag'
    ## original: declare sub      Fl_Table_RowSelectAllRows(byval tr as Fl_Table_Row ptr, byval flag as long=1)
    proc Fl_Table_RowSelectAllRows*( tr:  ptr Fl_Table_Row;  flag:  long=1) {.cdecl, importc: "Fl_Table_RowSelectAllRows", dynlib: fltk, discardable.}
    #_  Changes the selection state for 'row', depending on the value of 'flag'.
    ## original: declare function Fl_Table_RowSelectRow(byval tr as Fl_Table_Row ptr, byval row as long, byval  flag as long=1) as long
    proc Fl_Table_RowSelectRow* ( tr:  ptr Fl_Table_Row;  row:  long;   flag:  long=1):  long {.cdecl, importc: "Fl_Table_RowSelectRow", dynlib: fltk, discardable.}
    #_  Sets/Gets the table selection mode.
    ## original: declare sub      Fl_Table_RowSetType(byval tr as Fl_Table_Row ptr, byval m as Fl_TableRowSelectMode)
    proc Fl_Table_RowSetType*( tr:  ptr Fl_Table_Row;  m:  Fl_TableRowSelectMode) {.cdecl, importc: "Fl_Table_RowSetType", dynlib: fltk, discardable.}

    ## original: declare function Fl_Table_RowGetType(byval tr as Fl_Table_Row ptr) as Fl_TableRowSelectMode
    proc Fl_Table_RowGetType* ( tr:  ptr Fl_Table_Row):  Fl_TableRowSelectMode {.cdecl, importc: "Fl_Table_RowGetType", dynlib: fltk, discardable.}

    #_ #############################################
    #_ # class Fl_Table_RowEx extends Fl_Table_Row #
    #_ #############################################
    ## original: declare function Fl_Table_RowExNew(byval x as long, byval y as long, byval w as long, byval h as long, byval label as cstring=0) as Fl_Table_RowEx ptr
    proc Fl_Table_RowExNew* ( x:  long;  y:  long;  w:  long;  h:  long;  label:  cstring=nil):  ptr Fl_Table_RowEx {.cdecl, importc: "Fl_Table_RowExNew", dynlib: fltk, discardable.}
    ## original: declare function Fl_Table_RowExHandleBase   (byval tex as Fl_Table_RowEx ptr, byval event as FL_EVENT) as long
    proc Fl_Table_RowExHandleBase* ( tex:  ptr Fl_Table_RowEx;  event:  FL_EVENT):  long {.cdecl, importc: "Fl_Table_RowExHandleBase", dynlib: fltk, discardable.}
    ## original: declare function Fl_Table_RowExFindCell     (byval tex as Fl_Table_RowEx ptr, byval ctx as FL_TABLECONTEXT, byval r as long, byval c as long, byref x as long, byref y as long, byref w as long, byref h as long) as long
    proc Fl_Table_RowExFindCell* ( tex:  ptr Fl_Table_RowEx;  ctx:  FL_TABLECONTEXT;  r:  long;  c:  long;  x:  var long;  y:  var long;  w:  var long;  h:  var long):  long {.cdecl, importc: "Fl_Table_RowExFindCell", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Table_RowExSetDrawCB    (byval tex as Fl_Table_RowEx ptr, byval cb as Fl_DrawEx)
    proc Fl_Table_RowExSetDrawCB*( tex:  ptr Fl_Table_RowEx;  cb:  Fl_DrawEx) {.cdecl, importc: "Fl_Table_RowExSetDrawCB", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Table_RowExSetDrawCellCB(byval tex as Fl_Table_RowEx ptr, byval cb as Fl_DrawcellEx)
    proc Fl_Table_RowExSetDrawCellCB*( tex:  ptr Fl_Table_RowEx;  cb:  Fl_DrawcellEx) {.cdecl, importc: "Fl_Table_RowExSetDrawCellCB", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Table_RowExSetHandleCB  (byval tex as Fl_Table_RowEx ptr, byval cb as Fl_HandleEx)
    proc Fl_Table_RowExSetHandleCB*( tex:  ptr Fl_Table_RowEx;  cb:  Fl_HandleEx) {.cdecl, importc: "Fl_Table_RowExSetHandleCB", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Table_RowExSetResizeCB  (byval tex as Fl_Table_RowEx ptr, byval cb as Fl_ResizeEx)
    proc Fl_Table_RowExSetResizeCB*( tex:  ptr Fl_Table_RowEx;  cb:  Fl_ResizeEx) {.cdecl, importc: "Fl_Table_RowExSetResizeCB", dynlib: fltk, discardable.}

    ##################################
    # class Fl_Tabs extends Fl_Group #
    ##################################
    DeclareEx(Fl_Tabs)
    #_  Creates a new Fl_Tabs widget using the given position, size, and label string.
    ## original: declare function Fl_TabsNew(byval x as long, byval y as long, byval w as long, byval h as long, byval label as cstring=0) as Fl_Tabs ptr
    proc Fl_TabsNew* ( x:  long;  y:  long;  w:  long;  h:  long;  label:  cstring=nil):  ptr Fl_Tabs {.cdecl, importc: "Fl_TabsNew", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_TabsdDelete(byref tbs as Fl_Tabs ptr)
    proc Fl_TabsdDelete*( tbs:  var ptr Fl_Tabs) {.cdecl, importc: "Fl_TabsdDelete", dynlib: fltk, discardable.}

    ## original: declare function Fl_TabsHandle(byval tbs as Fl_Tabs ptr, byval event as FL_EVENT) as long
    proc Fl_TabsHandle* ( tbs:  ptr Fl_Tabs;  event:  FL_EVENT):  long {.cdecl, importc: "Fl_TabsHandle", dynlib: fltk, discardable.}
    #_  Returns the position and size available to be used by its children.
    ## original: declare sub      Fl_TabsClientArea(byval tbs as Fl_Tabs ptr, byref rx as long, byref ry as long, byref rw as long, byref rh as long, byval tabh as long=0)
    proc Fl_TabsClientArea*( tbs:  ptr Fl_Tabs;  rx:  var long;  ry:  var long;  rw:  var long;  rh:  var long;  tabh:  long=0) {.cdecl, importc: "Fl_TabsClientArea", dynlib: fltk, discardable.}
    #_  This is called by the tab widget's handle() method to set the tab group widget the user last FL_PUSH'ed on.
    ## original: declare function Fl_TabsSetPush(byval tbs as Fl_Tabs ptr, byval wgt as Fl_Widget ptr) as long
    proc Fl_TabsSetPush* ( tbs:  ptr Fl_Tabs;  wgt:  ptr Fl_Widget):  long {.cdecl, importc: "Fl_TabsSetPush", dynlib: fltk, discardable.}
    #_  Returns the tab group for the tab the user has currently down-clicked on and remains over until FL_RELEASE.
    ## original: declare function Fl_TabsGetPush(byval tbs as Fl_Tabs ptr) as Fl_Widget ptr
    proc Fl_TabsGetPush* ( tbs:  ptr Fl_Tabs):  ptr Fl_Widget {.cdecl, importc: "Fl_TabsGetPush", dynlib: fltk, discardable.}
    #_  Sets the widget to become the current visible widget/tab.
    ## original: declare function Fl_TabsSetValue(byval tbs as Fl_Tabs ptr, byval wgt as Fl_Widget ptr) as long
    proc Fl_TabsSetValue* ( tbs:  ptr Fl_Tabs;  wgt:  ptr Fl_Widget):  long {.cdecl, importc: "Fl_TabsSetValue", dynlib: fltk, discardable.}
    #_  Gets the currently visible widget/tab.
    ## original: declare function Fl_TabsGetValue(byval tbs as Fl_Tabs ptr) as Fl_Widget ptr
    proc Fl_TabsGetValue* ( tbs:  ptr Fl_Tabs):  ptr Fl_Widget {.cdecl, importc: "Fl_TabsGetValue", dynlib: fltk, discardable.}
    #_  Return the widget of the tab the user clicked on at event_x / event_y.
    ## original: declare function Fl_TabsWhich(byval tbs as Fl_Tabs ptr, byval event_x as long, byval event_y as long) as Fl_Widget ptr
    proc Fl_TabsWhich* ( tbs:  ptr Fl_Tabs;  event_x:  long;  event_y:  long):  ptr Fl_Widget {.cdecl, importc: "Fl_TabsWhich", dynlib: fltk, discardable.}

    var
        Fl_TabsEnd*  = Fl_GroupEnd
        Fl_TabNew*  = Fl_GroupNew
        Fl_TabBegin*  = Fl_GroupBegin
        Fl_TabEnd*  = Fl_GroupEnd
    #######################################################
    # class Fl_Text_Selection are used by Fl_Text_Display #
    #######################################################
    #_  Return the byte offset to the character after the last selected character.
    ## original: declare function Fl_Text_SelectionEnd(byval ts as Fl_Text_Selection ptr) as long
    proc Fl_Text_SelectionEnd* ( ts:  ptr Fl_Text_Selection):  long {.cdecl, importc: "Fl_Text_SelectionEnd", dynlib: fltk, discardable.}
    #_  Return true if position pos with indentation dispIndex is in the Fl_Text_Selection.
    ## original: declare function Fl_Text_SelectionIncludes(byval ts as Fl_Text_Selection ptr, byval pos_ as long) as long
    proc Fl_Text_SelectionIncludes* ( ts:  ptr Fl_Text_Selection;  pos:  long):  long {.cdecl, importc: "Fl_Text_SelectionIncludes", dynlib: fltk, discardable.}
    #_  Modify the 'selected' flag.
    ## original: declare sub      Fl_Text_SelectionSetSelected(byval ts as Fl_Text_Selection ptr, byval b as long)
    proc Fl_Text_SelectionSetSelected*( ts:  ptr Fl_Text_Selection;  b:  long) {.cdecl, importc: "Fl_Text_SelectionSetSelected", dynlib: fltk, discardable.}
    #_  Returns true if any text is selected.
    ## original: declare function Fl_Text_SelectionGetSelected(byval ts as Fl_Text_Selection ptr) as long
    proc Fl_Text_SelectionGetSelected* ( ts:  ptr Fl_Text_Selection):  long {.cdecl, importc: "Fl_Text_SelectionGetSelected", dynlib: fltk, discardable.}
    #_  Set the selection range.
    ## original: declare sub      Fl_Text_SelectionSet(byval ts as Fl_Text_Selection ptr, byval start as long, byval end_ as long)
    proc Fl_Text_SelectionSet*( ts:  ptr Fl_Text_Selection;  start:  long;  end_TT:  long) {.cdecl, importc: "Fl_Text_SelectionSet", dynlib: fltk, discardable.}
    #_  Return the positions of this selection.
    ## original: declare function Fl_Text_SelectionPosition(byval ts as Fl_Text_Selection ptr, byval pStart as long ptr, byval pEnd as long ptr) as long
    proc Fl_Text_SelectionPosition* ( ts:  ptr Fl_Text_Selection;  pStart:  ptr long;  pEnd:  ptr long):  long {.cdecl, importc: "Fl_Text_SelectionPosition", dynlib: fltk, discardable.}
    #_  Return the byte offset to the first selected character.
    ## original: declare function Fl_Text_SelectionStart(byval ts as Fl_Text_Selection ptr) as long
    proc Fl_Text_SelectionStart* ( ts:  ptr Fl_Text_Selection):  long {.cdecl, importc: "Fl_Text_SelectionStart", dynlib: fltk, discardable.}
    #_  Updates a selection afer text was modified.
    ## original: declare sub      Fl_Text_SelectionUpdate(byval ts as Fl_Text_Selection ptr, byval p as long, byval nDeleted as long, byval nInserted as long)
    proc Fl_Text_SelectionUpdate*( ts:  ptr Fl_Text_Selection;  p:  long;  nDeleted:  long;  nInserted:  long) {.cdecl, importc: "Fl_Text_SelectionUpdate", dynlib: fltk, discardable.}

    #_ ################################################
    #_ # class Fl_Text_Buffer used by Fl_Text_Display #
    #_ ################################################
    #_  Create an empty text buffer.
    ## original: declare function Fl_Text_BufferNew(byval requestedSize as long=0, byval preferredGapSize as long=1024) as Fl_Text_buffer ptr
    proc Fl_Text_BufferNew* ( requestedSize:  long=0;  preferredGapSize:  long=1024):  ptr Fl_Text_buffer {.cdecl, importc: "Fl_Text_BufferNew", dynlib: fltk, discardable.}
    #_  Frees a text buffer.
    ## original: declare sub      Fl_Text_BufferDelete(byref tb as Fl_Text_Buffer ptr)
    proc Fl_Text_BufferDelete*( tb:  var ptr Fl_Text_Buffer) {.cdecl, importc: "Fl_Text_BufferDelete", dynlib: fltk, discardable.}
    #_  Adds a callback function that is called whenever the text buffer is modified.
    ## original: declare sub      Fl_Text_BufferAddModifyCallback(byval tb as Fl_Text_Buffer ptr, byval cb as Fl_Text_Modify_Cb, byval cbArg as any ptr)
    proc Fl_Text_BufferAddModifyCallback*( tb:  ptr Fl_Text_Buffer;  cb:  Fl_Text_Modify_Cb;  cbArg:  pointer) {.cdecl, importc: "Fl_Text_BufferAddModifyCallback", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Text_BufferRemoveModifyCallback(byval tb as Fl_Text_Buffer ptr, byval cb as Fl_Text_Modify_Cb, byval cbArg as any ptr)
    proc Fl_Text_BufferRemoveModifyCallback*( tb:  ptr Fl_Text_Buffer;  cb:  Fl_Text_Modify_Cb;  cbArg:  pointer) {.cdecl, importc: "Fl_Text_BufferRemoveModifyCallback", dynlib: fltk, discardable.}
    #_  Calls all modify callbacks that have been registered using the add_modify_callback() method.
    ## original: declare sub      Fl_Text_BufferCallModifyCallbacks(byval tb as Fl_Text_Buffer ptr)
    proc Fl_Text_BufferCallModifyCallbacks*( tb:  ptr Fl_Text_Buffer) {.cdecl, importc: "Fl_Text_BufferCallModifyCallbacks", dynlib: fltk, discardable.}
    #_  Adds a callback routine to be called before text is deleted from the buffer.
    ## original: declare sub      Fl_Text_BufferAddPredeleteCallback(byval tb as Fl_Text_Buffer ptr, byval cb as Fl_Text_Predelete_Cb, byval cbArg as any ptr)
    proc Fl_Text_BufferAddPredeleteCallback*( tb:  ptr Fl_Text_Buffer;  cb:  Fl_Text_Predelete_Cb;  cbArg:  pointer) {.cdecl, importc: "Fl_Text_BufferAddPredeleteCallback", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Text_BufferRemovePredeleteCallback(byval tb as Fl_Text_Buffer ptr, byval cb as Fl_Text_Predelete_Cb, byval cbArg as any ptr)
    proc Fl_Text_BufferRemovePredeleteCallback*( tb:  ptr Fl_Text_Buffer;  cb:  Fl_Text_Predelete_Cb;  cbArg:  pointer) {.cdecl, importc: "Fl_Text_BufferRemovePredeleteCallback", dynlib: fltk, discardable.}
    #_  Calls the stored pre-delete callback procedure(s) for this buffer to update the changed area(s) on the screen and any other listeners.
    ## original: declare sub      Fl_Text_BufferCallPredeleteCallbacks(byval tb as Fl_Text_Buffer ptr)
    proc Fl_Text_BufferCallPredeleteCallbacks*( tb:  ptr Fl_Text_Buffer) {.cdecl, importc: "Fl_Text_BufferCallPredeleteCallbacks", dynlib: fltk, discardable.}
    #_  Loads a text file into the buffer.
    ## original: declare function Fl_Text_BufferLoadFile  (byval tb as Fl_Text_Buffer ptr, byval file as cstring, byval buflen as long = 128*1024) as long
    proc Fl_Text_BufferLoadFile* ( tb:  ptr Fl_Text_Buffer;  file:  cstring;  buflen:  long):  long {.cdecl, importc: "Fl_Text_BufferLoadFile", dynlib: fltk, discardable.}
    #_  Saves a text file from the current buffer.
    ## original: declare function Fl_Text_BufferSaveFile  (byval tb as Fl_Text_Buffer ptr, byval file as cstring, byval buflen as long = 128*1024) as long
    proc Fl_Text_BufferSaveFile* ( tb:  ptr Fl_Text_Buffer;  file:  cstring;  buflen:  long):  long {.cdecl, importc: "Fl_Text_BufferSaveFile", dynlib: fltk, discardable.}
    #_
    ## original: declare function Fl_Text_BufferOutputFile(byval tb as Fl_Text_Buffer ptr, byval file as cstring, byval start as long, byval end_ as long, byval buflen as long = 128*1024) as long
    proc Fl_Text_BufferOutputFile* ( tb:  ptr Fl_Text_Buffer;  file:  cstring;  start:  long;  end_TT:  long;  buflen:  long):  long {.cdecl, importc: "Fl_Text_BufferOutputFile", dynlib: fltk, discardable.}
    #_  Appends the named file to the end of the buffer.
    ## original: declare function Fl_Text_BufferAppendFile(byval tb as Fl_Text_Buffer ptr, byval file as cstring, byval buflen as long = 128*1024) as long
    proc Fl_Text_BufferAppendFile* ( tb:  ptr Fl_Text_Buffer;  file:  cstring;  buflen:  long):  long {.cdecl, importc: "Fl_Text_BufferAppendFile", dynlib: fltk, discardable.}
    #_  Inserts a file at the specified position.
    ## original: declare function Fl_Text_BufferInsertFile(byval tb as Fl_Text_Buffer ptr, byval file as cstring, byval p as long, byval buflen as long = 128*1024) as long
    proc Fl_Text_BufferInsertFile* ( tb:  ptr Fl_Text_Buffer;  file:  cstring;  p:  long;  buflen:  long):  long {.cdecl, importc: "Fl_Text_BufferInsertFile", dynlib: fltk, discardable.}
    #_  Appends the text string to the end of the buffer.
    ## original: declare sub      Fl_Text_BufferAppend(byval tb as Fl_Text_Buffer ptr, byval text as cstring)
    proc Fl_Text_BufferAppend*( tb:  ptr Fl_Text_Buffer;  text:  cstring) {.cdecl, importc: "Fl_Text_BufferAppend", dynlib: fltk, discardable.}
    #_  Inserts null-terminated string text at position pos.
    ## original: declare sub      Fl_Text_BufferInsert(byval tb as Fl_Text_Buffer ptr, byval pos_ as long, byval text as cstring)
    proc Fl_Text_BufferInsert*( tb:  ptr Fl_Text_Buffer;  pos:  long;  text:  cstring) {.cdecl, importc: "Fl_Text_BufferInsert", dynlib: fltk, discardable.}
    #_  Returns the number of bytes in the buffer.
    ## original: declare function Fl_Text_BufferLength(byval tb as Fl_Text_Buffer ptr) as long
    proc Fl_Text_BufferLength* ( tb:  ptr Fl_Text_Buffer):  long {.cdecl, importc: "Fl_Text_BufferLength", dynlib: fltk, discardable.}
    #_  Convert a byte offset in buffer into a memory address.
    ## original: declare function Fl_Text_BufferAddress (byval tb as Fl_Text_Buffer ptr, byval p as long) as cstring
    proc Fl_Text_BufferAddress* ( tb:  ptr Fl_Text_Buffer;  p:  long):  cstring {.cdecl, importc: "Fl_Text_BufferAddress", dynlib: fltk, discardable.}
    ## original: declare function Fl_Text_BufferAddress2(byval tb as Fl_Text_Buffer ptr, byval p as long) as cstring
    proc Fl_Text_BufferAddress2* ( tb:  ptr Fl_Text_Buffer;  p:  long):  cstring {.cdecl, importc: "Fl_Text_BufferAddress2", dynlib: fltk, discardable.}

    #_  Returns the raw byte at the specified position pos in the buffer.
    ## original: declare function Fl_Text_BufferByteAt(byval tb as Fl_Text_Buffer ptr, byval p as long) as ubyte
    proc Fl_Text_BufferByteAt* ( tb:  ptr Fl_Text_Buffer;  p:  long):  ubyte {.cdecl, importc: "Fl_Text_BufferByteAt", dynlib: fltk, discardable.}
    #_  Returns the character at the specified position pos in the buffer.
    ## original: declare function Fl_Text_BufferCharAt(byval tb as Fl_Text_Buffer ptr, byval p as long) as ulong
    proc Fl_Text_BufferCharAt* ( tb:  ptr Fl_Text_Buffer;  p:  long):  ulong {.cdecl, importc: "Fl_Text_BufferCharAt", dynlib: fltk, discardable.}
    #_  Lets the undo system know if we can undo changes.
    ## original: declare sub      Fl_Text_BufferCanUndo(byval tb as Fl_Text_Buffer ptr, byval flag as byte=1)
    proc Fl_Text_BufferCanUndo*( tb:  ptr Fl_Text_Buffer;  flag:  byte=1) {.cdecl, importc: "Fl_Text_BufferCanUndo", dynlib: fltk, discardable.}
    #_  Copies text from one buffer to this one.
    ## original: declare sub      Fl_Text_BufferCopy(byval tb as Fl_Text_Buffer ptr, byval from as Fl_Text_Buffer ptr, byval fromStart as long, byval fromEnd as long, byval toPos as long)
    proc Fl_Text_BufferCopy*( tb:  ptr Fl_Text_Buffer;  from_TT:  ptr Fl_Text_Buffer;  fromStart:  long;  fromEnd:  long;  toPos:  long) {.cdecl, importc: "Fl_Text_BufferCopy", dynlib: fltk, discardable.}
    #_  Count the number of displayed characters between buffer position lineStartPos and targetPos.
    ## original: declare function Fl_Text_BufferCountDisplayedCharacters(byval tb as Fl_Text_Buffer ptr, byval lineStartPos as long, byval targetPos as long) as long
    proc Fl_Text_BufferCountDisplayedCharacters* ( tb:  ptr Fl_Text_Buffer;  lineStartPos:  long;  targetPos:  long):  long {.cdecl, importc: "Fl_Text_BufferCountDisplayedCharacters", dynlib: fltk, discardable.}
    #_  Counts the number of newlines between startPos and endPos in buffer.
    ## original: declare function Fl_Text_BufferCountLines(byval tb as Fl_Text_Buffer ptr, byval startPos as long, byval endPos as long) as long
    proc Fl_Text_BufferCountLines* ( tb:  ptr Fl_Text_Buffer;  startPos:  long;  endPos:  long):  long {.cdecl, importc: "Fl_Text_BufferCountLines", dynlib: fltk, discardable.}
    #_  Search backwards in buffer buf for character searchChar, starting with the character BEFORE startPos, returning the result in foundPos returns 1 if found, 0 if not.
    ## original: declare function Fl_Text_BufferFindCharBackward(byval tb as Fl_Text_Buffer ptr, byval startPos as long, byval searchChar as ulong, byval pFoundPos as long ptr) as long
    proc Fl_Text_BufferFindCharBackward* ( tb:  ptr Fl_Text_Buffer;  startPos:  long;  searchChar:  ulong;  pFoundPos:  ptr long):  long {.cdecl, importc: "Fl_Text_BufferFindCharBackward", dynlib: fltk, discardable.}
    #_  Finds the next occurrence of the specified character.
    ## original: declare function Fl_Text_BufferFindCharForward(byval tb as Fl_Text_Buffer ptr, byval startPos as long, byval searchChar as ulong, byval pFoundPos as long ptr) as long
    proc Fl_Text_BufferFindCharForward* ( tb:  ptr Fl_Text_Buffer;  startPos:  long;  searchChar:  ulong;  pFoundPos:  ptr long):  long {.cdecl, importc: "Fl_Text_BufferFindCharForward", dynlib: fltk, discardable.}
    #_  Highlights the specified text within the buffer.
    ## original: declare sub      Fl_Text_BufferSetHighlight(byval tb as Fl_Text_Buffer ptr, byval start as long, byval end_ as long)
    proc Fl_Text_BufferSetHighlight*( tb:  ptr Fl_Text_Buffer;  start:  long;  end_TT:  long) {.cdecl, importc: "Fl_Text_BufferSetHighlight", dynlib: fltk, discardable.}
    #_  Returns the highlighted text.
    ## original: declare function Fl_Text_BufferGetHighlight(byval tb as Fl_Text_Buffer ptr) as long
    proc Fl_Text_BufferGetHighlight* ( tb:  ptr Fl_Text_Buffer):  long {.cdecl, importc: "Fl_Text_BufferGetHighlight", dynlib: fltk, discardable.}
    #_  Highlights the specified text between start and end within the buffer.
    ## original: declare function Fl_Text_BufferHighlightPosition(byval tb as Fl_Text_Buffer ptr, byval pStart as long ptr, byval pEnd as long ptr) as long
    proc Fl_Text_BufferHighlightPosition* ( tb:  ptr Fl_Text_Buffer;  pStart:  ptr long;  pEnd:  ptr long):  long {.cdecl, importc: "Fl_Text_BufferHighlightPosition", dynlib: fltk, discardable.}
    #_  Returns the current highlight selection.
    ## original: declare function Fl_Text_BufferHighlightSelection(byval tb as Fl_Text_Buffer ptr) as const Fl_Text_Selection ptr
    proc Fl_Text_BufferHighlightSelection* ( tb:  ptr Fl_Text_Buffer):  ptr Fl_Text_Selection {.cdecl, importc: "Fl_Text_BufferHighlightSelection", dynlib: fltk, discardable.}
    #_  Returns the highlighted text.
    ## original: declare function Fl_Text_BufferHighlightText(byval tb as Fl_Text_Buffer ptr) as cstring
    proc Fl_Text_BufferHighlightText* ( tb:  ptr Fl_Text_Buffer):  cstring {.cdecl, importc: "Fl_Text_BufferHighlightText", dynlib: fltk, discardable.}
    #_  Finds and returns the position of the end of the line containing position pos
    #_  (which is either a pointer to the newline character ending the line, or a pointer to one character beyond the end of the buffer)
    ## original: declare function Fl_Text_BufferLineEnd(byval tb as Fl_Text_Buffer ptr, byval p as long) as long
    proc Fl_Text_BufferLineEnd* ( tb:  ptr Fl_Text_Buffer;  p:  long):  long {.cdecl, importc: "Fl_Text_BufferLineEnd", dynlib: fltk, discardable.}
    #_  Returns the position of the start of the line containing position pos.
    ## original: declare function Fl_Text_BufferLineStart(byval tb as Fl_Text_Buffer ptr, byval p as long) as long
    proc Fl_Text_BufferLineStart* ( tb:  ptr Fl_Text_Buffer;  p:  long):  long {.cdecl, importc: "Fl_Text_BufferLineStart", dynlib: fltk, discardable.}
    #_  Returns the text from the entire line containing the specified character position.
    ## original: declare function Fl_Text_BufferLineText(byval tb as Fl_Text_Buffer ptr, byval p as long) as cstring
    proc Fl_Text_BufferLineText* ( tb:  ptr Fl_Text_Buffer;  p:  long):  cstring {.cdecl, importc: "Fl_Text_BufferLineText", dynlib: fltk, discardable.}
    #_  Returns the index of the next character.
    ## original: declare function Fl_Text_BufferNextChar(byval tb as Fl_Text_Buffer ptr, byval ix as long) as long
    proc Fl_Text_BufferNextChar* ( tb:  ptr Fl_Text_Buffer;  ix:  long):  long {.cdecl, importc: "Fl_Text_BufferNextChar", dynlib: fltk, discardable.}

    ## original: declare function Fl_Text_BufferNextCharClipped(byval tb as Fl_Text_Buffer ptr, byval ix as long) as long
    proc Fl_Text_BufferNextCharClipped* ( tb:  ptr Fl_Text_Buffer;  ix:  long):  long {.cdecl, importc: "Fl_Text_BufferNextCharClipped", dynlib: fltk, discardable.}
    #_  Returns the index of the previous character.
    ## original: declare function Fl_Text_BufferPrevChar(byval tb as Fl_Text_Buffer ptr, byval ix as long) as long
    proc Fl_Text_BufferPrevChar* ( tb:  ptr Fl_Text_Buffer;  ix:  long):  long {.cdecl, importc: "Fl_Text_BufferPrevChar", dynlib: fltk, discardable.}

    ## original: declare function Fl_Text_BufferPrevCharClipped(byval tb as Fl_Text_Buffer ptr, byval ix as long) as long
    proc Fl_Text_BufferPrevCharClipped* ( tb:  ptr Fl_Text_Buffer;  ix:  long):  long {.cdecl, importc: "Fl_Text_BufferPrevCharClipped", dynlib: fltk, discardable.}
    #_  Deletes a range of characters in the buffer.
    ## original: declare sub      Fl_Text_BufferRemove(byval tb as Fl_Text_Buffer ptr, byval start as long, byval end_ as long)
    proc Fl_Text_BufferRemove*( tb:  ptr Fl_Text_Buffer;  start:  long;  end_TT:  long) {.cdecl, importc: "Fl_Text_BufferRemove", dynlib: fltk, discardable.}
    #_  Deletes the characters between start and end, and inserts the null-terminated string text in their place in the buffer.
    ## original: declare sub      Fl_Text_BufferReplace(byval tb as Fl_Text_Buffer ptr, byval start as long, byval end_ as long, byval text as cstring)
    proc Fl_Text_BufferReplace*( tb:  ptr Fl_Text_Buffer;  start:  long;  end_TT:  long;  text:  cstring) {.cdecl, importc: "Fl_Text_BufferReplace", dynlib: fltk, discardable.}
    #_  Removes the text in the primary selection.
    ## original: declare sub      Fl_Text_BufferRemoveSelection(byval tb as Fl_Text_Buffer ptr)
    proc Fl_Text_BufferRemoveSelection*( tb:  ptr Fl_Text_Buffer) {.cdecl, importc: "Fl_Text_BufferRemoveSelection", dynlib: fltk, discardable.}
    #_  Removes the text from the buffer corresponding to the secondary text selection object.
    ## original: declare sub      Fl_Text_BufferRemoveSecondarySelection(byval tb as Fl_Text_Buffer ptr)
    proc Fl_Text_BufferRemoveSecondarySelection*( tb:  ptr Fl_Text_Buffer) {.cdecl, importc: "Fl_Text_BufferRemoveSecondarySelection", dynlib: fltk, discardable.}
    #_  Replaces the text in the primary selection.
    ## original: declare sub      Fl_Text_BufferReplaceSelection(byval tb as Fl_Text_Buffer ptr, byval text as cstring)
    proc Fl_Text_BufferReplaceSelection*( tb:  ptr Fl_Text_Buffer;  text:  cstring) {.cdecl, importc: "Fl_Text_BufferReplaceSelection", dynlib: fltk, discardable.}
    #_  Replaces the text from the buffer corresponding to the secondary text selection object with the new string text.
    ## original: declare sub      Fl_Text_BufferReplaceSecondarySelection(byval tb as Fl_Text_Buffer ptr, byval text as cstring)
    proc Fl_Text_BufferReplaceSecondarySelection*( tb:  ptr Fl_Text_Buffer;  text:  cstring) {.cdecl, importc: "Fl_Text_BufferReplaceSecondarySelection", dynlib: fltk, discardable.}
    #_  Finds and returns the position of the first character of the line nLines backwards from startPos
    #_  (not counting the character pointed to by startpos if that is a newline) in the buffer.
    ## original: declare function Fl_Text_BufferRewindLines(byval tb as Fl_Text_Buffer ptr, byval startPos as long, byval nLines as long) as long
    proc Fl_Text_BufferRewindLines* ( tb:  ptr Fl_Text_Buffer;  startPos:  long;  nLines:  long):  long {.cdecl, importc: "Fl_Text_BufferRewindLines", dynlib: fltk, discardable.}
    #_  Search backwards in buffer for string searchCharssearchString, starting with the character BEFORE startPos, returning the result in foundPos returns 1 if found, 0 if not.
    ## original: declare function Fl_Text_BufferSearchBackward(byval tb as Fl_Text_Buffer ptr, byval startPos as long, byval searchString as cstring, byval pFoundPos as long ptr, byval matchCase as long=0) as long
    proc Fl_Text_BufferSearchBackward* ( tb:  ptr Fl_Text_Buffer;  startPos:  long;  searchString:  cstring;  pFoundPos:  ptr long;  matchCase:  long=0):  long {.cdecl, importc: "Fl_Text_BufferSearchBackward", dynlib: fltk, discardable.}
    #_  Search forwards in buffer for string searchString, starting with the character startPos, and returning the result in foundPos returns 1 if found, 0 if not.
    ## original: declare function Fl_Text_BufferSearchForward(byval tb as Fl_Text_Buffer ptr, byval startPos as long, byval searchString as cstring, byval pFoundPos as long ptr, byval matchCase as long=0) as long
    proc Fl_Text_BufferSearchForward* ( tb:  ptr Fl_Text_Buffer;  startPos:  long;  searchString:  cstring;  pFoundPos:  ptr long;  matchCase:  long=0):  long {.cdecl, importc: "Fl_Text_BufferSearchForward", dynlib: fltk, discardable.}
    #_  Returns the primary selection.
    ## original: declare function Fl_Text_BufferPrimarySelection(byval tb as Fl_Text_Buffer ptr) as Fl_Text_Selection ptr
    proc Fl_Text_BufferPrimarySelection* ( tb:  ptr Fl_Text_Buffer):  ptr Fl_Text_Selection {.cdecl, importc: "Fl_Text_BufferPrimarySelection", dynlib: fltk, discardable.}

    ## original: declare function Fl_Text_BufferPrimarySelection2(byval tb as Fl_Text_Buffer ptr) as const Fl_Text_Selection ptr
    proc Fl_Text_BufferPrimarySelection2* ( tb:  ptr Fl_Text_Buffer):  ptr Fl_Text_Selection {.cdecl, importc: "Fl_Text_BufferPrimarySelection2", dynlib: fltk, discardable.}
    #_  Selects a range of characters in the buffer.
    ## original: declare sub      Fl_Text_BufferSelect(byval tb as Fl_Text_Buffer ptr, byval start as long, byval end_ as long)
    proc Fl_Text_BufferSelect*( tb:  ptr Fl_Text_Buffer;  start:  long;  end_TT:  long) {.cdecl, importc: "Fl_Text_BufferSelect", dynlib: fltk, discardable.}
    #_  Returns a non 0 value if text has been selected, 0 otherwise.
    ## original: declare function Fl_Text_BufferSelected(byval tb as Fl_Text_Buffer ptr) as long
    proc Fl_Text_BufferSelected* ( tb:  ptr Fl_Text_Buffer):  long {.cdecl, importc: "Fl_Text_BufferSelected", dynlib: fltk, discardable.}
    #_  Gets the selection position.
    ## original: declare function Fl_Text_BufferSelectionPosition(byval tb as Fl_Text_Buffer ptr, byval start as long ptr, byval end_ as long ptr) as long
    proc Fl_Text_BufferSelectionPosition* ( tb:  ptr Fl_Text_Buffer;  start:  ptr long;  end_TT:  ptr long):  long {.cdecl, importc: "Fl_Text_BufferSelectionPosition", dynlib: fltk, discardable.}
    #_  Returns the currently selected text.
    ## original: declare function Fl_Text_BufferSelectionText(byval tb as Fl_Text_Buffer ptr) as cstring
    proc Fl_Text_BufferSelectionText* ( tb:  ptr Fl_Text_Buffer):  cstring {.cdecl, importc: "Fl_Text_BufferSelectionText", dynlib: fltk, discardable.}
    #_  Returns the secondary selection.
    ## original: declare function Fl_Text_BufferSecondarySelection(byval tb as Fl_Text_Buffer ptr) as const Fl_Text_Selection ptr
    proc Fl_Text_BufferSecondarySelection* ( tb:  ptr Fl_Text_Buffer):  ptr Fl_Text_Selection {.cdecl, importc: "Fl_Text_BufferSecondarySelection", dynlib: fltk, discardable.}
    #_  Selects a range of characters in the secondary selection.
    ## original: declare sub      Fl_Text_BufferSecondarySelect(byval tb as Fl_Text_Buffer ptr, byval start as long, byval end_ as long)
    proc Fl_Text_BufferSecondarySelect*( tb:  ptr Fl_Text_Buffer;  start:  long;  end_TT:  long) {.cdecl, importc: "Fl_Text_BufferSecondarySelect", dynlib: fltk, discardable.}
    #_  Returns a non 0 value if text has been selected in the secondary text selection, 0 otherwise.
    ## original: declare function Fl_Text_BufferSecondarySelected(byval tb as Fl_Text_Buffer ptr) as long
    proc Fl_Text_BufferSecondarySelected* ( tb:  ptr Fl_Text_Buffer):  long {.cdecl, importc: "Fl_Text_BufferSecondarySelected", dynlib: fltk, discardable.}
    #_  Returns the current selection in the secondary text selection object.
    ## original: declare function Fl_Text_BufferSecondarySelectionPosition(byval tb as Fl_Text_Buffer ptr, byval start as long ptr, byval end_ as long ptr) as long
    proc Fl_Text_BufferSecondarySelectionPosition* ( tb:  ptr Fl_Text_Buffer;  start:  ptr long;  end_TT:  ptr long):  long {.cdecl, importc: "Fl_Text_BufferSecondarySelectionPosition", dynlib: fltk, discardable.}
    #_  Returns the text in the secondary selection.
    ## original: declare function Fl_Text_BufferSecondarySelectionText(byval tb as Fl_Text_Buffer ptr) as cstring
    proc Fl_Text_BufferSecondarySelectionText* ( tb:  ptr Fl_Text_Buffer):  cstring {.cdecl, importc: "Fl_Text_BufferSecondarySelectionText", dynlib: fltk, discardable.}
    #_  Clears any selection in the secondary text selection object.
    ## original: declare sub      Fl_Text_BufferSecondaryUnselect(byval tb as Fl_Text_Buffer ptr)
    proc Fl_Text_BufferSecondaryUnselect*( tb:  ptr Fl_Text_Buffer) {.cdecl, importc: "Fl_Text_BufferSecondaryUnselect", dynlib: fltk, discardable.}
    #_  Count forward from buffer position startPos in displayed characters
    #_  (displayed characters are the characters shown on the screen to represent characters in the buffer, where tabs and control characters are expanded)
    ## original: declare function Fl_Text_BufferSkipDisplayedCharacters(byval tb as Fl_Text_Buffer ptr, byval lineStartPos as long, byval nChars as long) as long
    proc Fl_Text_BufferSkipDisplayedCharacters* ( tb:  ptr Fl_Text_Buffer;  lineStartPos:  long;  nChars:  long):  long {.cdecl, importc: "Fl_Text_BufferSkipDisplayedCharacters", dynlib: fltk, discardable.}
    #_  Finds the first character of the line nLines forward from startPos in the buffer and returns its position.
    ## original: declare function Fl_Text_BufferSkipLines(byval tb as Fl_Text_Buffer ptr, byval startPos as long, byval nLines as long) as long
    proc Fl_Text_BufferSkipLines* ( tb:  ptr Fl_Text_Buffer;  startPos:  long;  nLines:  long):  long {.cdecl, importc: "Fl_Text_BufferSkipLines", dynlib: fltk, discardable.}
    #_  Set the hardware tab distance (width) used by all displays for this buffer, and used in computing offsets for rectangular selection operations.
    ## original: declare sub      Fl_Text_BufferSetTabDistance(byval tb as Fl_Text_Buffer ptr, byval tabDist as long)
    proc Fl_Text_BufferSetTabDistance*( tb:  ptr Fl_Text_Buffer;  tabDist:  long) {.cdecl, importc: "Fl_Text_BufferSetTabDistance", dynlib: fltk, discardable.}
    #_  Gets the tab width.
    ## original: declare function Fl_Text_BufferGetTabDistance(byval tb as Fl_Text_Buffer ptr) as long
    proc Fl_Text_BufferGetTabDistance* ( tb:  ptr Fl_Text_Buffer):  long {.cdecl, importc: "Fl_Text_BufferGetTabDistance", dynlib: fltk, discardable.}
    #_  Replaces the entire contents of the text buffer.
    ## original: declare sub      Fl_Text_BufferSetText(byval tb as Fl_Text_Buffer ptr, byval text as cstring=0)
    proc Fl_Text_BufferSetText*( tb:  ptr Fl_Text_Buffer;  text:  cstring=nil) {.cdecl, importc: "Fl_Text_BufferSetText", dynlib: fltk, discardable.}
    #_  Get a copy of the entire contents of the text buffer.
    ## original: declare function Fl_Text_BufferGetText(byval tb as Fl_Text_Buffer ptr) as cstring
    proc Fl_Text_BufferGetText* ( tb:  ptr Fl_Text_Buffer):  cstring {.cdecl, importc: "Fl_Text_BufferGetText", dynlib: fltk, discardable.}
    #_  Get a copy of a part of the text buffer.
    ## original: declare function Fl_Text_BufferTextRange(byval tb as Fl_Text_Buffer ptr, byval start as long, byval end_ as long) as cstring
    proc Fl_Text_BufferTextRange* ( tb:  ptr Fl_Text_Buffer;  start:  long;  end_TT:  long):  cstring {.cdecl, importc: "Fl_Text_BufferTextRange", dynlib: fltk, discardable.}
    #_  Undo text modification according to the undo variables or insert text from the undo buffer.
    ## original: declare function Fl_Text_BufferUndo(byval tb as Fl_Text_Buffer ptr, byval cp as long ptr=0) as long
    proc Fl_Text_BufferUndo* ( tb:  ptr Fl_Text_Buffer;  cp:  ptr long=nil):  long {.cdecl, importc: "Fl_Text_BufferUndo", dynlib: fltk, discardable.}
    #_  Unhighlights text in the buffer.
    ## original: declare sub      Fl_Text_BufferUnhighlight(byval tb as Fl_Text_Buffer ptr)
    proc Fl_Text_BufferUnhighlight*( tb:  ptr Fl_Text_Buffer) {.cdecl, importc: "Fl_Text_BufferUnhighlight", dynlib: fltk, discardable.}
    #_  Cancels any previous selection on the primary text selection object.
    ## original: declare sub      Fl_Text_BufferUnselect(byval tb as Fl_Text_Buffer ptr)
    proc Fl_Text_BufferUnselect*( tb:  ptr Fl_Text_Buffer) {.cdecl, importc: "Fl_Text_BufferUnselect", dynlib: fltk, discardable.}
    #_  Align an index into the buffer to the current or previous utf8 boundary.
    ## original: declare function Fl_Text_BufferUtf8Align(byval tb as Fl_Text_Buffer ptr, byval a as long) as long
    proc Fl_Text_BufferUtf8Align* ( tb:  ptr Fl_Text_Buffer;  a:  long):  long {.cdecl, importc: "Fl_Text_BufferUtf8Align", dynlib: fltk, discardable.}
    #_  Returns the position corresponding to the end of the word.
    ## original: declare function Fl_Text_BufferWordEnd(byval tb as Fl_Text_Buffer ptr, byval p as long) as long
    proc Fl_Text_BufferWordEnd* ( tb:  ptr Fl_Text_Buffer;  p:  long):  long {.cdecl, importc: "Fl_Text_BufferWordEnd", dynlib: fltk, discardable.}
    #_  Returns the position corresponding to the start of the word.
    ## original: declare function Fl_Text_BufferWordStart(byval tb as Fl_Text_Buffer ptr, byval p as long) as long
    proc Fl_Text_BufferWordStart* ( tb:  ptr Fl_Text_Buffer;  p:  long):  long {.cdecl, importc: "Fl_Text_BufferWordStart", dynlib: fltk, discardable.}

    #_ ##########################################
    #_ # class Fl_Text_Display extends Fl_Group #
    #_ ##########################################
    DeclareEx(Fl_Text_Display)
    ## original: declare function Fl_Text_DisplayNew(byval x as long, byval y as long, byval w as long, byval h as long, byval label as cstring=0) as Fl_Text_Display ptr
    proc Fl_Text_DisplayNew* ( x:  long;  y:  long;  w:  long;  h:  long;  label:  cstring=nil):  ptr Fl_Text_Display {.cdecl, importc: "Fl_Text_DisplayNew", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Text_DisplayDelete(byref td as Fl_Text_Display ptr)
    proc Fl_Text_DisplayDelete*( td:  var ptr Fl_Text_Display) {.cdecl, importc: "Fl_Text_DisplayDelete", dynlib: fltk, discardable.}

    ## original: declare function Fl_Text_DisplayHandle(byval td as Fl_Text_Display ptr, byval event as FL_EVENT) as long
    proc Fl_Text_DisplayHandle* ( td:  ptr Fl_Text_Display;  event:  FL_EVENT):  long {.cdecl, importc: "Fl_Text_DisplayHandle", dynlib: fltk, discardable.}
    #_  Attach a text buffer to display, replacing the current buffer (if any)
    ## original: declare sub      Fl_Text_DisplaySetBuffer(byval td as Fl_Text_Display ptr, byval pTextbuf as Fl_Text_Buffer ptr)
    proc Fl_Text_DisplaySetBuffer*( td:  ptr Fl_Text_Display;  pTextbuf:  ptr Fl_Text_Buffer) {.cdecl, importc: "Fl_Text_DisplaySetBuffer", dynlib: fltk, discardable.}
    #_  Gets the current text buffer associated with the text widget.
    ## original: declare function Fl_Text_DisplayGetBuffer(byval td as Fl_Text_Display ptr) as Fl_Text_Buffer ptr
    proc Fl_Text_DisplayGetBuffer* ( td:  ptr Fl_Text_Display):  ptr Fl_Text_Buffer {.cdecl, importc: "Fl_Text_DisplayGetBuffer", dynlib: fltk, discardable.}
    #_  Attach (or remove) highlight information in text display and redisplay.
    ## original: declare sub      Fl_Text_DisplayHighlightData(byval td as Fl_Text_Display ptr, byval pStylebuf as Fl_Text_Buffer ptr, byval pStyles as Style_Table_Entry ptr, byval nStyles as long, byval unfinishedStyle as byte=0, byval cb as Unfinished_Style_Cb=0, byval cbArg as any ptr=0)
    proc Fl_Text_DisplayHighlightData*( td:  ptr Fl_Text_Display;  pStylebuf:  ptr Fl_Text_Buffer;  pStyles:  ptr Style_Table_Entry;  nStyles:  long;  unfinishedStyle:  byte=0;  cb:  Unfinished_Style_Cb=cast[Unfinished_Style_Cb](0);  cbArg:  pointer=nil) {.cdecl, importc: "Fl_Text_DisplayHighlightData", dynlib: fltk, discardable.}
    #_  Count the number of lines between two positions.
    ## original: declare function Fl_Text_DisplayCountLines(byval td as Fl_Text_Display ptr, byval start as long, byval end_ as long, byval start_pos_is_line_start as byte) as long
    proc Fl_Text_DisplayCountLines* ( td:  ptr Fl_Text_Display;  start:  long;  end_TT:  long;  start_pos_is_line_start:  byte):  long {.cdecl, importc: "Fl_Text_DisplayCountLines", dynlib: fltk, discardable.}
    #_  Sets/Gets the text cursor color.
    ## original: declare sub      Fl_Text_DisplaySetCursorColor(byval td as Fl_Text_Display ptr, byval c as Fl_COLOR)
    proc Fl_Text_DisplaySetCursorColor*( td:  ptr Fl_Text_Display;  c:  Fl_COLOR) {.cdecl, importc: "Fl_Text_DisplaySetCursorColor", dynlib: fltk, discardable.}
    ## original: declare function Fl_Text_DisplayGetCursorColor(byval td as Fl_Text_Display ptr) as Fl_COLOR
    proc Fl_Text_DisplayGetCursorColor* ( td:  ptr Fl_Text_Display):  Fl_COLOR {.cdecl, importc: "Fl_Text_DisplayGetCursorColor", dynlib: fltk, discardable.}
    #_  Sets the text cursor style.
    ## original: declare sub      Fl_Text_DisplayCursorStyle(byval td as Fl_Text_Display ptr, byval style as FL_TEXT_DISPLAY_CURSOR_SHAPE)
    proc Fl_Text_DisplayCursorStyle*( td:  ptr Fl_Text_Display;  style:  FL_TEXT_DISPLAY_CURSOR_SHAPE) {.cdecl, importc: "Fl_Text_DisplayCursorStyle", dynlib: fltk, discardable.}
    #_  Hides the text cursor.
    ## original: declare sub      Fl_Text_DisplayHideCursor(byval td as Fl_Text_Display ptr)
    proc Fl_Text_DisplayHideCursor*( td:  ptr Fl_Text_Display) {.cdecl, importc: "Fl_Text_DisplayHideCursor", dynlib: fltk, discardable.}
    #_  Shows the text cursor. (This function may trigger a redraw.)
    ## original: declare sub      Fl_Text_DisplayShowCursor(byval td as Fl_Text_Display ptr, byval b as long=1)
    proc Fl_Text_DisplayShowCursor*( td:  ptr Fl_Text_Display;  b:  long=1) {.cdecl, importc: "Fl_Text_DisplayShowCursor", dynlib: fltk, discardable.}
    #_  Check if a pixel position is within the primary selection.
    ## original: declare function Fl_Text_DisplayInSelection(byval td as Fl_Text_Display ptr, byval x as long, byval y as long) as long
    proc Fl_Text_DisplayInSelection* ( td:  ptr Fl_Text_Display;  x:  long;  y:  long):  long {.cdecl, importc: "Fl_Text_DisplayInSelection", dynlib: fltk, discardable.}
    #_  Inserts "text" at the current cursor location.
    ## original: declare sub      Fl_Text_DisplayInsert(byval td as Fl_Text_Display ptr, byval text as cstring)
    proc Fl_Text_DisplayInsert*( td:  ptr Fl_Text_Display;  text:  cstring) {.cdecl, importc: "Fl_Text_DisplayInsert", dynlib: fltk, discardable.}
    #_  Sets/Gets the position of the text insertion cursor for text display.
    ## original: declare sub      Fl_Text_DisplaySetInsertPosition(byval td as Fl_Text_Display ptr, byval newPos as long)
    proc Fl_Text_DisplaySetInsertPosition*( td:  ptr Fl_Text_Display;  newPos:  long) {.cdecl, importc: "Fl_Text_DisplaySetInsertPosition", dynlib: fltk, discardable.}
    ## original: declare function Fl_Text_DisplayGetInsertPosition(byval td as Fl_Text_Display ptr) as long
    proc Fl_Text_DisplayGetInsertPosition* ( td:  ptr Fl_Text_Display):  long {.cdecl, importc: "Fl_Text_DisplayGetInsertPosition", dynlib: fltk, discardable.}
    #_  Returns the end of a line.
    ## original: declare function Fl_Text_DisplayLineEnd(byval td as Fl_Text_Display ptr, byval startPos as long, byval startPosIsLineStart as byte) as long
    proc Fl_Text_DisplayLineEnd* ( td:  ptr Fl_Text_Display;  startPos:  long;  startPosIsLineStart:  byte):  long {.cdecl, importc: "Fl_Text_DisplayLineEnd", dynlib: fltk, discardable.}
    #_  Return the beginning of a line.
    ## original: declare function Fl_Text_DisplayLineStart(byval td as Fl_Text_Display ptr, byval p as long) as long
    proc Fl_Text_DisplayLineStart* ( td:  ptr Fl_Text_Display;  p:  long):  long {.cdecl, importc: "Fl_Text_DisplayLineStart", dynlib: fltk, discardable.}
    #_  Moves the current insert position down / up one line.
    ## original: declare function Fl_Text_DisplayMoveDown(byval td as Fl_Text_Display ptr) as long
    proc Fl_Text_DisplayMoveDown* ( td:  ptr Fl_Text_Display):  long {.cdecl, importc: "Fl_Text_DisplayMoveDown", dynlib: fltk, discardable.}

    ## original: declare function Fl_Text_DisplayMoveUp(byval td as Fl_Text_Display ptr) as long
    proc Fl_Text_DisplayMoveUp* ( td:  ptr Fl_Text_Display):  long {.cdecl, importc: "Fl_Text_DisplayMoveUp", dynlib: fltk, discardable.}
    #_  Moves the current insert position left / right one character.
    ## original: declare function Fl_Text_DisplayMoveLeft(byval td as Fl_Text_Display ptr) as long
    proc Fl_Text_DisplayMoveLeft* ( td:  ptr Fl_Text_Display):  long {.cdecl, importc: "Fl_Text_DisplayMoveLeft", dynlib: fltk, discardable.}

    ## original: declare function Fl_Text_DisplayMoveRight(byval td as Fl_Text_Display ptr) as long
    proc Fl_Text_DisplayMoveRight* ( td:  ptr Fl_Text_Display):  long {.cdecl, importc: "Fl_Text_DisplayMoveRight", dynlib: fltk, discardable.}
    #_  Moves the current insert position right / left one word.
    ## original: declare sub      Fl_Text_DisplayNextWord(byval td as Fl_Text_Display ptr)
    proc Fl_Text_DisplayNextWord*( td:  ptr Fl_Text_Display) {.cdecl, importc: "Fl_Text_DisplayNextWord", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Text_DisplayPreviousWord(byval td as Fl_Text_Display ptr)
    proc Fl_Text_DisplayPreviousWord*( td:  ptr Fl_Text_Display) {.cdecl, importc: "Fl_Text_DisplayPreviousWord", dynlib: fltk, discardable.}
    #_  Replaces text at the current insert position.
    ## original: declare sub      Fl_Text_DisplayOverStrike(byval td as Fl_Text_Display ptr, byval text as cstring)
    proc Fl_Text_DisplayOverStrike*( td:  ptr Fl_Text_Display;  text:  cstring) {.cdecl, importc: "Fl_Text_DisplayOverStrike", dynlib: fltk, discardable.}
    #_  Find the correct style for a character.
    ## original: declare function Fl_Text_DisplayPositionStyle(byval td as Fl_Text_Display ptr, byval lineStartPos as long, byval lineLen as long, byval lineIndex as long) as long
    proc Fl_Text_DisplayPositionStyle* ( td:  ptr Fl_Text_Display;  lineStartPos:  long;  lineLen:  long;  lineIndex:  long):  long {.cdecl, importc: "Fl_Text_DisplayPositionStyle", dynlib: fltk, discardable.}
    #_  Convert a character index into a pixel position.
    ## original: declare function Fl_Text_DisplayPositionToXY(byval td as Fl_Text_Display ptr, byval p as long, byval x as long ptr, byval y as long ptr) as long
    proc Fl_Text_DisplayPositionToXY* ( td:  ptr Fl_Text_Display;  p:  long;  x:  ptr long;  y:  ptr long):  long {.cdecl, importc: "Fl_Text_DisplayPositionToXY", dynlib: fltk, discardable.}
    #_  Marks text from start to end as needing a redraw.
    ## original: declare sub      Fl_Text_DisplayRedisplayRange(byval td as Fl_Text_Display ptr, byval start as long, byval end_ as long)
    proc Fl_Text_DisplayRedisplayRange*( td:  ptr Fl_Text_Display;  start:  long;  end_TT:  long) {.cdecl, importc: "Fl_Text_DisplayRedisplayRange", dynlib: fltk, discardable.}
    #_  Change the size of the displayed text area.
    ## original: declare sub      Fl_Text_DisplayResize(byval td as Fl_Text_Display ptr, byval x as long, byval y as long, byval w as long, byval h as long)
    proc Fl_Text_DisplayResize*( td:  ptr Fl_Text_Display;  x:  long;  y:  long;  w:  long;  h:  long) {.cdecl, importc: "Fl_Text_DisplayResize", dynlib: fltk, discardable.}
    #_  Skip a number of lines back.
    ## original: declare function Fl_Text_DisplayRewindLines(byval td as Fl_Text_Display ptr, byval startPos as long, byval nLines as long) as long
    proc Fl_Text_DisplayRewindLines* ( td:  ptr Fl_Text_Display;  startPos:  long;  nLines:  long):  long {.cdecl, importc: "Fl_Text_DisplayRewindLines", dynlib: fltk, discardable.}
    #_  Scrolls the current buffer to start at the specified line and column.
    ## original: declare sub      Fl_Text_DisplayScroll(byval td as Fl_Text_Display ptr, byval topLintype as = enum  long, byval horizOffset as long)
    proc Fl_Text_DisplayScroll*( td:  ptr Fl_Text_Display;  topLintype:  long;  horizOffset:  long) {.cdecl, importc: "Fl_Text_DisplayScroll", dynlib: fltk, discardable.}
    #_  Sets / gets the scrollbar alignment type.
    ## original: declare sub      Fl_Text_DisplaySetScrollbarAlign(byval td as Fl_Text_Display ptr, byval a as FL_ALIGN)
    proc Fl_Text_DisplaySetScrollbarAlign*( td:  ptr Fl_Text_Display;  a:  FL_ALIGN) {.cdecl, importc: "Fl_Text_DisplaySetScrollbarAlign", dynlib: fltk, discardable.}
    ## original: declare function Fl_Text_DisplayGetScrollbarAlign(byval td as Fl_Text_Display ptr) as FL_ALIGN
    proc Fl_Text_DisplayGetScrollbarAlign* ( td:  ptr Fl_Text_Display):  FL_ALIGN {.cdecl, importc: "Fl_Text_DisplayGetScrollbarAlign", dynlib: fltk, discardable.}
    #_  Sets / gets the width/height of the scrollbars.
    ## original: declare sub      Fl_Text_DisplaySetScrollbarWidth(byval td as Fl_Text_Display ptr, byval w as long)
    proc Fl_Text_DisplaySetScrollbarWidth*( td:  ptr Fl_Text_Display;  w:  long) {.cdecl, importc: "Fl_Text_DisplaySetScrollbarWidth", dynlib: fltk, discardable.}
    ## original: declare function Fl_Text_DisplayGetScrollbarWidth(byval td as Fl_Text_Display ptr) as long
    proc Fl_Text_DisplayGetScrollbarWidth* ( td:  ptr Fl_Text_Display):  long {.cdecl, importc: "Fl_Text_DisplayGetScrollbarWidth", dynlib: fltk, discardable.}
    #_  Sets / gets the new shortcut key.
    ## original: declare sub      Fl_Text_DisplaySetShortcut(byval td as Fl_Text_Display ptr, byval s as long)
    proc Fl_Text_DisplaySetShortcut*( td:  ptr Fl_Text_Display;  s:  long) {.cdecl, importc: "Fl_Text_DisplaySetShortcut", dynlib: fltk, discardable.}
    ## original: declare function Fl_Text_DisplayGetShortcut(byval td as Fl_Text_Display ptr) as long
    proc Fl_Text_DisplayGetShortcut* ( td:  ptr Fl_Text_Display):  long {.cdecl, importc: "Fl_Text_DisplayGetShortcut", dynlib: fltk, discardable.}
    #_  Scrolls the text buffer to show the current insert position.
    ## original: declare sub      Fl_Text_DisplayShowInsertPosition(byval td as Fl_Text_Display ptr)
    proc Fl_Text_DisplayShowInsertPosition*( td:  ptr Fl_Text_Display) {.cdecl, importc: "Fl_Text_DisplayShowInsertPosition", dynlib: fltk, discardable.}
    #_  Skip a number of lines forward.
    ## original: declare function Fl_Text_DisplaySkipLines(byval td as Fl_Text_Display ptr, byval startPos as long, byval nLines as long, byval startPosIsLineStart as byte) as long
    proc Fl_Text_DisplaySkipLines* ( td:  ptr Fl_Text_Display;  startPos:  long;  nLines:  long;  startPosIsLineStart:  byte):  long {.cdecl, importc: "Fl_Text_DisplaySkipLines", dynlib: fltk, discardable.}
    #_  Sets / gets the default color of text in the widget.
    ## original: declare sub      Fl_Text_DisplaySetTextColor(byval td as Fl_Text_Display ptr, byval c as Fl_COLOR)
    proc Fl_Text_DisplaySetTextColor*( td:  ptr Fl_Text_Display;  c:  Fl_COLOR) {.cdecl, importc: "Fl_Text_DisplaySetTextColor", dynlib: fltk, discardable.}
    ## original: declare function Fl_Text_DisplayGetTextColor(byval td as Fl_Text_Display ptr) as Fl_COLOR
    proc Fl_Text_DisplayGetTextColor* ( td:  ptr Fl_Text_Display):  Fl_COLOR {.cdecl, importc: "Fl_Text_DisplayGetTextColor", dynlib: fltk, discardable.}
    #_  Sets / gets the default font used when drawing text in the widget.
    ## original: declare sub      Fl_Text_DisplaySetTextFont(byval td as Fl_Text_Display ptr, byval f as FL_FONT)
    proc Fl_Text_DisplaySetTextFont*( td:  ptr Fl_Text_Display;  f:  FL_FONT) {.cdecl, importc: "Fl_Text_DisplaySetTextFont", dynlib: fltk, discardable.}
    ## original: declare function Fl_Text_DisplayGetTextFont(byval td as Fl_Text_Display ptr) as FL_FONT
    proc Fl_Text_DisplayGetTextFont* ( td:  ptr Fl_Text_Display):  FL_FONT {.cdecl, importc: "Fl_Text_DisplayGetTextFont", dynlib: fltk, discardable.}
    #_  Sets / gets the default size of text in the widget.
    ## original: declare sub      Fl_Text_DisplaySetTextSize(byval td as Fl_Text_Display ptr, byval s as FL_FONTSIZE)
    proc Fl_Text_DisplaySetTextSize*( td:  ptr Fl_Text_Display;  s:  FL_FONTSIZE) {.cdecl, importc: "Fl_Text_DisplaySetTextSize", dynlib: fltk, discardable.}
    ## original: declare function Fl_Text_DisplayGetTextSize(byval td as Fl_Text_Display ptr) as FL_FONTSIZE
    proc Fl_Text_DisplayGetTextSize* ( td:  ptr Fl_Text_Display):  FL_FONTSIZE {.cdecl, importc: "Fl_Text_DisplayGetTextSize", dynlib: fltk, discardable.}
    #_  Moves the insert position to the beginning / end of the current word.
    ## original: declare function Fl_Text_DisplayWordStart(byval td as Fl_Text_Display ptr, byval pos_ as long) as long
    proc Fl_Text_DisplayWordStart* ( td:  ptr Fl_Text_Display;  pos:  long):  long {.cdecl, importc: "Fl_Text_DisplayWordStart", dynlib: fltk, discardable.}

    ## original: declare function Fl_Text_DisplayWordEnd(byval td as Fl_Text_Display ptr, byval pos_ as long) as long
    proc Fl_Text_DisplayWordEnd* ( td:  ptr Fl_Text_Display;  pos:  long):  long {.cdecl, importc: "Fl_Text_DisplayWordEnd", dynlib: fltk, discardable.}
    #_  Set the new text wrap mode.
    ## original: declare sub      Fl_Text_DisplayWrapMode(byval td as Fl_Text_Display ptr, byval wrap as FL_TEXT_DISPLAY_WRAP_MODE, byval wrap_margin as long)
    proc Fl_Text_DisplayWrapMode*( td:  ptr Fl_Text_Display;  wrap:  T_FL_TEXT_DISPLAY_WRAP_MODE;  wrap_margin:  long) {.cdecl, importc: "Fl_Text_DisplayWrapMode", dynlib: fltk, discardable.}
    #_  Nobody knows what this function does.
    ## original: declare function Fl_Text_DisplayWrappedColumn(byval td as Fl_Text_Display ptr, byval row as long, byval column as long) as long
    proc Fl_Text_DisplayWrappedColumn* ( td:  ptr Fl_Text_Display;  row:  long;  column:  long):  long {.cdecl, importc: "Fl_Text_DisplayWrappedColumn", dynlib: fltk, discardable.}

    ## original: declare function Fl_Text_DisplayWrappedRow(byval td as Fl_Text_Display ptr, byval row as long) as long
    proc Fl_Text_DisplayWrappedRow* ( td:  ptr Fl_Text_Display;  row:  long):  long {.cdecl, importc: "Fl_Text_DisplayWrappedRow", dynlib: fltk, discardable.}
    #_  Convert an x pixel position into a column number and vice versa.
    ## original: declare function Fl_Text_DisplayXToCol(byval td as Fl_Text_Display ptr, byval x as double) as double
    proc Fl_Text_DisplayXToCol* ( td:  ptr Fl_Text_Display;  x:  double):  double {.cdecl, importc: "Fl_Text_DisplayXToCol", dynlib: fltk, discardable.}

    ## original: declare function Fl_Text_DisplayColToX(byval td as Fl_Text_Display ptr, byval col as double) as double
    proc Fl_Text_DisplayColToX* ( td:  ptr Fl_Text_Display;  col:  double):  double {.cdecl, importc: "Fl_Text_DisplayColToX", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Text_DisplaySetLinenumberAlign(byval td as Fl_Text_Display ptr, byval aligm as FL_ALIGN)
    proc Fl_Text_DisplaySetLinenumberAlign*( td:  ptr Fl_Text_Display;  aligm:  FL_ALIGN) {.cdecl, importc: "Fl_Text_DisplaySetLinenumberAlign", dynlib: fltk, discardable.}
    ## original: declare function Fl_Text_DisplayGetLinenumberAlign(byval td as Fl_Text_Display ptr) as FL_ALIGN
    proc Fl_Text_DisplayGetLinenumberAlign* ( td:  ptr Fl_Text_Display):  FL_ALIGN {.cdecl, importc: "Fl_Text_DisplayGetLinenumberAlign", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Text_DisplaySetLinenumberBGColor(byval td as Fl_Text_Display ptr, byval c as Fl_COLOR)
    proc Fl_Text_DisplaySetLinenumberBGColor*( td:  ptr Fl_Text_Display;  c:  Fl_COLOR) {.cdecl, importc: "Fl_Text_DisplaySetLinenumberBGColor", dynlib: fltk, discardable.}
    ## original: declare function Fl_Text_DisplayGetLinenumberBGColor(byval td as Fl_Text_Display ptr) as Fl_COLOR
    proc Fl_Text_DisplayGetLinenumberBGColor* ( td:  ptr Fl_Text_Display):  Fl_COLOR {.cdecl, importc: "Fl_Text_DisplayGetLinenumberBGColor", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Text_DisplaySetLinenumberFGColor(byval td as Fl_Text_Display ptr, byval c as Fl_COLOR)
    proc Fl_Text_DisplaySetLinenumberFGColor*( td:  ptr Fl_Text_Display;  c:  Fl_COLOR) {.cdecl, importc: "Fl_Text_DisplaySetLinenumberFGColor", dynlib: fltk, discardable.}
    ## original: declare function Fl_Text_DisplayGetLinenumberFGColor(byval td as Fl_Text_Display ptr) as Fl_COLOR
    proc Fl_Text_DisplayGetLinenumberFGColor* ( td:  ptr Fl_Text_Display):  Fl_COLOR {.cdecl, importc: "Fl_Text_DisplayGetLinenumberFGColor", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Text_DisplaySetLinenumberFont(byval td as Fl_Text_Display ptr, byval f as FL_FONT)
    proc Fl_Text_DisplaySetLinenumberFont*( td:  ptr Fl_Text_Display;  f:  FL_FONT) {.cdecl, importc: "Fl_Text_DisplaySetLinenumberFont", dynlib: fltk, discardable.}
    ## original: declare function Fl_Text_DisplayGetLinenumberFont(byval td as Fl_Text_Display ptr) as FL_FONT
    proc Fl_Text_DisplayGetLinenumberFont* ( td:  ptr Fl_Text_Display):  FL_FONT {.cdecl, importc: "Fl_Text_DisplayGetLinenumberFont", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Text_DisplaySetLinenumberFormat(byval td as Fl_Text_Display ptr, byval fmt as cstring)
    proc Fl_Text_DisplaySetLinenumberFormat*( td:  ptr Fl_Text_Display;  fmt:  cstring) {.cdecl, importc: "Fl_Text_DisplaySetLinenumberFormat", dynlib: fltk, discardable.}
    ## original: declare function Fl_Text_DisplayGetLinenumberFormat(byval td as Fl_Text_Display ptr) as cstring
    proc Fl_Text_DisplayGetLinenumberFormat* ( td:  ptr Fl_Text_Display):  cstring {.cdecl, importc: "Fl_Text_DisplayGetLinenumberFormat", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Text_DisplaySetLinenumberSize(byval td as Fl_Text_Display ptr, byval s as Fl_Fontsize)
    proc Fl_Text_DisplaySetLinenumberSize*( td:  ptr Fl_Text_Display;  s:  Fl_Fontsize) {.cdecl, importc: "Fl_Text_DisplaySetLinenumberSize", dynlib: fltk, discardable.}
    ## original: declare function Fl_Text_DisplayGetLinenumberSize(byval td as Fl_Text_Display ptr) as Fl_Fontsize
    proc Fl_Text_DisplayGetLinenumberSize* ( td:  ptr Fl_Text_Display):  Fl_Fontsize {.cdecl, importc: "Fl_Text_DisplayGetLinenumberSize", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Text_DisplaySetLinenumberWidth(byval td as Fl_Text_Display ptr, byval w as long)
    proc Fl_Text_DisplaySetLinenumberWidth*( td:  ptr Fl_Text_Display;  w:  long) {.cdecl, importc: "Fl_Text_DisplaySetLinenumberWidth", dynlib: fltk, discardable.}
    ## original: declare function Fl_Text_DisplayGetLinenumberWidth(byval td as Fl_Text_Display ptr) as long
    proc Fl_Text_DisplayGetLinenumberWidth* ( td:  ptr Fl_Text_Display):  long {.cdecl, importc: "Fl_Text_DisplayGetLinenumberWidth", dynlib: fltk, discardable.}

    #_ ################################################
    #_ # class Fl_Text_Editor extends Fl_Text_Display #
    #_ ################################################
    ## original: declare function Fl_Text_EditorNew(byval x as long, byval y as long, byval w as long, byval h as long, byval label as cstring=0) as Fl_Text_Editor ptr
    proc Fl_Text_EditorNew* ( x:  long;  y:  long;  w:  long;  h:  long;  label:  cstring=nil):  ptr Fl_Text_Editor {.cdecl, importc: "Fl_Text_EditorNew", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Text_EditorDelete(byref te as Fl_Text_Editor ptr)
    proc Fl_Text_EditorDelete*( te:  var ptr Fl_Text_Editor) {.cdecl, importc: "Fl_Text_EditorDelete", dynlib: fltk, discardable.}

    ## original: declare function Fl_Text_EditorHandle(byval te as Fl_Text_Editor ptr, byval e as FL_EVENT) as long
    proc Fl_Text_EditorHandle* ( te:  ptr Fl_Text_Editor;  e:  FL_EVENT):  long {.cdecl, importc: "Fl_Text_EditorHandle", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Text_EditorAddDefaultKeyBindings(byval te as Fl_Text_Editor ptr, byval list as Key_Binding ptr ptr)
    proc Fl_Text_EditorAddDefaultKeyBindings*( te:  ptr Fl_Text_Editor;  list:  ptr ptr Key_Binding) {.cdecl, importc: "Fl_Text_EditorAddDefaultKeyBindings", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Text_EditorAddKeyBinding(byval te as Fl_Text_Editor ptr, byval key as long, byval state as long, byval f as Key_Func)
    proc Fl_Text_EditorAddKeyBinding*( te:  ptr Fl_Text_Editor;  key:  long;  state:  long;  f:  Key_Func) {.cdecl, importc: "Fl_Text_EditorAddKeyBinding", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Text_EditorAddKeyBinding2(byval te as Fl_Text_Editor ptr, byval key as long, byval state as long, byval f as Key_Func, byval list as Key_Binding ptr ptr)
    proc Fl_Text_EditorAddKeyBinding2*( te:  ptr Fl_Text_Editor;  key:  long;  state:  long;  f:  Key_Func;  list:  ptr ptr Key_Binding) {.cdecl, importc: "Fl_Text_EditorAddKeyBinding2", dynlib: fltk, discardable.}

    ## original: declare function Fl_Text_EditorBoundKeyFunction(byval te as Fl_Text_Editor ptr, byval key as long, byval state as long) as Key_Func
    proc Fl_Text_EditorBoundKeyFunction* ( te:  ptr Fl_Text_Editor;  key:  long;  state:  long):  Key_Func {.cdecl, importc: "Fl_Text_EditorBoundKeyFunction", dynlib: fltk, discardable.}

    ## original: declare function Fl_Text_EditorBoundKeyFunction2(byval te as Fl_Text_Editor ptr, byval key as long, byval state as long, byval list as Key_Binding ptr) as Key_Func
    proc Fl_Text_EditorBoundKeyFunction2* ( te:  ptr Fl_Text_Editor;  key:  long;  state:  long;  list:  ptr Key_Binding):  Key_Func {.cdecl, importc: "Fl_Text_EditorBoundKeyFunction2", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Text_EditorDefaultKeyFunction(byval te as Fl_Text_Editor ptr, byval f as Key_Func)
    proc Fl_Text_EditorDefaultKeyFunction*( te:  ptr Fl_Text_Editor;  f:  Key_Func) {.cdecl, importc: "Fl_Text_EditorDefaultKeyFunction", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Text_EditorSetInsertMode(byval te as Fl_Text_Editor ptr, byval m as long)
    proc Fl_Text_EditorSetInsertMode*( te:  ptr Fl_Text_Editor;  m:  long) {.cdecl, importc: "Fl_Text_EditorSetInsertMode", dynlib: fltk, discardable.}
    ## original: declare function Fl_Text_EditorGetInsertMode(byval te as Fl_Text_Editor ptr) as long
    proc Fl_Text_EditorGetInsertMode* ( te:  ptr Fl_Text_Editor):  long {.cdecl, importc: "Fl_Text_EditorGetInsertMode", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Text_EditorRemoveAllKeyBindings(byval te as Fl_Text_Editor ptr)
    proc Fl_Text_EditorRemoveAllKeyBindings*( te:  ptr Fl_Text_Editor) {.cdecl, importc: "Fl_Text_EditorRemoveAllKeyBindings", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Text_EditorRemoveAllKeyBindings2(byval te as Fl_Text_Editor ptr, byval list as Key_Binding ptr ptr)
    proc Fl_Text_EditorRemoveAllKeyBindings2*( te:  ptr Fl_Text_Editor;  list:  ptr ptr Key_Binding) {.cdecl, importc: "Fl_Text_EditorRemoveAllKeyBindings2", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Text_EditorRemoveKeyBinding(byval te as Fl_Text_Editor ptr, byval key as long, byval state as long)
    proc Fl_Text_EditorRemoveKeyBinding*( te:  ptr Fl_Text_Editor;  key:  long;  state:  long) {.cdecl, importc: "Fl_Text_EditorRemoveKeyBinding", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Text_EditorRemoveKeyBinding2(byval te as Fl_Text_Editor ptr, byval key as long, byval state as long, byval list as Key_Binding ptr ptr)
    proc Fl_Text_EditorRemoveKeyBinding2*( te:  ptr Fl_Text_Editor;  key:  long;  state:  long;  list:  ptr ptr Key_Binding) {.cdecl, importc: "Fl_Text_EditorRemoveKeyBinding2", dynlib: fltk, discardable.}
    #_  Fl_Text_Editor key functions
    ## original: declare function kf_backspace (byval c as long, byval te as Fl_Text_Editor ptr) as long
    proc kf_backspace* ( c:  long;  te:  ptr Fl_Text_Editor):  long {.cdecl, importc: "kf_backspace", dynlib: fltk, discardable.}

    ## original: declare function kf_c_s_move  (byval c as long, byval te as Fl_Text_Editor ptr) as long
    proc kf_c_s_move* ( c:  long;  te:  ptr Fl_Text_Editor):  long {.cdecl, importc: "kf_c_s_move", dynlib: fltk, discardable.}

    ## original: declare function kf_copy      (byval c as long, byval te as Fl_Text_Editor ptr) as long
    proc kf_copy* ( c:  long;  te:  ptr Fl_Text_Editor):  long {.cdecl, importc: "kf_copy", dynlib: fltk, discardable.}

    ## original: declare function kf_ctrl_move (byval c as long, byval te as Fl_Text_Editor ptr) as long
    proc kf_ctrl_move* ( c:  long;  te:  ptr Fl_Text_Editor):  long {.cdecl, importc: "kf_ctrl_move", dynlib: fltk, discardable.}

    ## original: declare function kf_cut       (byval c as long, byval te as Fl_Text_Editor ptr) as long
    proc kf_cut* ( c:  long;  te:  ptr Fl_Text_Editor):  long {.cdecl, importc: "kf_cut", dynlib: fltk, discardable.}

    ## original: declare function kf_default   (byval c as long, byval te as Fl_Text_Editor ptr) as long
    proc kf_default* ( c:  long;  te:  ptr Fl_Text_Editor):  long {.cdecl, importc: "kf_default", dynlib: fltk, discardable.}

    ## original: declare function kf_delete    (byval c as long, byval te as Fl_Text_Editor ptr) as long
    proc kf_delete* ( c:  long;  te:  ptr Fl_Text_Editor):  long {.cdecl, importc: "kf_delete", dynlib: fltk, discardable.}

    ## original: declare function kf_down      (byval c as long, byval te as Fl_Text_Editor ptr) as long
    proc kf_down* ( c:  long;  te:  ptr Fl_Text_Editor):  long {.cdecl, importc: "kf_down", dynlib: fltk, discardable.}

    ## original: declare function kf_end       (byval c as long, byval te as Fl_Text_Editor ptr) as long
    proc kf_end* ( c:  long;  te:  ptr Fl_Text_Editor):  long {.cdecl, importc: "kf_end", dynlib: fltk, discardable.}

    ## original: declare function kf_enter     (byval c as long, byval te as Fl_Text_Editor ptr) as long
    proc kf_enter* ( c:  long;  te:  ptr Fl_Text_Editor):  long {.cdecl, importc: "kf_enter", dynlib: fltk, discardable.}

    ## original: declare function kf_home      (byval c as long, byval te as Fl_Text_Editor ptr) as long
    proc kf_home* ( c:  long;  te:  ptr Fl_Text_Editor):  long {.cdecl, importc: "kf_home", dynlib: fltk, discardable.}

    ## original: declare function kf_ignore    (byval c as long, byval te as Fl_Text_Editor ptr) as long
    proc kf_ignore* ( c:  long;  te:  ptr Fl_Text_Editor):  long {.cdecl, importc: "kf_ignore", dynlib: fltk, discardable.}

    ## original: declare function kf_insert    (byval c as long, byval te as Fl_Text_Editor ptr) as long
    proc kf_insert* ( c:  long;  te:  ptr Fl_Text_Editor):  long {.cdecl, importc: "kf_insert", dynlib: fltk, discardable.}

    ## original: declare function kf_left      (byval c as long, byval te as Fl_Text_Editor ptr) as long
    proc kf_left* ( c:  long;  te:  ptr Fl_Text_Editor):  long {.cdecl, importc: "kf_left", dynlib: fltk, discardable.}

    ## original: declare function kf_m_s_move  (byval c as long, byval te as Fl_Text_Editor ptr) as long
    proc kf_m_s_move* ( c:  long;  te:  ptr Fl_Text_Editor):  long {.cdecl, importc: "kf_m_s_move", dynlib: fltk, discardable.}

    ## original: declare function kf_meta_move (byval c as long, byval te as Fl_Text_Editor ptr) as long
    proc kf_meta_move* ( c:  long;  te:  ptr Fl_Text_Editor):  long {.cdecl, importc: "kf_meta_move", dynlib: fltk, discardable.}

    ## original: declare function kf_move      (byval c as long, byval te as Fl_Text_Editor ptr) as long
    proc kf_move* ( c:  long;  te:  ptr Fl_Text_Editor):  long {.cdecl, importc: "kf_move", dynlib: fltk, discardable.}

    ## original: declare function kf_page_down (byval c as long, byval te as Fl_Text_Editor ptr) as long
    proc kf_page_down* ( c:  long;  te:  ptr Fl_Text_Editor):  long {.cdecl, importc: "kf_page_down", dynlib: fltk, discardable.}

    ## original: declare function kf_page_up   (byval c as long, byval te as Fl_Text_Editor ptr) as long
    proc kf_page_up* ( c:  long;  te:  ptr Fl_Text_Editor):  long {.cdecl, importc: "kf_page_up", dynlib: fltk, discardable.}

    ## original: declare function kf_paste     (byval c as long, byval te as Fl_Text_Editor ptr) as long
    proc kf_paste* ( c:  long;  te:  ptr Fl_Text_Editor):  long {.cdecl, importc: "kf_paste", dynlib: fltk, discardable.}

    ## original: declare function kf_right     (byval c as long, byval te as Fl_Text_Editor ptr) as long
    proc kf_right* ( c:  long;  te:  ptr Fl_Text_Editor):  long {.cdecl, importc: "kf_right", dynlib: fltk, discardable.}

    ## original: declare function kf_select_all(byval c as long, byval te as Fl_Text_Editor ptr) as long
    proc kf_select_all* ( c:  long;  te:  ptr Fl_Text_Editor):  long {.cdecl, importc: "kf_select_all", dynlib: fltk, discardable.}

    ## original: declare function kf_shift_move(byval c as long, byval te as Fl_Text_Editor ptr) as long
    proc kf_shift_move* ( c:  long;  te:  ptr Fl_Text_Editor):  long {.cdecl, importc: "kf_shift_move", dynlib: fltk, discardable.}

    ## original: declare function kf_undo      (byval c as long, byval te as Fl_Text_Editor ptr) as long
    proc kf_undo* ( c:  long;  te:  ptr Fl_Text_Editor):  long {.cdecl, importc: "kf_undo", dynlib: fltk, discardable.}

    ## original: declare function kf_up_ alias "kf_up"(byval c as long, byval te as Fl_Text_Editor ptr) as long
    proc kf_up* (c:  long;  te:  ptr Fl_Text_Editor): long  {.cdecl, importc: "kf_up", dynlib: fltk, discardable.}

    #~ #_  NEW:
    #~ #_ ###########################################################
    #~ #_ # class Fl_Tree_Prefs is used by Fl_Tree_Item and Fl_Tree #
    #~ #_ ###########################################################
    type Fl_Tree_Prefs_TT = ref object
      #~ declare constructor
      labelfont:  FL_FONT         #_  label's font face
      #~ as Fl_Fontsize _labelsize    #_  label's font size
      #~ as long        _margintop    #_  --
      #~ as long        _marginleft   #_    |- tree's controllable margins
      #~ as long        _marginbottom #_  --
      #~ as long        _openchild_marginbottom #_  extra space below an open child tree
      #~ as long        _usericonmarginleft     #_  space to left of user icon (if any)
      #~ as long        _labelmarginleft        #_  space to left of label
      #~ as long        _widgetmarginleft       #_  space to left of widget
      #~ as long        _connectorwidth         #_  connector width (right of open/close icon)
      #~ as long        _linespacing            #_  vertical space between lines
      #~ as Fl_COLOR    _labelfgcolor           #_  label's foreground color
      #~ as Fl_COLOR    _labelbgcolor           #_  label's background color
      #~ as Fl_COLOR    _connectorcolor         #_  connector dotted line color
      #~ as Fl_TREE_CONNECTOR _connectorstyle   #_  connector line style
      #~ as Fl_Image ptr _openimage             #_  the 'open' icon [+]
      #~ as Fl_Image ptr _closeimage            #_  the 'close' icon [-]
      #~ as Fl_Image ptr _userimage             #_  user's own icon
      #~ as ubyte        _showcollapse          #_  1=show collapse icons, 0=don't
      #~ as ubyte        _showroot              #_  show the root item as part of the tree
      #~ as FL_TREE_SORT _sortorder             #_  none, ascening, descending, etc.
      #~ as ulong        _selectbox             #_  selection box type
      #~ as FL_TREE_SELECT _selectmode          #_  selection mode
      #~ as FL_TREE_ITEM_RESELECT_MODE     _itemreselectmode #_  controls item selection callback() behavior
      #~ as FL_TREE_ITEM_DRAW_MODE         _itemdrawmode     #_  controls how items draw label + widget()
      #~ as Fl_Tree_Item_Draw_Callback ptr _itemdrawcallback #_  callback to handle drawing items (0=none)
      #~ as any ptr _itemdrawuserdata      #_  data for drawing items (0=none)
    #~ end type

    #~ constructor Fl_Tree_Prefs_
      #~ _labelfont              = FL_HELVETICA
      #~ _labelsize              = FL_NORMAL_SIZE
      #~ _marginleft             = 6
      #~ _margintop              = 3
      #~ _marginbottom           = 20
      #~ _openchild_marginbottom = 0
      #~ _usericonmarginleft     = 3
      #~ _labelmarginleft        = 3
      #~ _widgetmarginleft       = 3
      #~ _linespacing            = 0
      #~ _labelfgcolor           = FL_BLACK
      #~ _labelbgcolor           = 0Xffffffff #_  we use this as 'transparent'
      #~ _connectorcolor         = 43
      #~ _connectorstyle         = FL_TREE_CONNECTOR_DOTTED
      #~ _openimage              = 0 #_  !!! todo @L_openpixmap
      #~ _closeimage             = 0 #_  !!! todo @L_closepixmap
      #~ _userimage              = 0
      #~ _showcollapse           = 1
      #~ _showroot               = 1
      #~ _connectorwidth         = 17
      #~ _sortorder              = FL_TREE_SORT_NONE
      #~ _selectbox              = FL_FLAT_BOX
      #~ _selectmode             = FL_TREE_SELECT_SINGLE
      #~ _itemreselectmode       = FL_TREE_SELECTABLE_ONCE
      #~ _itemdrawmode           = FL_TREE_ITEM_DRAW_DEFAULT
      #~ _itemdrawcallback       = 0
      #~ _itemdrawuserdata       = 0
      #~ #_  Let fltk's current 'scheme' affect defaults
      #~ if ( Fl_GetScheme()<>0 ) then
        #~ if ( *Fl_GetScheme()="gtk+") then
          #~ _selectbox = BoxType(FL_GTK_THIN_UP_BOX)
        #~ elseif ( *Fl_GetScheme()="plastic") then
          #~ _selectbox = BoxType(FL_PLASTIC_THIN_UP_BOX)
        #~ end if
      #~ end if
    #~ end constructor

    #_ #########################################
    #_ # class Fl_Tree_Item is used by Fl_Tree #
    #_ #########################################
    ## original: declare function Fl_Tree_ItemNew(byval tree as Fl_Tree ptr) as Fl_Tree_Item ptr
    proc Fl_Tree_ItemNew* ( tree:  ptr Fl_Tree):  ptr Fl_Tree_Item {.cdecl, importc: "Fl_Tree_ItemNew", dynlib: fltk, discardable.}
    #_  The item's x position relative to the window
    ## original: declare function Fl_Tree_ItemGetX(byval item as Fl_Tree_Item ptr) as long
    proc Fl_Tree_ItemGetX* ( item:  ptr Fl_Tree_Item):  long {.cdecl, importc: "Fl_Tree_ItemGetX", dynlib: fltk, discardable.}
    #_  The item's y position relative to the window
    ## original: declare function Fl_Tree_ItemGetY(byval item as Fl_Tree_Item ptr) as long
    proc Fl_Tree_ItemGetY* ( item:  ptr Fl_Tree_Item):  long {.cdecl, importc: "Fl_Tree_ItemGetY", dynlib: fltk, discardable.}
    #_  The entire item's width to right edge of Fl_Tree's inner width within scrollbars.
    ## original: declare function Fl_Tree_ItemGetW(byval item as Fl_Tree_Item ptr) as long
    proc Fl_Tree_ItemGetW* ( item:  ptr Fl_Tree_Item):  long {.cdecl, importc: "Fl_Tree_ItemGetW", dynlib: fltk, discardable.}
    #_  The item's height
    ## original: declare function Fl_Tree_ItemGetH(byval item as Fl_Tree_Item ptr) as long
    proc Fl_Tree_ItemGetH* ( item:  ptr Fl_Tree_Item):  long {.cdecl, importc: "Fl_Tree_ItemGetH", dynlib: fltk, discardable.}
    #_  The item's label x position relative to the window
    ## original: declare function Fl_Tree_ItemGetLabelX(byval item as Fl_Tree_Item ptr) as long
    proc Fl_Tree_ItemGetLabelX* ( item:  ptr Fl_Tree_Item):  long {.cdecl, importc: "Fl_Tree_ItemGetLabelX", dynlib: fltk, discardable.}
    #_  The item's label y position relative to the window
    ## original: declare function Fl_Tree_ItemGetlabelY(byval item as Fl_Tree_Item ptr) as long
    proc Fl_Tree_ItemGetlabelY* ( item:  ptr Fl_Tree_Item):  long {.cdecl, importc: "Fl_Tree_ItemGetlabelY", dynlib: fltk, discardable.}
    #_  The item's maximum label width to right edge of Fl_Tree's inner width within scrollbars.
    ## original: declare function Fl_Tree_ItemGetLabelW(byval item as Fl_Tree_Item ptr) as long
    proc Fl_Tree_ItemGetLabelW* ( item:  ptr Fl_Tree_Item):  long {.cdecl, importc: "Fl_Tree_ItemGetLabelW", dynlib: fltk, discardable.}
    #_  The item's label height
    ## original: declare function Fl_Tree_ItemGetLabelH(byval item as Fl_Tree_Item ptr) as long
    proc Fl_Tree_ItemGetLabelH* ( item:  ptr Fl_Tree_Item):  long {.cdecl, importc: "Fl_Tree_ItemGetLabelH", dynlib: fltk, discardable.}

    ## original: declare function Fl_Tree_ItemDrawItemContent(byval item as Fl_Tree_Item ptr, byval render as long) as long
    proc Fl_Tree_ItemDrawItemContent* ( item:  ptr Fl_Tree_Item;  render:  long):  long {.cdecl, importc: "Fl_Tree_ItemDrawItemContent", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Tree_ItemDraw(byval item as Fl_Tree_Item ptr, byval x as long, byref y as long, byval w as long, byval itemfocus as Fl_Tree_Item ptr, byref tree_item_xmax as long, byval lastchild as long=1, byval render as long=1)
    proc Fl_Tree_ItemDraw*( item:  ptr Fl_Tree_Item;  x:  long;  y:  var long;  w:  long;  itemfocus:  var ptr Fl_Tree_Item;  tree_item_xmax:  long;  lastchild:  long=1;  render:  long=1) {.cdecl, importc: "Fl_Tree_ItemDraw", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Tree_ItemShowSelf(byval item as Fl_Tree_Item ptr, byval indent as cstring=@"")
    proc Fl_Tree_ItemShowSelf*( item:  ptr Fl_Tree_Item;  indent:  cstring="") {.cdecl, importc: "Fl_Tree_ItemShowSelf", dynlib: fltk, discardable.}

    #_  Set/Get a user-data value for the item.
    ## original: declare sub      Fl_Tree_ItemSetUserData(byval item as Fl_Tree_Item ptr, byval userdata as any ptr)
    proc Fl_Tree_ItemSetUserData*( item:  ptr Fl_Tree_Item;  userdata:  pointer) {.cdecl, importc: "Fl_Tree_ItemSetUserData", dynlib: fltk, discardable.}
    ## original: declare function Fl_Tree_ItemGetUserData(byval item as Fl_Tree_Item ptr) as any ptr
    proc Fl_Tree_ItemGetUserData* ( item:  ptr Fl_Tree_Item):  pointer {.cdecl, importc: "Fl_Tree_ItemGetUserData", dynlib: fltk, discardable.}

    #_  Set/Get item's label
    ## original: declare sub      Fl_Tree_ItemSetLabel(byval item as Fl_Tree_Item ptr, byval newlabel as cstring)
    proc Fl_Tree_ItemSetLabel*( item:  ptr Fl_Tree_Item;  newlabel:  cstring) {.cdecl, importc: "Fl_Tree_ItemSetLabel", dynlib: fltk, discardable.}
    ## original: declare function Fl_Tree_ItemGetLabel(byval item as Fl_Tree_Item ptr) as cstring
    proc Fl_Tree_ItemGetLabel* ( item:  ptr Fl_Tree_Item):  cstring {.cdecl, importc: "Fl_Tree_ItemGetLabel", dynlib: fltk, discardable.}

    #_  Set/Get item's label font face.
    ## original: declare sub      Fl_Tree_ItemSetLabelfont(byval item as Fl_Tree_Item ptr, byval font as FL_FONT)
    proc Fl_Tree_ItemSetLabelfont*( item:  ptr Fl_Tree_Item;  font:  FL_FONT) {.cdecl, importc: "Fl_Tree_ItemSetLabelfont", dynlib: fltk, discardable.}
    ## original: declare function Fl_Tree_ItemLabelfont(byval item as Fl_Tree_Item ptr) as FL_FONT
    proc Fl_Tree_ItemLabelfont* ( item:  ptr Fl_Tree_Item):  FL_FONT {.cdecl, importc: "Fl_Tree_ItemLabelfont", dynlib: fltk, discardable.}

    #_  Set/Get item's label font size.
    ## original: declare sub      Fl_Tree_ItemSetLabelsize(byval item as Fl_Tree_Item ptr, byval size as Fl_Fontsize)
    proc Fl_Tree_ItemSetLabelsize*( item:  ptr Fl_Tree_Item;  size:  Fl_Fontsize) {.cdecl, importc: "Fl_Tree_ItemSetLabelsize", dynlib: fltk, discardable.}
    ## original: declare function Fl_Tree_ItemGetLabelsize(byval item as Fl_Tree_Item ptr) as Fl_Fontsize
    proc Fl_Tree_ItemGetLabelsize* ( item:  ptr Fl_Tree_Item):  Fl_Fontsize {.cdecl, importc: "Fl_Tree_ItemGetLabelsize", dynlib: fltk, discardable.}

    #_  Set/Get item's label foreground text color.
    ## original: declare sub      Fl_Tree_ItemSetLabelfgcolor(byval item as Fl_Tree_Item ptr, byval c as Fl_COLOR)
    proc Fl_Tree_ItemSetLabelfgcolor*( item:  ptr Fl_Tree_Item;  c:  Fl_COLOR) {.cdecl, importc: "Fl_Tree_ItemSetLabelfgcolor", dynlib: fltk, discardable.}
    ## original: declare function Fl_Tree_ItemGetLabelfgcolor(byval item as Fl_Tree_Item ptr) as Fl_COLOR
    proc Fl_Tree_ItemGetLabelfgcolor* ( item:  ptr Fl_Tree_Item):  Fl_COLOR {.cdecl, importc: "Fl_Tree_ItemGetLabelfgcolor", dynlib: fltk, discardable.}

    #_  Set/Get item's label text color. Alias for labelfgcolor(Fl_COLOR)).
    ## original: declare sub      Fl_Tree_ItemSetLabelcolor(byval item as Fl_Tree_Item ptr, byval c as Fl_COLOR)
    proc Fl_Tree_ItemSetLabelcolor*( item:  ptr Fl_Tree_Item;  c:  Fl_COLOR) {.cdecl, importc: "Fl_Tree_ItemSetLabelcolor", dynlib: fltk, discardable.}
    ## original: declare function Fl_Tree_ItemGetLabelcolor(byval item as Fl_Tree_Item ptr) as Fl_COLOR
    proc Fl_Tree_ItemGetLabelcolor* ( item:  ptr Fl_Tree_Item):  Fl_COLOR {.cdecl, importc: "Fl_Tree_ItemGetLabelcolor", dynlib: fltk, discardable.}

    #_  Set/Get item's label background color.
    #_  A special case is made for color 0Xffffffff which uses the parent tree's bg color.
    ## original: declare sub      Fl_Tree_ItemSetLabelbgcolor(byval item as Fl_Tree_Item ptr, byval c as Fl_COLOR)
    proc Fl_Tree_ItemSetLabelbgcolor*( item:  ptr Fl_Tree_Item;  c:  Fl_COLOR) {.cdecl, importc: "Fl_Tree_ItemSetLabelbgcolor", dynlib: fltk, discardable.}
    ## original: declare function Fl_Tree_ItemGetLabelbgcolor(byval item as Fl_Tree_Item ptr) as Fl_COLOR
    proc Fl_Tree_ItemGetLabelbgcolor* ( item:  ptr Fl_Tree_Item):  Fl_COLOR {.cdecl, importc: "Fl_Tree_ItemGetLabelbgcolor", dynlib: fltk, discardable.}

    #_  Assign /return an FLTK widget to/from this item.
    ## original: declare sub      Fl_Tree_ItemSetWidget(byval item as Fl_Tree_Item ptr, byval wgft as Fl_Widget ptr)
    proc Fl_Tree_ItemSetWidget*( item:  ptr Fl_Tree_Item;  wgft:  ptr Fl_Widget) {.cdecl, importc: "Fl_Tree_ItemSetWidget", dynlib: fltk, discardable.}
    ## original: declare function Fl_Tree_ItemGetWidget(byval item as Fl_Tree_Item ptr) as const Fl_Widget ptr
    proc Fl_Tree_ItemGetWidget* ( item:  ptr Fl_Tree_Item):  ptr Fl_Widget {.cdecl, importc: "Fl_Tree_ItemGetWidget", dynlib: fltk, discardable.}

    #_  Return the number of children this item has.
    ## original: declare function Fl_Tree_ItemGetChildren(byval item as Fl_Tree_Item ptr) as long
    proc Fl_Tree_ItemGetChildren* ( item:  ptr Fl_Tree_Item):  long {.cdecl, importc: "Fl_Tree_ItemGetChildren", dynlib: fltk, discardable.}
    #_  Return the child item for the given 'index'.
    ## original: declare function Fl_Tree_ItemGetChild(byval item as Fl_Tree_Item ptr, byval index as long) as Fl_Tree_Item ptr
    proc Fl_Tree_ItemGetChild* ( item:  ptr Fl_Tree_Item;  index:  long):  ptr Fl_Tree_Item {.cdecl, importc: "Fl_Tree_ItemGetChild", dynlib: fltk, discardable.}
    #_  Return the const child item for the given 'index'.
    ## original: declare function Fl_Tree_ItemGetConstChild(byval item as Fl_Tree_Item ptr, byval t as long) as const Fl_Tree_Item ptr
    proc Fl_Tree_ItemGetConstChild* ( item:  ptr Fl_Tree_Item;  t:  long):  ptr Fl_Tree_Item {.cdecl, importc: "Fl_Tree_ItemGetConstChild", dynlib: fltk, discardable.}
    #_  See if this item has children.
    ## original: declare function Fl_Tree_ItemHasChildren(byval item as Fl_Tree_Item ptr) as long
    proc Fl_Tree_ItemHasChildren* ( item:  ptr Fl_Tree_Item):  long {.cdecl, importc: "Fl_Tree_ItemHasChildren", dynlib: fltk, discardable.}

    ## original: declare function Fl_Tree_ItemFindChildByName(byval item as Fl_Tree_Item ptr, byval nam as cstring) as long
    proc Fl_Tree_ItemFindChildByName* ( item:  ptr Fl_Tree_Item;  nam:  cstring):  long {.cdecl, importc: "Fl_Tree_ItemFindChildByName", dynlib: fltk, discardable.}

    ## original: declare function Fl_Tree_ItemFindChildByItem(byval item as Fl_Tree_Item ptr, byval item as Fl_Tree_Item ptr) as long
    proc Fl_Tree_ItemFindChildByItem* ( item1:  ptr Fl_Tree_Item;  item2:  ptr Fl_Tree_Item):  long {.cdecl, importc: "Fl_Tree_ItemFindChildByItem", dynlib: fltk, discardable.}

    ## original: declare function Fl_Tree_ItemRemoveChild(byval item as Fl_Tree_Item ptr, byval item as Fl_Tree_Item ptr) as long
    proc Fl_Tree_ItemRemoveChild* ( item1:  ptr Fl_Tree_Item;  item2:  ptr Fl_Tree_Item):  long {.cdecl, importc: "Fl_Tree_ItemRemoveChild", dynlib: fltk, discardable.}

    ## original: declare function Fl_Tree_ItemRemoveChildSetLabel(byval item as Fl_Tree_Item ptr, byval newlabel as cstring) as long
    proc Fl_Tree_ItemRemoveChildSetLabel* ( item1:  ptr Fl_Tree_Item;  newlabel:  cstring):  long {.cdecl, importc: "Fl_Tree_ItemRemoveChildSetLabel", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Tree_ItemClearChildren(byval item as Fl_Tree_Item ptr)
    proc Fl_Tree_ItemClearChildren*( item:  ptr Fl_Tree_Item) {.cdecl, importc: "Fl_Tree_ItemClearChildren", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Tree_ItemSwapChildrenByIndex(byval item as Fl_Tree_Item ptr, byval ax as long, byval bx as long)
    proc Fl_Tree_ItemSwapChildrenByIndex*( item:  ptr Fl_Tree_Item;  ax:  long;  bx:  long) {.cdecl, importc: "Fl_Tree_ItemSwapChildrenByIndex", dynlib: fltk, discardable.}

    ## original: declare function Fl_Tree_ItemSwapChildren(byval item as Fl_Tree_Item ptr, byval a as Fl_Tree_Item ptr, byval b as Fl_Tree_Item ptr) as long
    proc Fl_Tree_ItemSwapChildren* ( item:  ptr Fl_Tree_Item;  a:  ptr Fl_Tree_Item;  b:  ptr Fl_Tree_Item):  long {.cdecl, importc: "Fl_Tree_ItemSwapChildren", dynlib: fltk, discardable.}

    ## original: declare function Fl_Tree_ItemFindConstChildItemByName(byval item as Fl_Tree_Item ptr, byval nam as cstring) as const Fl_Tree_Item ptr
    proc Fl_Tree_ItemFindConstChildItemByName* ( item:  ptr Fl_Tree_Item;  nam:  cstring):  ptr Fl_Tree_Item {.cdecl, importc: "Fl_Tree_ItemFindConstChildItemByName", dynlib: fltk, discardable.}

    ## original: declare function Fl_Tree_ItemFindChildItemByName(byval item as Fl_Tree_Item ptr, byval nam as cstring) as Fl_Tree_Item ptr
    proc Fl_Tree_ItemFindChildItemByName* ( item:  ptr Fl_Tree_Item;  nam:  cstring):  ptr Fl_Tree_Item {.cdecl, importc: "Fl_Tree_ItemFindChildItemByName", dynlib: fltk, discardable.}

    ## original: declare function Fl_Tree_ItemFindConstChildItem(byval item as Fl_Tree_Item ptr, byval arr as cstring ptr) as const Fl_Tree_Item ptr
    proc Fl_Tree_ItemFindConstChildItem* ( item:  ptr Fl_Tree_Item;  arr:  ptr cstring):  ptr Fl_Tree_Item {.cdecl, importc: "Fl_Tree_ItemFindConstChildItem", dynlib: fltk, discardable.}

    ## original: declare function Fl_Tree_ItemFindChildItem(byval item as Fl_Tree_Item ptr, byval arr as cstring ptr) as Fl_Tree_Item ptr
    proc Fl_Tree_ItemFindChildItem* ( item:  ptr Fl_Tree_Item;  arr:  ptr cstring):  ptr Fl_Tree_Item {.cdecl, importc: "Fl_Tree_ItemFindChildItem", dynlib: fltk, discardable.}

    ## original: declare function Fl_Tree_ItemFindConstItem(byval item as Fl_Tree_Item ptr, byval arr as cstring ptr) as const Fl_Tree_Item ptr
    proc Fl_Tree_ItemFindConstItem* ( item:  ptr Fl_Tree_Item;  arr:  ptr cstring):  ptr Fl_Tree_Item {.cdecl, importc: "Fl_Tree_ItemFindConstItem", dynlib: fltk, discardable.}

    ## original: declare function Fl_Tree_ItemFindItem(byval item as Fl_Tree_Item ptr, byval arr as cstring ptr) as Fl_Tree_Item ptr
    proc Fl_Tree_ItemFindItem* ( item:  ptr Fl_Tree_Item;  arr:  ptr cstring):  ptr Fl_Tree_Item {.cdecl, importc: "Fl_Tree_ItemFindItem", dynlib: fltk, discardable.}
    #_  Adding items
    ## original: declare function Fl_Tree_ItemAdd(byval item as Fl_Tree_Item ptr, byref prefs as const Fl_Tree_Prefs_, byval arr as cstring ptr) as Fl_Tree_Item ptr
    proc Fl_Tree_ItemAdd* ( item:  ptr Fl_Tree_Item;  prefs:  var Fl_Tree_Prefs_TT;  arr:  ptr cstring):  ptr Fl_Tree_Item {.cdecl, importc: "Fl_Tree_ItemAdd", dynlib: fltk, discardable.}

    ## original: declare function Fl_Tree_ItemAdd2(byval item as Fl_Tree_Item ptr, byref prefs as const Fl_Tree_Prefs_, byval new_label as cstring) as Fl_Tree_Item ptr
    proc Fl_Tree_ItemAdd2* ( item:  ptr Fl_Tree_Item;  prefs:  var Fl_Tree_Prefs_TT;  new_label:  cstring):  ptr Fl_Tree_Item {.cdecl, importc: "Fl_Tree_ItemAdd2", dynlib: fltk, discardable.}

    ## original: declare function Fl_Tree_ItemAddItem(byval item as Fl_Tree_Item ptr, byref prefs as const Fl_Tree_Prefs_, byval new_label as cstring, byval newitem as Fl_Tree_Item ptr) as Fl_Tree_Item ptr
    proc Fl_Tree_ItemAddItem* ( item:  ptr Fl_Tree_Item;  prefs:  var Fl_Tree_Prefs_TT;  new_label:  cstring;  newitem:  ptr Fl_Tree_Item):  ptr Fl_Tree_Item {.cdecl, importc: "Fl_Tree_ItemAddItem", dynlib: fltk, discardable.}

    ## original: declare function Fl_Tree_ItemAddItem2(byval item as Fl_Tree_Item ptr, byref prefs as const Fl_Tree_Prefs_, byval arr as cstring ptr, byval newitem as Fl_Tree_Item ptr) as Fl_Tree_Item ptr
    proc Fl_Tree_ItemAddItem2* ( item:  ptr Fl_Tree_Item;  prefs:  var Fl_Tree_Prefs_TT;  arr:  ptr cstring;  newitem:  ptr Fl_Tree_Item):  ptr Fl_Tree_Item {.cdecl, importc: "Fl_Tree_ItemAddItem2", dynlib: fltk, discardable.}

    ## original: declare function Fl_Tree_ItemReplace(byval item as Fl_Tree_Item ptr, byval newitem as Fl_Tree_Item ptr) as Fl_Tree_Item ptr
    proc Fl_Tree_ItemReplace* ( item:  ptr Fl_Tree_Item;  newitem:  ptr Fl_Tree_Item):  ptr Fl_Tree_Item {.cdecl, importc: "Fl_Tree_ItemReplace", dynlib: fltk, discardable.}

    ## original: declare function Fl_Tree_ItemReplaceChild(byval item as Fl_Tree_Item ptr, byval oldtem as Fl_Tree_Item ptr, byval newitem as Fl_Tree_Item ptr) as Fl_Tree_Item ptr
    proc Fl_Tree_ItemReplaceChild* ( item:  ptr Fl_Tree_Item;  oldtem:  ptr Fl_Tree_Item;  newitem:  ptr Fl_Tree_Item):  ptr Fl_Tree_Item {.cdecl, importc: "Fl_Tree_ItemReplaceChild", dynlib: fltk, discardable.}

    ## original: declare function Fl_Tree_ItemInsert(byval item as Fl_Tree_Item ptr, byref prefs as const Fl_Tree_Prefs_, byval new_label as cstring, byval pos as long) as Fl_Tree_Item ptr
    proc Fl_Tree_ItemInsert* ( item:  ptr Fl_Tree_Item;  prefs:  var Fl_Tree_Prefs_TT;  new_label:  cstring;  pos:  long):  ptr Fl_Tree_Item {.cdecl, importc: "Fl_Tree_ItemInsert", dynlib: fltk, discardable.}

    ## original: declare function Fl_Tree_ItemInsertAbove(byval item as Fl_Tree_Item ptr, byref prefs as const Fl_Tree_Prefs_, byval new_label as cstring) as Fl_Tree_Item ptr
    proc Fl_Tree_ItemInsertAbove* ( item:  ptr Fl_Tree_Item;  prefs:  var Fl_Tree_Prefs_TT;  new_label:  cstring):  ptr Fl_Tree_Item {.cdecl, importc: "Fl_Tree_ItemInsertAbove", dynlib: fltk, discardable.}

    ## original: declare function Fl_Tree_ItemDeparent(byval item as Fl_Tree_Item ptr, byval index as long) as Fl_Tree_Item ptr
    proc Fl_Tree_ItemDeparent* ( item:  ptr Fl_Tree_Item;  index:  long):  ptr Fl_Tree_Item {.cdecl, importc: "Fl_Tree_ItemDeparent", dynlib: fltk, discardable.}

    ## original: declare function Fl_Tree_ItemReparent(byval item as Fl_Tree_Item ptr, byval newchild as Fl_Tree_Item ptr, byval index as long) as long
    proc Fl_Tree_ItemReparent* ( item:  ptr Fl_Tree_Item;  newchild:  ptr Fl_Tree_Item;  index:  long):  long {.cdecl, importc: "Fl_Tree_ItemReparent", dynlib: fltk, discardable.}

    ## original: declare function Fl_Tree_ItemMove(byval item as Fl_Tree_Item ptr, byval _to as long, byval from as long) as long
    proc Fl_Tree_ItemMove* ( item:  ptr Fl_Tree_Item;  to:  long;  from_TT:  long):  long {.cdecl, importc: "Fl_Tree_ItemMove", dynlib: fltk, discardable.}

    ## original: declare function Fl_Tree_ItemMoveItem(byval item as Fl_Tree_Item ptr, byval other as Fl_Tree_Item ptr, byval op as long, byval pos as long) as long
    proc Fl_Tree_ItemMoveItem* ( item:  ptr Fl_Tree_Item;  other:  ptr Fl_Tree_Item;  op:  long;  pos:  long):  long {.cdecl, importc: "Fl_Tree_ItemMoveItem", dynlib: fltk, discardable.}

    ## original: declare function Fl_Tree_ItemMoveAbove(byval item as Fl_Tree_Item ptr, byval other as Fl_Tree_Item ptr) as long
    proc Fl_Tree_ItemMoveAbove* ( item:  ptr Fl_Tree_Item;  other:  ptr Fl_Tree_Item):  long {.cdecl, importc: "Fl_Tree_ItemMoveAbove", dynlib: fltk, discardable.}

    ## original: declare function Fl_Tree_ItemMoveBelow(byval item as Fl_Tree_Item ptr, byval other as Fl_Tree_Item ptr) as long
    proc Fl_Tree_ItemMoveBelow* ( item:  ptr Fl_Tree_Item;  other:  ptr Fl_Tree_Item):  long {.cdecl, importc: "Fl_Tree_ItemMoveBelow", dynlib: fltk, discardable.}

    ## original: declare function Fl_Tree_ItemMoveInto(byval item as Fl_Tree_Item ptr, byval other as Fl_Tree_Item ptr, byval pos as long) as long
    proc Fl_Tree_ItemMoveInto* ( item:  ptr Fl_Tree_Item;  other:  ptr Fl_Tree_Item;  pos:  long):  long {.cdecl, importc: "Fl_Tree_ItemMoveInto", dynlib: fltk, discardable.}

    ## original: declare function Fl_Tree_ItemDepth(byval item as Fl_Tree_Item ptr) as long
    proc Fl_Tree_ItemDepth* ( item:  ptr Fl_Tree_Item):  long {.cdecl, importc: "Fl_Tree_ItemDepth", dynlib: fltk, discardable.}

    ## original: declare function Fl_Tree_ItemPrev(byval item as Fl_Tree_Item ptr) as Fl_Tree_Item ptr
    proc Fl_Tree_ItemPrev* ( item:  ptr Fl_Tree_Item):  ptr Fl_Tree_Item {.cdecl, importc: "Fl_Tree_ItemPrev", dynlib: fltk, discardable.}

    ## original: declare function Fl_Tree_ItemNext(byval item as Fl_Tree_Item ptr) as Fl_Tree_Item ptr
    proc Fl_Tree_ItemNext* ( item:  ptr Fl_Tree_Item):  ptr Fl_Tree_Item {.cdecl, importc: "Fl_Tree_ItemNext", dynlib: fltk, discardable.}

    ## original: declare function Fl_Tree_ItemNextSibling(byval item as Fl_Tree_Item ptr) as Fl_Tree_Item ptr
    proc Fl_Tree_ItemNextSibling* ( item:  ptr Fl_Tree_Item):  ptr Fl_Tree_Item {.cdecl, importc: "Fl_Tree_ItemNextSibling", dynlib: fltk, discardable.}

    ## original: declare function Fl_Tree_ItemPrevSibling(byval item as Fl_Tree_Item ptr) as Fl_Tree_Item ptr
    proc Fl_Tree_ItemPrevSibling* ( item:  ptr Fl_Tree_Item):  ptr Fl_Tree_Item {.cdecl, importc: "Fl_Tree_ItemPrevSibling", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Tree_ItemUpdatePrevNext(byval item as Fl_Tree_Item ptr, byval index as long)
    proc Fl_Tree_ItemUpdatePrevNext*( item:  ptr Fl_Tree_Item;  index:  long) {.cdecl, importc: "Fl_Tree_ItemUpdatePrevNext", dynlib: fltk, discardable.}

    ## original: declare function Fl_Tree_ItemNextDisplayed(byval item as Fl_Tree_Item ptr, byref prefs as Fl_Tree_Prefs_) as Fl_Tree_Item ptr
    proc Fl_Tree_ItemNextDisplayed* ( item:  ptr Fl_Tree_Item;  prefs:  var Fl_Tree_Prefs_TT):  ptr Fl_Tree_Item {.cdecl, importc: "Fl_Tree_ItemNextDisplayed", dynlib: fltk, discardable.}

    ## original: declare function Fl_Tree_ItemPrevDisplayed(byval item as Fl_Tree_Item ptr, byref prefs as Fl_Tree_Prefs_) as Fl_Tree_Item ptr
    proc Fl_Tree_ItemPrevDisplayed* ( item:  ptr Fl_Tree_Item;  prefs:  var Fl_Tree_Prefs_TT):  ptr Fl_Tree_Item {.cdecl, importc: "Fl_Tree_ItemPrevDisplayed", dynlib: fltk, discardable.}
    #_  Return the parent for this item. Returns NULL if we are the root.
    ## original: declare function Fl_Tree_ItemGetParent(byval item as Fl_Tree_Item ptr) as Fl_Tree_Item ptr
    proc Fl_Tree_ItemGetParent* ( item:  ptr Fl_Tree_Item):  ptr Fl_Tree_Item {.cdecl, importc: "Fl_Tree_ItemGetParent", dynlib: fltk, discardable.}
    #_  Return the const parent for this item. Returns NULL if we are the root.
    ## original: declare function Fl_Tree_ItemGetConstParent(byval item as Fl_Tree_Item ptr) as const Fl_Tree_Item ptr
    proc Fl_Tree_ItemGetConstParent* ( item:  ptr Fl_Tree_Item):  ptr Fl_Tree_Item {.cdecl, importc: "Fl_Tree_ItemGetConstParent", dynlib: fltk, discardable.}
    #_  Set the parent for this item. Should only be used by Fl_Tree's internals.
    ## original: declare sub      Fl_Tree_ItemSetParent(byval item as Fl_Tree_Item ptr, byval other as Fl_Tree_Item ptr)
    proc Fl_Tree_ItemSetParent*( item:  ptr Fl_Tree_Item;  other:  ptr Fl_Tree_Item) {.cdecl, importc: "Fl_Tree_ItemSetParent", dynlib: fltk, discardable.}
    ## original: declare function Fl_Tree_ItemGetPrefs(byval item as Fl_Tree_Item ptr) byref as const Fl_Tree_Prefs_
    proc Fl_Tree_ItemGetPrefs* ( item:  ptr Fl_Tree_Item):  var Fl_Tree_Prefs_TT {.cdecl, importc: "Fl_Tree_ItemGetPrefs", dynlib: fltk, discardable.}
    #_  Return the tree for this item.
    ## original: declare function Fl_Tree_ItemGetTree(byval item as Fl_Tree_Item ptr) as const Fl_Tree
    proc Fl_Tree_ItemGetTree* ( item:  ptr Fl_Tree_Item):  Fl_Tree {.cdecl, importc: "Fl_Tree_ItemGetTree", dynlib: fltk, discardable.}
    #_  State
    ## original: declare sub      Fl_Tree_ItemOpen(byval item as Fl_Tree_Item ptr)
    proc Fl_Tree_ItemOpen*( item:  ptr Fl_Tree_Item) {.cdecl, importc: "Fl_Tree_ItemOpen", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Tree_ItemClose(byval item as Fl_Tree_Item ptr)
    proc Fl_Tree_ItemClose*( item:  ptr Fl_Tree_Item) {.cdecl, importc: "Fl_Tree_ItemClose", dynlib: fltk, discardable.}
    #_  See if the item is 'open'.
    ## original: declare function Fl_Tree_ItemIsOpen(byval item as Fl_Tree_Item ptr) as long
    proc Fl_Tree_ItemIsOpen* ( item:  ptr Fl_Tree_Item):  long {.cdecl, importc: "Fl_Tree_ItemIsOpen", dynlib: fltk, discardable.}
    #_  See if the item is 'closed'.
    ## original: declare function Fl_Tree_ItemIsClose(byval item as Fl_Tree_Item ptr) as long
    proc Fl_Tree_ItemIsClose* ( item:  ptr Fl_Tree_Item):  long {.cdecl, importc: "Fl_Tree_ItemIsClose", dynlib: fltk, discardable.}
    #_  Toggle the item's open/closed state.
    ## original: declare sub      Fl_Tree_ItemOpenToggle(byval item as Fl_Tree_Item ptr)
    proc Fl_Tree_ItemOpenToggle*( item:  ptr Fl_Tree_Item) {.cdecl, importc: "Fl_Tree_ItemOpenToggle", dynlib: fltk, discardable.}
    #_  Change the item's selection state to the optionally specified 'val'.
    #_  If 'v' is not specified, the item will be selected.
    ## original: declare sub      Fl_Tree_ItemSelect(byval item as Fl_Tree_Item ptr, byval v as long=1)
    proc Fl_Tree_ItemSelect*( item:  ptr Fl_Tree_Item;  v:  long=1) {.cdecl, importc: "Fl_Tree_ItemSelect", dynlib: fltk, discardable.}
    #_  Toggle the item's selection state.
    ## original: declare sub      Fl_Tree_ItemSelectToggle(byval item as Fl_Tree_Item ptr)
    proc Fl_Tree_ItemSelectToggle*( item:  ptr Fl_Tree_Item) {.cdecl, importc: "Fl_Tree_ItemSelectToggle", dynlib: fltk, discardable.}
    #_  Select item and all its children.
    #_  Returns count of how many items were in the 'deselected' state, ie. how many items were "changed".
    ## original: declare function Fl_Tree_ItemSelectAll(byval item as Fl_Tree_Item ptr) as long
    proc Fl_Tree_ItemSelectAll* ( item:  ptr Fl_Tree_Item):  long {.cdecl, importc: "Fl_Tree_ItemSelectAll", dynlib: fltk, discardable.}
    #_  Disable the item's selection state.
    ## original: declare sub      Fl_Tree_ItemDeselect(byval item as Fl_Tree_Item ptr)
    proc Fl_Tree_ItemDeselect*( item:  ptr Fl_Tree_Item) {.cdecl, importc: "Fl_Tree_ItemDeselect", dynlib: fltk, discardable.}
    #_  Deselect item and all its children.
    #_  Returns count of how many items were in the 'selected' state, ie. how many items were "changed".
    ## original: declare function Fl_Tree_ItemDeselectAll(byval item as Fl_Tree_Item ptr) as long
    proc Fl_Tree_ItemDeselectAll* ( item:  ptr Fl_Tree_Item):  long {.cdecl, importc: "Fl_Tree_ItemDeselectAll", dynlib: fltk, discardable.}
    #_  See if the item is selected.
    ## original: declare function Fl_Tree_ItemIsSelected(byval item as Fl_Tree_Item ptr) as ubyte
    proc Fl_Tree_ItemIsSelected* ( item:  ptr Fl_Tree_Item):  ubyte {.cdecl, importc: "Fl_Tree_ItemIsSelected", dynlib: fltk, discardable.}
    #_  Change the item's activation state to the optionally specified 'v'.
    #_  When deactivated, the item will be 'grayed out'; the callback()
    #_  won't be invoked if the user clicks on the label. If a widget()
    #_  is associated with the item, its activation state will be changed as well.
    #_  If 'v' is not specified, the item will be activated.
    ## original: declare sub      Fl_Tree_ItemActivate(byval item as Fl_Tree_Item ptr, byval v as long=1)
    proc Fl_Tree_ItemActivate*( item:  ptr Fl_Tree_Item;  v:  long=1) {.cdecl, importc: "Fl_Tree_ItemActivate", dynlib: fltk, discardable.}
    #_  Deactivate the item; the callback() won't be invoked when clicked. Same as activate(0)
    ## original: declare sub      Fl_Tree_ItemDeactivate(byval item as Fl_Tree_Item ptr)
    proc Fl_Tree_ItemDeactivate*( item:  ptr Fl_Tree_Item) {.cdecl, importc: "Fl_Tree_ItemDeactivate", dynlib: fltk, discardable.}
    #_  See if the item is activated.
    ## original: declare function Fl_Tree_ItemIsActivated(byval item as Fl_Tree_Item ptr) as ubyte
    proc Fl_Tree_ItemIsActivated* ( item:  ptr Fl_Tree_Item):  ubyte {.cdecl, importc: "Fl_Tree_ItemIsActivated", dynlib: fltk, discardable.}
    #_  See if the item is activated. Alias for is_activated().
    ## original: declare function Fl_Tree_ItemIsActive(byval item as Fl_Tree_Item ptr) as ubyte
    proc Fl_Tree_ItemIsActive* ( item:  ptr Fl_Tree_Item):  ubyte {.cdecl, importc: "Fl_Tree_ItemIsActive", dynlib: fltk, discardable.}
    #_  See if the item is visible.
    ## original: declare function Fl_Tree_ItemIsVisible(byval item as Fl_Tree_Item ptr) as long
    proc Fl_Tree_ItemIsVisible* ( item:  ptr Fl_Tree_Item):  long {.cdecl, importc: "Fl_Tree_ItemIsVisible", dynlib: fltk, discardable.}

    ## original: declare function Fl_Tree_ItemVisibleR(byval item as Fl_Tree_Item ptr) as long
    proc Fl_Tree_ItemVisibleR* ( item:  ptr Fl_Tree_Item):  long {.cdecl, importc: "Fl_Tree_ItemVisibleR", dynlib: fltk, discardable.}
    #_  Set/Get the item's user icon to an Fl_Image. '0' will disable.
    ## original: declare sub      Fl_Tree_ItemSetUserIcon(byval item as Fl_Tree_Item ptr, byval img as Fl_Image ptr)
    proc Fl_Tree_ItemSetUserIcon*( item:  ptr Fl_Tree_Item;  img:  ptr Fl_Image) {.cdecl, importc: "Fl_Tree_ItemSetUserIcon", dynlib: fltk, discardable.}
    ## original: declare function Fl_Tree_ItemGetUserIcon(byval item as Fl_Tree_Item ptr) as Fl_Image ptr
    proc Fl_Tree_ItemGetUserIcon* ( item:  ptr Fl_Tree_Item):  ptr Fl_Image {.cdecl, importc: "Fl_Tree_ItemGetUserIcon", dynlib: fltk, discardable.}
    #_  Events
    ## original: declare function Fl_Tree_ItemFindConstClicked(byval item as Fl_Tree_Item ptr, byref prefs as const Fl_Tree_Prefs_, byval yonly as long=0) as const Fl_Tree_Item ptr
    proc Fl_Tree_ItemFindConstClicked* ( item:  ptr Fl_Tree_Item;  prefs:  var Fl_Tree_Prefs_TT;  yonly:  long=0):  ptr Fl_Tree_Item {.cdecl, importc: "Fl_Tree_ItemFindConstClicked", dynlib: fltk, discardable.}

    ## original: declare function Fl_Tree_ItemFindClicked(byval item as Fl_Tree_Item ptr, byref prefs as const Fl_Tree_Prefs_, byval yonly as long=0) as Fl_Tree_Item ptr
    proc Fl_Tree_ItemFindClicked* ( item:  ptr Fl_Tree_Item;  prefs:  var Fl_Tree_Prefs_TT;  yonly:  long=0):  ptr Fl_Tree_Item {.cdecl, importc: "Fl_Tree_ItemFindClicked", dynlib: fltk, discardable.}

    ## original: declare function Fl_Tree_ItemEventOnCollapseIcon(byval item as Fl_Tree_Item ptr, byref prefs as const Fl_Tree_Prefs_) as long
    proc Fl_Tree_ItemEventOnCollapseIcon* ( item:  ptr Fl_Tree_Item;  prefs:  var Fl_Tree_Prefs_TT):  long {.cdecl, importc: "Fl_Tree_ItemEventOnCollapseIcon", dynlib: fltk, discardable.}

    ## original: declare function Fl_Tree_ItemEventOnLabel(byval item as Fl_Tree_Item ptr, byref prefs as const Fl_Tree_Prefs_) as long
    proc Fl_Tree_ItemEventOnLabel* ( item:  ptr Fl_Tree_Item;  prefs:  var Fl_Tree_Prefs_TT):  long {.cdecl, importc: "Fl_Tree_ItemEventOnLabel", dynlib: fltk, discardable.}
    #_  Is this item the root of the tree?
    ## original: declare function Fl_Tree_ItemIsRoot(byval item as Fl_Tree_Item ptr) as long
    proc Fl_Tree_ItemIsRoot* ( item:  ptr Fl_Tree_Item):  long {.cdecl, importc: "Fl_Tree_ItemIsRoot", dynlib: fltk, discardable.}

    #_ ############################
    #_ # class Fl_Tree_Item_Array #
    #_ ############################
    ## original: declare function Fl_Tree_Item_ArrayNew(byval new_chunksize as long=10) as Fl_Tree_Item_Array ptr
    proc Fl_Tree_Item_ArrayNew* ( new_chunksize:  long=10):  ptr Fl_Tree_Item_Array {.cdecl, importc: "Fl_Tree_Item_ArrayNew", dynlib: fltk, discardable.}

    ## original: declare function Fl_Tree_Item_ArrayCopy(byval other as const Fl_Tree_Item_Array ptr) as Fl_Tree_Item_Array ptr
    proc Fl_Tree_Item_ArrayCopy* ( other:  ptr Fl_Tree_Item_Array):  ptr Fl_Tree_Item_Array {.cdecl, importc: "Fl_Tree_Item_ArrayCopy", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Tree_Item_ArrayDelete(byref tia as Fl_Tree_Item_Array ptr)
    proc Fl_Tree_Item_ArrayDelete*( tia:  var ptr Fl_Tree_Item_Array) {.cdecl, importc: "Fl_Tree_Item_ArrayDelete", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Tree_Item_ArrayAdd(byval tia as Fl_Tree_Item_Array ptr, byval ti as Fl_Tree_Item ptr)
    proc Fl_Tree_Item_ArrayAdd*( tia:  ptr Fl_Tree_Item_Array;  ti:  ptr Fl_Tree_Item) {.cdecl, importc: "Fl_Tree_Item_ArrayAdd", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Tree_Item_ArrayClear(byval tia as Fl_Tree_Item_Array ptr)
    proc Fl_Tree_Item_ArrayClear*( tia:  ptr Fl_Tree_Item_Array) {.cdecl, importc: "Fl_Tree_Item_ArrayClear", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Tree_Item_ArrayInsert(byval tia as Fl_Tree_Item_Array ptr, byval position as long, byval ti as Fl_Tree_Item ptr)
    proc Fl_Tree_Item_ArrayInsert*( tia:  ptr Fl_Tree_Item_Array;  position:  long;  ti:  ptr Fl_Tree_Item) {.cdecl, importc: "Fl_Tree_Item_ArrayInsert", dynlib: fltk, discardable.}

    ## original: declare function Fl_Tree_Item_ArrayTotal(byval tia as Fl_Tree_Item_Array ptr) as long
    proc Fl_Tree_Item_ArrayTotal* ( tia:  ptr Fl_Tree_Item_Array):  long {.cdecl, importc: "Fl_Tree_Item_ArrayTotal", dynlib: fltk, discardable.}

    ## original: declare function Fl_Tree_Item_ArrayGetItem(byval tia as Fl_Tree_Item_Array ptr, byval index as long) as Fl_Tree_Item ptr
    proc Fl_Tree_Item_ArrayGetItem* ( tia:  ptr Fl_Tree_Item_Array;  index:  long):  ptr Fl_Tree_Item {.cdecl, importc: "Fl_Tree_Item_ArrayGetItem", dynlib: fltk, discardable.}
    #_  same as Fl_Tree_Item_ArrayGetItem but as const (read only)
    ## original: declare function Fl_Tree_Item_ArrayGetItem2(byval tia as Fl_Tree_Item_Array ptr, byval index as long) as const Fl_Tree_Item ptr
    proc Fl_Tree_Item_ArrayGetItem2* ( tia:  ptr Fl_Tree_Item_Array;  index:  long):  ptr Fl_Tree_Item {.cdecl, importc: "Fl_Tree_Item_ArrayGetItem2", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Tree_Item_ArrayRemove(byval tia as Fl_Tree_Item_Array ptr, byval index as long)
    proc Fl_Tree_Item_ArrayRemove*( tia:  ptr Fl_Tree_Item_Array;  index:  long) {.cdecl, importc: "Fl_Tree_Item_ArrayRemove", dynlib: fltk, discardable.}

    ## original: declare function Fl_Tree_Item_ArrayRemove2(byval tia as Fl_Tree_Item_Array ptr, byval ti as Fl_Tree_Item ptr) as long
    proc Fl_Tree_Item_ArrayRemove2* ( tia:  ptr Fl_Tree_Item_Array;  ti:  ptr Fl_Tree_Item):  long {.cdecl, importc: "Fl_Tree_Item_ArrayRemove2", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Tree_Item_ArraySwap(byval tia as Fl_Tree_Item_Array ptr, byval indexA as long, byval indexB as long)
    proc Fl_Tree_Item_ArraySwap*( tia:  ptr Fl_Tree_Item_Array;  indexA:  long;  indexB:  long) {.cdecl, importc: "Fl_Tree_Item_ArraySwap", dynlib: fltk, discardable.}

    #_ ##################################
    #_ # class Fl_Tree extends Fl_Group #
    #_ ##################################
    DeclareEx(Fl_Tree)
    ## original: declare function Fl_TreeNew(byval x as long, byval y as long, byval w as long, byval h as long, byval label as cstring=0) as Fl_Tree ptr
    proc Fl_TreeNew* ( x:  long;  y:  long;  w:  long;  h:  long;  label:  cstring=nil):  ptr Fl_Tree {.cdecl, importc: "Fl_TreeNew", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_TreeDelete(byref tr as Fl_Tree ptr)
    proc Fl_TreeDelete*( tr:  var ptr Fl_Tree) {.cdecl, importc: "Fl_TreeDelete", dynlib: fltk, discardable.}

    ## original: declare function Fl_TreeHandle(byval tr as Fl_Tree ptr, byval e as FL_EVENT) as long
    proc Fl_TreeHandle* ( tr:  ptr Fl_Tree;  e:  FL_EVENT):  long {.cdecl, importc: "Fl_TreeHandle", dynlib: fltk, discardable.}

    ## original: declare function Fl_TreeAdd(byval tr as Fl_Tree ptr, byval path as cstring) as Fl_Tree_Item ptr
    proc Fl_TreeAdd* ( tr:  ptr Fl_Tree;  path:  cstring):  ptr Fl_Tree_Item {.cdecl, importc: "Fl_TreeAdd", dynlib: fltk, discardable.}

    ## original: declare function Fl_TreeAddItem(byval tr as Fl_Tree ptr, byval path as cstring, byval item as Fl_Tree_Item ptr) as Fl_Tree_Item ptr
    proc Fl_TreeAddItem* ( tr:  ptr Fl_Tree;  path:  cstring;  item:  ptr Fl_Tree_Item):  ptr Fl_Tree_Item {.cdecl, importc: "Fl_TreeAddItem", dynlib: fltk, discardable.}

    ## original: declare function Fl_TreeAddChildItem(byval tr as Fl_Tree ptr, byval parent as Fl_Tree_Item ptr, byval name as cstring) as Fl_Tree_Item ptr
    proc Fl_TreeAddChildItem* ( tr:  ptr Fl_Tree;  parent:  ptr Fl_Tree_Item;  name:  cstring):  ptr Fl_Tree_Item {.cdecl, importc: "Fl_TreeAddChildItem", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_TreeSetCallbackItem(byval tr as Fl_Tree ptr, byval item as Fl_Tree_Item ptr)
    proc Fl_TreeSetCallbackItem*( tr:  ptr Fl_Tree;  item:  ptr Fl_Tree_Item) {.cdecl, importc: "Fl_TreeSetCallbackItem", dynlib: fltk, discardable.}
    ## original: declare function Fl_TreeGetCallbackItem(byval tr as Fl_Tree ptr) as Fl_Tree_Item ptr
    proc Fl_TreeGetCallbackItem* ( tr:  ptr Fl_Tree):  ptr Fl_Tree_Item {.cdecl, importc: "Fl_TreeGetCallbackItem", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_TreeSetCallbackReason(byval tr as Fl_Tree ptr, byval reason as FL_TREE_REASON)
    proc Fl_TreeSetCallbackReason*( tr:  ptr Fl_Tree;  reason:  FL_TREE_REASON) {.cdecl, importc: "Fl_TreeSetCallbackReason", dynlib: fltk, discardable.}
    ## original: declare function Fl_TreeGetCallbackReason(byval tr as Fl_Tree ptr) as FL_TREE_REASON
    proc Fl_TreeGetCallbackReason* ( tr:  ptr Fl_Tree):  FL_TREE_REASON {.cdecl, importc: "Fl_TreeGetCallbackReason", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_TreeClear(byval tr as Fl_Tree ptr)
    proc Fl_TreeClear*( tr:  ptr Fl_Tree) {.cdecl, importc: "Fl_TreeClear", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_TreeClearChildren(byval tr as Fl_Tree ptr, byval item as Fl_Tree_Item ptr)
    proc Fl_TreeClearChildren*( tr:  ptr Fl_Tree;  item:  ptr Fl_Tree_Item) {.cdecl, importc: "Fl_TreeClearChildren", dynlib: fltk, discardable.}

    ## original: declare function Fl_TreeClose(byval tr as Fl_Tree ptr, byval path as cstring, byval docallback as long=1) as long
    proc Fl_TreeClose* ( tr:  ptr Fl_Tree;  path:  cstring;  docallback:  long=1):  long {.cdecl, importc: "Fl_TreeClose", dynlib: fltk, discardable.}

    ## original: declare function Fl_TreeCloseItem(byval tr as Fl_Tree ptr, byval item as Fl_Tree_Item ptr, byval docallback as long=1) as long
    proc Fl_TreeCloseItem* ( tr:  ptr Fl_Tree;  item:  ptr Fl_Tree_Item;  docallback:  long=1):  long {.cdecl, importc: "Fl_TreeCloseItem", dynlib: fltk, discardable.}
    #_  Treeview icons
    ## original: declare sub      Fl_TreeSetCloseIcon(byval tr as Fl_Tree ptr, byval img as Fl_Image ptr)
    proc Fl_TreeSetCloseIcon*( tr:  ptr Fl_Tree;  img:  ptr Fl_Image) {.cdecl, importc: "Fl_TreeSetCloseIcon", dynlib: fltk, discardable.}
    ## original: declare function Fl_TreeGetCloseIcon(byval tr as Fl_Tree ptr) as Fl_Image ptr
    proc Fl_TreeGetCloseIcon* ( tr:  ptr Fl_Tree):  ptr Fl_Image {.cdecl, importc: "Fl_TreeGetCloseIcon", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_TreeSetOpenIcon(byval tr as Fl_Tree ptr, byval img as Fl_Image ptr)
    proc Fl_TreeSetOpenIcon*( tr:  ptr Fl_Tree;  img:  ptr Fl_Image) {.cdecl, importc: "Fl_TreeSetOpenIcon", dynlib: fltk, discardable.}
    ## original: declare function Fl_TreeGetOpenIcon(byval tr as Fl_Tree ptr) as Fl_Image ptr
    proc Fl_TreeGetOpenIcon* ( tr:  ptr Fl_Tree):  ptr Fl_Image {.cdecl, importc: "Fl_TreeGetOpenIcon", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_TreeSetUserIcon(byval tr as Fl_Tree ptr, byval img as Fl_Image ptr)
    proc Fl_TreeSetUserIcon*( tr:  ptr Fl_Tree;  img:  ptr Fl_Image) {.cdecl, importc: "Fl_TreeSetUserIcon", dynlib: fltk, discardable.}
    ## original: declare function Fl_TreeGetUserIcon(byval tr as Fl_Tree ptr) as Fl_Image ptr
    proc Fl_TreeGetUserIcon* ( tr:  ptr Fl_Tree):  ptr Fl_Image {.cdecl, importc: "Fl_TreeGetUserIcon", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_TreeSetUserIconMarginLeft(byval tr as Fl_Tree ptr, byval m as long)
    proc Fl_TreeSetUserIconMarginLeft*( tr:  ptr Fl_Tree;  m:  long) {.cdecl, importc: "Fl_TreeSetUserIconMarginLeft", dynlib: fltk, discardable.}
    ## original: declare function Fl_TreeGetUserIconMarginLeft(byval tr as Fl_Tree ptr) as long
    proc Fl_TreeGetUserIconMarginLeft* ( tr:  ptr Fl_Tree):  long {.cdecl, importc: "Fl_TreeGetUserIconMarginLeft", dynlib: fltk, discardable.}
    #_  Treeview lines
    ## original: declare sub      Fl_TreeSetConnectorColor(byval tr as Fl_Tree ptr, byval c as Fl_COLOR)
    proc Fl_TreeSetConnectorColor*( tr:  ptr Fl_Tree;  c:  Fl_COLOR) {.cdecl, importc: "Fl_TreeSetConnectorColor", dynlib: fltk, discardable.}
    ## original: declare function Fl_TreeGetConnectorColor(byval tr as Fl_Tree ptr) as Fl_COLOR
    proc Fl_TreeGetConnectorColor* ( tr:  ptr Fl_Tree):  Fl_COLOR {.cdecl, importc: "Fl_TreeGetConnectorColor", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_TreeSetConnectorStyle(byval tr as Fl_Tree ptr, byval s as FL_TREE_CONNECTOR)
    proc Fl_TreeSetConnectorStyle*( tr:  ptr Fl_Tree;  s:  FL_TREE_CONNECTOR) {.cdecl, importc: "Fl_TreeSetConnectorStyle", dynlib: fltk, discardable.}
    ## original: declare function Fl_TreeGetConnectorStyle(byval tr as Fl_Tree ptr) as FL_TREE_CONNECTOR
    proc Fl_TreeGetConnectorStyle* ( tr:  ptr Fl_Tree):  FL_TREE_CONNECTOR {.cdecl, importc: "Fl_TreeGetConnectorStyle", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_TreeSetConnectorWidth(byval tr as Fl_Tree ptr, byval w as long)
    proc Fl_TreeSetConnectorWidth*( tr:  ptr Fl_Tree;  w:  long) {.cdecl, importc: "Fl_TreeSetConnectorWidth", dynlib: fltk, discardable.}
    ## original: declare function Fl_TreeGetConnectorWidth(byval tr as Fl_Tree ptr) as long
    proc Fl_TreeGetConnectorWidth* ( tr:  ptr Fl_Tree):  long {.cdecl, importc: "Fl_TreeGetConnectorWidth", dynlib: fltk, discardable.}

    ## original: declare function Fl_TreeDeselect    (byval tr as Fl_Tree ptr, byval path as cstring , byval docallback as long=1) as long
    proc Fl_TreeDeselect* ( tr:  ptr Fl_Tree;  path:  cstring;  docallback:  long=1):  long {.cdecl, importc: "Fl_TreeDeselect", dynlib: fltk, discardable.}
    ## original: declare function Fl_TreeDeselectItem(byval tr as Fl_Tree ptr, byval item as Fl_Tree_Item ptr  , byval docallback as long=1) as long
    proc Fl_TreeDeselectItem* ( tr:  ptr Fl_Tree;  item:  ptr Fl_Tree_Item;  docallback:  long=1):  long {.cdecl, importc: "Fl_TreeDeselectItem", dynlib: fltk, discardable.}
    ## original: declare function Fl_TreeDeselectAll (byval tr as Fl_Tree ptr, byval item as Fl_Tree_Item ptr=0, byval docallback as long=1) as long
    proc Fl_TreeDeselectAll* ( tr:  ptr Fl_Tree;  item:  ptr Fl_Tree_Item;  docallback:  long=1):  long {.cdecl, importc: "Fl_TreeDeselectAll", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_TreeDisplay  (byval tr as Fl_Tree ptr, byval item as Fl_Tree_Item ptr)
    proc Fl_TreeDisplay*( tr:  ptr Fl_Tree;  item:  ptr Fl_Tree_Item) {.cdecl, importc: "Fl_TreeDisplay", dynlib: fltk, discardable.}
    ## original: declare function Fl_TreeDisplayed(byval tr as Fl_Tree ptr, byval item as Fl_Tree_Item ptr) as long
    proc Fl_TreeDisplayed* ( tr:  ptr Fl_Tree;  item:  ptr Fl_Tree_Item):  long {.cdecl, importc: "Fl_TreeDisplayed", dynlib: fltk, discardable.}

    ## original: declare function Fl_TreeFindClicked(byval tr as Fl_Tree ptr) as const Fl_Tree_Item ptr
    proc Fl_TreeFindClicked* ( tr:  ptr Fl_Tree):  ptr Fl_Tree_Item {.cdecl, importc: "Fl_TreeFindClicked", dynlib: fltk, discardable.}

    ## original: declare function Fl_TreeItemClicked(byval tr as Fl_Tree ptr) as Fl_Tree_Item ptr
    proc Fl_TreeItemClicked* ( tr:  ptr Fl_Tree):  ptr Fl_Tree_Item {.cdecl, importc: "Fl_TreeItemClicked", dynlib: fltk, discardable.}

    ## original: declare function Fl_TreeFindItem(byval tr as Fl_Tree ptr, byval path as cstring) as Fl_Tree_Item ptr
    proc Fl_TreeFindItem* ( tr:  ptr Fl_Tree;  path:  cstring):  ptr Fl_Tree_Item {.cdecl, importc: "Fl_TreeFindItem", dynlib: fltk, discardable.}

    ## original: declare function Fl_TreeFindItem2(byval tr as Fl_Tree ptr, byval path as cstring) as const Fl_Tree_Item ptr
    proc Fl_TreeFindItem2* ( tr:  ptr Fl_Tree;  path:  cstring):  ptr Fl_Tree_Item {.cdecl, importc: "Fl_TreeFindItem2", dynlib: fltk, discardable.}

    ## original: declare function Fl_TreeRoot(byval tr as Fl_Tree ptr) as Fl_Tree_Item ptr
    proc Fl_TreeRoot* ( tr:  ptr Fl_Tree):  ptr Fl_Tree_Item {.cdecl, importc: "Fl_TreeRoot", dynlib: fltk, discardable.}

    ## original: declare function Fl_TreeFirst(byval tr as Fl_Tree ptr) as Fl_Tree_Item ptr
    proc Fl_TreeFirst* ( tr:  ptr Fl_Tree):  ptr Fl_Tree_Item {.cdecl, importc: "Fl_TreeFirst", dynlib: fltk, discardable.}

    ## original: declare function Fl_TreeNext(byval tr as Fl_Tree ptr, byval item as Fl_Tree_Item ptr=0) as Fl_Tree_Item ptr
    proc Fl_TreeNext* ( tr:  ptr Fl_Tree;  item:  ptr Fl_Tree_Item):  ptr Fl_Tree_Item {.cdecl, importc: "Fl_TreeNext", dynlib: fltk, discardable.}

    ## original: declare function Fl_TreePrev(byval tr as Fl_Tree ptr, byval item as Fl_Tree_Item ptr=0) as Fl_Tree_Item ptr
    proc Fl_TreePrev* ( tr:  ptr Fl_Tree;  item:  ptr Fl_Tree_Item):  ptr Fl_Tree_Item {.cdecl, importc: "Fl_TreePrev", dynlib: fltk, discardable.}

    ## original: declare function Fl_TreeLast(byval tr as Fl_Tree ptr) as Fl_Tree_Item ptr
    proc Fl_TreeLast* ( tr:  ptr Fl_Tree):  ptr Fl_Tree_Item {.cdecl, importc: "Fl_TreeLast", dynlib: fltk, discardable.}

    ## original: declare function Fl_TreeLastVisible(byval tr as Fl_Tree ptr) as Fl_Tree_Item ptr
    proc Fl_TreeLastVisible* ( tr:  ptr Fl_Tree):  ptr Fl_Tree_Item {.cdecl, importc: "Fl_TreeLastVisible", dynlib: fltk, discardable.}

    ## original: declare function Fl_TreeNextVisibleItem(byval tr as Fl_Tree ptr, byval start as Fl_Tree_Item ptr, byval direction as long) as Fl_Tree_Item ptr
    proc Fl_TreeNextVisibleItem* ( tr:  ptr Fl_Tree;  start:  ptr Fl_Tree_Item;  direction:  long):  ptr Fl_Tree_Item {.cdecl, importc: "Fl_TreeNextVisibleItem", dynlib: fltk, discardable.}

    ## original: declare function Fl_TreeExtendSelectionDir(byval tr as Fl_Tree ptr, byval from as Fl_Tree_Item ptr, byval to_ as Fl_Tree_Item ptr, byval dir as long, byval value as long, byval blnVisible as long) as long
    proc Fl_TreeExtendSelectionDir* ( tr:  ptr Fl_Tree;  from_TT:  ptr Fl_Tree_Item;  to_TT:  ptr Fl_Tree_Item;  dir:  long;  value:  long;  blnVisible:  long):  long {.cdecl, importc: "Fl_TreeExtendSelectionDir", dynlib: fltk, discardable.}

    ## original: declare function Fl_TreeExtendSelection   (byval tr as Fl_Tree ptr, byval from as Fl_Tree_Item ptr, byval to_ as Fl_Tree_Item ptr, byval value as long=1, byval blnVisible as long=0) as long
    proc Fl_TreeExtendSelection* ( tr:  ptr Fl_Tree;  from_TT:  ptr Fl_Tree_Item;  to_TT:  ptr Fl_Tree_Item;  value:  long=1;  blnVisible:  long=0):  long {.cdecl, importc: "Fl_TreeExtendSelection", dynlib: fltk, discardable.}

    ## original: declare function Fl_TreeFirstSelectedItem(byval tr as Fl_Tree ptr) as Fl_Tree_Item ptr
    proc Fl_TreeFirstSelectedItem* ( tr:  ptr Fl_Tree):  ptr Fl_Tree_Item {.cdecl, importc: "Fl_TreeFirstSelectedItem", dynlib: fltk, discardable.}

    ## original: declare function Fl_TreeNextSelectedItem(byval tr as Fl_Tree ptr, byval item as Fl_Tree_Item ptr=0) as Fl_Tree_Item ptr
    proc Fl_TreeNextSelectedItem* ( tr:  ptr Fl_Tree;  item:  ptr Fl_Tree_Item):  ptr Fl_Tree_Item {.cdecl, importc: "Fl_TreeNextSelectedItem", dynlib: fltk, discardable.}

    ## original: declare function Fl_TreeFirstVisible(byval tr as Fl_Tree ptr) as Fl_Tree_Item ptr
    proc Fl_TreeFirstVisible* ( tr:  ptr Fl_Tree):  ptr Fl_Tree_Item {.cdecl, importc: "Fl_TreeFirstVisible", dynlib: fltk, discardable.}

    ## original: declare function Fl_TreeGetItemFocus(byval tr as Fl_Tree ptr) as Fl_Tree_Item ptr
    proc Fl_TreeGetItemFocus* ( tr:  ptr Fl_Tree):  ptr Fl_Tree_Item {.cdecl, importc: "Fl_TreeGetItemFocus", dynlib: fltk, discardable.}

    ## original: declare function Fl_TreeInsert(byval tr as Fl_Tree ptr, byval item as Fl_Tree_Item ptr, byval name as cstring, byval pos as long) as Fl_Tree_Item ptr
    proc Fl_TreeInsert* ( tr:  ptr Fl_Tree;  item:  ptr Fl_Tree_Item;  name:  cstring;  pos:  long):  ptr Fl_Tree_Item {.cdecl, importc: "Fl_TreeInsert", dynlib: fltk, discardable.}

    ## original: declare function Fl_TreeInsertAbove(byval tr as Fl_Tree ptr, byval above as Fl_Tree_Item ptr, byval name as cstring) as Fl_Tree_Item ptr
    proc Fl_TreeInsertAbove* ( tr:  ptr Fl_Tree;  above:  ptr Fl_Tree_Item;  name:  cstring):  ptr Fl_Tree_Item {.cdecl, importc: "Fl_TreeInsertAbove", dynlib: fltk, discardable.}

    ## original: declare function Fl_TreeIsClose(byval tr as Fl_Tree ptr, byval path as cstring) as long
    proc Fl_TreeIsClose* ( tr:  ptr Fl_Tree;  path:  cstring):  long {.cdecl, importc: "Fl_TreeIsClose", dynlib: fltk, discardable.}

    ## original: declare function Fl_TreeIsCloseItem(byval tr as Fl_Tree ptr, byval item as Fl_Tree_Item ptr) as long
    proc Fl_TreeIsCloseItem* ( tr:  ptr Fl_Tree;  item:  ptr Fl_Tree_Item):  long {.cdecl, importc: "Fl_TreeIsCloseItem", dynlib: fltk, discardable.}

    ## original: declare function Fl_TreeIsOpen(byval tr as Fl_Tree ptr, byval path as cstring) as long
    proc Fl_TreeIsOpen* ( tr:  ptr Fl_Tree;  path:  cstring):  long {.cdecl, importc: "Fl_TreeIsOpen", dynlib: fltk, discardable.}

    ## original: declare function Fl_TreeIsOpenItem(byval tr as Fl_Tree ptr, byval item as Fl_Tree_Item ptr) as long
    proc Fl_TreeIsOpenItem* ( tr:  ptr Fl_Tree;  item:  ptr Fl_Tree_Item):  long {.cdecl, importc: "Fl_TreeIsOpenItem", dynlib: fltk, discardable.}

    ## original: declare function Fl_TreeIsScrollbar(byval tr as Fl_Tree ptr, byval wgt as Fl_Widget ptr) as long
    proc Fl_TreeIsScrollbar* ( tr:  ptr Fl_Tree;  wgt:  ptr Fl_Widget):  long {.cdecl, importc: "Fl_TreeIsScrollbar", dynlib: fltk, discardable.}

    ## original: declare function Fl_TreeIsSelected(byval tr as Fl_Tree ptr, byval path as cstring) as long
    proc Fl_TreeIsSelected* ( tr:  ptr Fl_Tree;  path:  cstring):  long {.cdecl, importc: "Fl_TreeIsSelected", dynlib: fltk, discardable.}

    ## original: declare function Fl_TreeIsSelectedItem(byval tr as Fl_Tree ptr, byval item as Fl_Tree_Item ptr) as long
    proc Fl_TreeIsSelectedItem* ( tr:  ptr Fl_Tree;  item:  ptr Fl_Tree_Item):  long {.cdecl, importc: "Fl_TreeIsSelectedItem", dynlib: fltk, discardable.}

    ## original: declare function Fl_TreeIsVScrollVisible(byval tr as Fl_Tree ptr) as long
    proc Fl_TreeIsVScrollVisible* ( tr:  ptr Fl_Tree):  long {.cdecl, importc: "Fl_TreeIsVScrollVisible", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_TreeSetVPosition(byval tr as Fl_Tree ptr, byval p as long)
    proc Fl_TreeSetVPosition*( tr:  ptr Fl_Tree;  p:  long) {.cdecl, importc: "Fl_TreeSetVPosition", dynlib: fltk, discardable.}
    ## original: declare function Fl_TreeGetVPosition(byval tr as Fl_Tree ptr) as long
    proc Fl_TreeGetVPosition* ( tr:  ptr Fl_Tree):  long {.cdecl, importc: "Fl_TreeGetVPosition", dynlib: fltk, discardable.}

    ## original: declare function Fl_TreeIsHScrollVisible(byval tr as Fl_Tree ptr) as long
    proc Fl_TreeIsHScrollVisible* ( tr:  ptr Fl_Tree):  long {.cdecl, importc: "Fl_TreeIsHScrollVisible", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_TreeSetHPosition(byval tr as Fl_Tree ptr, byval p as long)
    proc Fl_TreeSetHPosition*( tr:  ptr Fl_Tree;  p:  long) {.cdecl, importc: "Fl_TreeSetHPosition", dynlib: fltk, discardable.}
    ## original: declare function Fl_TreeGetHPosition(byval tr as Fl_Tree ptr) as long
    proc Fl_TreeGetHPosition* ( tr:  ptr Fl_Tree):  long {.cdecl, importc: "Fl_TreeGetHPosition", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_TreeSetItemDrawMode(byval tr as Fl_Tree ptr, byval mode as FL_TREE_ITEM_DRAW_MODE)
    proc Fl_TreeSetItemDrawMode*( tr:  ptr Fl_Tree;  mode:  FL_TREE_ITEM_DRAW_MODE) {.cdecl, importc: "Fl_TreeSetItemDrawMode", dynlib: fltk, discardable.}
    ## original: declare function Fl_TreeGetItemDrawMode(byval tr as Fl_Tree ptr) as FL_TREE_ITEM_DRAW_MODE
    proc Fl_TreeGetItemDrawMode* ( tr:  ptr Fl_Tree):  FL_TREE_ITEM_DRAW_MODE {.cdecl, importc: "Fl_TreeGetItemDrawMode", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_TreeSetWidgetMarginLeft(byval tr as Fl_Tree ptr, byval m as long)
    proc Fl_TreeSetWidgetMarginLeft*( tr:  ptr Fl_Tree;  m:  long) {.cdecl, importc: "Fl_TreeSetWidgetMarginLeft", dynlib: fltk, discardable.}
    ## original: declare function Fl_TreeGetWidgetMarginLeft(byval tr as Fl_Tree ptr) as long
    proc Fl_TreeGetWidgetMarginLeft* ( tr:  ptr Fl_Tree):  long {.cdecl, importc: "Fl_TreeGetWidgetMarginLeft", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_TreeSetSelectMode(byval tr as Fl_Tree ptr, byval m as FL_TREE_SELECT)
    proc Fl_TreeSetSelectMode*( tr:  ptr Fl_Tree;  m:  T_FL_TREE_SELECT) {.cdecl, importc: "Fl_TreeSetSelectMode", dynlib: fltk, discardable.}
    ## original: declare function Fl_TreeGetSelectMode(byval tr as Fl_Tree ptr) as FL_TREE_SELECT
    proc Fl_TreeGetSelectMode* ( tr:  ptr Fl_Tree):  T_FL_TREE_SELECT {.cdecl, importc: "Fl_TreeGetSelectMode", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_TreeSetItemLabelBGColor(byval tr as Fl_Tree ptr, byval c as Fl_COLOR)
    proc Fl_TreeSetItemLabelBGColor*( tr:  ptr Fl_Tree;  c:  Fl_COLOR) {.cdecl, importc: "Fl_TreeSetItemLabelBGColor", dynlib: fltk, discardable.}
    ## original: declare function Fl_TreeGetItemLabelBGClor(byval tr as Fl_Tree ptr) as Fl_COLOR
    proc Fl_TreeGetItemLabelBGClor* ( tr:  ptr Fl_Tree):  Fl_COLOR {.cdecl, importc: "Fl_TreeGetItemLabelBGClor", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_TreeSetItemLabelFGColor(byval tr as Fl_Tree ptr, byval c as Fl_COLOR)
    proc Fl_TreeSetItemLabelFGColor*( tr:  ptr Fl_Tree;  c:  Fl_COLOR) {.cdecl, importc: "Fl_TreeSetItemLabelFGColor", dynlib: fltk, discardable.}
    ## original: declare function Fl_TreeGetItemLabelFGColor(byval tr as Fl_Tree ptr) as Fl_COLOR
    proc Fl_TreeGetItemLabelFGColor* ( tr:  ptr Fl_Tree):  Fl_COLOR {.cdecl, importc: "Fl_TreeGetItemLabelFGColor", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_TreeSetItemLabelFont(byval tr as Fl_Tree ptr, byval f as FL_FONT)
    proc Fl_TreeSetItemLabelFont*( tr:  ptr Fl_Tree;  f:  FL_FONT) {.cdecl, importc: "Fl_TreeSetItemLabelFont", dynlib: fltk, discardable.}
    ## original: declare function Fl_TreeGetItemLabelFont(byval tr as Fl_Tree ptr) as FL_FONT
    proc Fl_TreeGetItemLabelFont* ( tr:  ptr Fl_Tree):  FL_FONT {.cdecl, importc: "Fl_TreeGetItemLabelFont", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_TreeSetItemLabelSize(byval tr as Fl_Tree ptr, byval s as FL_FONTSIZE)
    proc Fl_TreeSetItemLabelSize*( tr:  ptr Fl_Tree;  s:  FL_FONTSIZE) {.cdecl, importc: "Fl_TreeSetItemLabelSize", dynlib: fltk, discardable.}
    ## original: declare function Fl_TreeGetItemLabelSize(byval tr as Fl_Tree ptr) as FL_FONTSIZE
    proc Fl_TreeGetItemLabelSize* ( tr:  ptr Fl_Tree):  FL_FONTSIZE {.cdecl, importc: "Fl_TreeGetItemLabelSize", dynlib: fltk, discardable.}

    ## original: declare function Fl_TreeItemPathName(byval tr as Fl_Tree ptr, byval pathname as cstring, byval pathnamelen as long, byval item as const Fl_Tree_Item ptr) as long
    proc Fl_TreeItemPathName* ( tr:  ptr Fl_Tree;  pathname:  cstring;  pathnamelen:  long;  item:  ptr Fl_Tree_Item):  long {.cdecl, importc: "Fl_TreeItemPathName", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_TreeSetLabelMarginLeft(byval tr as Fl_Tree ptr, byval m as long)
    proc Fl_TreeSetLabelMarginLeft*( tr:  ptr Fl_Tree;  m:  long) {.cdecl, importc: "Fl_TreeSetLabelMarginLeft", dynlib: fltk, discardable.}
    ## original: declare function Fl_TreeGetLabelMarginLeft(byval tr as Fl_Tree ptr) as long
    proc Fl_TreeGetLabelMarginLeft* ( tr:  ptr Fl_Tree):  long {.cdecl, importc: "Fl_TreeGetLabelMarginLeft", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_TreeSetLineSpacing(byval tr as Fl_Tree ptr, byval ls as long)
    proc Fl_TreeSetLineSpacing*( tr:  ptr Fl_Tree;  ls:  long) {.cdecl, importc: "Fl_TreeSetLineSpacing", dynlib: fltk, discardable.}
    ## original: declare function Fl_TreeGetLineSpacing(byval tr as Fl_Tree ptr) as long
    proc Fl_TreeGetLineSpacing* ( tr:  ptr Fl_Tree):  long {.cdecl, importc: "Fl_TreeGetLineSpacing", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_TreeSetMarginLeft(byval tr as Fl_Tree ptr, byval m as long)
    proc Fl_TreeSetMarginLeft*( tr:  ptr Fl_Tree;  m:  long) {.cdecl, importc: "Fl_TreeSetMarginLeft", dynlib: fltk, discardable.}
    ## original: declare function Fl_TreeGetMarginLeft(byval tr as Fl_Tree ptr) as long
    proc Fl_TreeGetMarginLeft* ( tr:  ptr Fl_Tree):  long {.cdecl, importc: "Fl_TreeGetMarginLeft", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_TreeSetMarginTop(byval tr as Fl_Tree ptr, byval m as long)
    proc Fl_TreeSetMarginTop*( tr:  ptr Fl_Tree;  m:  long) {.cdecl, importc: "Fl_TreeSetMarginTop", dynlib: fltk, discardable.}
    ## original: declare function Fl_TreeGetMarginTop(byval tr as Fl_Tree ptr) as long
    proc Fl_TreeGetMarginTop* ( tr:  ptr Fl_Tree):  long {.cdecl, importc: "Fl_TreeGetMarginTop", dynlib: fltk, discardable.}

    ## original: declare function Fl_TreeOpen(byval tr as Fl_Tree ptr, byval path as cstring, byval docallback as long=1) as long
    proc Fl_TreeOpen* ( tr:  ptr Fl_Tree;  path:  cstring;  docallback:  long=1):  long {.cdecl, importc: "Fl_TreeOpen", dynlib: fltk, discardable.}

    ## original: declare function Fl_TreeOpenItem(byval tr as Fl_Tree ptr, byval item as Fl_Tree_Item ptr, byval docallback as long=1) as long
    proc Fl_TreeOpenItem* ( tr:  ptr Fl_Tree;  item:  ptr Fl_Tree_Item;  docallback:  long=1):  long {.cdecl, importc: "Fl_TreeOpenItem", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_TreeOpenToggle(byval tr as Fl_Tree ptr, byval item as Fl_Tree_Item ptr, byval docallback as long=1)
    proc Fl_TreeOpenToggle*( tr:  ptr Fl_Tree;  item:  ptr Fl_Tree_Item;  docallback:  long=1) {.cdecl, importc: "Fl_TreeOpenToggle", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_TreeSetOpenchildMarginBottom(byval tr as Fl_Tree ptr, byval m as long)
    proc Fl_TreeSetOpenchildMarginBottom*( tr:  ptr Fl_Tree;  m:  long) {.cdecl, importc: "Fl_TreeSetOpenchildMarginBottom", dynlib: fltk, discardable.}
    ## original: declare function Fl_TreeGetOpenchildMarginBottom(byval tr as Fl_Tree ptr) as long
    proc Fl_TreeGetOpenchildMarginBottom* ( tr:  ptr Fl_Tree):  long {.cdecl, importc: "Fl_TreeGetOpenchildMarginBottom", dynlib: fltk, discardable.}

    ## original: declare function Fl_TreeRemove(byval tr as Fl_Tree ptr, byval item as Fl_Tree_Item ptr) as long
    proc Fl_TreeRemove* ( tr:  ptr Fl_Tree;  item:  ptr Fl_Tree_Item):  long {.cdecl, importc: "Fl_TreeRemove", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_TreeRootLabel(byval tr as Fl_Tree ptr, byval newlabel as cstring)
    proc Fl_TreeRootLabel*( tr:  ptr Fl_Tree;  newlabel:  cstring) {.cdecl, importc: "Fl_TreeRootLabel", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_TreeSetScrollbarSize(byval tr as Fl_Tree ptr, byval s as long)
    proc Fl_TreeSetScrollbarSize*( tr:  ptr Fl_Tree;  s:  long) {.cdecl, importc: "Fl_TreeSetScrollbarSize", dynlib: fltk, discardable.}
    ## original: declare function Fl_TreeGetScrollbarSize(byval tr as Fl_Tree ptr) as long
    proc Fl_TreeGetScrollbarSize* ( tr:  ptr Fl_Tree):  long {.cdecl, importc: "Fl_TreeGetScrollbarSize", dynlib: fltk, discardable.}

    ## original: declare function Fl_TreeSelect      (byval tr as Fl_Tree ptr, byval path as cstring, byval docallback as long=1) as long
    proc Fl_TreeSelect* ( tr:  ptr Fl_Tree;  path:  cstring;  docallback:  long=1):  long {.cdecl, importc: "Fl_TreeSelect", dynlib: fltk, discardable.}

    ## original: declare function Fl_TreeSelectItem  (byval tr as Fl_Tree ptr, byval item as Fl_Tree_Item ptr, byval docallback as long=1) as long
    proc Fl_TreeSelectItem* ( tr:  ptr Fl_Tree;  item:  ptr Fl_Tree_Item;  docallback:  long=1):  long {.cdecl, importc: "Fl_TreeSelectItem", dynlib: fltk, discardable.}

    ## original: declare function Fl_TreeSelectAll   (byval tr as Fl_Tree ptr, byval item as Fl_Tree_Item ptr=0, byval docallback as long=1) as long
    proc Fl_TreeSelectAll* ( tr:  ptr Fl_Tree;  item:  ptr Fl_Tree_Item;  docallback:  long=1):  long {.cdecl, importc: "Fl_TreeSelectAll", dynlib: fltk, discardable.}

    ## original: declare function Fl_TreeSelectOnly  (byval tr as Fl_Tree ptr, byval selitem as Fl_Tree_Item ptr, byval docallback as long=1) as long
    proc Fl_TreeSelectOnly* ( tr:  ptr Fl_Tree;  selitem:  ptr Fl_Tree_Item;  docallback:  long=1):  long {.cdecl, importc: "Fl_TreeSelectOnly", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_TreeSelectToggle(byval tr as Fl_Tree ptr, byval item as Fl_Tree_Item ptr, byval docallback as long=1)
    proc Fl_TreeSelectToggle*( tr:  ptr Fl_Tree;  item:  ptr Fl_Tree_Item;  docallback:  long=1) {.cdecl, importc: "Fl_TreeSelectToggle", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_TreeSetSelectBox(byval tr as Fl_Tree ptr, byval bt as FL_BOXTYPE)
    proc Fl_TreeSetSelectBox*( tr:  ptr Fl_Tree;  bt:  FL_BOXTYPE) {.cdecl, importc: "Fl_TreeSetSelectBox", dynlib: fltk, discardable.}

    ## original: declare function Fl_TreeGetSelectBox(byval tr as Fl_Tree ptr) as FL_BOXTYPE
    proc Fl_TreeGetSelectBox* ( tr:  ptr Fl_Tree):  FL_BOXTYPE {.cdecl, importc: "Fl_TreeGetSelectBox", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_TreeSetItemFocus  (byval tr as Fl_Tree ptr, byval item as Fl_Tree_Item ptr)
    proc Fl_TreeSetItemFocus*( tr:  ptr Fl_Tree;  item:  ptr Fl_Tree_Item) {.cdecl, importc: "Fl_TreeSetItemFocus", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_TreeShowItem      (byval tr as Fl_Tree ptr, byval item as Fl_Tree_Item ptr)
    proc Fl_TreeShowItem*( tr:  ptr Fl_Tree;  item:  ptr Fl_Tree_Item) {.cdecl, importc: "Fl_TreeShowItem", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_TreeShowItem2     (byval tr as Fl_Tree ptr, byval item as Fl_Tree_Item ptr, byval yoff as long)
    proc Fl_TreeShowItem2*( tr:  ptr Fl_Tree;  item:  ptr Fl_Tree_Item;  yoff:  long) {.cdecl, importc: "Fl_TreeShowItem2", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_TreeShowItemBottom(byval tr as Fl_Tree ptr, byval item as Fl_Tree_Item ptr)
    proc Fl_TreeShowItemBottom*( tr:  ptr Fl_Tree;  item:  ptr Fl_Tree_Item) {.cdecl, importc: "Fl_TreeShowItemBottom", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_TreeShowItemMiddle(byval tr as Fl_Tree ptr, byval item as Fl_Tree_Item ptr)
    proc Fl_TreeShowItemMiddle*( tr:  ptr Fl_Tree;  item:  ptr Fl_Tree_Item) {.cdecl, importc: "Fl_TreeShowItemMiddle", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_TreeShowItemTop   (byval tr as Fl_Tree ptr, byval item as Fl_Tree_Item ptr)
    proc Fl_TreeShowItemTop*( tr:  ptr Fl_Tree;  item:  ptr Fl_Tree_Item) {.cdecl, importc: "Fl_TreeShowItemTop", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_TreeShowSelf      (byval tr as Fl_Tree ptr)
    proc Fl_TreeShowSelf*( tr:  ptr Fl_Tree) {.cdecl, importc: "Fl_TreeShowSelf", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_TreeSetShowCollapse(byval tr as Fl_Tree ptr, byval c as long)
    proc Fl_TreeSetShowCollapse*( tr:  ptr Fl_Tree;  c:  long) {.cdecl, importc: "Fl_TreeSetShowCollapse", dynlib: fltk, discardable.}

    ## original: declare function Fl_TreeGetShowCollapse(byval tr as Fl_Tree ptr) as long
    proc Fl_TreeGetShowCollapse* ( tr:  ptr Fl_Tree):  long {.cdecl, importc: "Fl_TreeGetShowCollapse", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_TreeSetShowRoot(byval tr as Fl_Tree ptr, byval bln as long)
    proc Fl_TreeSetShowRoot*( tr:  ptr Fl_Tree;  bln:  long) {.cdecl, importc: "Fl_TreeSetShowRoot", dynlib: fltk, discardable.}

    ## original: declare function Fl_TreeGetShowRoot(byval tr as Fl_Tree ptr) as long
    proc Fl_TreeGetShowRoot* ( tr:  ptr Fl_Tree):  long {.cdecl, importc: "Fl_TreeGetShowRoot", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_TreeSetSortOrder(byval tr as Fl_Tree ptr, byval s as FL_TREE_SORT)
    proc Fl_TreeSetSortOrder*( tr:  ptr Fl_Tree;  s:  FL_TREE_SORT) {.cdecl, importc: "Fl_TreeSetSortOrder", dynlib: fltk, discardable.}

    ## original: declare function Fl_TreeGetSortorder(byval tr as Fl_Tree ptr) as FL_TREE_SORT
    proc Fl_TreeGetSortorder* ( tr:  ptr Fl_Tree):  FL_TREE_SORT {.cdecl, importc: "Fl_TreeGetSortorder", dynlib: fltk, discardable.}

    let
        Fl_TreeBegin* = Fl_GroupBegin
        Fl_TreeEnd*   = Fl_GroupEnd

    #_ ####################################
    #_ # class Fl_Wizard extends Fl_Group #
    #_ ####################################
    ## original: declare function Fl_WizardNew     (byval x as long, byval y as long, byval w as long, byval h as long, byval label as cstring=0) as Fl_Wizard ptr
    proc Fl_WizardNew* ( x:  long;  y:  long;  w:  long;  h:  long;  label:  cstring=nil):  ptr Fl_Wizard {.cdecl, importc: "Fl_WizardNew", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_WizardDelete  (byref wi as Fl_Wizard ptr)
    proc Fl_WizardDelete*( wi:  var ptr Fl_Wizard) {.cdecl, importc: "Fl_WizardDelete", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_WizardNext    (byval wi as Fl_Wizard ptr)
    proc Fl_WizardNext*( wi:  ptr Fl_Wizard) {.cdecl, importc: "Fl_WizardNext", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_WizardPrev    (byval wi as Fl_Wizard ptr)
    proc Fl_WizardPrev*( wi:  ptr Fl_Wizard) {.cdecl, importc: "Fl_WizardPrev", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_WizardSetValue(byval wi as Fl_Wizard ptr, byval wgt as Fl_Widget ptr)
    proc Fl_WizardSetValue*( wi:  ptr Fl_Wizard;  wgt:  ptr Fl_Widget) {.cdecl, importc: "Fl_WizardSetValue", dynlib: fltk, discardable.}

    ## original: declare function Fl_WizardGetValue(byval wi as Fl_Wizard ptr) as Fl_Widget ptr
    proc Fl_WizardGetValue* ( wi:  ptr Fl_Wizard):  ptr Fl_Widget {.cdecl, importc: "Fl_WizardGetValue", dynlib: fltk, discardable.}
    let
        Fl_WizardBegin    * =   Fl_GroupBegin
        Fl_WizardEnd      * =   Fl_GroupEnd
        Fl_WizardPageNew  * =   Fl_GroupNew
        Fl_WizardPageBegin* =   Fl_GroupBegin
        Fl_WizardPageEnd  * =   Fl_GroupEnd

    #_ ####################################
    #_ # class Fl_Window extends Fl_Group #
    #_ ####################################
    #_  static member
    ## original: declare function Fl_WindowCurrent() as Fl_Window ptr
    proc Fl_WindowCurrent* ():  ptr Fl_Window {.cdecl, importc: "Fl_WindowCurrent", dynlib: fltk, discardable.}

    ## original: declare function Fl_WindowNew(byval w as long, byval h as long, byval title as cstring=0) as Fl_Window ptr
    proc Fl_WindowNew* ( w:  long;  h:  long;  title:  cstring=nil):  ptr Fl_Window {.cdecl, importc: "Fl_WindowNew", dynlib: fltk, discardable.}
    ## original: declare function Fl_WindowNew2(byval x as long, byval y as long, byval w as long, byval h as long, byval title as cstring=0) as Fl_Window ptr
    proc Fl_WindowNew2* ( x:  long;  y:  long;  w:  long;  h:  long;  title:  cstring=nil):  ptr Fl_Window {.cdecl, importc: "Fl_WindowNew2", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_WindowDelete(byref win as Fl_Window ptr)
    proc Fl_WindowDelete*( win:  var ptr Fl_Window) {.cdecl, importc: "Fl_WindowDelete", dynlib: fltk, discardable.}

    ## original: declare function Fl_WindowHandle(byval win as Fl_Window ptr, byval event as FL_EVENT) as long
    proc Fl_WindowHandle* ( win:  ptr Fl_Window;  event:  FL_EVENT):  long {.cdecl, importc: "Fl_WindowHandle", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_WindowBegin(byval win as Fl_Window ptr)
    proc Fl_WindowBegin*( win:  ptr Fl_Window) {.cdecl, importc: "Fl_WindowBegin", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_WindowEnd(byval win as Fl_Window ptr)
    proc Fl_WindowEnd*( win:  ptr Fl_Window) {.cdecl, importc: "Fl_WindowEnd", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_WindowSetBorder(byval win as Fl_Window ptr, byval b as long)
    proc Fl_WindowSetBorder*( win:  ptr Fl_Window;  b:  long) {.cdecl, importc: "Fl_WindowSetBorder", dynlib: fltk, discardable.}
    ## original: declare function Fl_WindowGetBorder(byval win as Fl_Window ptr) as long
    proc Fl_WindowGetBorder* ( win:  ptr Fl_Window):  long {.cdecl, importc: "Fl_WindowGetBorder", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_WindowClearBorder(byval win as Fl_Window ptr)
    proc Fl_WindowClearBorder*( win:  ptr Fl_Window) {.cdecl, importc: "Fl_WindowClearBorder", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_WindowCopyLabel(byval win as Fl_Window ptr, byval label as cstring)
    proc Fl_WindowCopyLabel*( win:  ptr Fl_Window;  label:  cstring) {.cdecl, importc: "Fl_WindowCopyLabel", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_WindowMakeCurrent(byval win as Fl_Window ptr)
    proc Fl_WindowMakeCurrent*( win:  ptr Fl_Window) {.cdecl, importc: "Fl_WindowMakeCurrent", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_WindowCursor(byval win as Fl_Window ptr, byval c as FL_CURSOR, byval fg as Fl_COLOR = Fl_BLACK, byval bg as Fl_COLOR = Fl_WHITE)
    proc Fl_WindowCursor*( win:  ptr Fl_Window;  c:  FL_CURSOR;  fg:  Fl_COLOR;  bg:  Fl_COLOR) {.cdecl, importc: "Fl_WindowCursor", dynlib: fltk, discardable.}

    ## original: declare function Fl_WindowDecorated_h(byval win as Fl_Window ptr) as long
    proc Fl_WindowDecorated_h* ( win:  ptr Fl_Window):  long {.cdecl, importc: "Fl_WindowDecorated_h", dynlib: fltk, discardable.}
    ## original: declare function Fl_WindowDecorated_w(byval win as Fl_Window ptr) as long
    proc Fl_WindowDecorated_w* ( win:  ptr Fl_Window):  long {.cdecl, importc: "Fl_WindowDecorated_w", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_WindowFreePosition(byval win as Fl_Window ptr)
    proc Fl_WindowFreePosition*( win:  ptr Fl_Window) {.cdecl, importc: "Fl_WindowFreePosition", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_WindowFullscreen(byval win as Fl_Window ptr)
    proc Fl_WindowFullscreen*( win:  ptr Fl_Window) {.cdecl, importc: "Fl_WindowFullscreen", dynlib: fltk, discardable.}

    ## original: declare function Fl_WindowFullscreenActive(byval win as Fl_Window ptr) as long
    proc Fl_WindowFullscreenActive* ( win:  ptr Fl_Window):  long {.cdecl, importc: "Fl_WindowFullscreenActive", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_WindowFullscreenOff(byval win as Fl_Window ptr)
    proc Fl_WindowFullscreenOff*( win:  ptr Fl_Window) {.cdecl, importc: "Fl_WindowFullscreenOff", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_WindowFullscreenOffResize(byval win as Fl_Window ptr, byval x as long, byval y as long, byval w as long, byval h as long)
    proc Fl_WindowFullscreenOffResize*( win:  ptr Fl_Window;  x:  long;  y:  long;  w:  long;  h:  long) {.cdecl, importc: "Fl_WindowFullscreenOffResize", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_WindowHotspot(byval win as Fl_Window ptr, byval x as long, byval y as long, byval offscreen as long=0)
    proc Fl_WindowHotspot*( win:  ptr Fl_Window;  x:  long;  y:  long;  offscreen:  long=0) {.cdecl, importc: "Fl_WindowHotspot", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_WindowHotspotWidget(byval win as Fl_Window ptr, byval wgt as const Fl_Widget ptr, byval offscreen as long=0)
    proc Fl_WindowHotspotWidget*( win:  ptr Fl_Window;  wgt:  ptr Fl_Widget;  offscreen:  long=0) {.cdecl, importc: "Fl_WindowHotspotWidget", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_WindowIconize(byval win as Fl_Window ptr)
    proc Fl_WindowIconize*( win:  ptr Fl_Window) {.cdecl, importc: "Fl_WindowIconize", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_WindowSetIconLabel(byval win as Fl_Window ptr, byval label as cstring)
    proc Fl_WindowSetIconLabel*( win:  ptr Fl_Window;  label:  cstring) {.cdecl, importc: "Fl_WindowSetIconLabel", dynlib: fltk, discardable.}
    ## original: declare function Fl_WindowGetIconLabel(byval win as Fl_Window ptr) as cstring
    proc Fl_WindowGetIconLabel* ( win:  ptr Fl_Window):  cstring {.cdecl, importc: "Fl_WindowGetIconLabel", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_WindowSetLabel(byval win as Fl_Window ptr, byval label as cstring)
    proc Fl_WindowSetLabel*( win:  ptr Fl_Window;  label:  cstring) {.cdecl, importc: "Fl_WindowSetLabel", dynlib: fltk, discardable.}
    ## original: declare function Fl_WindowGetLabel(byval win as Fl_Window ptr) as cstring
    proc Fl_WindowGetLabel* ( win:  ptr Fl_Window):  cstring {.cdecl, importc: "Fl_WindowGetLabel", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_WindowSetLabels(byval win as Fl_Window ptr, byval winlabel as cstring, byval iconlabel as cstring)
    proc Fl_WindowSetLabels*( win:  ptr Fl_Window;  winlabel:  cstring;  iconlabel:  cstring) {.cdecl, importc: "Fl_WindowSetLabels", dynlib: fltk, discardable.}
    ## original: declare function Fl_WindowGetMenuWindow(byval win as Fl_Window ptr) as long
    proc Fl_WindowGetMenuWindow* ( win:  ptr Fl_Window):  long {.cdecl, importc: "Fl_WindowGetMenuWindow", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_WindowSetModal(byval win as Fl_Window ptr)
    proc Fl_WindowSetModal*( win:  ptr Fl_Window) {.cdecl, importc: "Fl_WindowSetModal", dynlib: fltk, discardable.}
    ## original: declare function Fl_WindowGetModal(byval win as Fl_Window ptr) as long
    proc Fl_WindowGetModal* ( win:  ptr Fl_Window):  long {.cdecl, importc: "Fl_WindowGetModal", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_WindowSetNonModal(byval win as Fl_Window ptr)
    proc Fl_WindowSetNonModal*( win:  ptr Fl_Window) {.cdecl, importc: "Fl_WindowSetNonModal", dynlib: fltk, discardable.}
    ## original: declare function Fl_WindowGetNonModal(byval win as Fl_Window ptr) as long
    proc Fl_WindowGetNonModal* ( win:  ptr Fl_Window):  long {.cdecl, importc: "Fl_WindowGetNonModal", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_WindowSetOverride(byval win as Fl_Window ptr)
    proc Fl_WindowSetOverride*( win:  ptr Fl_Window) {.cdecl, importc: "Fl_WindowSetOverride", dynlib: fltk, discardable.}
    ## original: declare function Fl_WindowGetOverride(byval win as Fl_Window ptr) as long
    proc Fl_WindowGetOverride* ( win:  ptr Fl_Window):  long {.cdecl, importc: "Fl_WindowGetOverride", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_WindowResize(byval win as Fl_Window ptr, byval x as long, byval y as long, byval w as long, byval h as long)
    proc Fl_WindowResize*( win:  ptr Fl_Window;  x:  long;  y:  long;  w:  long;  h:  long) {.cdecl, importc: "Fl_WindowResize", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_WindowHide(byval win as Fl_Window ptr)
    proc Fl_WindowHide*( win:  ptr Fl_Window) {.cdecl, importc: "Fl_WindowHide", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_WindowShow(byval win as Fl_Window ptr)
    proc Fl_WindowShow*( win:  ptr Fl_Window) {.cdecl, importc: "Fl_WindowShow", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_WindowShowArgs(byval win as Fl_Window ptr, byval argc as long, byval argv as cstring ptr)
    proc Fl_WindowShowArgs*( win:  ptr Fl_Window;  argc:  long;  argv:  ptr cstring) {.cdecl, importc: "Fl_WindowShowArgs", dynlib: fltk, discardable.}

    ## original: declare function Fl_WindowShown(byval win as Fl_Window ptr) as long
    proc Fl_WindowShown* ( win:  ptr Fl_Window):  long {.cdecl, importc: "Fl_WindowShown", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_WindowSizeRange(byval win as Fl_Window ptr, byval minw as long, byval minh as long, byval maxw as long=0, byval maxh as long=0, byval dw as long=0, byval dh as long=0, byval aspect as long=0)
    proc Fl_WindowSizeRange*( win:  ptr Fl_Window;  minw:  long;  minh:  long;  maxw:  long=0;  maxh:  long=0;  dw:  long=0;  dh:  long=0;  aspect:  long=0) {.cdecl, importc: "Fl_WindowSizeRange", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_WindowSetTooltipWindow(byval win as Fl_Window ptr)
    proc Fl_WindowSetTooltipWindow*( win:  ptr Fl_Window) {.cdecl, importc: "Fl_WindowSetTooltipWindow", dynlib: fltk, discardable.}

    ## original: declare function Fl_WindowGetTooltipWindow(byval win as Fl_Window ptr) as long
    proc Fl_WindowGetTooltipWindow* ( win:  ptr Fl_Window):  long {.cdecl, importc: "Fl_WindowGetTooltipWindow", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_WindowSetXClass(byval win as Fl_Window ptr, byval xclass as cstring)
    proc Fl_WindowSetXClass*( win:  ptr Fl_Window;  xclass:  cstring) {.cdecl, importc: "Fl_WindowSetXClass", dynlib: fltk, discardable.}

    ## original: declare function Fl_WindowGetXClass(byval win as Fl_Window ptr) as cstring
    proc Fl_WindowGetXClass* ( win:  ptr Fl_Window):  cstring {.cdecl, importc: "Fl_WindowGetXClass", dynlib: fltk, discardable.}

    ## original: declare function Fl_WindowXRoot(byval win as Fl_Window ptr) as long
    proc Fl_WindowXRoot* ( win:  ptr Fl_Window):  long {.cdecl, importc: "Fl_WindowXRoot", dynlib: fltk, discardable.}

    ## original: declare function Fl_WindowYRoot(byval win as Fl_Window ptr) as long
    proc Fl_WindowYRoot* ( win:  ptr Fl_Window):  long {.cdecl, importc: "Fl_WindowYRoot", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_WindowClearModalStates(byval win as Fl_Window ptr)
    proc Fl_WindowClearModalStates*( win:  ptr Fl_Window) {.cdecl, importc: "Fl_WindowClearModalStates", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_WindowCursorImage  (byval win as Fl_Window ptr, byval img as const Fl_RGB_Image ptr, byval hotx as long, byval hoty as long)
    proc Fl_WindowCursorImage*( win:  ptr Fl_Window;  img:  ptr Fl_RGB_Image;  hotx:  long;  hoty:  long) {.cdecl, importc: "Fl_WindowCursorImage", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_WindowDefaultCursor(byval win as Fl_Window ptr, byval c as FL_CURSOR)
    proc Fl_WindowDefaultCursor*( win:  ptr Fl_Window;  c:  FL_CURSOR) {.cdecl, importc: "Fl_WindowDefaultCursor", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_WindowDefaultIcon  (byval win as Fl_Window ptr, byval icon as const Fl_RGB_Image ptr)
    proc Fl_WindowDefaultIcon*( win:  ptr Fl_Window;  icon:  ptr Fl_RGB_Image) {.cdecl, importc: "Fl_WindowDefaultIcon", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_WindowDefaultIcons (byval win as Fl_Window ptr, byval icons as const Fl_RGB_Image ptr ptr, byval count as long)
    proc Fl_WindowDefaultIcons*( win:  ptr Fl_Window;  icons:   ptr ptr Fl_RGB_Image ;  count:  long) {.cdecl, importc: "Fl_WindowDefaultIcons", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_WindowIcon         (byval win as Fl_Window ptr, byval icon as const Fl_RGB_Image ptr)
    proc Fl_WindowIcon*( win:  ptr Fl_Window;  icon:  ptr Fl_RGB_Image) {.cdecl, importc: "Fl_WindowIcon", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_WindowIcons        (byval win as Fl_Window ptr, byval icons as const Fl_RGB_Image ptr ptr, byval count as long)
    proc Fl_WindowIcons*( win:  ptr Fl_Window;  icons:  ptr ptr Fl_RGB_Image ;  count:  long) {.cdecl, importc: "Fl_WindowIcons", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_WindowShape        (byval win as Fl_Window ptr, byval img as const Fl_Image ptr)
    proc Fl_WindowShape*( win:  ptr Fl_Window;  img:  ptr Fl_Image) {.cdecl, importc: "Fl_WindowShape", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_WindowWaitForExpose(byval win as Fl_Window ptr)
    proc Fl_WindowWaitForExpose*( win:  ptr Fl_Window) {.cdecl, importc: "Fl_WindowWaitForExpose", dynlib: fltk, discardable.}
    let
        Fl_WindowSetResizable* = Fl_GroupSetResizable
        Fl_WindowResizable* = Fl_GroupSetResizable
        #_  Alternative form
        Fl_WindowSetResizeable* = Fl_GroupSetResizable
        Fl_WindowResizeable* = Fl_GroupSetResizable

    #_ #######################################
    #_ # class Fl_WindowEx extends Fl_Window #
    #_ #######################################
    ## original: declare function Fl_WindowExNew(byval w as long, byval h as long, byval title as cstring=0) as Fl_WindowEx ptr
    proc Fl_WindowExNew* ( w:  long;  h:  long;  title:  cstring=nil):  ptr Fl_WindowEx {.cdecl, importc: "Fl_WindowExNew", dynlib: fltk, discardable.}
    ## original: declare function Fl_WindowExNew2(byval x as long, byval y as long, byval w as long, byval h as long, byval title as cstring=0) as Fl_WindowEx ptr
    proc Fl_WindowExNew2* ( x:  long;  y:  long;  w:  long;  h:  long;  title:  cstring=nil):  ptr Fl_WindowEx {.cdecl, importc: "Fl_WindowExNew2", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_WindowExDelete         (byref ex as Fl_WindowEx ptr)
    proc Fl_WindowExDelete*( ex:  var ptr Fl_WindowEx) {.cdecl, importc: "Fl_WindowExDelete", dynlib: fltk, discardable.}

    ## original: declare function Fl_WindowExHandleBase     (byval ex as Fl_WindowEx ptr, byval event as FL_EVENT) as long
    proc Fl_WindowExHandleBase* ( ex:  ptr Fl_WindowEx;  event:  FL_EVENT):  long {.cdecl, importc: "Fl_WindowExHandleBase", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_WindowExSetDestructorCB(byval ex as Fl_WindowEx ptr, byval cb as Fl_DestructorEx)
    proc Fl_WindowExSetDestructorCB*( ex:  ptr Fl_WindowEx;  cb:  Fl_DestructorEx) {.cdecl, importc: "Fl_WindowExSetDestructorCB", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_WindowExSetDrawCB      (byval ex as Fl_WindowEx ptr, byval cb as Fl_DrawEx)
    proc Fl_WindowExSetDrawCB*( ex:  ptr Fl_WindowEx;  cb:  Fl_DrawEx) {.cdecl, importc: "Fl_WindowExSetDrawCB", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_WindowExSetHandleCB    (byval ex as Fl_WindowEx ptr, byval cb as Fl_HandleEx)
    proc Fl_WindowExSetHandleCB*( ex:  ptr Fl_WindowEx;  cb:  Fl_HandleEx) {.cdecl, importc: "Fl_WindowExSetHandleCB", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_WindowExSetResizeCB    (byval ex as Fl_WindowEx ptr, byval cb as Fl_ResizeEx)
    proc Fl_WindowExSetResizeCB*( ex:  ptr Fl_WindowEx;  cb:  Fl_ResizeEx) {.cdecl, importc: "Fl_WindowExSetResizeCB", dynlib: fltk, discardable.}

    #_ ############################################
    #_ # class Fl_Single_Window extends Fl_Window #
    #_ ############################################
    ## original: declare function Fl_Single_WindowNew     (byval w as long, byval h as long, byval title as cstring=0) as Fl_Single_Window ptr
    proc Fl_Single_WindowNew* ( w:  long;  h:  long;  title:  cstring=nil):  ptr Fl_Single_Window {.cdecl, importc: "Fl_Single_WindowNew", dynlib: fltk, discardable.}
    ## original: declare function Fl_Single_WindowNew2    (byval x as long, byval y as long, byval w as long, byval h as long, byval title as cstring=0) as Fl_Single_Window ptr
    proc Fl_Single_WindowNew2* ( x:  long;  y:  long;  w:  long;  h:  long;  title:  cstring=nil):  ptr Fl_Single_Window {.cdecl, importc: "Fl_Single_WindowNew2", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Single_WindowDelete  (byref win as Fl_Single_Window ptr)
    proc Fl_Single_WindowDelete*( win:  var ptr Fl_Single_Window) {.cdecl, importc: "Fl_Single_WindowDelete", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Single_WindowFlush   (byval win as Fl_Single_Window ptr)
    proc Fl_Single_WindowFlush*( win:  ptr Fl_Single_Window) {.cdecl, importc: "Fl_Single_WindowFlush", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Single_WindowShow    (byval win as Fl_Single_Window ptr)
    proc Fl_Single_WindowShow*( win:  ptr Fl_Single_Window) {.cdecl, importc: "Fl_Single_WindowShow", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Single_WindowShowArgs(byval win as Fl_Single_Window ptr, byval argc as long, byval argv as cstring ptr)
    proc Fl_Single_WindowShowArgs*( win:  ptr Fl_Single_Window;  argc:  long;  argv:  ptr cstring) {.cdecl, importc: "Fl_Single_WindowShowArgs", dynlib: fltk, discardable.}

    #_ #####################################################
    #_ # class Fl_Single_WindowEx extends Fl_Single_Window #
    #_ #####################################################
    ## original: declare function Fl_Single_WindowExNew(byval w as long, byval h as long, byval title as cstring=0) as Fl_Single_WindowEx ptr
    proc Fl_Single_WindowExNew* ( w:  long;  h:  long;  title:  cstring=nil):  ptr Fl_Single_WindowEx {.cdecl, importc: "Fl_Single_WindowExNew", dynlib: fltk, discardable.}
    ## original: declare function Fl_Single_WindowExNew2(byval x as long, byval y as long, byval w as long, byval h as long, byval title as cstring=0) as Fl_Single_WindowEx ptr
    proc Fl_Single_WindowExNew2* ( x:  long;  y:  long;  w:  long;  h:  long;  title:  cstring=nil):  ptr Fl_Single_WindowEx {.cdecl, importc: "Fl_Single_WindowExNew2", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Single_WindowExDelete         (byref ex as Fl_Single_WindowEx ptr)
    proc Fl_Single_WindowExDelete*( ex:  var ptr Fl_Single_WindowEx) {.cdecl, importc: "Fl_Single_WindowExDelete", dynlib: fltk, discardable.}

    ## original: declare function Fl_Single_WindowExHandleBase     (byval ex as Fl_Single_WindowEx ptr, byval event as FL_EVENT) as long
    proc Fl_Single_WindowExHandleBase* ( ex:  ptr Fl_Single_WindowEx;  event:  FL_EVENT):  long {.cdecl, importc: "Fl_Single_WindowExHandleBase", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Single_WindowExSetDestructorCB(byval ex as Fl_Single_WindowEx ptr, byval cb as Fl_DestructorEx)
    proc Fl_Single_WindowExSetDestructorCB*( ex:  ptr Fl_Single_WindowEx;  cb:  Fl_DestructorEx) {.cdecl, importc: "Fl_Single_WindowExSetDestructorCB", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Single_WindowExSetDrawCB      (byval ex as Fl_Single_WindowEx ptr, byval cb as Fl_DrawEx)
    proc Fl_Single_WindowExSetDrawCB*( ex:  ptr Fl_Single_WindowEx;  cb:  Fl_DrawEx) {.cdecl, importc: "Fl_Single_WindowExSetDrawCB", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Single_WindowExSetHandleCB    (byval ex as Fl_Single_WindowEx ptr, byval cb as Fl_HandleEx)
    proc Fl_Single_WindowExSetHandleCB*( ex:  ptr Fl_Single_WindowEx;  cb:  Fl_HandleEx) {.cdecl, importc: "Fl_Single_WindowExSetHandleCB", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Single_WindowExSetResizeCB    (byval ex as Fl_Single_WindowEx ptr, byval cb as Fl_ResizeEx)
    proc Fl_Single_WindowExSetResizeCB*( ex:  ptr Fl_Single_WindowEx;  cb:  Fl_ResizeEx) {.cdecl, importc: "Fl_Single_WindowExSetResizeCB", dynlib: fltk, discardable.}

    #_ #################################################
    #_ # class Fl_Menu_Window extends Fl_Single_Window #
    #_ #################################################
    ## original: declare function Fl_Menu_WindowNew         (byval w as long, byval h as long, byval title as cstring=0) as Fl_Menu_Window ptr
    proc Fl_Menu_WindowNew* ( w:  long;  h:  long;  title:  cstring=nil):  ptr Fl_Menu_Window {.cdecl, importc: "Fl_Menu_WindowNew", dynlib: fltk, discardable.}
    ## original: declare function Fl_Menu_WindowNew2        (byval x as long, byval y as long, byval w as long, byval h as long, byval title as cstring=0) as Fl_Menu_Window ptr
    proc Fl_Menu_WindowNew2* ( x:  long;  y:  long;  w:  long;  h:  long;  title:  cstring=nil):  ptr Fl_Menu_Window {.cdecl, importc: "Fl_Menu_WindowNew2", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Menu_WindowDelete      (byref win as Fl_Menu_Window ptr)
    proc Fl_Menu_WindowDelete*( win:  var ptr Fl_Menu_Window) {.cdecl, importc: "Fl_Menu_WindowDelete", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Menu_WindowClearOverlay(byval win as Fl_Menu_Window ptr)
    proc Fl_Menu_WindowClearOverlay*( win:  ptr Fl_Menu_Window) {.cdecl, importc: "Fl_Menu_WindowClearOverlay", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Menu_WindowErase       (byval win as Fl_Menu_Window ptr)
    proc Fl_Menu_WindowErase*( win:  ptr Fl_Menu_Window) {.cdecl, importc: "Fl_Menu_WindowErase", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Menu_WindowFlush       (byval win as Fl_Menu_Window ptr)
    proc Fl_Menu_WindowFlush*( win:  ptr Fl_Menu_Window) {.cdecl, importc: "Fl_Menu_WindowFlush", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Menu_WindowHide        (byval win as Fl_Menu_Window ptr)
    proc Fl_Menu_WindowHide*( win:  ptr Fl_Menu_Window) {.cdecl, importc: "Fl_Menu_WindowHide", dynlib: fltk, discardable.}

    ## original: declare function Fl_Menu_WindowOverlay     (byval win as Fl_Menu_Window ptr) as ulong
    proc Fl_Menu_WindowOverlay* ( win:  ptr Fl_Menu_Window):  ulong {.cdecl, importc: "Fl_Menu_WindowOverlay", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Menu_WindowSetOverlay  (byval win as Fl_Menu_Window ptr)
    proc Fl_Menu_WindowSetOverlay*( win:  ptr Fl_Menu_Window) {.cdecl, importc: "Fl_Menu_WindowSetOverlay", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Menu_WindowShow        (byval win as Fl_Menu_Window ptr)
    proc Fl_Menu_WindowShow*( win:  ptr Fl_Menu_Window) {.cdecl, importc: "Fl_Menu_WindowShow", dynlib: fltk, discardable.}

    #_ #################################################
    #_ # class Fl_Menu_WindowEx extends Fl_Menu_Window #
    #_ #################################################
    ## original: declare function Fl_Menu_WindowExNew(byval w as long, byval h as long, byval title as cstring=0) as Fl_Menu_WindowEx ptr
    proc Fl_Menu_WindowExNew* ( w:  long;  h:  long;  title:  cstring=nil):  ptr Fl_Menu_WindowEx {.cdecl, importc: "Fl_Menu_WindowExNew", dynlib: fltk, discardable.}
    ## original: declare function Fl_Menu_WindowExNew2(byval x as long, byval y as long, byval w as long, byval h as long, byval title as cstring=0) as Fl_Menu_WindowEx ptr
    proc Fl_Menu_WindowExNew2* ( x:  long;  y:  long;  w:  long;  h:  long;  title:  cstring=nil):  ptr Fl_Menu_WindowEx {.cdecl, importc: "Fl_Menu_WindowExNew2", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Menu_WindowExDelete         (byref ex as Fl_Menu_WindowEx ptr)
    proc Fl_Menu_WindowExDelete*( ex:  var ptr Fl_Menu_WindowEx) {.cdecl, importc: "Fl_Menu_WindowExDelete", dynlib: fltk, discardable.}

    ## original: declare function Fl_Menu_WindowExHandleBase     (byval ex as Fl_Menu_WindowEx ptr, byval event as FL_EVENT) as long
    proc Fl_Menu_WindowExHandleBase* ( ex:  ptr Fl_Menu_WindowEx;  event:  FL_EVENT):  long {.cdecl, importc: "Fl_Menu_WindowExHandleBase", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Menu_WindowExSetDestructorCB(byval ex as Fl_Menu_WindowEx ptr, byval cb as Fl_DestructorEx)
    proc Fl_Menu_WindowExSetDestructorCB*( ex:  ptr Fl_Menu_WindowEx;  cb:  Fl_DestructorEx) {.cdecl, importc: "Fl_Menu_WindowExSetDestructorCB", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Menu_WindowExSetDrawCB      (byval ex as Fl_Menu_WindowEx ptr, byval cb as Fl_DrawEx)
    proc Fl_Menu_WindowExSetDrawCB*( ex:  ptr Fl_Menu_WindowEx;  cb:  Fl_DrawEx) {.cdecl, importc: "Fl_Menu_WindowExSetDrawCB", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Menu_WindowExSetHandleCB    (byval ex as Fl_Menu_WindowEx ptr, byval cb as Fl_HandleEx)
    proc Fl_Menu_WindowExSetHandleCB*( ex:  ptr Fl_Menu_WindowEx;  cb:  Fl_HandleEx) {.cdecl, importc: "Fl_Menu_WindowExSetHandleCB", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Menu_WindowExSetResizeCB    (byval ex as Fl_Menu_WindowEx ptr, byval cb as Fl_ResizeEx)
    proc Fl_Menu_WindowExSetResizeCB*( ex:  ptr Fl_Menu_WindowEx;  cb:  Fl_ResizeEx) {.cdecl, importc: "Fl_Menu_WindowExSetResizeCB", dynlib: fltk, discardable.}

    #_ ############################################
    #_ # class Fl_Double_Window extends Fl_Window #
    #_ ############################################
    ## original: declare function Fl_Double_WindowNew     (byval w as long, byval h as long, byval title as cstring=0) as Fl_Double_Window ptr
    proc Fl_Double_WindowNew* ( w:  long;  h:  long;  title:  cstring=nil):  ptr Fl_Double_Window {.cdecl, importc: "Fl_Double_WindowNew", dynlib: fltk, discardable.}
    ## original: declare function Fl_Double_WindowNew2    (byval x as long, byval y as long, byval w as long, byval h as long, byval title as cstring=0) as Fl_Double_Window ptr
    proc Fl_Double_WindowNew2* ( x:  long;  y:  long;  w:  long;  h:  long;  title:  cstring=nil):  ptr Fl_Double_Window {.cdecl, importc: "Fl_Double_WindowNew2", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Double_WindowDelete  (byref win as Fl_Double_Window ptr)
    proc Fl_Double_WindowDelete*( win:  var ptr Fl_Double_Window) {.cdecl, importc: "Fl_Double_WindowDelete", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Double_WindowFlush   (byval win as Fl_Double_Window ptr)
    proc Fl_Double_WindowFlush*( win:  ptr Fl_Double_Window) {.cdecl, importc: "Fl_Double_WindowFlush", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Double_WindowHide    (byval win as Fl_Double_Window ptr)
    proc Fl_Double_WindowHide*( win:  ptr Fl_Double_Window) {.cdecl, importc: "Fl_Double_WindowHide", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Double_WindowResize  (byval win as Fl_Double_Window ptr, byval x as long, byval y as long, byval w as long, byval h as long)
    proc Fl_Double_WindowResize*( win:  ptr Fl_Double_Window;  x:  long;  y:  long;  w:  long;  h:  long) {.cdecl, importc: "Fl_Double_WindowResize", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Double_WindowShow    (byval win as Fl_Double_Window ptr)
    proc Fl_Double_WindowShow*( win:  ptr Fl_Double_Window) {.cdecl, importc: "Fl_Double_WindowShow", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Double_WindowShowArgs(byval win as Fl_Double_Window ptr, byval argc as long, byval argv as cstring ptr)
    proc Fl_Double_WindowShowArgs*( win:  ptr Fl_Double_Window;  argc:  long;  argv:  ptr cstring) {.cdecl, importc: "Fl_Double_WindowShowArgs", dynlib: fltk, discardable.}

    #_ #####################################################
    #_ # class Fl_Double_WindowEx extends Fl_Double_Window #
    #_ #####################################################
    ## original: declare function Fl_Double_WindowExNew(byval w as long, byval h as long, byval title as cstring=0) as Fl_Double_WindowEx ptr
    proc Fl_Double_WindowExNew* ( w:  long;  h:  long;  title:  cstring=nil):  ptr Fl_Double_WindowEx {.cdecl, importc: "Fl_Double_WindowExNew", dynlib: fltk, discardable.}
    ## original: declare function Fl_Double_WindowExNew2(byval x as long, byval y as long, byval w as long, byval h as long, byval title as cstring=0) as Fl_Double_WindowEx ptr
    proc Fl_Double_WindowExNew2* ( x:  long;  y:  long;  w:  long;  h:  long;  title:  cstring=nil):  ptr Fl_Double_WindowEx {.cdecl, importc: "Fl_Double_WindowExNew2", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Double_WindowExDelete         (byref ex as Fl_Double_WindowEx ptr)
    proc Fl_Double_WindowExDelete*( ex:  var ptr Fl_Double_WindowEx) {.cdecl, importc: "Fl_Double_WindowExDelete", dynlib: fltk, discardable.}

    ## original: declare function Fl_Double_WindowExHandleBase     (byval ex as Fl_Double_WindowEx ptr, byval event as FL_EVENT) as long
    proc Fl_Double_WindowExHandleBase* ( ex:  ptr Fl_Double_WindowEx;  event:  FL_EVENT):  long {.cdecl, importc: "Fl_Double_WindowExHandleBase", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Double_WindowExSetDestructorCB(byval ex as Fl_Double_WindowEx ptr, byval cb as Fl_DestructorEx)
    proc Fl_Double_WindowExSetDestructorCB*( ex:  ptr Fl_Double_WindowEx;  cb:  Fl_DestructorEx) {.cdecl, importc: "Fl_Double_WindowExSetDestructorCB", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Double_WindowExSetDrawCB      (byval ex as Fl_Double_WindowEx ptr, byval cb as Fl_DrawEx)
    proc Fl_Double_WindowExSetDrawCB*( ex:  ptr Fl_Double_WindowEx;  cb:  Fl_DrawEx) {.cdecl, importc: "Fl_Double_WindowExSetDrawCB", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Double_WindowExSetHandleCB    (byval ex as Fl_Double_WindowEx ptr, byval cb as Fl_HandleEx)
    proc Fl_Double_WindowExSetHandleCB*( ex:  ptr Fl_Double_WindowEx;  cb:  Fl_HandleEx) {.cdecl, importc: "Fl_Double_WindowExSetHandleCB", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Double_WindowExSetResizeCB    (byval ex as Fl_Double_WindowEx ptr, byval cb as Fl_ResizeEx)
    proc Fl_Double_WindowExSetResizeCB*( ex:  ptr Fl_Double_WindowEx;  cb:  Fl_ResizeEx) {.cdecl, importc: "Fl_Double_WindowExSetResizeCB", dynlib: fltk, discardable.}

    #_ ####################################################
    #_ # class Fl_Overlay_Window extends Fl_Double_Window #
    #_ ####################################################
    ## original: declare sub      Fl_Overlay_WindowFlush        (byval win as Fl_Overlay_Window ptr)
    proc Fl_Overlay_WindowFlush*( win:  ptr Fl_Overlay_Window) {.cdecl, importc: "Fl_Overlay_WindowFlush", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Overlay_WindowHide         (byval win as Fl_Overlay_Window ptr)
    proc Fl_Overlay_WindowHide*( win:  ptr Fl_Overlay_Window) {.cdecl, importc: "Fl_Overlay_WindowHide", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Overlay_WindowResize       (byval win as Fl_Overlay_Window ptr, byval x as long, byval y as long, byval w as long, byval h as long)
    proc Fl_Overlay_WindowResize*( win:  ptr Fl_Overlay_Window;  x:  long;  y:  long;  w:  long;  h:  long) {.cdecl, importc: "Fl_Overlay_WindowResize", dynlib: fltk, discardable.}

    ## original: declare function Fl_Overlay_WindowCanDoOverlay (byval win as Fl_Overlay_Window ptr) as long
    proc Fl_Overlay_WindowCanDoOverlay* ( win:  ptr Fl_Overlay_Window):  long {.cdecl, importc: "Fl_Overlay_WindowCanDoOverlay", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Overlay_WindowRedrawOverlay(byval win as Fl_Overlay_Window ptr)
    proc Fl_Overlay_WindowRedrawOverlay*( win:  ptr Fl_Overlay_Window) {.cdecl, importc: "Fl_Overlay_WindowRedrawOverlay", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Overlay_WindowShow         (byval win as Fl_Overlay_Window ptr)
    proc Fl_Overlay_WindowShow*( win:  ptr Fl_Overlay_Window) {.cdecl, importc: "Fl_Overlay_WindowShow", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Overlay_WindowShowArgs     (byval win as Fl_Overlay_Window ptr, byval argc as long, byval argv as cstring ptr)
    proc Fl_Overlay_WindowShowArgs*( win:  ptr Fl_Overlay_Window;  argc:  long;  argv:  ptr cstring) {.cdecl, importc: "Fl_Overlay_WindowShowArgs", dynlib: fltk, discardable.}

    #_ #######################################################
    #_ # class Fl_Overlay_WindowEx extends Fl_Overlay_Window #
    #_ #######################################################
    ## original: declare function Fl_Overlay_WindowExNew(byval w as long, byval h as long, byval title as cstring=0) as Fl_Overlay_WindowEx ptr
    proc Fl_Overlay_WindowExNew* ( w:  long;  h:  long;  title:  cstring=nil):  ptr Fl_Overlay_WindowEx {.cdecl, importc: "Fl_Overlay_WindowExNew", dynlib: fltk, discardable.}
    ## original: declare function Fl_Overlay_WindowExNew2(byval x as long, byval y as long, byval w as long, byval h as long, byval title as cstring=0) as Fl_Overlay_WindowEx ptr
    proc Fl_Overlay_WindowExNew2* ( x:  long;  y:  long;  w:  long;  h:  long;  title:  cstring=nil):  ptr Fl_Overlay_WindowEx {.cdecl, importc: "Fl_Overlay_WindowExNew2", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Overlay_WindowExDelete           (byref win as Fl_Overlay_WindowEx ptr)
    proc Fl_Overlay_WindowExDelete*( win:  var ptr Fl_Overlay_WindowEx) {.cdecl, importc: "Fl_Overlay_WindowExDelete", dynlib: fltk, discardable.}

    ## original: declare function Fl_Overlay_WindowExHandleBase       (byval win as Fl_Overlay_WindowEx ptr, byval event as FL_EVENT) as long
    proc Fl_Overlay_WindowExHandleBase* ( win:  ptr Fl_Overlay_WindowEx;  event:  FL_EVENT):  long {.cdecl, importc: "Fl_Overlay_WindowExHandleBase", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Overlay_WindowExSetDraw_OverlayCB(byval win as Fl_Overlay_WindowEx ptr, byval cb as Fl_Draw_OverlayEx)
    proc Fl_Overlay_WindowExSetDraw_OverlayCB*( win:  ptr Fl_Overlay_WindowEx;  cb:  Fl_Draw_OverlayEx) {.cdecl, importc: "Fl_Overlay_WindowExSetDraw_OverlayCB", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Overlay_WindowExSetHandleCB      (byval win as Fl_Overlay_WindowEx ptr, byval cb as Fl_HandleEx)
    proc Fl_Overlay_WindowExSetHandleCB*( win:  ptr Fl_Overlay_WindowEx;  cb:  Fl_HandleEx) {.cdecl, importc: "Fl_Overlay_WindowExSetHandleCB", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Overlay_WindowExSetResizeCB      (byval win as Fl_Overlay_WindowEx ptr, byval cb as Fl_ResizeEx)
    proc Fl_Overlay_WindowExSetResizeCB*( win:  ptr Fl_Overlay_WindowEx;  cb:  Fl_ResizeEx) {.cdecl, importc: "Fl_Overlay_WindowExSetResizeCB", dynlib: fltk, discardable.}


    #_  #############
    #_  # Fl_Device #
    #_  #############

    #_  ########################################
    #_  # Fl_Graphics_Driver extends Fl_Device #
    #_  ########################################
    ## original: declare function Fl_Graphics_DriverClassName (byval gd as Fl_Graphics_Driver ptr) as cstring
    proc Fl_Graphics_DriverClassName* ( gd:  ptr Fl_Graphics_Driver):  cstring {.cdecl, importc: "Fl_Graphics_DriverClassName", dynlib: fltk, discardable.}

    #_  #######################################
    #_  # Fl_Surface_Device extends Fl_Device #
    #_  #######################################
    ## original: declare function Fl_Surface_DeviceSurface as Fl_Surface_Device ptr
    proc Fl_Surface_DeviceSurface* ():  ptr Fl_Surface_Device {.cdecl, importc: "Fl_Surface_DeviceSurface", dynlib: fltk, discardable.}

    ## original: declare function Fl_Surface_DeviceClassName(byval sd as Fl_Surface_Device ptr) as cstring
    proc Fl_Surface_DeviceClassName* ( sd:  ptr Fl_Surface_Device):  cstring {.cdecl, importc: "Fl_Surface_DeviceClassName", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Surface_DeviceSetDriver(byval sd as Fl_Surface_Device ptr, byval gd as Fl_Graphics_Driver ptr)
    proc Fl_Surface_DeviceSetDriver*( sd:  ptr Fl_Surface_Device;  gd:  ptr Fl_Graphics_Driver) {.cdecl, importc: "Fl_Surface_DeviceSetDriver", dynlib: fltk, discardable.}
    ## original: declare function Fl_Surface_DeviceGetDriver(byval sd as Fl_Surface_Device ptr) as Fl_Graphics_Driver ptr
    proc Fl_Surface_DeviceGetDriver* ( sd:  ptr Fl_Surface_Device):  ptr Fl_Graphics_Driver {.cdecl, importc: "Fl_Surface_DeviceGetDriver", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Surface_DeviceSetCurrent(byval sd as Fl_Surface_Device ptr)
    proc Fl_Surface_DeviceSetCurrent*( sd:  ptr Fl_Surface_Device) {.cdecl, importc: "Fl_Surface_DeviceSetCurrent", dynlib: fltk, discardable.}

    #_  #####################################################
    #_  # class Fl_Display_Device extends Fl_Surface_Device #
    #_  #####################################################
    #_  set drawing target back to display see also: Fl_Image_SurfaceSetCurrent(),Fl_Copy_SurfaceSetCurrent()
    ## original: declare sub      Fl_Display_DeviceSetCurrent()
    proc Fl_Display_DeviceSetCurrent*() {.cdecl, importc: "Fl_Display_DeviceSetCurrent", dynlib: fltk, discardable.}

    #_  ####################################################
    #_  # class Fl_Image_Surface extends Fl_Surface_Device #
    #_  ####################################################
    #_  After creation of an Fl_Image_Surface object, call Fl_Image_SurfaceSetCurrent() on it,
    #_  and all subsequent graphics requests will be recorded in the image.
    #_  It's possible to draw widgets (using Fl_Image_SurfaceDraw()) or to use any of the Drawing functions or the Color & Font functions.
    #_  Finally, call Fl_Image_SurfaceImage() on the object to obtain a newly allocated Fl_RGB_Image object.
    #_  Fl_GL_Window objects can be drawn in the image as well.
    ## original: declare function Fl_Image_SurfaceNew       (byval w as long, byval h as long) as Fl_Image_Surface ptr
    proc Fl_Image_SurfaceNew* ( w:  long;  h:  long):  ptr Fl_Image_Surface {.cdecl, importc: "Fl_Image_SurfaceNew", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_Image_SurfaceDelete    (byref ims as Fl_Image_Surface ptr)
    proc Fl_Image_SurfaceDelete*( ims:  var ptr Fl_Image_Surface) {.cdecl, importc: "Fl_Image_SurfaceDelete", dynlib: fltk, discardable.}

    ## original: declare function Fl_Image_SurfaceClassName (byval ims as Fl_Image_Surface ptr) as cstring
    proc Fl_Image_SurfaceClassName* ( ims:  ptr Fl_Image_Surface):  cstring {.cdecl, importc: "Fl_Image_SurfaceClassName", dynlib: fltk, discardable.}

    ## original: declare function Fl_Image_SurfaceGetDriver (byval ims as Fl_Image_Surface ptr) as Fl_Graphics_Driver ptr
    proc Fl_Image_SurfaceGetDriver* ( ims:  ptr Fl_Image_Surface):  ptr Fl_Graphics_Driver {.cdecl, importc: "Fl_Image_SurfaceGetDriver", dynlib: fltk, discardable.}

    ## original: declare function Fl_Image_SurfaceImage     (byval ims as Fl_Image_Surface ptr) as Fl_RGB_Image ptr
    proc Fl_Image_SurfaceImage* ( ims:  ptr Fl_Image_Surface):  ptr Fl_RGB_Image {.cdecl, importc: "Fl_Image_SurfaceImage", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Image_SurfaceSetCurrent(byval ims as Fl_Image_Surface ptr)
    proc Fl_Image_SurfaceSetCurrent*( ims:  ptr Fl_Image_Surface) {.cdecl, importc: "Fl_Image_SurfaceSetCurrent", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Image_SurfaceDraw      (byval ims as Fl_Image_Surface ptr, byval wgt as Fl_Widget ptr, byval delta_x as long=0, byval delta_y as long=0)
    proc Fl_Image_SurfaceDraw*( ims:  ptr Fl_Image_Surface;  wgt:  ptr Fl_Widget;  delta_x:  long=0;  delta_y:  long=0) {.cdecl, importc: "Fl_Image_SurfaceDraw", dynlib: fltk, discardable.}

    #_  ###################################################
    #_  # class Fl_Copy_Surface extends Fl_Surface_Device #
    #_  ###################################################
    #_  After creation of an Fl_Copy_Surface object, call Fl_Copy_SurfaceSetCurrent() on it,
    #_  and all subsequent graphics requests will be recorded in the clipboard.
    #_  It's possible to draw widgets (using Fl_Copy_SurfaceDraw() ) or to use any of the Drawing functions or the Color & Font functions.
    #_  Finally, delete the Fl_Copy_SurfaceDelete() object to load the clipboard with the graphical data.
    #_  Fl_GL_Window 's can be copied to the clipboard as well.
    ## original: declare function Fl_Copy_SurfaceNew       (byval w as long, byval h as long) as Fl_Copy_Surface ptr
    proc Fl_Copy_SurfaceNew* ( w:  long;  h:  long):  ptr Fl_Copy_Surface {.cdecl, importc: "Fl_Copy_SurfaceNew", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_Copy_SurfaceDelete    (byref cs as Fl_Copy_Surface ptr)
    proc Fl_Copy_SurfaceDelete*( cs:  var ptr Fl_Copy_Surface) {.cdecl, importc: "Fl_Copy_SurfaceDelete", dynlib: fltk, discardable.}

    ## original: declare function Fl_Copy_SurfaceClassName (byval cs as Fl_Copy_Surface ptr) as cstring
    proc Fl_Copy_SurfaceClassName* ( cs:  ptr Fl_Copy_Surface):  cstring {.cdecl, importc: "Fl_Copy_SurfaceClassName", dynlib: fltk, discardable.}

    ## original: declare function Fl_Copy_SurfaceGetDriver (byval cs as Fl_Copy_Surface ptr) as Fl_Graphics_Driver ptr
    proc Fl_Copy_SurfaceGetDriver* ( cs:  ptr Fl_Copy_Surface):  ptr Fl_Graphics_Driver {.cdecl, importc: "Fl_Copy_SurfaceGetDriver", dynlib: fltk, discardable.}
    #_  Use this drawing surface for future graphics requests.
    ## original: declare sub      Fl_Copy_SurfaceSetCurrent(byval cs as Fl_Copy_Surface ptr)
    proc Fl_Copy_SurfaceSetCurrent*( cs:  ptr Fl_Copy_Surface) {.cdecl, importc: "Fl_Copy_SurfaceSetCurrent", dynlib: fltk, discardable.}
    #_  Copies a widget in the clipboard.
    ## original: declare sub      Fl_Copy_SurfaceDraw      (byval cs as Fl_Copy_Surface ptr, byval wgt as Fl_Widget ptr, byval delta_x as long=0, byval delta_y as long=0)
    proc Fl_Copy_SurfaceDraw*( cs:  ptr Fl_Copy_Surface;  wgt:  ptr Fl_Widget;  delta_x:  long=0;  delta_y:  long=0) {.cdecl, importc: "Fl_Copy_SurfaceDraw", dynlib: fltk, discardable.}

    #~ #_  ###################################################
    #~ #_  # class Fl_Paged_Device extends Fl_Surface_Device #
    #~ #_  ###################################################
    type Page_Format = enum
      Page_Format_A0 = 0
      Page_Format_A1
      Page_Format_A2
      Page_Format_A3
      Page_Format_A4
      Page_Format_A5
      Page_Format_A6
      Page_Format_A7
      Page_Format_A8
      Page_Format_A9
      Page_Format_B0
      Page_Format_B1
      Page_Format_B2
      Page_Format_B3
      Page_Format_B4
      Page_Format_B5
      Page_Format_B6
      Page_Format_B7
      Page_Format_B8
      Page_Format_B9
      Page_Format_B10
      Page_Format_C5E
      Page_Format_DLE
      Page_Format_EXECUTIVE
      Page_Format_FOLIO
      Page_Format_LEDGER
      Page_Format_LEGAL
      Page_Format_LETTER
      Page_Format_TABLOID
      Page_Format_ENVELOPE
      Page_Format_MEDIA = 0X1000


    type Page_Layout = enum
      PORTRAIT    = 0X000
      LANDSCAPE   = 0X100
      REVERSED    = 0X200
      ORIENTATION = 0X300


    #define NUM_PAGE_FORMATS 30
    ## original: declare function Fl_Paged_DeviceFormatWidht  (byval pd as Fl_Paged_Device ptr, byval nFormat as long) as long
    proc Fl_Paged_DeviceFormatWidht* ( pd:  ptr Fl_Paged_Device;  nFormat:  long):  long {.cdecl, importc: "Fl_Paged_DeviceFormatWidht", dynlib: fltk, discardable.}

    ## original: declare function Fl_Paged_DeviceFormatHeight (byval pd as Fl_Paged_Device ptr, byval nFormat as long) as long
    proc Fl_Paged_DeviceFormatHeight* ( pd:  ptr Fl_Paged_Device;  nFormat:  long):  long {.cdecl, importc: "Fl_Paged_DeviceFormatHeight", dynlib: fltk, discardable.}

    ## original: declare function Fl_Paged_DeviceGetFormatName(byval pd as Fl_Paged_Device ptr, byval nFormat as long) as cstring
    proc Fl_Paged_DeviceGetFormatName* ( pd:  ptr Fl_Paged_Device;  nFormat:  long):  cstring {.cdecl, importc: "Fl_Paged_DeviceGetFormatName", dynlib: fltk, discardable.}

    #~ #_  ############################################
    #~ #_  # class Fl_Printer extends Fl_Paged_Device #
    #~ #_  ############################################
    #~ ## original: declare function Fl_PrinterNew as Fl_Printer ptr
    proc Fl_PrinterNew* ():  ptr Fl_Printer {.cdecl, importc: "Fl_PrinterNew", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_PrinterDelete(byref p as Fl_Printer ptr)
    proc Fl_PrinterDelete*( p:  var ptr Fl_Printer) {.cdecl, importc: "Fl_PrinterDelete", dynlib: fltk, discardable.}

    ## original: declare function Fl_PrinterClassName(byval p as Fl_Printer ptr) as cstring
    proc Fl_PrinterClassName* ( p:  ptr Fl_Printer):  cstring {.cdecl, importc: "Fl_PrinterClassName", dynlib: fltk, discardable.}

    ## original: declare function Fl_PrinterGetDriver(byval p as Fl_Printer ptr) as Fl_Graphics_Driver ptr
    proc Fl_PrinterGetDriver* ( p:  ptr Fl_Printer):  ptr Fl_Graphics_Driver {.cdecl, importc: "Fl_PrinterGetDriver", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_PrinterSetCurrent(byval p as Fl_Printer ptr)
    proc Fl_PrinterSetCurrent*( p:  ptr Fl_Printer) {.cdecl, importc: "Fl_PrinterSetCurrent", dynlib: fltk, discardable.}

    ## original: declare function Fl_PrinterStartJob(byval p as Fl_Printer ptr, byval pagecount as long=1, byval frompage as long ptr=0, byval topage as long ptr=0) as long
    proc Fl_PrinterStartJob* ( p:  ptr Fl_Printer;  pagecount:  long=1;  frompage:  ptr long=nil;  topage:  ptr long=nil):  long {.cdecl, importc: "Fl_PrinterStartJob", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_PrinterEndJob  (byval p as Fl_Printer ptr)
    proc Fl_PrinterEndJob*( p:  ptr Fl_Printer) {.cdecl, importc: "Fl_PrinterEndJob", dynlib: fltk, discardable.}

    ## original: declare function Fl_PrinterStartPage(byval p as Fl_Printer ptr) as long
    proc Fl_PrinterStartPage* ( p:  ptr Fl_Printer):  long {.cdecl, importc: "Fl_PrinterStartPage", dynlib: fltk, discardable.}
    ## original: declare function Fl_PrinterEndPage  (byval p as Fl_Printer ptr) as long
    proc Fl_PrinterEndPage* ( p:  ptr Fl_Printer):  long {.cdecl, importc: "Fl_PrinterEndPage", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_PrinterGetMargins      (byval p as Fl_Printer ptr, byref left as long, byref top as long, byref right as long, byref bottom as long)
    proc Fl_PrinterGetMargins*( p:  ptr Fl_Printer;  left:  var long;  top:  var long;  right:  var long;  bottom:  var long) {.cdecl, importc: "Fl_PrinterGetMargins", dynlib: fltk, discardable.}

    ## original: declare function Fl_PrinterGetPrintableRect(byval p as Fl_Printer ptr, byref w as long, byref h as long) as long
    proc Fl_PrinterGetPrintableRect* ( p:  ptr Fl_Printer;  w:  var long;  h:  var long):  long {.cdecl, importc: "Fl_PrinterGetPrintableRect", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_PrinterSetOrigin(byval p as Fl_Printer ptr, byval x as long, byval y as long)
    proc Fl_PrinterSetOrigin*( p:  ptr Fl_Printer;  x:  long;  y:  long) {.cdecl, importc: "Fl_PrinterSetOrigin", dynlib: fltk, discardable.}
    ## original: declare sub      Fl_PrinterGetOrigin(byval p as Fl_Printer ptr, byref x as long, byref y as long)
    proc Fl_PrinterGetOrigin*( p:  ptr Fl_Printer;  x:  var long;  y:  var long) {.cdecl, importc: "Fl_PrinterGetOrigin", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_PrinterPrintWidget(byval p as Fl_Printer ptr, byval wgt as Fl_Widget ptr, byval xOffset as long=0, byval yOffset as long=0)
    proc Fl_PrinterPrintWidget*( p:  ptr Fl_Printer;  wgt:  ptr Fl_Widget;  xOffset:  long=0;  yOffset:  long=0) {.cdecl, importc: "Fl_PrinterPrintWidget", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_PrinterPrintWindow(byval p as Fl_Printer ptr, byval win as Fl_Window ptr, byval xOffset as long=0, byval yOffset as long=0)
    proc Fl_PrinterPrintWindow*( p:  ptr Fl_Printer;  win:  ptr Fl_Window;  xOffset:  long=0;  yOffset:  long=0) {.cdecl, importc: "Fl_PrinterPrintWindow", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_PrinterPrintWindowPart(byval p as Fl_Printer ptr, byval win as Fl_Window ptr, byval x as long, byval y as long, byval w as long, byval h as long, byval delta_x as long=0, byval delta_y as long=0)
    proc Fl_PrinterPrintWindowPart*( p:  ptr Fl_Printer;  win:  ptr Fl_Window;  x:  long;  y:  long;  w:  long;  h:  long;  delta_x:  long=0;  delta_y:  long=0) {.cdecl, importc: "Fl_PrinterPrintWindowPart", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_PrinterRotate(byval p as Fl_Printer ptr, byval angle as single)
    proc Fl_PrinterRotate*( p:  ptr Fl_Printer;  angle:  single) {.cdecl, importc: "Fl_PrinterRotate", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_PrinterScale (byval p as Fl_Printer ptr, byval scale_x as single, byval scale_y as single=0.0)
    proc Fl_PrinterScale*( p:  ptr Fl_Printer;  scale_x:  single;  scale_y:  single=0.0) {.cdecl, importc: "Fl_PrinterScale", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_PrinterTranslate  (byval p as Fl_Printer ptr, byval x as long, byval y as long)
    proc Fl_PrinterTranslate*( p:  ptr Fl_Printer;  x:  long;  y:  long) {.cdecl, importc: "Fl_PrinterTranslate", dynlib: fltk, discardable.}

    ## original: declare sub      Fl_PrinterUntranslate(byval p as Fl_Printer ptr)
    proc Fl_PrinterUntranslate*( p:  ptr Fl_Printer) {.cdecl, importc: "Fl_PrinterUntranslate", dynlib: fltk, discardable.}


#endif #_  __FLTK_MAIN_BI__
