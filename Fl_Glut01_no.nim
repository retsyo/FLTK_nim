#ifndef __FB_ARM__

import fltk_main
import fltk_gl

proc ReshapeFunc (w: long, h: long) {.cdecl.}=
  if (w<1) or (h<1) :
    return
  glViewport(0,0,w,h)
  glMatrixMode(GL_PROJECTION)
  glLoadIdentity()
  # replacement for gluPerspective
  Perspective(60.0,w/h,0.1,1000.0)
  glMatrixMode(GL_MODELVIEW)
  glLoadIdentity()


proc DisplayFunc() {.cdecl.}=
  var init{.global.}: bool = false
  if init == false :

    glEnable(GL_DEPTH_TEST)
    glEnable(GL_LIGHTING)
    glEnable(GL_LIGHT0)
    glEnable(GL_COLOR_MATERIAL)
    glClearColor(0,.5,.5,1)
    glColor3f(.75,.5,0)
    init = true


  glClear GL_COLOR_BUFFER_BIT or GL_DEPTH_BUFFER_BIT
  glPushMatrix()
  glTranslatef(0,0,-1.5)
  #GlutSolidSphere(.5,24,24)
  GlutSolidTeapot(.5)
  #GlutSolidTorus .1,.6,16,50
  #GlutSolidCube 1
  glPopMatrix()
  glFlush()


#
# main
#
Fl_GlutInit() # helper it calls GluInit(@argc,@argv)
GlutInitDisplayMode(GLUT_RGB or GLUT_DOUBLE or GLUT_DEPTH)
GlutCreateWindow("Fl_Glut_Window01.bas")
GlutDisplayFunc(DisplayFunc)
GlutReshapeFunc(ReshapeFunc)
GlutShowWindow()
GlutMainLoop() # same: Fl_Run
#else

#print Ignored on ARM platform !

#endif # __FB_ARM__
