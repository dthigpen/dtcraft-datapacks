data modify storage call_stack: this.temp_uuid set from storage call_stack: this.arg0
scoreboard players reset #changed dt.tmp
execute store success score #changed dt.tmp run data modify storage call_stack: this.temp_uuid set from entity @s UUID
execute if score #changed dt.tmp matches 0 run tag @s add dt_callback_executor
data modify storage call_stack: this.arg1 set value [-1,-1,-1,-1]