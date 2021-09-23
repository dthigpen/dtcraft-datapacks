#[[[cog
#   from datapack_utils import utils
#   from datapack_utils.utils import Pack
#   
#   cog.outl(utils.setup_versioning(
#       Pack('dt.array',Pack.Version(0,2,0),
#           name='Array',
#           dependencies = [
#               Pack('call_stack',Pack.Version(1,0,0),name='call-stack'),
#           ]   
#       ))
#   )
#]]]

scoreboard players set $dt.array.version.major load.status 0
scoreboard players set $dt.array.version.minor load.status 2
scoreboard players set $dt.array.version.patch load.status 0

scoreboard players set $dt.array load.status 1

# check for call-stack datapack
execute unless score $call_stack load.status matches 1 run tellraw @p ["",{"text":"Error: ","color":"dark_red"},{"text":"Array","bold":true}," requires ",{"text":"call-stack ","bold":true},"1.0"]
scoreboard players set $dt.tmp.dep load.status 0
execute if score $call_stack.version.major load.status matches 1 if score $call_stack.version.minor load.status matches 0.. run scoreboard players set $dt.tmp.dep load.status 1
execute if score $call_stack load.status matches 1 unless score $dt.tmp.dep load.status matches 1 run tellraw @p ["",{"text":"Error: ","color":"dark_red"},{"text":"Array","bold":true}," expected ",{"text":"call-stack ","bold":true},"1.0"," but found ",{"score":{"name":"$call_stack.version.major","objective":"load.status"}},".",{"score":{"name":"$call_stack.version.minor","objective":"load.status"}}]
execute if score $call_stack load.status matches 1 unless score $dt.tmp.dep load.status matches 1 run scoreboard players set $dt.array load.status 0

scoreboard players reset $dt.tmp.dep load.status

#[[[end]]]