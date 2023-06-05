# Built with mcpy (https://github.com/dthigpen/mcpy)

function call_stack:push
execute store result score $score0 mcpy.var run data get storage call_stack: this.arg0
title @s actionbar ["",{"text":"Refilled from slot ","color":"white"},{"score":{"name":"$score0","objective":"mcpy.var"}}]
function call_stack:pop
