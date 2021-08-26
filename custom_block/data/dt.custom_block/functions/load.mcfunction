scoreboard players set $dt.custom_block.version.major load.status 0
scoreboard players set $dt.custom_block.version.minor load.status 1
scoreboard players set $dt.custom_block.version.patch load.status 0


scoreboard objectives remove dt.cb.placed
scoreboard objectives remove dt.cb.placed1
scoreboard objectives add dt.cb.placed minecraft.used:minecraft.glow_item_frame
scoreboard objectives add dt.cb.placed1 minecraft.used:minecraft.item_frame
scoreboard objectives add dt.cb.curblock dummy

function dt.custom_block:api/io/clear

schedule clear dt.custom_block:tick
schedule function dt.custom_block:tick 1t replace