#say autocraft loaded!

#[[[cog
#   from datapack_utils import utils
#   from datapack_utils.utils import Pack
#   
#   cog.outl(utils.setup_versioning(
#       Pack('dt.autocraft',Pack.Version(0,2,0),
#           tick_function='dt.autocraft:tick',
#           name='Autocraft',
#           dependencies = [
#               Pack('call_stack',Pack.Version(0,1,0),name='call-stack'),
#               Pack('dt.custom_block',Pack.Version(0,1,0),name='Custom Block'),
#               Pack('dt.array',Pack.Version(0,2,0),name='Array'),
#               Pack('dt.inventory',Pack.Version(1,0,0),name='Inventory'),
#               Pack('dt.crafting',Pack.Version(1,0,0),name='Crafting')
#           ]
#       ))
#   )
#]]]

scoreboard players set $dt.autocraft.version.major load.status 0
scoreboard players set $dt.autocraft.version.minor load.status 2
scoreboard players set $dt.autocraft.version.patch load.status 0

scoreboard players set $dt.autocraft load.status 1

# check for call-stack datapack
execute unless score $call_stack load.status matches 1 run tellraw @p ["",{"text":"Error: ","color":"dark_red"},{"text":"Autocraft","bold":true}," requires ",{"text":"call-stack ","bold":true},"0.1"]
scoreboard players set $dt.tmp.dep load.status 0
execute if score $call_stack.version.major load.status matches 0 if score $call_stack.version.minor load.status matches 1.. run scoreboard players set $dt.tmp.dep load.status 1
execute if score $call_stack load.status matches 1 unless score $dt.tmp.dep load.status matches 1 run tellraw @p ["",{"text":"Error: ","color":"dark_red"},{"text":"Autocraft","bold":true}," expected ",{"text":"call-stack ","bold":true},"0.1"," but found ",{"score":{"name":"$call_stack.version.major","objective":"load.status"}},".",{"score":{"name":"$call_stack.version.minor","objective":"load.status"}}]
execute if score $call_stack load.status matches 1 unless score $dt.tmp.dep load.status matches 1 run scoreboard players set $dt.autocraft load.status 0

# check for Custom Block datapack
execute unless score $dt.custom_block load.status matches 1 run tellraw @p ["",{"text":"Error: ","color":"dark_red"},{"text":"Autocraft","bold":true}," requires ",{"text":"Custom Block ","bold":true},"0.1"]
scoreboard players set $dt.tmp.dep load.status 0
execute if score $dt.custom_block.version.major load.status matches 0 if score $dt.custom_block.version.minor load.status matches 1.. run scoreboard players set $dt.tmp.dep load.status 1
execute if score $dt.custom_block load.status matches 1 unless score $dt.tmp.dep load.status matches 1 run tellraw @p ["",{"text":"Error: ","color":"dark_red"},{"text":"Autocraft","bold":true}," expected ",{"text":"Custom Block ","bold":true},"0.1"," but found ",{"score":{"name":"$dt.custom_block.version.major","objective":"load.status"}},".",{"score":{"name":"$dt.custom_block.version.minor","objective":"load.status"}}]
execute if score $dt.custom_block load.status matches 1 unless score $dt.tmp.dep load.status matches 1 run scoreboard players set $dt.autocraft load.status 0

# check for Array datapack
execute unless score $dt.array load.status matches 1 run tellraw @p ["",{"text":"Error: ","color":"dark_red"},{"text":"Autocraft","bold":true}," requires ",{"text":"Array ","bold":true},"0.2"]
scoreboard players set $dt.tmp.dep load.status 0
execute if score $dt.array.version.major load.status matches 0 if score $dt.array.version.minor load.status matches 2.. run scoreboard players set $dt.tmp.dep load.status 1
execute if score $dt.array load.status matches 1 unless score $dt.tmp.dep load.status matches 1 run tellraw @p ["",{"text":"Error: ","color":"dark_red"},{"text":"Autocraft","bold":true}," expected ",{"text":"Array ","bold":true},"0.2"," but found ",{"score":{"name":"$dt.array.version.major","objective":"load.status"}},".",{"score":{"name":"$dt.array.version.minor","objective":"load.status"}}]
execute if score $dt.array load.status matches 1 unless score $dt.tmp.dep load.status matches 1 run scoreboard players set $dt.autocraft load.status 0

# check for Inventory datapack
execute unless score $dt.inventory load.status matches 1 run tellraw @p ["",{"text":"Error: ","color":"dark_red"},{"text":"Autocraft","bold":true}," requires ",{"text":"Inventory ","bold":true},"1.0"]
scoreboard players set $dt.tmp.dep load.status 0
execute if score $dt.inventory.version.major load.status matches 1 if score $dt.inventory.version.minor load.status matches 0.. run scoreboard players set $dt.tmp.dep load.status 1
execute if score $dt.inventory load.status matches 1 unless score $dt.tmp.dep load.status matches 1 run tellraw @p ["",{"text":"Error: ","color":"dark_red"},{"text":"Autocraft","bold":true}," expected ",{"text":"Inventory ","bold":true},"1.0"," but found ",{"score":{"name":"$dt.inventory.version.major","objective":"load.status"}},".",{"score":{"name":"$dt.inventory.version.minor","objective":"load.status"}}]
execute if score $dt.inventory load.status matches 1 unless score $dt.tmp.dep load.status matches 1 run scoreboard players set $dt.autocraft load.status 0

# check for Crafting datapack
execute unless score $dt.crafting load.status matches 1 run tellraw @p ["",{"text":"Error: ","color":"dark_red"},{"text":"Autocraft","bold":true}," requires ",{"text":"Crafting ","bold":true},"1.0"]
scoreboard players set $dt.tmp.dep load.status 0
execute if score $dt.crafting.version.major load.status matches 1 if score $dt.crafting.version.minor load.status matches 0.. run scoreboard players set $dt.tmp.dep load.status 1
execute if score $dt.crafting load.status matches 1 unless score $dt.tmp.dep load.status matches 1 run tellraw @p ["",{"text":"Error: ","color":"dark_red"},{"text":"Autocraft","bold":true}," expected ",{"text":"Crafting ","bold":true},"1.0"," but found ",{"score":{"name":"$dt.crafting.version.major","objective":"load.status"}},".",{"score":{"name":"$dt.crafting.version.minor","objective":"load.status"}}]
execute if score $dt.crafting load.status matches 1 unless score $dt.tmp.dep load.status matches 1 run scoreboard players set $dt.autocraft load.status 0

scoreboard players reset $dt.tmp.dep load.status
# Only tick if successfully loaded
schedule clear dt.autocraft:tick
execute if score $dt.autocraft load.status matches 1 run schedule function dt.autocraft:tick 1t replace
#[[[end]]]

scoreboard objectives add dt.ac.cooldown dummy
scoreboard players set #max dt.ac.cooldown 20
scoreboard players set #rate dt.ac.cooldown 20

scoreboard objectives add dt.ac.state dummy
scoreboard players set #ready dt.ac.state 1
scoreboard players set #craft dt.ac.state 2
scoreboard players set #cooldown dt.ac.state 3

scoreboard objectives add dt.tmp dummy

# Keep backward compatibility for existing worlds
function dt.autocraft:internal/compat

execute store result score $max dt.tmp run gamerule maxCommandChainLength
execute if score $max dt.tmp matches ..4999999 run gamerule maxCommandChainLength 5000000
execute if score $max dt.tmp matches ..4999999 run tellraw @p ["Increased maxCommandChainLength from ",{"score":{"name":"$max","objective":"dt.tmp"}}, " to 5000000"]