# say load call-stack

scoreboard objectives add dt.tmp dummy
scoreboard objectives add dt.call_stack dummy
scoreboard players set debug dt.call_stack 0

data modify storage dtcraft:call_stack frames set value []
data modify storage dtcraft:call_stack tmp set value {}
data modify storage dtcraft:call_stack call set value {}
data merge storage dtcraft:tmp {}
function dtcraft:call_stack/clear_this