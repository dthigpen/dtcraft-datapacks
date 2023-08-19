function version:api/setup {args: { \
    id: "$call_stack", \
    version: [1,0,0], \
}}

scoreboard objectives add dt.tmp dummy
scoreboard objectives add dt.call_stack dummy
scoreboard players set debug dt.call_stack 0

data modify storage call_stack: frames set value []
data modify storage call_stack: call set value {}
data modify storage call_stack: this set value {}
data modify storage call_stack: global merge value {}
data remove storage call_stack: return