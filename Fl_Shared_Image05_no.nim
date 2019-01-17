import fltk_main

# test of:
#   Fl_Shared_ImageNumImages()
#   Fl_Shared_ImageCopy2()
#   Fl_Shared_ImageRelease()
#   Fl_ImageDelete()

Fl_Register_Images()

Fl_Shared_ImageGet("media/win.png")
Fl_Shared_ImageGet("media/win.png")
Fl_Shared_ImageGet("media/win.png")
Fl_Shared_ImageGet("media/lin.png")
Fl_Shared_ImageGet("media/lin.png")
Fl_Shared_ImageGet("media/lin.png")


var nImages = Fl_Shared_ImageNumImages()
echo "Fl_Shared_ImageNumImages() = " & $nImages

var i = 0
for i in 0 .. nImages-1:
  var img = Fl_Shared_ImageImages()[i]
  echo "Fl_Shared_ImageRefcount(" & i & ") = " & Fl_Shared_ImageRefcount(img)


# make a resized copy of SharedImage(0) as Fl_Image
# NOTE: a copy doesn#t increment the ref counter
var img = Fl_Shared_ImageCopy2(Fl_Shared_ImageImages()[0],16,16)


# release and delete the Fl_Shared_Image(s)
while Fl_Shared_ImageNumImages() > 0:
  var img = Fl_Shared_ImageImages()[Fl_Shared_ImageNumImages()-1]
  echo "Fl_Shared_ImageRelease(" & $(Fl_Shared_ImageNumImages()-1) & ")"
  Fl_Shared_ImageRelease img


nImages = Fl_Shared_ImageNumImages()
echo "Fl_Shared_ImageNumImages() = " & $nImages

# delete the Fl_Image
echo "Fl_ImageDelete(img)"
Fl_ImageDelete img

