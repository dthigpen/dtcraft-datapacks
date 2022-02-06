function call_stack:push
execute store result score #total dt.tmp run data get storage call_stack: this.arg0
execute store result score #max dt.tmp run data get storage call_stack: this.arg1

scoreboard players operation #remainder dt.tmp = #total dt.tmp
scoreboard players operation #remainder dt.tmp %= #max dt.tmp

scoreboard players operation #num_max dt.tmp = #total dt.tmp
scoreboard players operation #num_max dt.tmp /= #max dt.tmp

execute store result storage call_stack: call.arg0 int 1 run scoreboard players get #num_max dt.tmp
execute store result storage call_stack: call.arg1 int 1 run scoreboard players get #max dt.tmp
function dt.array:api/n_array_of
data modify storage call_stack: this.return set from storage call_stack: call.return

execute if score #remainder dt.tmp matches 1.. run data modify storage call_stack: this.return append value 0
execute if score #remainder dt.tmp matches 1.. store result storage call_stack: this.return[-1] int 1 run scoreboard players get #remainder dt.tmp

function call_stack:pop