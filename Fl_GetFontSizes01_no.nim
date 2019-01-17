import os
import fltk_main

#~ ' test of:
#~ ' Fl_GetFontSizes

var
    fontName: string

    attributes: long
    defaultSize: long
    fontSize: long

    fontsizes: ptr long = addr(fontSize)

#~ ' load font list
var nFonts = Fl_SetFonts()

var
    i: long
    j: integer

for i in 0 ..  nFonts-1:
  fontName = Fl_GetFontName(i, addr(attributes))
  if len(fontName) > 0  and fontName[0] != '@' :
    echo  $i & " " & fontName & " "
    case attributes:
      of FL_BOLD        :
          echo "is bold "
      of FL_ITALIC      :
          echo "is italic "
      of FL_BOLD_ITALIC :
          echo "is bold and italic "
      else:
          discard

    defaultSize = Fl_GetFontSizes(i, fontsizes)
    if (defaultSize > 1) and (fontsizes[] != 0) :
      echo "font has fixed sizes: "

      fontSize = fontsizes[j]
      while fontSize.len > 0:
        if (fontSize=defaultSize) :
          echo "[" & $fontSize & "] "
        else:
          echo $(fontSize) & " "

        j += 1
        fontSize=fontsizes[j]

      sleep 700

    sleep 300
    echo

