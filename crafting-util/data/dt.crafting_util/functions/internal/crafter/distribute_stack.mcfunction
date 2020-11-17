# say crafter/distribute_stack
function call_stack:push

# save args
data modify storage call_stack: this.item set from storage call_stack: this.arg0
# setup return value
data modify storage call_stack: this.result.free_slots set from storage call_stack: this.arg1
data modify storage call_stack: this.result.new_items set value []

execute store result score int1 dt.tmp run data get storage call_stack: this.item.Count
execute store result score size1 dt.tmp run data get storage call_stack: this.result.free_slots
data modify storage call_stack: this.template_item set from storage call_stack: this.item
data modify storage call_stack: this.template_item.Count set value 1b

scoreboard players set flag dt.tmp 0
# If the stack count is >= 2 and there are free slots left, append a template item
execute if score int1 dt.tmp matches 2.. if score size1 dt.tmp matches 1.. run scoreboard players set flag dt.tmp 1
execute if score flag dt.tmp matches 1 store result storage call_stack: this.template_item.Slot byte 1 run data get storage call_stack: this.result.free_slots[0]
execute if score flag dt.tmp matches 1 run data modify storage call_stack: this.result.new_items append from storage call_stack: this.template_item
execute if score flag dt.tmp matches 1 run scoreboard players remove int1 dt.tmp 1
execute if score flag dt.tmp matches 1 run data remove storage call_stack: this.result.free_slots[0]
execute if score flag dt.tmp matches 1 run scoreboard players remove size1 dt.tmp 1
execute if score flag dt.tmp matches 1 run scoreboard players set flag dt.tmp 0

execute if score int1 dt.tmp matches 2.. if score size1 dt.tmp matches 1.. run scoreboard players set flag dt.tmp 1
execute if score flag dt.tmp matches 1 store result storage call_stack: this.template_item.Slot byte 1 run data get storage call_stack: this.result.free_slots[0]
execute if score flag dt.tmp matches 1 run data modify storage call_stack: this.result.new_items append from storage call_stack: this.template_item
execute if score flag dt.tmp matches 1 run scoreboard players remove int1 dt.tmp 1
execute if score flag dt.tmp matches 1 run data remove storage call_stack: this.result.free_slots[0]
execute if score flag dt.tmp matches 1 run scoreboard players remove size1 dt.tmp 1
execute if score flag dt.tmp matches 1 run scoreboard players set flag dt.tmp 0

execute if score int1 dt.tmp matches 2.. if score size1 dt.tmp matches 1.. run scoreboard players set flag dt.tmp 1
execute if score flag dt.tmp matches 1 store result storage call_stack: this.template_item.Slot byte 1 run data get storage call_stack: this.result.free_slots[0]
execute if score flag dt.tmp matches 1 run data modify storage call_stack: this.result.new_items append from storage call_stack: this.template_item
execute if score flag dt.tmp matches 1 run scoreboard players remove int1 dt.tmp 1
execute if score flag dt.tmp matches 1 run data remove storage call_stack: this.result.free_slots[0]
execute if score flag dt.tmp matches 1 run scoreboard players remove size1 dt.tmp 1
execute if score flag dt.tmp matches 1 run scoreboard players set flag dt.tmp 0

execute if score int1 dt.tmp matches 2.. if score size1 dt.tmp matches 1.. run scoreboard players set flag dt.tmp 1
execute if score flag dt.tmp matches 1 store result storage call_stack: this.template_item.Slot byte 1 run data get storage call_stack: this.result.free_slots[0]
execute if score flag dt.tmp matches 1 run data modify storage call_stack: this.result.new_items append from storage call_stack: this.template_item
execute if score flag dt.tmp matches 1 run scoreboard players remove int1 dt.tmp 1
execute if score flag dt.tmp matches 1 run data remove storage call_stack: this.result.free_slots[0]
execute if score flag dt.tmp matches 1 run scoreboard players remove size1 dt.tmp 1
execute if score flag dt.tmp matches 1 run scoreboard players set flag dt.tmp 0

execute if score int1 dt.tmp matches 2.. if score size1 dt.tmp matches 1.. run scoreboard players set flag dt.tmp 1
execute if score flag dt.tmp matches 1 store result storage call_stack: this.template_item.Slot byte 1 run data get storage call_stack: this.result.free_slots[0]
execute if score flag dt.tmp matches 1 run data modify storage call_stack: this.result.new_items append from storage call_stack: this.template_item
execute if score flag dt.tmp matches 1 run scoreboard players remove int1 dt.tmp 1
execute if score flag dt.tmp matches 1 run data remove storage call_stack: this.result.free_slots[0]
execute if score flag dt.tmp matches 1 run scoreboard players remove size1 dt.tmp 1
execute if score flag dt.tmp matches 1 run scoreboard players set flag dt.tmp 0

execute if score int1 dt.tmp matches 2.. if score size1 dt.tmp matches 1.. run scoreboard players set flag dt.tmp 1
execute if score flag dt.tmp matches 1 store result storage call_stack: this.template_item.Slot byte 1 run data get storage call_stack: this.result.free_slots[0]
execute if score flag dt.tmp matches 1 run data modify storage call_stack: this.result.new_items append from storage call_stack: this.template_item
execute if score flag dt.tmp matches 1 run scoreboard players remove int1 dt.tmp 1
execute if score flag dt.tmp matches 1 run data remove storage call_stack: this.result.free_slots[0]
execute if score flag dt.tmp matches 1 run scoreboard players remove size1 dt.tmp 1
execute if score flag dt.tmp matches 1 run scoreboard players set flag dt.tmp 0

execute if score int1 dt.tmp matches 2.. if score size1 dt.tmp matches 1.. run scoreboard players set flag dt.tmp 1
execute if score flag dt.tmp matches 1 store result storage call_stack: this.template_item.Slot byte 1 run data get storage call_stack: this.result.free_slots[0]
execute if score flag dt.tmp matches 1 run data modify storage call_stack: this.result.new_items append from storage call_stack: this.template_item
execute if score flag dt.tmp matches 1 run scoreboard players remove int1 dt.tmp 1
execute if score flag dt.tmp matches 1 run data remove storage call_stack: this.result.free_slots[0]
execute if score flag dt.tmp matches 1 run scoreboard players remove size1 dt.tmp 1
execute if score flag dt.tmp matches 1 run scoreboard players set flag dt.tmp 0

execute if score int1 dt.tmp matches 2.. if score size1 dt.tmp matches 1.. run scoreboard players set flag dt.tmp 1
execute if score flag dt.tmp matches 1 store result storage call_stack: this.template_item.Slot byte 1 run data get storage call_stack: this.result.free_slots[0]
execute if score flag dt.tmp matches 1 run data modify storage call_stack: this.result.new_items append from storage call_stack: this.template_item
execute if score flag dt.tmp matches 1 run scoreboard players remove int1 dt.tmp 1
execute if score flag dt.tmp matches 1 run data remove storage call_stack: this.result.free_slots[0]
execute if score flag dt.tmp matches 1 run scoreboard players remove size1 dt.tmp 1
execute if score flag dt.tmp matches 1 run scoreboard players set flag dt.tmp 0


execute store result storage call_stack: this.item.Count byte 1 run scoreboard players get int1 dt.tmp
data modify storage call_stack: this.result.new_items prepend from storage call_stack: this.item

function call_stack:pop