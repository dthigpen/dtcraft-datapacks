function call_stack:push
data modify storage call_stack: this.return_items set from storage call_stack: this.arg0
data modify storage call_stack: this.tagged_items set from storage call_stack: this.arg1

data modify storage call_stack: this.return set value {slotted:[], unslotted:[]}
data modify storage call_stack: this.nonempty set value false
execute if data storage call_stack: this.return_items[0] if data storage call_stack: this.tagged_items[0] run data modify storage call_stack: this.nonempty set value true
execute if data storage call_stack: {this:{nonempty:true}} run data modify storage call_stack: call.arg0 set from storage call_stack: this.return_items
execute if data storage call_stack: {this:{nonempty:true}} run data modify storage call_stack: call.arg1 set from storage call_stack: this.tagged_items
execute if data storage call_stack: {this:{nonempty:true}} run data modify storage call_stack: call.arg2 set value []
execute if data storage call_stack: {this:{nonempty:true}} run function dt.autocraft:internal/blocks/autocrafter/old/copy_tag_slots_loop
execute if data storage call_stack: {this:{nonempty:true}} run data modify storage call_stack: this.return set from storage call_stack: call.return


function call_stack:pop