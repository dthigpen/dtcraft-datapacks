#[[[cog
#   from datapack_utils import utils
#   from datapack_utils.utils import Pack
#   
#   cog.outl(utils.setup_versioning(
#       Pack('dt.custom_block',Pack.Version(0,1,0),
#           tick_function='dt.custom_block:tick',
#           name='Custom Block',
#           dependencies = [
#               Pack('call_stack',Pack.Version(0,1,0),name='call-stack'),
#           ]
#       ))
#   )
#]]]

scoreboard players set $dt.custom_block.version.major load.status 0
scoreboard players set $dt.custom_block.version.minor load.status 1
scoreboard players set $dt.custom_block.version.patch load.status 0

scoreboard players set $dt.custom_block load.status 1

# check for call-stack datapack
execute unless score $call_stack load.status matches 1 run tellraw @p ["",{"text":"Error: ","color":"dark_red"},{"text":"Custom Block","bold":true}," requires ",{"text":"call-stack ","bold":true},"0.1"]
scoreboard players set $dt.tmp.dep load.status 0
execute if score $call_stack.version.major load.status matches 0 if score $call_stack.version.minor load.status matches 1.. run scoreboard players set $dt.tmp.dep load.status 1
execute if score $call_stack load.status matches 1 unless score $dt.tmp.dep load.status matches 1 run tellraw @p ["",{"text":"Error: ","color":"dark_red"},{"text":"Custom Block","bold":true}," expected ",{"text":"call-stack ","bold":true},"0.1"," but found ",{"score":{"name":"$call_stack.version.major","objective":"load.status"}},".",{"score":{"name":"$call_stack.version.minor","objective":"load.status"}}]
execute if score $call_stack load.status matches 1 unless score $dt.tmp.dep load.status matches 1 run scoreboard players set $dt.custom_block load.status 0

scoreboard players reset $dt.tmp.dep load.status
# Only tick if successfully loaded
schedule clear dt.custom_block:tick
execute if score $dt.custom_block load.status matches 1 run schedule function dt.custom_block:tick 1t replace
#[[[end]]]

scoreboard objectives remove dt.cb.placed
scoreboard objectives remove dt.cb.placed1
scoreboard objectives add dt.cb.placed minecraft.used:minecraft.glow_item_frame
scoreboard objectives add dt.cb.placed1 minecraft.used:minecraft.item_frame
scoreboard objectives add dt.cb.curblock dummy

function dt.custom_block:api/io/clear

schedule clear dt.custom_block:tick
schedule function dt.custom_block:tick 1t replace