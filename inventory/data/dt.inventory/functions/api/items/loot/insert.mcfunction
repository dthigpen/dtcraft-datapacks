function call_stack:push
data modify storage call_stack: this.source_items set from storage call_stack: this.arg0
data modify storage call_stack: this.dest_items set from storage call_stack: this.arg1
data modify storage call_stack: this.max_slots set from storage call_stack: this.arg2

#
#
#
#
#

function call_stack:pop