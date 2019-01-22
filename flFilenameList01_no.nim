import fltk_main

#~ ' test of:
#~ ' flFilenameList()
#~ ' flFilenameFreeList()
#~ ' flFilenameIsDir()

var list: ptr ptr dirent
var nFiles = flFilenameList("./media", list, 0)
#~ if nFiles>1 then
  #~ print "files in folder ./media"
  #~ for i as integer=0 to nFiles-1
    #~ if flFilenameIsDir(list[i]->d_name)=0 then
      #~ print list[i]->d_name
    #~ end if
  #~ next
  #~ flFilenameFreeList @list,nFiles
#~ end if

