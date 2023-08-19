function version:api/setup {args: { \
    id: "$dt.custom_block", \
    version: [0,1,0], \
    dependencies: [ \
        {id: "$call_stack", version: [1,0,0]}, \
    ] \
}}

scoreboard objectives remove dt.cb.placed
scoreboard objectives remove dt.cb.placed1
scoreboard objectives add dt.cb.placed minecraft.used:minecraft.glow_item_frame
scoreboard objectives add dt.cb.placed1 minecraft.used:minecraft.item_frame
scoreboard objectives add dt.cb.curblock dummy

function dt.custom_block:api/io/clear

schedule clear dt.custom_block:tick
schedule function dt.custom_block:tick 1t replace