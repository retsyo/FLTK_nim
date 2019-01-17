import fltk_main

#test of:
# class Fl_Browser_      extends Fl_Group http://www.fltk.org/doc-1.3/classFl__Browser__.html
# class Fl_Check_Browser extends Fl_Browser_ http://www.fltk.org/doc-1.3/classFl__Check__Browser.html

# Fl_Browser_SetTextColor
# Fl_Browser_SetHasScrollbar

# Fl_Check_BrowserNew
# Fl_Check_BrowserAdd
# Fl_Check_BrowserSetChecked
# Fl_Check_BrowserNItems
# Fl_Check_BrowserGetChecked
# Fl_Check_BrowserText


var win = Fl_Double_WindowNew(320, 100, "Fl_Check_Browser01.bas")
var cbr = Fl_Check_BrowserNew(10, 10, 320-20, 100-20)

Fl_Browser_SetTextColor cbr, FL_RGB_Color(255, 128, 128)

Fl_Browser_SetHasScrollbar cbr, FL_SCROLL_VERTICAL_ALWAYS

Fl_Check_BrowserAdd2 cbr, "item 1", 1
Fl_Check_BrowserAdd  cbr, "item 2"
Fl_Check_BrowserAdd2 cbr, "item 3", 1
Fl_Check_BrowserAdd  cbr, "item 4"
Fl_Check_BrowserAdd  cbr, "item 5"
Fl_Check_BrowserAdd  cbr, "item 6"
Fl_Check_BrowserAdd  cbr, "item 7"
Fl_Check_BrowserAdd2 cbr, "item 8", 1

Fl_Check_BrowserSetChecked cbr, 5

var
    nItems = Fl_Check_BrowserNItems(cbr)
    item = 0
if nItems>0 :
  for item in 1 .. nItems:
    if Fl_Check_BrowserGetChecked(cbr, item) > 0 :
      echo  "[*] ";
    else:
      echo "[ ] ";

    echo  Fl_Check_BrowserText(cbr, item)


Fl_GroupSetResizable win, cbr
Fl_WindowShow win
Fl_Run()
