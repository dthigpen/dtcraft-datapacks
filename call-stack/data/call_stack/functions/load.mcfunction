#say load call-stack

# call_stack shortened to callstack so it fits within 16
scoreboard players set $callstack.major load 0
scoreboard players set $callstack.minor load 1
scoreboard players set $callstack.patch load 0

scoreboard objectives add dt.tmp dummy
scoreboard objectives add dt.call_stack dummy
scoreboard players set debug dt.call_stack 0

data modify storage call_stack: frames set value []
data modify storage call_stack: tmp set value {}
data modify storage call_stack: call set value {}
data merge storage dtcraft:tmp {}

function call_stack:clear_this