function call_stack:push
execute store result score #augend dt.tmp run data get storage call_stack: this.arg0
execute store result score #addend dt.tmp run data get storage call_stack: this.arg1
execute store result score #max dt.tmp run data get storage call_stack: this.arg2
data modify storage call_stack: this.return set value [0]

scoreboard players operation #sum dt.tmp = #augend dt.tmp
scoreboard players operation #sum dt.tmp += #addend dt.tmp

scoreboard players set #remainder dt.tmp 0
execute if score #sum dt.tmp > #max dt.tmp run scoreboard players operation #remainder dt.tmp = #sum dt.tmp
execute if score #sum dt.tmp > #max dt.tmp run scoreboard players operation #remainder dt.tmp %= #max dt.tmp
execute if score #sum dt.tmp > #max dt.tmp run scoreboard players operation #sum dt.tmp = #max dt.tmp

execute store result storage call_stack: this.return[0] int 1 run scoreboard players get #sum dt.tmp
execute if score #remainder dt.tmp matches 1.. run data modify storage call_stack: this.return append value 0
execute if score #remainder dt.tmp matches 1.. store result storage call_stack: this.return[1] int 1 run scoreboard players get #remainder dt.tmp

function call_stack:pop