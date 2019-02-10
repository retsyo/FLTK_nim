import lenientops
import fltk_main

#~ 'test of:
#~ ' Fl_Chart           http://www.fltk.org/doc-1.3/classFl__Chart.html
#~ ' Fl_WidgetSetType
#~ ' Fl_ChartAdd

proc `\` (x: long; y: long): long = long(x.float / y.float)

proc AddItems(chart: ptr Fl_chart) {.cdecl.} =
  Fl_ChartAdd chart,0.25 ,"value 0.25" ,FL_RED
  Fl_ChartAdd chart,1.333,"value 1.333",FL_GREEN
  Fl_ChartAdd chart,2.0  ,"value 2.0"  ,Fl_RGB_Color(128,64,0)
  Fl_ChartAdd chart,0.66 ,"value 0.66" ,Fl_RGB_Color(0,128,128)
  Fl_ChartAdd chart,-0.4 ,"value -0.4" ,Fl_BLACK

var
  ww: long = Fl_GetW()\2
  hh: long = Fl_GetH()\2
  w:  long = (ww-40) \ 3
  h:  long = (hh-60) \ 2

var Win = Fl_WindowNew(ww,hh, "Fl_Chart")

var chart1 = Fl_ChartNew(10+w*0,10+h*0,w,h,"FL_CHART_BAR")
Fl_WidgetSetType chart1,FL_CHART_BAR
AddItems chart1

var chart2 = Fl_ChartNew(20+w*1,10+h*0,w,h,"FL_CHART_LINE")
Fl_WidgetSetType chart2,FL_CHART_LINE
AddItems chart2

var chart3 = Fl_ChartNew(30+w*2,10+h*0,w,h,"FL_CHART_FILL")
Fl_WidgetSetType chart3,FL_CHART_FILL
AddItems chart3

var chart4 = Fl_ChartNew(10+w*0,30+h*1,w,h,"FL_CHART_SPIKE")
Fl_WidgetSetType chart4,FL_CHART_SPIKE
AddItems chart4

var chart5 = Fl_ChartNew(30+w*2,30+h*1,w,h,"FL_CHART_PIE")
Fl_WidgetSetType chart5,FL_CHART_PIE
AddItems chart5

Fl_WindowShow Win
Fl_Run()
