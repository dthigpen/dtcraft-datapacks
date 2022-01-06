function call_stack:push
execute store result score $slot dt.tmp run data get storage call_stack: this.arg0
title @s actionbar ["",{"text":"Refilled from slot ","color":"white"},{"score":{"name":"$slot","objective":"dt.tmp"}}]
function call_stack:pop