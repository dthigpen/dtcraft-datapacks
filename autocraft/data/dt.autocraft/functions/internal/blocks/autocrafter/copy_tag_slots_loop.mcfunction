function call_stack:push
data modify storage call_stack: this.result_items set from storage call_stack: this.arg0
data modify storage call_stack: this.tagged_items set from storage call_stack: this.arg1
data modify storage call_stack: this.slotted_items set from storage call_stack: this.arg2

#>body
data modify storage call_stack: this.result_items[0].Slot set from storage call_stack: this.tagged_items[0].Slot
data modify storage call_stack: this.slotted_items append from storage call_stack: this.result_items[0]
data remove storage call_stack: this.tagged_items[0]
data remove storage call_stack: this.result_items[0]


data modify storage call_stack: this.result set value {slotted:[], unslotted:[]}
data modify storage call_stack: this.nonempty set value false
execute if data storage call_stack: this.result_items[0] if data storage call_stack: this.tagged_items[0] run data modify storage call_stack: this.nonempty set value true
#>return
execute if data storage call_stack: {this:{nonempty:false}} run data modify storage call_stack: this.result.unslotted set from storage call_stack: this.result_items
execute if data storage call_stack: {this:{nonempty:false}} run data modify storage call_stack: this.result.slotted set from storage call_stack: this.slotted_items
#>recurs
execute if data storage call_stack: {this:{nonempty:true}} run data modify storage call_stack: call.arg0 set from storage call_stack: this.result_items
execute if data storage call_stack: {this:{nonempty:true}} run data modify storage call_stack: call.arg1 set from storage call_stack: this.tagged_items
execute if data storage call_stack: {this:{nonempty:true}} run function dt.autocraft:internal/blocks/autocrafter/copy_tag_slots_loop
execute if data storage call_stack: {this:{nonempty:true}} run data modify storage call_stack: this.result set from storage call_stack: call.result

function call_stack:pop