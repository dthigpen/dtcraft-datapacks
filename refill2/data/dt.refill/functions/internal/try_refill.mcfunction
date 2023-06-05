# Built with mcpy (https://github.com/dthigpen/mcpy)

function call_stack:push
execute store result score $score5 mcpy.var run data get storage call_stack: this.arg0.selected.Slot
execute store result score $score6 mcpy.var run data get entity @s SelectedItemSlot
execute store result score $score7 mcpy.var run data get storage call_stack: this.arg0.selected.Count
execute if score $score5 mcpy.var = $score6 mcpy.var if score $score7 mcpy.var matches 1 run data modify storage call_stack: call.arg0 set from storage call_stack: this.arg0
execute if score $score5 mcpy.var = $score6 mcpy.var if score $score7 mcpy.var matches 1 run function dt.refill:internal/refill_from_inventory
function call_stack:pop
