function call_stack:push
data modify storage call_stack: this.compressed_item_ids set from storage call_stack: this.arg0

#[[[cog
#   from datapack_utils import *
#   cog.outl(f'scoreboard players reset * dt.slot2')
#   count = 0
#   for slot in [1,2,3,10,11,12,19,20,21]:
#       cog.outl(f'execute store success score #slot{slot} dt.slot2 run data get storage call_stack: this.compressed_item_ids[0][{count}]')
#       cog.outl(f'#tellraw @p ["get_slot2 #slot{slot}!!:",{{"nbt":"this.compressed_item_ids[0][{count}]","storage":"call_stack:"}}]')
#       count += 1
#   cog.outl()
#   for slot in [1,2,3,10,11,12,19,20,21]:
#       cog.outl(f'#tellraw @p ["get_slot2 #slot{slot}:",{{"score":{{"name":"#slot{slot}","objective":"dt.slot2"}}}}]');
#]]]
scoreboard players reset * dt.slot2
execute store success score #slot1 dt.slot2 run data get storage call_stack: this.compressed_item_ids[0][0]
#tellraw @p ["get_slot2 #slot1!!:",{"nbt":"this.compressed_item_ids[0][0]","storage":"call_stack:"}]
execute store success score #slot2 dt.slot2 run data get storage call_stack: this.compressed_item_ids[0][1]
#tellraw @p ["get_slot2 #slot2!!:",{"nbt":"this.compressed_item_ids[0][1]","storage":"call_stack:"}]
execute store success score #slot3 dt.slot2 run data get storage call_stack: this.compressed_item_ids[0][2]
#tellraw @p ["get_slot2 #slot3!!:",{"nbt":"this.compressed_item_ids[0][2]","storage":"call_stack:"}]
execute store success score #slot10 dt.slot2 run data get storage call_stack: this.compressed_item_ids[0][3]
#tellraw @p ["get_slot2 #slot10!!:",{"nbt":"this.compressed_item_ids[0][3]","storage":"call_stack:"}]
execute store success score #slot11 dt.slot2 run data get storage call_stack: this.compressed_item_ids[0][4]
#tellraw @p ["get_slot2 #slot11!!:",{"nbt":"this.compressed_item_ids[0][4]","storage":"call_stack:"}]
execute store success score #slot12 dt.slot2 run data get storage call_stack: this.compressed_item_ids[0][5]
#tellraw @p ["get_slot2 #slot12!!:",{"nbt":"this.compressed_item_ids[0][5]","storage":"call_stack:"}]
execute store success score #slot19 dt.slot2 run data get storage call_stack: this.compressed_item_ids[0][6]
#tellraw @p ["get_slot2 #slot19!!:",{"nbt":"this.compressed_item_ids[0][6]","storage":"call_stack:"}]
execute store success score #slot20 dt.slot2 run data get storage call_stack: this.compressed_item_ids[0][7]
#tellraw @p ["get_slot2 #slot20!!:",{"nbt":"this.compressed_item_ids[0][7]","storage":"call_stack:"}]
execute store success score #slot21 dt.slot2 run data get storage call_stack: this.compressed_item_ids[0][8]
#tellraw @p ["get_slot2 #slot21!!:",{"nbt":"this.compressed_item_ids[0][8]","storage":"call_stack:"}]

#tellraw @p ["get_slot2 #slot1:",{"score":{"name":"#slot1","objective":"dt.slot2"}}]
#tellraw @p ["get_slot2 #slot2:",{"score":{"name":"#slot2","objective":"dt.slot2"}}]
#tellraw @p ["get_slot2 #slot3:",{"score":{"name":"#slot3","objective":"dt.slot2"}}]
#tellraw @p ["get_slot2 #slot10:",{"score":{"name":"#slot10","objective":"dt.slot2"}}]
#tellraw @p ["get_slot2 #slot11:",{"score":{"name":"#slot11","objective":"dt.slot2"}}]
#tellraw @p ["get_slot2 #slot12:",{"score":{"name":"#slot12","objective":"dt.slot2"}}]
#tellraw @p ["get_slot2 #slot19:",{"score":{"name":"#slot19","objective":"dt.slot2"}}]
#tellraw @p ["get_slot2 #slot20:",{"score":{"name":"#slot20","objective":"dt.slot2"}}]
#tellraw @p ["get_slot2 #slot21:",{"score":{"name":"#slot21","objective":"dt.slot2"}}]
#[[[end]]]
function call_stack:pop