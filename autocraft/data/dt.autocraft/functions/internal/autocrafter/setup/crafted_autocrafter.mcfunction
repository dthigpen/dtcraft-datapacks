# say crafted_autocrafter
function call_stack:push


advancement revoke @s only dt.autocraft:autocrafter
scoreboard players set #has_recipe dt.tmp 0
scoreboard players set #num_loot dt.tmp 0
execute store result score #num_loot dt.tmp run clear @s minecraft:knowledge_book

# autocrafter
execute unless score #has_recipe dt.tmp matches 2 store success score #has_recipe dt.tmp run recipe take @s dt.autocraft:autocrafter
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run data modify storage call_stack: this.name set value '{"text":"Autocrafter"}'
execute unless score #has_recipe dt.tmp matches 2 if score #has_recipe dt.tmp matches 1 run scoreboard players set #has_recipe dt.tmp 2

execute as @e[type=item,sort=nearest,limit=1,nbt={Item:{tag:{dt_autocrafter:1b}}}] store result entity @s Item.Count byte 1 run scoreboard players get #num_loot dt.tmp

function dt.autocraft:internal/autocrafter/setup/get_custom_block_properties
data modify storage call_stack: this.properties set from storage call_stack: call.return
data modify storage call_stack: this.properties.block.name set from storage call_stack: this.name
data modify storage call_stack: this.properties.item.name set from storage call_stack: this.name

data modify storage call_stack: call.arg0 set from storage call_stack: this.properties
function dt.custom_block:api/item/summon

function call_stack:pop