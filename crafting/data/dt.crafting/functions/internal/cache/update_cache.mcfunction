function call_stack:push
data modify storage call_stack: this.cache set from storage call_stack: this.arg0
data modify storage call_stack: this.max_size set from storage call_stack: this.arg1
data modify storage call_stack: this.item set from storage call_stack: this.arg2

execute store result score size1 dt.tmp run data get storage call_stack: this.cache
execute store result score size2 dt.tmp run data get storage call_stack: this.max_size

scoreboard players operation size2 dt.tmp -= size1 dt.tmp

execute if score size2 dt.tmp matches 1.. run data modify storage call_stack: this.cache prepend from storage call_stack: this.item
execute if score size2 dt.tmp matches ..0 run data remove storage call_stack: this.cache[-1]
execute if score size2 dt.tmp matches ..0 run data modify storage call_stack: this.cache prepend from storage call_stack: this.item

data modify storage call_stack: this.result set from storage call_stack: this.cache

function call_stack:pop