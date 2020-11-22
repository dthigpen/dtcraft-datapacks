function call_stack:push

execute if block ~ ~ ~ dropper run setblock ~ ~ ~ air replace
kill @e[type=item,nbt={Item:{id:"minecraft:dropper"}},distance=..1,sort=nearest,limit=1]
summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"Autocrafter"}'},CustomModelData:777777,dt_autocrafter:1b,init:true,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
function autocraft:internal/blocks/autocrafter/fetch_or_init_data

data modify storage call_stack: this.name set from storage call_stack: call.result.name
execute as @e[type=item,nbt={Item:{tag:{init:true}}},limit=1,sort=nearest,distance=0..0.2] run data modify entity @s Item.tag.display.Name set from storage call_stack: this.name
execute as @e[type=item,nbt={Item:{tag:{init:true}}},limit=1,sort=nearest,distance=0..0.2] run data remove entity @s Item.tag.init
kill @s

function call_stack:pop