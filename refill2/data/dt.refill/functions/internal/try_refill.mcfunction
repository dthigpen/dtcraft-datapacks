# Built with mcpy (https://github.com/dthigpen/mcpy)

function call_stack:push
data modify storage call_stack: this.user set from storage call_stack: this.arg0
execute store result score $user_slot mcpy.var run data get storage call_stack: this.user.selected.Slot
execute store result score $player_slot mcpy.var run data get entity @s SelectedItemSlot
execute store result score $user_count mcpy.var run data get storage call_stack: this.user.selected.Count
execute if score $user_slot mcpy.var = $player_slot mcpy.var if score $user_count mcpy.var matches 1 run data modify storage call_stack: call.arg0 set from storage call_stack: this.user
execute if score $user_slot mcpy.var = $player_slot mcpy.var if score $user_count mcpy.var matches 1 run function dt.refill:internal/refill_from_inventory
function call_stack:pop
