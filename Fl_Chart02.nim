import lenientops
import fltk_main

#~ 'test of:
#~ ' Fl_Chart           http://www.fltk.org/doc-1.3/classFl__Chart.html
#~ ' Fl_WidgetSetType
#~ ' Fl_ChartAdd

proc `\` (x: long; y: long): long = long(x.float / y.float)

proc AddItems(chart: ptr Fl_chart) {.cdecl.} =
  Fl_ChartAdd chart, 51.0,"on",1
  Fl_ChartAdd chart, 58.0,"50°",2
  Fl_ChartAdd chart, 61.0 ,"75°",3
  Fl_ChartAdd chart, 71.0 ,"100°",4
  Fl_ChartAdd chart, 96.0 ,"125°",5
  Fl_ChartAdd chart,117.0 ,"150°",6
  Fl_ChartAdd chart,140.0 ,"175°",7
  Fl_ChartAdd chart,155.0 ,"200°",8
  Fl_ChartAdd chart,180.0 ,"225°",9
  Fl_ChartAdd chart,206.0 ,"250°",10

var
    ww:long = 640
    hh:long = 480
    w:long = (ww-40) \ 3
    h = (hh-60) \ 2

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
