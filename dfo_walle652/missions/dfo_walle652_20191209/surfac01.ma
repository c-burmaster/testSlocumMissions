behavior_name=surface
# climb to surface with ballast pump full out
# pitch servo'ed to 26 degrees
# Hand Written
# 10 July 2010 ballsup@webbresearch.com based on legacy surfac10.ma
# 2017-08-24 lcooney@teledyne.com Added c_use_bpump 0 for Autoballast (M#1557)

# Come up if haven't had comms for a while
# 2019-Jul-16 cailinburmaster@gmail.com changed  b_arg: when_secs to 46800 # Surface every 12 hours for no comms
# 2019-Jul-16 cburmaster removed b_arg: when_wpt_dist(m) 10 # how close to waypoint before surface, only if # # start_when==7
# 2019-Aug-21 cburmaster changed b_arg: when_secs(sec) 61200 # Surface every 17 hours for no comms (double yos)
        
<start:b_arg>

    b_arg: start_when(enum)         12            # BAW_NOCOMM_SECS 12, when have not had comms for WHEN_SECS secs

    b_arg: when_secs(sec)           61200          # Surface every 17 hours for no comms

    b_arg: end_action(enum)         1             # 0-quit, 1 wait for ^C quit/resume, 2 resume, 3 drift til "end_wpt_dist"
    b_arg: gps_wait_time(s)         300           # how long to wait for gps
    b_arg: keystroke_wait_time(sec) 300           # how long to wait for control-C
    b_arg: c_use_bpump(enum)        0 			  # use autoballast on the surface climb (requires autoballast yo)
	b_arg: c_use_pitch(enum)        3             # 3:servo
    b_arg: c_pitch_value(X)         0.4528        # 26 deg
    b_arg: printout_cycle_time(sec) 60.0 # How often to print dialog

<end:b_arg>
