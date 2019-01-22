import fltk_main

var
    r8=128
    g8=64
    b8=0

    rr=0.5
    gg=0.26
    bb=0.0

    file: string
    path:string

proc FileOrFolderCB  (path: cstring){.cdecl.} =
  if len(path) != 0 :
    echo """FileChFileOrFolderCB("""" & $path & """")"""



flFileChooserCallback FileOrFolderCB

flMessageTitleDefault("I'm a default Title !")
flAlert "I'm a alert message 1"

flMessageTitle("I'm a individual Title !")
flAlert "I'm a alert message 2"


echo "flChoice() = " & flChoice("flChoice()", "button0", "button1", "button2")

flColorChooser "flColorChooser()",r8,g8,b8, FL_COLORCHOOSER_RGB
echo "flColorChooser() = " & r8,g8,b8

flColorChooser2 "flColorChooser2()",rr,gg,gg, FL_COLORCHOOSER_RGB
echo "flColorChooser2() = " & rr,gg,bb

echo "flInput() = " & flInput("flInput:","type here ...")


path = flDirChooser("select a folder", getAppDir(), 1) # 1 = relative 0 = absolute path
if path<>0 :
 echo "flDirChooser() = " & path

flFileChooserOkLabel("I'm a OK label")
file = flFileChooser("select a file","*.bas", ExePath(), 1) # 1 = relative 0 = absolute path
if file<>0 and len(file) :
 echo "flFileChooser() = " & file



