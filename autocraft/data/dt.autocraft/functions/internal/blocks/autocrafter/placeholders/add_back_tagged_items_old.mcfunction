function call_stack:push

data modify storage call_stack: this.placeholders set from storage call_stack: this.arg0

data modify storage call_stack: this.placeholders[0].Slot set from storage call_stack: this.placeholders[0].tag.dt_placeholder.slot
data modify storage call_stack: this.placeholders[1].Slot set from storage call_stack: this.placeholders[1].tag.dt_placeholder.slot
data modify storage call_stack: this.placeholders[2].Slot set from storage call_stack: this.placeholders[2].tag.dt_placeholder.slot
data modify storage call_stack: this.placeholders[3].Slot set from storage call_stack: this.placeholders[3].tag.dt_placeholder.slot
data modify storage call_stack: this.placeholders[4].Slot set from storage call_stack: this.placeholders[4].tag.dt_placeholder.slot
data modify storage call_stack: this.placeholders[5].Slot set from storage call_stack: this.placeholders[5].tag.dt_placeholder.slot
data modify storage call_stack: this.placeholders[6].Slot set from storage call_stack: this.placeholders[6].tag.dt_placeholder.slot
data modify storage call_stack: this.placeholders[7].Slot set from storage call_stack: this.placeholders[7].tag.dt_placeholder.slot
data modify storage call_stack: this.placeholders[8].Slot set from storage call_stack: this.placeholders[8].tag.dt_placeholder.slot

#tellraw @p {"nbt":"call.result","storage":"call_stack:"}

data modify storage call_stack: call.arg0 set from block ~ ~ ~ Items
data modify storage call_stack: call.arg1 set from storage call_stack: this.placeholders
function dt.array_util:api/concat
data modify block ~ ~ ~ Items set from storage call_stack: call.result

function call_stack:pop