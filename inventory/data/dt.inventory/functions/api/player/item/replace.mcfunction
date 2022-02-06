#> dt.inventory:api/player/item/replace
# replace the item in the current player's inventory with the given item
# @params
#   storage call_stack: call.arg0
#       Item with the Slot:X attribute defined
# @output
#   storage call_stack: call.return
#       boolean successful always true
function call_stack:push

data modify storage call_stack: this.item set from storage call_stack: this.arg0
scoreboard players reset $int1 dt.tmp
execute store result score $int1 dt.tmp run data get storage call_stack: this.item.Slot

data modify storage call_stack: this.return set value false
execute if data storage call_stack: {this:{return:false}} if score $int1 dt.tmp matches 0..35 run data modify storage call_stack: this.return set value true
execute if data storage call_stack: {this:{return:false}} if score $int1 dt.tmp matches 100..103 run data modify storage call_stack: this.return set value true
execute if data storage call_stack: {this:{return:false}} if score $int1 dt.tmp matches -106 run data modify storage call_stack: this.return set value true

data modify storage call_stack: this.item.Slot set value 0
execute in overworld run data modify block 2999999 255 2999999 Items set value []
execute in overworld run data modify block 2999999 255 2999999 Items append from storage call_stack: this.item

#[[[cog
#   for slot in range(0,9):
#       cog.outl(f'execute in overworld if score $int1 dt.tmp matches {slot} run loot replace entity @s hotbar.{slot} 1 mine 2999999 255 2999999 stick{{drop_contents:true}}')
#]]]
execute in overworld if score $int1 dt.tmp matches 0 run loot replace entity @s hotbar.0 1 mine 2999999 255 2999999 stick{drop_contents:true}
execute in overworld if score $int1 dt.tmp matches 1 run loot replace entity @s hotbar.1 1 mine 2999999 255 2999999 stick{drop_contents:true}
execute in overworld if score $int1 dt.tmp matches 2 run loot replace entity @s hotbar.2 1 mine 2999999 255 2999999 stick{drop_contents:true}
execute in overworld if score $int1 dt.tmp matches 3 run loot replace entity @s hotbar.3 1 mine 2999999 255 2999999 stick{drop_contents:true}
execute in overworld if score $int1 dt.tmp matches 4 run loot replace entity @s hotbar.4 1 mine 2999999 255 2999999 stick{drop_contents:true}
execute in overworld if score $int1 dt.tmp matches 5 run loot replace entity @s hotbar.5 1 mine 2999999 255 2999999 stick{drop_contents:true}
execute in overworld if score $int1 dt.tmp matches 6 run loot replace entity @s hotbar.6 1 mine 2999999 255 2999999 stick{drop_contents:true}
execute in overworld if score $int1 dt.tmp matches 7 run loot replace entity @s hotbar.7 1 mine 2999999 255 2999999 stick{drop_contents:true}
execute in overworld if score $int1 dt.tmp matches 8 run loot replace entity @s hotbar.8 1 mine 2999999 255 2999999 stick{drop_contents:true}
#[[[end]]]

#[[[cog
#   for score in range(9,36):
#       cog.outl(f'execute in overworld if score $int1 dt.tmp matches {score} run loot replace entity @s inventory.{score - 9} 1 mine 2999999 255 2999999 stick{{drop_contents:true}}')
#]]]
execute in overworld if score $int1 dt.tmp matches 9 run loot replace entity @s inventory.0 1 mine 2999999 255 2999999 stick{drop_contents:true}
execute in overworld if score $int1 dt.tmp matches 10 run loot replace entity @s inventory.1 1 mine 2999999 255 2999999 stick{drop_contents:true}
execute in overworld if score $int1 dt.tmp matches 11 run loot replace entity @s inventory.2 1 mine 2999999 255 2999999 stick{drop_contents:true}
execute in overworld if score $int1 dt.tmp matches 12 run loot replace entity @s inventory.3 1 mine 2999999 255 2999999 stick{drop_contents:true}
execute in overworld if score $int1 dt.tmp matches 13 run loot replace entity @s inventory.4 1 mine 2999999 255 2999999 stick{drop_contents:true}
execute in overworld if score $int1 dt.tmp matches 14 run loot replace entity @s inventory.5 1 mine 2999999 255 2999999 stick{drop_contents:true}
execute in overworld if score $int1 dt.tmp matches 15 run loot replace entity @s inventory.6 1 mine 2999999 255 2999999 stick{drop_contents:true}
execute in overworld if score $int1 dt.tmp matches 16 run loot replace entity @s inventory.7 1 mine 2999999 255 2999999 stick{drop_contents:true}
execute in overworld if score $int1 dt.tmp matches 17 run loot replace entity @s inventory.8 1 mine 2999999 255 2999999 stick{drop_contents:true}
execute in overworld if score $int1 dt.tmp matches 18 run loot replace entity @s inventory.9 1 mine 2999999 255 2999999 stick{drop_contents:true}
execute in overworld if score $int1 dt.tmp matches 19 run loot replace entity @s inventory.10 1 mine 2999999 255 2999999 stick{drop_contents:true}
execute in overworld if score $int1 dt.tmp matches 20 run loot replace entity @s inventory.11 1 mine 2999999 255 2999999 stick{drop_contents:true}
execute in overworld if score $int1 dt.tmp matches 21 run loot replace entity @s inventory.12 1 mine 2999999 255 2999999 stick{drop_contents:true}
execute in overworld if score $int1 dt.tmp matches 22 run loot replace entity @s inventory.13 1 mine 2999999 255 2999999 stick{drop_contents:true}
execute in overworld if score $int1 dt.tmp matches 23 run loot replace entity @s inventory.14 1 mine 2999999 255 2999999 stick{drop_contents:true}
execute in overworld if score $int1 dt.tmp matches 24 run loot replace entity @s inventory.15 1 mine 2999999 255 2999999 stick{drop_contents:true}
execute in overworld if score $int1 dt.tmp matches 25 run loot replace entity @s inventory.16 1 mine 2999999 255 2999999 stick{drop_contents:true}
execute in overworld if score $int1 dt.tmp matches 26 run loot replace entity @s inventory.17 1 mine 2999999 255 2999999 stick{drop_contents:true}
execute in overworld if score $int1 dt.tmp matches 27 run loot replace entity @s inventory.18 1 mine 2999999 255 2999999 stick{drop_contents:true}
execute in overworld if score $int1 dt.tmp matches 28 run loot replace entity @s inventory.19 1 mine 2999999 255 2999999 stick{drop_contents:true}
execute in overworld if score $int1 dt.tmp matches 29 run loot replace entity @s inventory.20 1 mine 2999999 255 2999999 stick{drop_contents:true}
execute in overworld if score $int1 dt.tmp matches 30 run loot replace entity @s inventory.21 1 mine 2999999 255 2999999 stick{drop_contents:true}
execute in overworld if score $int1 dt.tmp matches 31 run loot replace entity @s inventory.22 1 mine 2999999 255 2999999 stick{drop_contents:true}
execute in overworld if score $int1 dt.tmp matches 32 run loot replace entity @s inventory.23 1 mine 2999999 255 2999999 stick{drop_contents:true}
execute in overworld if score $int1 dt.tmp matches 33 run loot replace entity @s inventory.24 1 mine 2999999 255 2999999 stick{drop_contents:true}
execute in overworld if score $int1 dt.tmp matches 34 run loot replace entity @s inventory.25 1 mine 2999999 255 2999999 stick{drop_contents:true}
execute in overworld if score $int1 dt.tmp matches 35 run loot replace entity @s inventory.26 1 mine 2999999 255 2999999 stick{drop_contents:true}
#[[[end]]]

# Offhand and armor
execute in overworld if score $int1 dt.tmp matches -106 run loot replace entity @s weapon.offhand 1 mine 2999999 255 2999999 air{drop_contents:true}
execute in overworld if score $int1 dt.tmp matches 100 run loot replace entity @s armor.feet 1 mine 2999999 255 2999999 air{drop_contents:true}
execute in overworld if score $int1 dt.tmp matches 101 run loot replace entity @s armor.legs 1 mine 2999999 255 2999999 air{drop_contents:true}
execute in overworld if score $int1 dt.tmp matches 102 run loot replace entity @s armor.chest 1 mine 2999999 255 2999999 air{drop_contents:true}
execute in overworld if score $int1 dt.tmp matches 103 run loot replace entity @s armor.head 1 mine 2999999 255 2999999 air{drop_contents:true}
function call_stack:pop