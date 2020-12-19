function call_stack:push

data modify storage call_stack: this.list set from storage call_stack: this.arg0
data modify storage call_stack: this.index set from storage call_stack: this.arg1
data modify storage call_stack: this.before set from storage call_stack: this.arg2

execute store result score #index dt.tmp run data get storage call_stack: this.index

execute if score #index dt.tmp matches 0 run data modify storage call_stack: this.result set value {}
execute if score #index dt.tmp matches 0 run data modify storage call_stack: this.result.before set from storage call_stack: this.before
execute if score #index dt.tmp matches 0 run data modify storage call_stack: this.result.at set from storage call_stack: this.list[0]
execute if score #index dt.tmp matches 0 run data remove storage call_stack: this.list[0]
execute if score #index dt.tmp matches 0 run data modify storage call_stack: this.result.after set from storage call_stack: this.list

execute unless score #index dt.tmp matches 0 run data modify storage call_stack: this.before append from storage call_stack: this.list[0]
execute unless score #index dt.tmp matches 0 run data remove storage call_stack: this.list[0]

scoreboard players remove #index dt.tmp 1
execute store result storage call_stack: this.index byte 1 run scoreboard players get #index dt.tmp

# TODO
# store as score, do bound checking
# call loop function
data modify storage call_stack: this.is_valid set value false
execute if data storage call_stack: this.list[0] if score #index dt.tmp matches 0.. if score #index dt.tmp < #length dt.tmp run data modify storage call_stack: this.is_valid set value true
execute if data storage call_stack: {this:{is_valid:true}} run data modify storage call_stack: call.arg0 set from storage call_stack: this.list
execute if data storage call_stack: {this:{is_valid:true}} run data modify storage call_stack: call.arg1 set from storage call_stack: this.index
execute if data storage call_stack: {this:{is_valid:true}} run data modify storage call_stack: call.arg2 set from storage call_stack: this.before
execute if data storage call_stack: {this:{is_valid:true}} run function dt.array_util:internal/split_at_index_loop
execute if data storage call_stack: {this:{is_valid:true}} run data modify storage call_stack: this.result set from storage call_stack: call.result
function call_stack:pop