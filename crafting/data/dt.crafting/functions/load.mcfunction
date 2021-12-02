#say dt.crafting loaded!

#[[[cog
#   from datapack_utils import utils
#   from datapack_utils.utils import Pack
#   
#   cog.outl(utils.setup_versioning(
#       Pack('dt.crafting',Pack.Version(1,0,0),name='Crafting',
#           dependencies = [
#               Pack('call_stack',Pack.Version(1,0,0),name='call-stack'),
#               Pack('dt.array',Pack.Version(0,2,0),name='Array')
#           ]
#       ))
#   )
#]]]

scoreboard players set $dt.crafting.version.major load.status 1
scoreboard players set $dt.crafting.version.minor load.status 0
scoreboard players set $dt.crafting.version.patch load.status 0

scoreboard players set $dt.crafting load.status 1

# check for call-stack datapack
execute unless score $call_stack load.status matches 1 run tellraw @p ["",{"text":"Error: ","color":"dark_red"},{"text":"Crafting","bold":true}," requires ",{"text":"call-stack ","bold":true},"1.0"]
scoreboard players set $dt.tmp.dep load.status 0
execute if score $call_stack.version.major load.status matches 1 if score $call_stack.version.minor load.status matches 0.. run scoreboard players set $dt.tmp.dep load.status 1
execute if score $call_stack load.status matches 1 unless score $dt.tmp.dep load.status matches 1 run tellraw @p ["",{"text":"Error: ","color":"dark_red"},{"text":"Crafting","bold":true}," expected ",{"text":"call-stack ","bold":true},"1.0"," but found ",{"score":{"name":"$call_stack.version.major","objective":"load.status"}},".",{"score":{"name":"$call_stack.version.minor","objective":"load.status"}}]
execute if score $call_stack load.status matches 1 unless score $dt.tmp.dep load.status matches 1 run scoreboard players set $dt.crafting load.status 0

# check for Array datapack
execute unless score $dt.array load.status matches 1 run tellraw @p ["",{"text":"Error: ","color":"dark_red"},{"text":"Crafting","bold":true}," requires ",{"text":"Array ","bold":true},"0.2"]
scoreboard players set $dt.tmp.dep load.status 0
execute if score $dt.array.version.major load.status matches 0 if score $dt.array.version.minor load.status matches 2.. run scoreboard players set $dt.tmp.dep load.status 1
execute if score $dt.array load.status matches 1 unless score $dt.tmp.dep load.status matches 1 run tellraw @p ["",{"text":"Error: ","color":"dark_red"},{"text":"Crafting","bold":true}," expected ",{"text":"Array ","bold":true},"0.2"," but found ",{"score":{"name":"$dt.array.version.major","objective":"load.status"}},".",{"score":{"name":"$dt.array.version.minor","objective":"load.status"}}]
execute if score $dt.array load.status matches 1 unless score $dt.tmp.dep load.status matches 1 run scoreboard players set $dt.crafting load.status 0

scoreboard players reset $dt.tmp.dep load.status

#[[[end]]]

scoreboard objectives add dt.tmp dummy
scoreboard players reset * dt.tmp
scoreboard objectives add dt.enum dummy
scoreboard players set #equal dt.enum 0
scoreboard players set #not_equal dt.enum 1

function dt.crafting:internal/load_global_settings

function dt.crafting:internal/load_groups
#say Groups loaded
function dt.crafting:internal/load_recipes
#say Recipes loaded

scoreboard objectives add dt.crafting.tmp dummy
scoreboard players reset * dt.crafting.tmp

# slot checking scoreboards
scoreboard objectives add dt.slots1 dummy
scoreboard players reset * dt.slots1
scoreboard objectives add dt.slots2 dummy
scoreboard players reset * dt.slots2
scoreboard objectives add dt.slots3 dummy
scoreboard players reset * dt.slots3
scoreboard objectives add dt.slot_items1 dummy
scoreboard players reset * dt.slot_items1
scoreboard objectives add dt.slot_items2 dummy
scoreboard players reset * dt.slot_items2

schedule clear dt.crafting:tick
schedule function dt.crafting:tick 1t replace