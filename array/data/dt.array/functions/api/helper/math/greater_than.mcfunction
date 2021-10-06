function call_stack:push
scoreboard players reset $int1 dt.tmp
scoreboard players reset $int2 dt.tmp
execute store result score $int1 dt.tmp run data get storage call_stack: this.arg0
execute store result score $int2 dt.tmp run data get storage call_stack: this.arg1

data modify storage call_stack: this.return set value false
execute if score $int1 dt.tmp > $int2 dt.tmp run data modify storage call_stack: this.return set value true
function call_stack:pop