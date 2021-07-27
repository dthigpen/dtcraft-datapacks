#say load user-storage

#[[[cog
#   from datapack_utils import utils
#   from datapack_utils.utils import Pack
#   
#   cog.outl(utils.setup_versioning(
#       Pack('dt.user_util',Pack.Version(1,0,0),name='user-util',
#           dependencies = [
#               Pack('call_stack',Pack.Version(0,1,0),name='call-stack'),
#           ]
#       ))
#   )
#]]]

scoreboard players set $dt.user_util.version.major load.status 1
scoreboard players set $dt.user_util.version.minor load.status 0
scoreboard players set $dt.user_util.version.patch load.status 0

scoreboard players set $dt.user_util load.status 1

# check for call-stack datapack
execute unless score $call_stack load.status matches 1 run tellraw @p ["",{"text":"Error: ","color":"dark_red"},{"text":"user-util","bold":true}," requires ",{"text":"call-stack ","bold":true},"0.1"]
scoreboard players set $dt.tmp.dep load.status 0
execute if score $call_stack.version.major load.status matches 0 if score $call_stack.version.minor load.status matches 1.. run scoreboard players set $dt.tmp.dep load.status 1
execute if score $call_stack load.status matches 1 unless score $dt.tmp.dep load.status matches 1 run tellraw @p ["",{"text":"Error: ","color":"dark_red"},{"text":"user-util","bold":true}," expected ",{"text":"call-stack ","bold":true},"0.1"," but found ",{"score":{"name":"$call_stack.version.major","objective":"load.status"}},".",{"score":{"name":"$call_stack.version.minor","objective":"load.status"}}]
execute if score $call_stack load.status matches 1 unless score $dt.tmp.dep load.status matches 1 run scoreboard players set $dt.user_util load.status 0

scoreboard players reset $dt.tmp.dep load.status

#[[[end]]]

scoreboard objectives add dt.enum dummy
scoreboard players set #equal dt.enum 0
scoreboard players set #not_equal dt.enum 1
scoreboard players set #found dt.enum 0
scoreboard players set #not_found dt.enum 1