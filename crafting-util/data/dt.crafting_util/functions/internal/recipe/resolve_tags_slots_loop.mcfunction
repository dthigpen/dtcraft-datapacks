function call_stack:push

data modify storage call_stack: this.tag_slots set from storage call_stack: this.arg0
data modify storage call_stack: this.actual_slots set from storage call_stack: this.arg1
data modify storage call_stack: this.new_slots set from storage call_stack: this.arg2

data modify storage call_stack: this.fail_early set value false

# First check that the actual slots is a subset of the tag_slots
data modify storage call_stack: call.arg0 set from storage call_stack: this.actual_slots
data modify storage call_stack: call.arg1 set from storage call_stack: this.tag_slots[0]
function dt.crafting_util:internal/array/difference
execute if data storage call_stack: call.result[0] run data modify storage call_stack: this.fail_early set value true

execute if data storage call_stack: {this:{fail_early:false}} run data modify storage call_stack: call.arg0 set from storage call_stack: this.tag_slots[0]
execute if data storage call_stack: {this:{fail_early:false}} run data modify storage call_stack: call.arg1 set from storage call_stack: this.actual_slots
execute if data storage call_stack: {this:{fail_early:false}} run function dt.crafting_util:internal/array/difference
execute if data storage call_stack: {this:{fail_early:false}} run data modify storage call_stack: this.new_slots append from storage call_stack: call.result
execute if data storage call_stack: {this:{fail_early:true}} run data modify storage call_stack: this.new_slots append from storage call_stack: this.tag_slots[0]


data modify storage call_stack: this.result set from storage call_stack: this.new_slots
data remove storage call_stack: this.tag_slots[0]
execute if data storage call_stack: this.tag_slots[0] run data modify storage call_stack: call.arg0 set from storage call_stack: this.tag_slots
execute if data storage call_stack: this.tag_slots[0] run data modify storage call_stack: call.arg1 set from storage call_stack: this.actual_slots
execute if data storage call_stack: this.tag_slots[0] run data modify storage call_stack: call.arg2 set from storage call_stack: this.new_slots
execute if data storage call_stack: this.tag_slots[0] run function dt.crafting_util:internal/recipe/resolve_tags_slots_loop
execute if data storage call_stack: this.tag_slots[0] run data modify storage call_stack: this.result set from storage call_stack: call.result


function call_stack:pop