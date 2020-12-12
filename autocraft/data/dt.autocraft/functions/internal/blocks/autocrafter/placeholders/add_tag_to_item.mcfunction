function call_stack:push
data modify storage call_stack: this.item set from storage call_stack: this.arg0
data modify storage call_stack: this.item.tag.dt_placeholder set value {slot:-1b, owner:[]}

data modify storage call_stack: this.item.tag.dt_placeholder.slot set from storage call_stack: this.item.Slot
data modify storage call_stack: this.item.tag.dt_placeholder.owner set from entity @s UUID
data modify storage call_stack: this.result set from storage call_stack: this.item
function call_stack:pop