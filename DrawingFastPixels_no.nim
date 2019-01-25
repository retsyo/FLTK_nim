import lenientops
import times
import math
import strUtils
import random
import posix
import fltk_main

proc `\` (x: long|float32; y: long): long = long(x.float / y.float)

converter toInt8(x: float32|int): int8 = cast[int8](x)
converter toUint8(x: float32|uint): uint8 = cast[uint8](x)
proc RGBA(r, g, b, a: uint8) : uint32 = (cuint(r) shl 16) or (cuint(g) shl 8) or cuint(b) or (cuint(a) shl 24)


const scr_w = 1024
const scr_h = int(scr_w/16*9)

const g         = 9.80665
const g2        = g * 2.0
const gd2       = g * 0.5
const pi        = 3.141592654
const pi2       = pi * 2.0
const onedegree = pi/180.0

const max_particles = 100000
const last_particle = max_particles - 1

type PARTICLE = object
  bt  : double # birth time
  scrx: integer
  scry: integer
  posx: integer
  posy: integer
  v0  : single # speed at time 0
  acc : single
  col : uint32

var particles{.global.}: array[max_particles, PARTICLE]

proc init_particle(i: integer, t: double) {.cdecl.} =
  var w{.global.}: single
  var
    rc: single = cos(w     )*0.5+0.5
    gc: single =cos(w*1.25)*0.5+0.5
    bc: single =cos(w*1.5 )*0.5+0.5

  particles[i].posx=integer(cos(w)*scr_w\4)
  particles[i].bt  = t
  particles[i].v0  = sin(w)*80
  particles[i].acc = cos(w)*pi+rand(pi2)
  particles[i].col = RGBA(255*bc, 255*gc, 255*rc, uint8(255))

  w=w+(1.0/max_particles)


proc update_particles(t: double)  {.cdecl.} =
    var
        s, vs: single
        i: integer
    for i  in 0 .. last_particle:
        s = (t - particles[i].bt)
        vs = particles[i].v0 * s
        particles[i].scrx=integer((scr_w\2) + particles[i].posx + int(vs*cos(particles[i].acc)))
        particles[i].scry=integer((scr_h\2) - ( particles[i].posy + int(vs*sin(particles[i].acc)-gd2*(s*s))))


proc render_particles(t  : double,
                     box: ptr Fl_Box)  {.cdecl.} =
    var Pixels{.global.}: cstring
    var img = Fl_WidgetGetImage(box)
    if not img.isNil :
      Fl_ImageDelete img
      img=nil

    if not Pixels.isNil :
        #~ deallocate Pixels
        Pixels=nil
    if Pixels.isNil :
        #Pixels=allocate(scr_w*scr_h*4)
        #~ for i: integer=0 to scr_w*scr_h-1
            #~ Pixels[i]=&HFFFFFFFF
        discard
    Pixels = "FFFFFFFF".repeat(scr_w*scr_h)


    var
        pPixels: ptr uinteger
        i: integer

    for i in 0 .. last_particle:
        if particles[i].scry > scr_h-1 or particles[i].scrx < 0 or particles[i].scrx > scr_w:
            init_particle integer(i), t
        elif particles[i].scry > -1 :
            Pixels[particles[i].scrx+particles[i].scry*scr_w] = 'a' #toHex(particles[i].col, 8)

    img = Fl_RGB_ImageNew(Pixels, scr_w, scr_h, 4, 0)
    Fl_WidgetSetImage box, img
    Fl_WidgetRedraw box


#
# main
#
var curtime: float = epochTime()# Timer()
var index: int
for index in 0 .. last_particle:
    init_particle integer(index), curtime

var win=Fl_Double_WindowNew(scr_w, scr_h)
var box=Fl_BoxNew(0, 0, scr_w, scr_h)
Fl_WindowShow win

while Fl_Wait() > 0:
    curtime = epochTime()
    update_particles curtime
    render_particles curtime, box
    discard sleep cint(1000\60)#, 1


