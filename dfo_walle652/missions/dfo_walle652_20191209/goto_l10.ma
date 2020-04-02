behavior_name=goto_list
#  Written by gen-goto-list-ma ver 1.0 on GMT:Tue Feb 19 18:56:54 2002
#  07-Aug-02 tc@DinkumSoftware.com Manually edited for spawars 7aug02 op in buzzards bay
#  07-Aug-02 tc@DinkumSoftware.com Changed from decimal degrees to degrees, minutes, decimal minutes
#  ??-Apr-03 kniewiad@webbresearch.com changed to ashument
#  17-Apr-03 tc@DinkumSoftware.com fixed comments
# 2019-12-08 james.pegg@dfo-mpo.gc.ca added waypoints for launch and start of line P
# 2019-12-19 james.pegg@dfo-mpo.gc.ca full waypoint list outbound, even stations with seamount summit instead of P12, 5km wpt radius

# 
# goto_l10.ma
# Wall_E's waypoint list for Line P
#P4 -12640.0000 4839.0000
#P6 -12740.0000 4844.6000
#P8 -12840.0000 4849.0000
#P10 -12940.0000 4853.6000
#P12 -13040.0000 4858.2000
#summit -13056.5305 4903.5242
#P14 -13240.0000 4907.4000
#P16 -13440.0000 4917.0000
#P18 -13640.0000 4926.0000
#P20 -13840.0000 4934.0000
#P22 -14040.0000 4942.0000
#P24 -14240.0000 4950.2000
#P26 -14500.0000 5000.0000

# this file P4-P26 with sexplorer summit, P12 excluded

<start:b_arg>
b_arg: list_when_wpt_dist(m) 5000 # if the glider is within 3 km the waypoint is considered as hit
b_arg: num_legs_to_run(nodim) -1 # loop through points
b_arg: start_when(enum) 0 # BAW_IMMEDIATELY
b_arg: list_stop_when(enum) 7 # BAW_WHEN_WPT_DIST
b_arg: initial_wpt(enum) -1 # 0 to n-1,-1 first after last,-2 closest
b_arg: num_waypoints(nodim) 12
<end:b_arg>
<start:waypoints>
-12640.0000 4839.0000
-12740.0000 4844.6000
-12840.0000 4849.0000
-12940.0000 4853.6000
-13056.5305 4903.5242
-13240.0000 4907.4000
-13440.0000 4917.0000
-13640.0000 4926.0000
-13840.0000 4934.0000
-14040.0000 4942.0000
-14240.0000 4950.2000
-14500.0000 5000.0000
<end:waypoints>
