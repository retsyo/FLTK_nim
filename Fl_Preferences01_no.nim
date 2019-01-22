import fltk_main

# test of class Fl_Preferences
# http://www.fltk.org/doc-1.3/classFl__Preferences.html

const datasize = 4
var outData: array[datasize, ubyte]
var i = 0
for i in 0 .. datasize-1:
  outData[i] = ubyte(i)



# create a preferences file
var pref = Fl_PreferencesNew(FL_ROOT_USER, "vendor.xxx", "myapp")

# write some integer values
for i in 0 .. 3:
  Fl_PreferencesSetInt(pref, "key_i_" & $i, i)


# write a float value
Fl_PreferencesSetFloat(pref, "key_f", 123.4)
# write a double value
Fl_PreferencesSetDouble(pref, "key_d", 123.456789)
# write a double with precision count of 10
Fl_PreferencesSetDouble2(pref, "key_d2", 123.456789, 10)
# write a string value
Fl_PreferencesSetString(pref, "key_s", "i'm a string")

var group = Fl_PreferencesNewGroup(pref, "mygroup")
# write binary data to the group
#~ Fl_PreferencesSetData(group, "key_bin", outData, datasize)
# close the pref
Fl_PreferencesDelete pref



# open a preferences db
pref = Fl_PreferencesNew(FL_ROOT_USER, "vendor.xxx", "myapp")
# read some integers
var iValue:long = 0
for i in 0 .. 3:
  Fl_PreferencesGetInt(pref, "key_i_" & $i, iValue, 0)
  echo iValue

# read a single value
var fValue: single
Fl_PreferencesGetFloat(pref, "key_f", fValue, 0.0)
echo fValue
# read a double value
var dValue: double
Fl_PreferencesGetDouble(pref, "key_d", dValue, 0.0)
echo dValue
# read a double value
Fl_PreferencesGetDouble(pref, "key_d2", dValue, 0.0)
echo dValue
# read a string value
var sValue: cstring #= callocate(255)
Fl_PreferencesGetString(pref, "key_s", sValue, "")
echo $sValue
#~ deallocate sValue

# read binary data
var inData: ptr ubyte
group = Fl_PreferencesNewGroup(pref, "mygroup")

#~ Fl_PreferencesGetData(group, "key_bin", inData, addr outData, datasize)
#~ for i in 0 .. datasize-1:
  #~ echo $inData[i]

#~ Fl_Free inData

Fl_PreferencesDelete pref




