behavior_name=yo
# yo14.ma
# climb 7m   dive 1000 m alt -1 m pitch 26 deg
# Basic parameters for Autoballast routine to reduce total drive to d_bpump_value
# with minimum vertical speed d_speed_min and c_speed_min
# See /doco/how-it-works/autoballast.txt and masterdata for full list of b_args.
# 2011-09-19 lcooney@teledyne.com Initial, copied from yo10.ma
# 2016-02-04 lcooney@teledyne.com Added d/c_stop_when_hover/stalled_for args, M#2632
# 2017-08-24 lcooney@teledyne.com Changed speed_min to 0.06, increased altitude from 3->5
# 2019-07-15 cailinburmaster@gmail.com changed b_arg: num_half_cycles_to_do(nodim) 2 
# 2019-07-31 james.pegg@dfo-mpo.gc.ca altitude off,-1 for line P
# 2019-08-06 james.pegg@dfo-mpo.gc.ca half cycles to 4 for double yos and climb to 5m
# 2019-08-22 james.pegg@dfo-mpo.gc.ca half cycles to 6 for triple yos
# 2019-08-29 james.pegg@dfo-mpo.gc.ca 520ml triple

<start:b_arg>
    b_arg: start_when(enum)      2   # pitch idle (see doco below)
    b_arg: num_half_cycles_to_do(nodim) 6   # Number of dive/climbs to perform
                                     # <0 is infinite, i.e. never finishes

    # arguments for dive_to
    b_arg: d_target_depth(m)     1000
    b_arg: d_target_altitude(m)   -1

    b_arg: d_use_bpump(enum) 0     # 0  Autoballast/Speed control.  
    b_arg: d_bpump_value(X) 520.0 # use_bpump == 0   Total amt of ballast, stored as C_AUTOBALLAST_VOLUME

    b_arg: d_use_pitch(enum)      3   # 1:battpos  2:setonce  3:servo
                                      #   in         rad        rad, <0 dive
    b_arg: d_pitch_value(X)   -0.4538     # -26 deg
    b_arg: d_stop_when_hover_for(sec) 600.0        # increased to accomodate slower depth rate for autoballast 
    b_arg: d_stop_when_stalled_for(sec) 660.0      # increased to accomodate slower depth rate for autoballast 
    b_arg: d_speed_min(m/s) 0.06      # minimum depth rate for dive


    # arguments for climb_to
    b_arg: c_target_depth(m)      5
    b_arg: c_target_altitude(m)  -1

    b_arg: c_use_bpump(enum) 0	  # 0  Autoballast/Speed control. 

    b_arg: c_use_pitch(enum)      3   # 1:battpos  2:setonce  3:servo
                                      #   in         rad        rad, >0 climb
    b_arg: c_pitch_value(X)     0.4538     # 26 deg
    b_arg: c_stop_when_hover_for(sec) 600.0        # increased to accomodate slower depth rate for autoballast 
    b_arg: c_stop_when_stalled_for(sec) 660.0        # increased to accomodate slower depth rate for autoballast 
    b_arg: c_speed_min(m/s) -0.06      # minimum depth rate for climb

    b_arg: end_action(enum) 2     # 0-quit, 2 resume
<end:b_arg>


