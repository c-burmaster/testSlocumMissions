behavior_name=goto_list
#  Written by gen-goto-list-ma ver 1.0 on GMT:Tue Feb 19 18:56:54 2002
#  07-Aug-02 tc@DinkumSoftware.com Manually edited for spawars 7aug02 op in buzzards bay
#  07-Aug-02 tc@DinkumSoftware.com Changed from decimal degrees to degrees, minutes, decimal minutes
#  ??-Apr-03 kniewiad@webbresearch.com changed to ashument
#  17-Apr-03 tc@DinkumSoftware.com fixed comments
#  2019-Jul-16 cailinburmaster@gmail.com changed waypoints for Explorer Seamount cruise We01-We04
#  2019-07-21 james.pegg@dfo-mpo.gc.ca added named waypoints for reference and re-arranged to start at W4
#  2019-07-25 james.pegg@dfo-mpo.gc.ca changed to traverse once and start at first (W1) and added list_when_wpt_dist(m) 500
#  2019-08-05 tetjana.ross@dfo-mpo.gc.ca changed to traverse continuously around a triangle including P16 and two points 1 km N.
# changed to start after last achieved
# 2019-08-27 james.pegg@dfo-mpo.gc.ca changed radius to achieve wpt to 1000m
# goto_l10.ma
# Wall_E's waypoint list for Explorer Seamount
#P1 -12530.0000 4834.5000
#P2 -12600.0000 4836.0000
#P3 -12620.0000 4837.5000
#P4 -12640.0000 4839.0000
#P5 -12710.0000 4841.5000
#P6 -12740.0000 4844.6000
#P7 -12810.0000 4846.6000
#P8 -12840.0000 4849.0000
#P9 -12910.0000 4851.4000
#P10 -12940.0000 4853.6000
#P11 -13010.0000 4856.0000
#P12 -13040.0000 4858.2000
#w1 -13054.4500 4912.9000
#w2 -13057.0500 4852.4500
#w3 -13038.4000 4901.3500
#w4 -13113.5000 4903.4500
#summit -13056.5305 4903.5242
#P13 -13140.0000 4902.6000
#P14 -13240.0000 4907.4000
#P15 -13340.0000 4912.0000
#P16nw -13442.0000 4917.5500
#P16ne -13438.0000 4917.5500
#P16 -13440.0000 4917.0000
#P17 -13540.0000 4921.0000
#P18 -13640.0000 4926.0000
#P19 -13740.0000 4930.0000
#P20 -13840.0000 4934.0000
#P21 -13940.0000 4938.0000
#P22 -14040.0000 4942.0000
#P23 -14140.0000 4946.0000
#P24 -14240.0000 4950.2000
#P25 -14336.3000 5000.0000
#P35 -14418.2000 5000.0000
#P26 -14500.0000 5000.0000

# this file P18-26

<start:b_arg>
b_arg: list_when_wpt_dist(m) 1000 # if the glider is within 1000m the waypoint is considered as hit
b_arg: num_legs_to_run(nodim) -1 # loop through points
b_arg: start_when(enum) 0 # BAW_IMMEDIATELY
b_arg: list_stop_when(enum) 7 # BAW_WHEN_WPT_DIST
b_arg: initial_wpt(enum) -1# # 0 to n-1,-1 first after last,-2 closest
b_arg: num_waypoints(nodim) 10
<end:b_arg>
<start:waypoints>
-13640.0000 4926.0000
-13740.0000 4930.0000
-13840.0000 4934.0000
-13940.0000 4938.0000
-14040.0000 4942.0000
-14140.0000 4946.0000
-14240.0000 4950.2000
-14336.3000 5000.0000
-14418.2000 5000.0000
-14500.0000 5000.0000
<end:waypoints>
