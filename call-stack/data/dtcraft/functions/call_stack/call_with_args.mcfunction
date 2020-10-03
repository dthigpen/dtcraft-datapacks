say call_with_args
# data modify storage dtcraft:user_utils users set from storage dtcraft:tmp arg1

data modify storage dtcraft:tmp frame set value {args:[],result:{},vars:{}}
data modify storage dtcraft:tmp frame.args append from storage dtcraft:tmp arg1
data modify storage dtcraft:tmp frame.args append from storage dtcraft:tmp arg2
data modify storage dtcraft:call_stack frames prepend from storage dtcraft:tmp frame