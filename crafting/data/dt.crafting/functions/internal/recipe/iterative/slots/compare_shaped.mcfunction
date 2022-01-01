
scoreboard players reset #slots_match dt.crafting.tmp
#[[[cog
#   cog.out('execute ')
#   for slot in [1,2,3,10,11,12,19,20,21]:
#       cog.out(f'if score #slot{slot} dt.slots1 = #slot{slot} dt.slots3 ')
#   cog.out('run scoreboard players set #slots_match dt.crafting.tmp 1')
#]]]
execute if score #slot1 dt.slots1 = #slot1 dt.slots3 if score #slot2 dt.slots1 = #slot2 dt.slots3 if score #slot3 dt.slots1 = #slot3 dt.slots3 if score #slot10 dt.slots1 = #slot10 dt.slots3 if score #slot11 dt.slots1 = #slot11 dt.slots3 if score #slot12 dt.slots1 = #slot12 dt.slots3 if score #slot19 dt.slots1 = #slot19 dt.slots3 if score #slot20 dt.slots1 = #slot20 dt.slots3 if score #slot21 dt.slots1 = #slot21 dt.slots3 run scoreboard players set #slots_match dt.crafting.tmp 1
#[[[end]]]