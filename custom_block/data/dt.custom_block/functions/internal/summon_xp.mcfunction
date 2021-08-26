function call_stack:push
data modify storage call_stack: this.value set from storage call_stack: this.arg0
data modify storage call_stack: this.count set from storage call_stack: this.arg1

summon experience_orb ~ ~ ~ {Tags:["dt.cb.xp.init"]}
data modify storage call_stack: this.xp set value {Value:1b, Count:1b}
data modify storage call_stack: this.xp.Value set from storage call_stack: this.value
data modify storage call_stack: this.xp.Count set from storage call_stack: this.count
execute as @e[type=experience_orb, distance=..0.5, tag=dt.cb.xp.init, limit=1] run data modify entity @s {} merge from storage call_stack: this.xp
tag @e[type=experience_orb,distance=..0.5,tag=dt.cb.xp.init] remove dt.cb.xp.init

function call_stack:pop