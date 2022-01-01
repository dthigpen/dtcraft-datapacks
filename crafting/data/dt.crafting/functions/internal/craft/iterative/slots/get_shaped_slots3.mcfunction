function call_stack:push
data modify storage call_stack: this.compressed_item_ids set from storage call_stack: this.arg0

#[[[cog
#   from datapack_utils import *
#   cog.outl(f'scoreboard players reset * dt.slots3')
#   for slot in [1,2,3,10,11,12,19,20,21]:
#       cog.outl(f'execute store success score #slot{slot} dt.slots3 run data get storage call_stack: this.compressed_item_ids[{(slot + 1) // 10}][{(slot - 1) % 3}]');
#   cog.outl()
#   for slot in [1,2,3,10,11,12,19,20,21]:
#       cog.outl(f'#tellraw @p ["get_slots3 #slot{slot}:",{{"score":{{"name":"#slot{slot}","objective":"dt.slots3"}}}}]');
#]]]
scoreboard players reset * dt.slots3
execute store success score #slot1 dt.slots3 run data get storage call_stack: this.compressed_item_ids[0][0]
execute store success score #slot2 dt.slots3 run data get storage call_stack: this.compressed_item_ids[0][1]
execute store success score #slot3 dt.slots3 run data get storage call_stack: this.compressed_item_ids[0][2]
execute store success score #slot10 dt.slots3 run data get storage call_stack: this.compressed_item_ids[1][0]
execute store success score #slot11 dt.slots3 run data get storage call_stack: this.compressed_item_ids[1][1]
execute store success score #slot12 dt.slots3 run data get storage call_stack: this.compressed_item_ids[1][2]
execute store success score #slot19 dt.slots3 run data get storage call_stack: this.compressed_item_ids[2][0]
execute store success score #slot20 dt.slots3 run data get storage call_stack: this.compressed_item_ids[2][1]
execute store success score #slot21 dt.slots3 run data get storage call_stack: this.compressed_item_ids[2][2]

#tellraw @p ["get_slots3 #slot1:",{"score":{"name":"#slot1","objective":"dt.slots3"}}]
#tellraw @p ["get_slots3 #slot2:",{"score":{"name":"#slot2","objective":"dt.slots3"}}]
#tellraw @p ["get_slots3 #slot3:",{"score":{"name":"#slot3","objective":"dt.slots3"}}]
#tellraw @p ["get_slots3 #slot10:",{"score":{"name":"#slot10","objective":"dt.slots3"}}]
#tellraw @p ["get_slots3 #slot11:",{"score":{"name":"#slot11","objective":"dt.slots3"}}]
#tellraw @p ["get_slots3 #slot12:",{"score":{"name":"#slot12","objective":"dt.slots3"}}]
#tellraw @p ["get_slots3 #slot19:",{"score":{"name":"#slot19","objective":"dt.slots3"}}]
#tellraw @p ["get_slots3 #slot20:",{"score":{"name":"#slot20","objective":"dt.slots3"}}]
#tellraw @p ["get_slots3 #slot21:",{"score":{"name":"#slot21","objective":"dt.slots3"}}]
#[[[end]]]
function call_stack:pop