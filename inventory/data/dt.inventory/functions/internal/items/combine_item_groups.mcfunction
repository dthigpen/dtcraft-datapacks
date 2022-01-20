function call_stack:push
data modify storage call_stack: this.item_groups set from storage call_stack: this.arg0
execute unless data storage call_stack: this.temp_return run data modify storage call_stack: this.temp_return set value []

execute if data storage call_stack: this.item_groups[0] run data modify storage call_stack: this.continue set value true
execute unless data storage call_stack: this.continue run data modify storage call_stack: this.return set from storage call_stack: this.temp_return

# IF CONTINUE
# get stack_size
# get total
# do integer division
# do mod division
# create array of (total // stack_size) items
# apply count of stack_size to each
# append one item of count (total % stack_size) to array
execute if data storage call_stack: this.continue run data modify storage call_stack: this.group set from storage call_stack: this.item_groups[0]
execute run data modify storage call_stack: call.arg0 set from storage call_stack: this.group[0].id
execute run function dt.inventory:internal/item/get_item_data_from_name
execute run data modify storage call_stack: this.stack_size set value 0
execute if data storage call_stack: call.return run data modify storage call_stack: this.stack_size set from storage call_stack: call.return.stackSize

execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg0 set value []
execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg0 append from storage call_stack: this.group[].Count
execute if data storage call_stack: this.continue run function dt.array:api/reduce/math/sum
execute if data storage call_stack: this.continue run scoreboard players set #total dt.tmp 0
execute if data storage call_stack: this.continue store result score #total dt.tmp run data get storage call_stack: call.return
execute if data storage call_stack: this.continue run scoreboard players set #stacksize dt.tmp 0
execute if data storage call_stack: this.continue store result score #stacksize dt.tmp run data get storage call_stack: this.stack_size
execute if data storage call_stack: this.continue run scoreboard players operation #numstacks dt.tmp = #total dt.tmp
execute if data storage call_stack: this.continue run scoreboard players operation #numstacks dt.tmp /= #stacksize dt.tmp
execute if data storage call_stack: this.continue run scoreboard players operation #remainder dt.tmp = #total dt.tmp
execute if data storage call_stack: this.continue run scoreboard players operation #remainder dt.tmp %= #stacksize dt.tmp
# tellraw @p ["combine_item_groups #total:",{"score":{"name":"#total","objective":"dt.tmp"}}]
# tellraw @p ["combine_item_groups #stacksize:",{"score":{"name":"#stacksize","objective":"dt.tmp"}}]
# tellraw @p ["combine_item_groups #numstacks:",{"score":{"name":"#numstacks","objective":"dt.tmp"}}]
# tellraw @p ["combine_item_groups #remainder:",{"score":{"name":"#remainder","objective":"dt.tmp"}}]
# template object to duplicate #numstacks times
execute if data storage call_stack: this.continue store result storage call_stack: call.arg0 int 1 run scoreboard players get #numstacks dt.tmp
execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg1 set from storage call_stack: this.group[0]
execute if data storage call_stack: this.continue run data remove storage call_stack: call.arg1.Slot
execute if data storage call_stack: this.continue store result storage call_stack: call.arg1.Count byte 1 run scoreboard players get #stacksize dt.tmp
execute if data storage call_stack: this.continue run function dt.array:api/n_array_of
execute if data storage call_stack: this.continue run data modify storage call_stack: this.combined set from storage call_stack: call.return

# create remainder stack
execute if data storage call_stack: this.continue if score #remainder dt.tmp matches 1.. run data modify storage call_stack: this.combined append from storage call_stack: this.group[0]
execute if data storage call_stack: this.continue if score #remainder dt.tmp matches 1.. store result storage call_stack: this.combined[-1].Count byte 1 run scoreboard players get #remainder dt.tmp

execute if data storage call_stack: this.continue run data remove storage call_stack: this.combined[].Slot
execute if data storage call_stack: this.continue run data modify storage call_stack: this.temp_return append from storage call_stack: this.combined

execute if data storage call_stack: this.continue run data remove storage call_stack: this.item_groups[0]
execute if data storage call_stack: this.continue run data modify storage call_stack: call.arg0 set from storage call_stack: this.item_groups
execute if data storage call_stack: this.continue run data modify storage call_stack: call.temp_return set from storage call_stack: this.temp_return
execute if data storage call_stack: this.continue run function dt.inventory:internal/items/combine_item_groups
execute if data storage call_stack: this.continue run data modify storage call_stack: this.return set from storage call_stack: call.return


function call_stack:pop