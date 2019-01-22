type T_A = ref object of RootObj
    name: cstring
    age: int


var a: T_A = T_A(name:"jack", age:20)

echo $a.name, $a.age


#~ template DeclareEx*(name: untyped, spici: utyped) =
    #~ type `T spici`{.inject.} = T_A
        #~ ss: string = `spici`{.inject.}

type T_spici = ref object of T_A
    ss: string


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


#~ Fl_Extends1(WidgetEx,Widget)

type Fl_Widget* = ref object of RootObj
        dummy: pointer


#macro Fl_Extends1(WidgetEx,Widget)
type Fl_WidgetEx* = ref object of Fl_Widget

## original:   declare function WidgetEx as Fl_##WidgetEx ptr
#~ proc WidgetEx* ():  ptr Fl_WidgetEx
#~ declare operator cast as Fl_Widget ptr

#private:
#~ dummy: pointer

method WidgetEx(this: Fl_WidgetEx): Fl_WidgetEx {.base.} =
    return this


#~ proc Fl_WidgetEx.WidgetEx(): ptr Fl_WidgetEx =
    #~ return     self

#~ operator Fl_WidgetEx.cast  as Fl_Widget  ptr : operator = @this : end operator
#endmacro

var ww = Fl_WidgetEx()
echo ww.WidgetEx()

