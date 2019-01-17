import fltk_main

proc TimeoutHandler (box: ptr Fl_BOX){.cdecl.} =
  var index {.global.}:integer = 1
  # get number of loaded images
  var nImages = Fl_Shared_ImageNumImages()
  # error no images ?
  if nImages < 1:
    flMessageTitle "Error: in TimeoutHandler()"
    flAlert "No images loaded !\nApp will be closed."
    # get parent window of the box and close it
    Fl_WindowHide Fl_WidgetWindow(box)
    return

  # set next image
  Fl_WidgetSetImage box,Fl_Shared_ImageImages()[index]
  # redraw the widget
  Fl_WidgetRedraw box
  # increment the image index
  index = (index+1) mod nImages
  # repeat the timer in half a second
  Fl_RepeatTimeout(0.5, TimeoutHandler, box)

#
# main
#

# enable image loaders (bmp,gif,jpg,png, ...)
Fl_Register_Images()

# load 4 images in the shared image container
Fl_Shared_ImageGet("media/renata.bmp")
Fl_Shared_ImageGet("media/renata.png")
Fl_Shared_ImageGet("media/renata.gif")
Fl_Shared_ImageGet("media/renata.jpg")

# create a window a box and and a one shot timer
var win = Fl_WindowNew(148,148)
var box = Fl_BoxNew(10,10,128,128)
# set first image "0"
Fl_WidgetSetImage box, Fl_Shared_ImageImages()[0]
Fl_WindowShow win
Fl_AddTimeout 0.5,  TimeoutHandler, box
Fl_Run()




