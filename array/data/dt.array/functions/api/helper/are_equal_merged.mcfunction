function call_stack:push
scoreboard players reset #changed dt.tmp
execute store success score #changed dt.tmp run data modify storage call_stack: this.arg0 merge from storage call_stack: this.arg1
execute if score #changed dt.tmp matches 0 run data modify storage call_stack: this.return set value true
function call_stack:pop