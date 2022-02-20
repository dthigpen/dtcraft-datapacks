#[[[cog
#   from datapack_utils import utils
#   from datapack_utils.utils import Pack
#   
#   cog.outl(utils.setup_versioning(
#       Pack('dt.callback', Pack.Version(1,0,0),name='Callback',tick_function='dt.callback:internal/tick',
#           dependencies = [
#               Pack('call_stack',Pack.Version(1,0,0),name='call-stack')
#           ]
#       ))
#   )
#]]]

scoreboard players set $dt.callback.version.major load.status 1
scoreboard players set $dt.callback.version.minor load.status 0
scoreboard players set $dt.callback.version.patch load.status 0

scoreboard players set $dt.callback load.status 1

# check for call-stack datapack
execute unless score $call_stack load.status matches 1 run tellraw @p ["",{"text":"Error: ","color":"dark_red"},{"text":"Callback","bold":true}," requires ",{"text":"call-stack ","bold":true},"1.0"]
scoreboard players set $dt.tmp.dep load.status 0
execute if score $call_stack.version.major load.status matches 1 if score $call_stack.version.minor load.status matches 0.. run scoreboard players set $dt.tmp.dep load.status 1
execute if score $call_stack load.status matches 1 unless score $dt.tmp.dep load.status matches 1 run tellraw @p ["",{"text":"Error: ","color":"dark_red"},{"text":"Callback","bold":true}," expected ",{"text":"call-stack ","bold":true},"1.0"," but found ",{"score":{"name":"$call_stack.version.major","objective":"load.status"}},".",{"score":{"name":"$call_stack.version.minor","objective":"load.status"}}]
execute if score $call_stack load.status matches 1 unless score $dt.tmp.dep load.status matches 1 run scoreboard players set $dt.callback load.status 0

scoreboard players reset $dt.tmp.dep load.status
# Only tick if successfully loaded
schedule clear dt.callback:internal/tick
execute if score $dt.callback load.status matches 1 run schedule function dt.callback:internal/tick 1t replace
#[[[end]]]

scoreboard objectives add dt.callback dummy
execute unless data storage call_stack: global.dt.callback run data modify storage call_stack: global.dt.callback set value {cmd_queue:[],data_queue:[]}

execute store result score $max dt.tmp run gamerule maxCommandChainLength
execute if score $max dt.tmp matches ..99999 run gamerule maxCommandChainLength 100000
execute if score $max dt.tmp matches ..99999 run tellraw @p ["Increased maxCommandChainLength from ",{"score":{"name":"$max","objective":"dt.tmp"}}, " to 100000"]

function dt.callback:internal/memory/init