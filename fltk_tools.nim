when not defined(fltk_tools_bi):
    const fltk_tools_bi* = true

    #~ '  FreeBASIC header file for the Fast Light Tool Kit C wrapper.
    #~ '  FLTK C wrapper copyright 2013-2017 by D.J.Peters

    #~ '  C++ library Fast Light Tool Kit (FLTK)
    #~ '  Copyright 1998-2010 by Bill Spitzak and others.
    #~ '
    #~ '  This library is free software. Distribution and use rights are outlined in
    #~ '  the file "COPYING" which should have been included with this file.  If this
    #~ '  file is missing or damaged, see the license at:
    #~ '
    #~ '    http://www.fltk.org/COPYING.php
    #~ '
    #~ '  Please report all FLTK C wrapper bugs and problems on the following page:
    #~ '
    #~ '    http://www.freebasic.net/forum/viewtopic.php?f=14&t=24547

    when not defined(FLTK_MAIN_BI):
        #~ const FLTK_MAIN_BI* = true
       import fltk_main


    when defined(windows):
        const SEP = '\\'
    else:
        const SEP = '/'

    proc getGUIPath(): string =
      #~ dim as zstring ptr cwd = Fl_getcwd(0,2048)
      #~ dim as string path = *cwd : Fl_Free cwd
      #~ if right(path,1)<>SEP then path &=SEP
      #~ return path

        var cwd  = Fl_getcwd(cast[string](0),2048)
        var path = cwd
        Fl_Free cwd
        if path[^1] != SEP:
            path &= SEP
        return path


    #~ function getGUIApp as string
      #~ dim as string app = *flFilenameName(command(0))
      #~ dim as string ext = *flFilenameExt(app)
      #~ if len(ext) then app=left(app,len(app)-len(ext))
      #~ return app
    #~ end function


    #~ sub flMessageBox(byval title as const zstring ptr,byval msg as const zstring ptr)
      #~ if msg=0 then return
      #~ if title then flMessageTitle title
      #~ flMessage msg
    #~ end sub

    #~ ' Draw a single pixel at the given coordinates
    #~ sub DrawPointColor(byval x as integer,byval y as integer,byval c as Fl_color)
      #~ DrawSetColor c :DrawPoint x,y
    #~ end sub
    #~ sub DrawPointRGBColor(byval x as integer,byval y as integer,byval r as ubyte,byval g as ubyte,byval b as ubyte)
      #~ DrawSetColor Fl_RGB_Color(r,g,b) : DrawPoint x,y
    #~ end sub
    #~ ' Draw a 1-pixel border inside this bounding box.
    #~ sub DrawRectRGBColor(byval x as integer,byval y as integer,byval w as integer,byval h as integer,byval r as ubyte,byval g as ubyte,byval b as ubyte)
      #~ DrawRectColor x,y,w,h,Fl_RGB_Color(r,g,b)
    #~ end sub
    #~ ' Draws a box using given type, position, size and color.
    #~ sub DrawBoxRGBColor(byval bt as Fl_Boxtype,byval x as integer,byval y as integer,byval w as integer,byval h as integer,byval r as ubyte,byval g as ubyte,byval b as ubyte)
      #~ DrawBox bt,x,y,w,h,Fl_RGB_Color(r,g,b)
    #~ end sub

    #~ proc Fl_Menu_AddImageLabel(mnuBar: ptr Fl_Menu_TT,
                                   #~ mnuPath:   string,
                                   #~ labText:   string,
                                   #~ imgFile:   string,
                                   #~ shortcut:  long=0,
                                   #~ cb:        Fl_Callback=0,
                                   #~ imgAlign:  FL_ALIGN=0,
                                   #~ txtalign:  FL_ALIGN=0): ptr Fl_Menu_Item =
        #~ if mnuBar == 0:
            #~ return 0
        #~ if mnuPath == 0:
            #~ return 0
        #~ if labText == 0:
            #~ return 0
        #~ if imgFile == 0:
            #~ return 0

        #~ Fl_Menu_Add(mnuBar,mnuPath,shortcut,cb)

        #~ var itm: ptr Fl_Menu_Item = Fl_Menu_FindItemByName(mnuBar,mnuPath)
        #~ var img = Fl_PNG_ImageNew(imgFile)

        #~ Fl_WindowMakeCurrent Fl_WidgetWindow(mnuBar)

        #~ DrawSetFont Fl_WidgetGetLabelFont(mnuBar),Fl_WidgetGetLabelSize(mnuBar)

        #~ var
            #~ w, h: long

        #~ if (imgAlign and Fl_ALIGN_IMAGE_NEXT_TO_TEXT):
            #~ w = DrawGetStrWidth(labText) + Fl_ImageW(img)
            #~ h = iif(DrawGetFontHeight()>Fl_ImageH(img),DrawGetFontHeight(),Fl_ImageH(img))
        #~ else:
            #~ h = DrawGetFontHeight() + Fl_ImageH(img)
            #~ w = DrawGetStrWidth(labText)
            #~ if (w < Fl_ImageW(img)):
                #~ w = Fl_ImageW(img)


        #~ if h<32:
            #~ h= 32
        #~ if w<100:
            #~ w=100

        #~ DrawSetColor Fl_BACKGROUND_COLOR
        #~ DrawRectFill 0,0,w,h
        #~ DrawSetColor Fl_WidgetGetLabelColor(mnuBar)
        #~ DrawStrBox labText,0,0,w,h,imgAlign or txtAlign,img,0
        #'DrawStrBox labText,0,0,w,h,imgAlign or txtAlign or FL_ALIGN_CLIP,img,0
        #~ Fl_RGB_ImageDelete img
        #~ var pixels=DrawReadImage(0,0,0,w,h,0)
        #~ Fl_Menu_ItemImage itm,Fl_RGB_ImageNew(pixels,w,h,3)

        #~ return itm


    #~ function flbox(byval b as Fl_Boxtype) as Fl_Boxtype
      #~ return iif((b<BoxType(FL_UP_BOX) or b mod 4>1),b,(b-2))
    #~ end function

    #~ function fldown(byval b as Fl_Boxtype) as Fl_Boxtype
      #~ return iif((b<BoxType(FL_UP_BOX)),b,(b or 1))
    #~ end function

    #~ function flframe(byval b as Fl_Boxtype) as Fl_Boxtype
      #~ return iif((b mod 4<2),b,(b+2))
    #~ end function


    #~ 'Returns a lighter version of the specified color.
    #~ function Fl_Lighter(byval c as Fl_Color) as Fl_Color
      #~ return Fl_Color_Average(c, FL_WHITE, .67)
    #~ end function

    #~ function Fl_LighterRGB(byval r as ubyte,byval g as ubyte,byval b as ubyte) as Fl_Color
      #~ return Fl_Color_Average(Fl_RGB_Color(r,g,b), FL_WHITE, .67)
    #~ end function

    #~ ' Returns a darker version of the specified color.
    #~ function Fl_Darker(byval c as Fl_Color) as Fl_Color
      #~ return Fl_Color_Average(c, FL_BLACK, .67)
    #~ end function

    #~ function Fl_DarkerRGB(byval r as ubyte,byval g as ubyte,byval b as ubyte) as Fl_Color
      #~ return Fl_Color_Average(Fl_RGB_Color(r,g,b), FL_BLACK, .67)
    #~ end function

    #~ ' Draws the widget's label in an arbitrary bounding box.
    #~ sub Fl_WidgetDrawLabel2(byval wgt as Fl_Widget ptr,byval x as integer,byval y as integer,byval w as integer,byval h as integer)
      #~ dim as Fl_Align align = Fl_WidgetGetAlign(wgt)
      #~ if (align and Fl_ALIGN_POSITION_MASK) andalso (align and FL_ALIGN_INSIDE)=0 then return
      #~ Fl_WidgetDrawLabel(wgt,x,y,w,h,align)
    #~ end sub

    #~ ' Draws the widget's label at the defined label position.
    #~ sub Fl_WidgetDrawLabel3(byval wgt as Fl_Widget ptr)
      #~ dim as integer x = Fl_WidgetGetX(wgt)+Fl_BoxDX(Fl_WidgetGetBox(wgt))
      #~ dim as integer y = Fl_WidgetGetY(wgt)+Fl_BoxDY(Fl_WidgetGetBox(wgt))
      #~ dim as integer w = Fl_WidgetGetW(wgt)+Fl_BoxDW(Fl_WidgetGetBox(wgt))
      #~ dim as integer h = Fl_WidgetGetH(wgt)-Fl_BoxDH(Fl_WidgetGetBox(wgt))
      #~ if (w > 11) andalso (Fl_WidgetGetAlign(wgt) and (FL_ALIGN_LEFT or FL_ALIGN_RIGHT)) then
        #~ x += 3 : w -= 6
      #~ end if
      #~ Fl_WidgetDrawLabel2(wgt,x,y,w,h)
    #~ end sub

    #~ ' Draws a focus box for the widget at the given position and size
    #~ sub Fl_WidgetDrawFocus(byval wgt as Fl_Widget ptr,byval bt as Fl_Boxtype,byval x as integer,byval y as integer,byval w as integer,byval h as integer)
      #~ if Fl_WidgetGetVisibleFocus(wgt)=0 then return
      #~ select case bt
      #~ case FL_DOWN_BOX,FL_DOWN_FRAME,FL_THIN_DOWN_BOX,FL_THIN_DOWN_FRAME
        #~ x+=1 : y+=1
      #~ end select
      #~ DrawSetColor Fl_Contrast(FL_BLACK, Fl_WidgetGetColor(wgt))
    #~ #ifdef __FB_WIN32__
      #~ x += Fl_BoxDX(bt)
      #~ y += Fl_BoxDY(bt)
      #~ w -= Fl_BoxDW(bt) + 2
      #~ h -= Fl_BoxDH(bt) + 2
      #~ dim as integer i=1
      #~ dim as integer xx
      #~ while xx<w
        #~ if i and 1 then DrawPoint x+xx,y
        #~ xx+=1 : i+=1
      #~ wend
      #~ dim as integer yy
      #~ while yy<h
        #~ if i and 1 then DrawPoint x+w,y+yy
        #~ yy+=1 : i+=1
      #~ wend
      #~ xx=w
      #~ while xx>0
        #~ if i and 1 then DrawPoint x+xx,y+h
        #~ xx-=1 : i+=1
      #~ wend
      #~ yy=h
      #~ while yy>0
        #~ if i and 1 then DrawPoint x,y+yy
        #~ yy-=1 : i+=1
      #~ wend
    #~ #else
      #~ DrawSetLineStyle FL_DOT
      #~ DrawRect(x + Fl_BoxDX(bt), y + Fl_BoxDY(bt), w - Fl_BoxDW(bt) - 1, h - Fl_BoxDH(bt) - 1)
      #~ DrawSetLineStyle FL_SOLID
    #~ #endif
    #~ end sub

    #~ sub Fl_WidgetDrawFocus2(byval wgt as Fl_Widget ptr)
      #~ Fl_WidgetDrawFocus wgt,Fl_WidgetGetBox(wgt),Fl_WidgetGetX(wgt),Fl_WidgetGetY(wgt),Fl_WidgetGetW(wgt),Fl_WidgetGetH(wgt)
    #~ end sub


    #~ #define FL_TYPE_WINDOW        &HF0 ' < window type id all subclasses have Fl_WidgetGetType() >= this
    #~ #define FL_TYPE_DOUBLE_WINDOW &HF1 ' < double window type id

    #~ ' Forces a Fl_Group child to redraw.
    #~ sub Fl_Group_DrawChild(byval wgt as Fl_Widget ptr)
      #~ ' don`t draw if not visible
      #~ if Fl_WidgetVisible(wgt)=0 then return
      #~ ' don't draw if isn't a child
      #~ if Fl_WidgetGetType(wgt)>=FL_TYPE_WINDOW then return
      #~ ' draw it only if the child is a part of the current clip region
      #~ if DrawNotClipped(Fl_WidgetGetX(wgt), Fl_WidgetGetY(wgt),Fl_WidgetGetW(wgt),Fl_WidgetGetH(wgt)) then
        #~ Fl_WidgetClearDamage(wgt,FL_DAMAGE_ALL)
        #~ Fl_WidgetDraw(wgt)
        #~ Fl_WidgetClearDamage(wgt)
      #~ end if
    #~ end sub

    #~ ' Updates/draws a Fl_Group child only if it needs it.
    #~ ' see also Fl_Group_DrawChild(byval wgt as Fl_Widget ptr)
    #~ sub Fl_Group_UpdateChild(byval wgt as Fl_Widget ptr)
      #~ ' don't draw if nothing damaged since last draw
      #~ if Fl_WidgetGetDamage(wgt)=0 then return
      #~ ' don`t draw if not visible
      #~ if Fl_WidgetVisible(wgt)=0 then return
      #~ ' don't draw if isn't a child
      #~ if Fl_WidgetGetType(wgt)>=FL_TYPE_WINDOW then return
      #~ ' draw it only if the child is a part of the current clip region
      #~ if DrawNotClipped(Fl_WidgetGetX(wgt), Fl_WidgetGetY(wgt),Fl_WidgetGetW(wgt),Fl_WidgetGetH(wgt)) then
        #~ Fl_WidgetDraw(wgt)
        #~ Fl_WidgetClearDamage(wgt)
      #~ end if
    #~ end sub



    #~ function BoxtypeAsString(byval btype as integer) as const zstring ptr
    proc BoxtypeAsString*(btype: int32): cstring =
      case btype:
        of FL_NO_BOX                 :
          return "FL_NO_BOX"
        of FL_FLAT_BOX               :
          return "FL_FLAT_BOX"
        of FL_UP_BOX                 :
          return "FL_UP_BOX"
        of FL_DOWN_BOX               :
          return "FL_DOWN_BOX"
        of FL_UP_FRAME               :
          return "FL_UP_FRAME"
        of FL_DOWN_FRAME             :
          return "FL_DOWN_FRAME"
        of FL_THIN_UP_BOX            :
          return "FL_THIN_UP_BOX"
        of FL_THIN_DOWN_BOX          :
          return "FL_THIN_DOWN_BOX"
        of FL_THIN_UP_FRAME          :
          return "FL_THIN_UP_FRAME"
        of FL_THIN_DOWN_FRAME        :
          return "FL_THIN_DOWN_FRAME"
        of FL_ENGRAVED_BOX           :
          return "FL_ENGRAVED_BOX"
        of FL_EMBOSSED_BOX           :
          return "FL_EMBOSSED_BOX"
        of FL_ENGRAVED_FRAME         :
          return "FL_ENGRAVED_FRAME"
        of FL_EMBOSSED_FRAME         :
          return "FL_EMBOSSED_FRAME"

        of FL_BORDER_BOX             :
          return "FL_BORDER_BOX"
        of FL_SHADOW_BOX             :
          return "FL_SHADOW_BOX"

        of FL_BORDER_FRAME           :
          return "FL_BORDER_FRAME"
        of FL_SHADOW_FRAME           :
          return "FL_SHADOW_FRAME"

        of FL_ROUNDED_BOX            :
          return "FL_ROUNDED_BOX"
        of FL_RSHADOW_BOX            :
          return "FL_RSHADOW_BOX"

        of FL_ROUNDED_FRAME          :
          return "FL_ROUNDED_FRAME"

        of FL_RFLAT_BOX              :
          return "FL_RFLAT_BOX"
        of FL_OVAL_BOX               :
          return "FL_OVAL_BOX"
        of FL_OSHADOW_BOX            :
          return "FL_OSHADOW_BOX"
        of FL_OVAL_FRAME             :
          return "FL_OVAL_FRAME"
        of FL_OFLAT_BOX              :
          return "FL_OFLAT_BOX"

        of FL_ROUND_UP_BOX           :
          return "FL_ROUND_UP_BOX"
        of FL_ROUND_DOWN_BOX         :
          return "FL_ROUND_DOWN_BOX"

        of FL_DIAMOND_UP_BOX         :
          return "FL_DIAMOND_UP_BOX"
        of FL_DIAMOND_DOWN_BOX       :
          return "FL_DIAMOND_DOWN_BOX"

        of FL_PLASTIC_UP_BOX         :
          return "FL_PLASTIC_UP_BOX"
        of FL_PLASTIC_DOWN_BOX       :
          return "FL_PLASTIC_DOWN_BOX"
        of FL_PLASTIC_UP_FRAME       :
          return "FL_PLASTIC_UP_FRAME"
        of FL_PLASTIC_DOWN_FRAME     :
          return "FL_PLASTIC_DOWN_FRAME"
        of FL_PLASTIC_THIN_UP_BOX    :
          return "FL_PLASTIC_THIN_UP_BOX"
        of FL_PLASTIC_THIN_DOWN_BOX  :
          return "FL_PLASTIC_THIN_DOWN_BOX"
        of FL_PLASTIC_ROUND_UP_BOX   :
          return "FL_PLASTIC_ROUND_UP_BOX"
        of FL_PLASTIC_ROUND_DOWN_BOX :
          return "FL_PLASTIC_ROUND_DOWN_BOX"

        of FL_GTK_UP_BOX             :
          return "FL_GTK_UP_BOX"
        of FL_GTK_DOWN_BOX           :
          return "FL_GTK_DOWN_BOX"
        of FL_GTK_UP_FRAME           :
          return "FL_GTK_UP_FRAME"
        of FL_GTK_DOWN_FRAME         :
          return "FL_GTK_DOWN_FRAME"
        of FL_GTK_THIN_UP_BOX        :
          return "FL_GTK_THIN_UP_BOX"
        of FL_GTK_THIN_DOWN_BOX      :
          return "FL_GTK_THIN_DOWN_BOX"
        of FL_GTK_THIN_UP_FRAME      :
          return "FL_GTK_THIN_UP_FRAME"
        of FL_GTK_THIN_DOWN_FRAME    :
          return "FL_GTK_THIN_DOWN_FRAME"
        of FL_GTK_ROUND_UP_BOX       :
          return "FL_GTK_ROUND_UP_BOX"
        of FL_GTK_ROUND_DOWN_BOX     :
          return "FL_GTK_ROUND_DOWN_BOX"

        of FL_GLEAM_UP_BOX           :
          return "FL_GLEAM_UP_BOX"
        of FL_GLEAM_DOWN_BOX         :
          return "FL_GLEAM_DOWN_BOX"
        of FL_GLEAM_UP_FRAME         :
          return "FL_GLEAM_UP_FRAME"
        of FL_GLEAM_DOWN_FRAME       :
          return "FL_GLEAM_DOWN_FRAME"
        of FL_GLEAM_THIN_UP_BOX      :
          return "FL_GLEAM_THIN_UP_BOX"
        of FL_GLEAM_THIN_DOWN_BOX    :
          return "FL_GLEAM_THIN_DOWN_BOX"
        of FL_GLEAM_ROUND_UP_BOX     :
          return "FL_GLEAM_ROUND_UP_BOX"
        of FL_GLEAM_ROUND_DOWN_BOX   :
          return "FL_GLEAM_ROUND_DOWN_BOX"
        else                      :
          return "UNKNOW BOX TYPE"


    proc EventAsString*(event: Fl_Event): cstring {.cdecl.} =
        case int(event)  :
            of FL_EVENT_PUSH           :
                return "FL_EVENT_PUSH (1)"
            of FL_EVENT_RELEASE        :
                return "FL_EVENT_RELEASE (2)"
            of FL_EVENT_ENTER          :
                return "FL_EVENT_ENTER (3)"
            of FL_EVENT_LEAVE          :
                return "FL_EVENT_LEAVE (4)"
            of FL_EVENT_DRAG           :
                return "FL_EVENT_DRAG (5)"
            of FL_EVENT_FOCUS          :
                return "FL_EVENT_FOCUS (6)"
            of FL_EVENT_UNFOCUS        :
                return "FL_EVENT_UNFOCUS (7)"
            of FL_EVENT_KEYDOWN        :
                return "FL_EVENT_KEYDOWN (8)"
            of FL_EVENT_KEYUP          :
                return "FL_EVENT_KEYUP (9)"
            of FL_EVENT_CLOSE          :
                return "FL_EVENT_CLOSE (10)"
            of FL_EVENT_MOVE           :
                return "FL_EVENT_MOVE (11)"
            of FL_EVENT_SHORTCUT       :
                return "FL_EVENT_SHORTCUT (12)"
            of FL_EVENT_DEACTIVATE     :
                return "FL_EVENT_DEACTIVATE (13)"
            of FL_EVENT_ACTIVATE       :
                return "FL_EVENT_ACTIVATE (14)"
            of FL_EVENT_HIDE           :
                return "FL_EVENT_HIDE (15)"
            of FL_EVENT_SHOW           :
                return "FL_EVENT_SHOW (16)"
            of FL_EVENT_PASTE          :
                return "FL_EVENT_PASTE (17)"
            of FL_EVENT_SELECTIONCLEAR :
                return "FL_EVENT_SELECTIONCLEAR (18)"
            of FL_EVENT_MOUSEWHEEL     :
                return "FL_EVENT_MOUSEWHEEL (19)"
            of FL_EVENT_DND_ENTER      :
                return "FL_EVENT_DND_ENTER (20)"
            of FL_EVENT_DND_DRAG       :
                return "FL_EVENT_DND_DRAG (21)"
            of FL_EVENT_DND_LEAVE      :
                return "FL_EVENT_DND_LEAVE (22)"
            of FL_EVENT_DND_RELEASE    :
                return "FL_EVENT_DND_RELEASE (23)"
            of FL_EVENT_SCREEN_CONFIGURATION_CHANGED :
                return "FL_EVENT_SCREEN_CONFIGURATION_CHANGED (24)"
            of FL_EVENT_FULLSCREEN     :
                return "FL_EVENT_FULLSCREEN (25)"
            else :
                return "UNKNOW EVENT"



#~ #endif ' __fltk_tools_bi__
