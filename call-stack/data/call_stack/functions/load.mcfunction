#say load call-stack

scoreboard players set $call_stack.version.major load 0
scoreboard players set $call_stack.version.minor load 1
scoreboard players set $call_stack.version.patch load 0

scoreboard objectives add dt.tmp dummy
scoreboard objectives add dt.call_stack dummy
scoreboard players set debug dt.call_stack 0

data modify storage call_stack: frames set value []
data modify storage call_stack: tmp set value {}
data modify storage call_stack: call set value {}

function call_stack:clear_this