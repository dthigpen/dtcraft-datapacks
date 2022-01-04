# say try_refill
function call_stack:push

data modify storage call_stack: this.user set from storage call_stack: this.arg0
# Check that the slots are the same, if so continue
execute store result score $slot_from_data dt.tmp run data get storage call_stack: this.user.selected.Slot
execute store result score $slot_from_player dt.tmp run data get entity @s SelectedItemSlot
execute store result score $item_count dt.tmp run data get storage call_stack: this.user.selected.Count
# scoreboard players set $item_uses_left dt.tmp -1
# execute store result score $min_durability dt.tmp run data get storage call_stack: this.user.settings.min_durability
# data modify storage call_stack: this.user.settings.min_durability set value 0
# execute if data entity @s SelectedItem.tag.Damage run function dt.refill:internal/calculate_remaining_durability
# execute if data entity @s SelectedItem.tag.Damage run scoreboard players operation $item_uses_left dt.tmp = @s dt.tmp

# if score $item_uses_left dt.tmp <= $min_durability dt.tmp
execute if score $slot_from_data dt.tmp = $slot_from_data dt.tmp if score $item_count dt.tmp matches 1 run data modify storage call_stack: call.arg0 set from storage call_stack: this.user
execute if score $slot_from_data dt.tmp = $slot_from_data dt.tmp if score $item_count dt.tmp matches 1 run function dt.refill:internal/refill_from_inventory


function call_stack:pop