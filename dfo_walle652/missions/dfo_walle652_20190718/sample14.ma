behavior_name=sample
# sample Anderaa optode on every 3rd upcast (after first)
# 2019-07-27 james.pegg@dfo-mpo.gc.ca Modified from sample10.ma

<start:b_arg>
   b_arg: sensor_type(enum)                  54 # OXY4   54  C_OXY4_ON
   b_arg: state_to_sample(enum)              4  # 4  climbing
   b_arg: intersample_time(s)                0  # as fast as possible
   b_arg: nth_yo_to_sample(nodim)           -3  # After the first yo, sample only
   b_arg: intersample_depth(m)              -1  # supersedes intersample_time
   b_arg: min_depth(m)                      -5  # minimum depth to collect data, default
   b_arg: max_depth(m)                    2000  # maximum depth to collect data
<end:b_arg>