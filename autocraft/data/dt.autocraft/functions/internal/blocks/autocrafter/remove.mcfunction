function call_stack:push

function dt.autocraft:internal/blocks/autocrafter/db_data/fetch_or_init
data modify storage call_stack: this.name set from storage call_stack: call.result.name
function rx.playerdb:admin/delete_player

summon item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b, tag:{display:{Name:'{"text":"Autocrafter"}'},CustomModelData:777777,dt_autocrafter:1b,custom_block:1b, init:true,BlockEntityTag:{Lock:"dt_autocrafter"}}}}
execute as @e[type=item,nbt={Item:{tag:{init:true, dt_autocrafter:1b}}},limit=1,sort=nearest,distance=0..0.2] run data modify entity @s Item.tag.display.Name set from storage call_stack: this.name
execute as @e[type=item,nbt={Item:{tag:{init:true, dt_autocrafter:1b}}},limit=1,sort=nearest,distance=0..0.2] run data remove entity @s Item.tag.init

function call_stack:pop