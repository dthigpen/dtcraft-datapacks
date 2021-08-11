# say find from info obj
function call_stack:push
data modify storage call_stack: this.info_obj set from storage call_stack: this.arg0

scoreboard players reset $total_count dt.tmp
scoreboard players reset $unique_count dt.tmp
execute store result score $total_count dt.tmp run data get storage call_stack: this.info_obj.total_count
execute store result score $unique_count dt.tmp run data get storage call_stack: this.info_obj.unique_count
execute if score $total_count dt.tmp matches 1..9 if score $unique_count dt.tmp matches 1..9 run data modify storage call_stack: this.valid_count set value true

data modify storage call_stack: call.arg0 set value []
# TODO use recipe_tree to avoid impossible combinations of total and unique
#[[[cog
#   from datapack_utils import utils
#   for i,j in utils.permute_range(1,9):
#       cog.outl(f'execute if score $total_count dt.tmp matches {i} if score $unique_count dt.tmp matches {j} run data modify storage call_stack: call.arg0 set from storage dt.crafting: recipe_tree.{i}.{j}')
#]]]
execute if score $total_count dt.tmp matches 1 if score $unique_count dt.tmp matches 1 run data modify storage call_stack: call.arg0 set from storage dt.crafting: recipe_tree.1.1
execute if score $total_count dt.tmp matches 2 if score $unique_count dt.tmp matches 1 run data modify storage call_stack: call.arg0 set from storage dt.crafting: recipe_tree.2.1
execute if score $total_count dt.tmp matches 2 if score $unique_count dt.tmp matches 2 run data modify storage call_stack: call.arg0 set from storage dt.crafting: recipe_tree.2.2
execute if score $total_count dt.tmp matches 3 if score $unique_count dt.tmp matches 1 run data modify storage call_stack: call.arg0 set from storage dt.crafting: recipe_tree.3.1
execute if score $total_count dt.tmp matches 3 if score $unique_count dt.tmp matches 2 run data modify storage call_stack: call.arg0 set from storage dt.crafting: recipe_tree.3.2
execute if score $total_count dt.tmp matches 3 if score $unique_count dt.tmp matches 3 run data modify storage call_stack: call.arg0 set from storage dt.crafting: recipe_tree.3.3
execute if score $total_count dt.tmp matches 4 if score $unique_count dt.tmp matches 1 run data modify storage call_stack: call.arg0 set from storage dt.crafting: recipe_tree.4.1
execute if score $total_count dt.tmp matches 4 if score $unique_count dt.tmp matches 2 run data modify storage call_stack: call.arg0 set from storage dt.crafting: recipe_tree.4.2
execute if score $total_count dt.tmp matches 4 if score $unique_count dt.tmp matches 3 run data modify storage call_stack: call.arg0 set from storage dt.crafting: recipe_tree.4.3
execute if score $total_count dt.tmp matches 4 if score $unique_count dt.tmp matches 4 run data modify storage call_stack: call.arg0 set from storage dt.crafting: recipe_tree.4.4
execute if score $total_count dt.tmp matches 5 if score $unique_count dt.tmp matches 1 run data modify storage call_stack: call.arg0 set from storage dt.crafting: recipe_tree.5.1
execute if score $total_count dt.tmp matches 5 if score $unique_count dt.tmp matches 2 run data modify storage call_stack: call.arg0 set from storage dt.crafting: recipe_tree.5.2
execute if score $total_count dt.tmp matches 5 if score $unique_count dt.tmp matches 3 run data modify storage call_stack: call.arg0 set from storage dt.crafting: recipe_tree.5.3
execute if score $total_count dt.tmp matches 5 if score $unique_count dt.tmp matches 4 run data modify storage call_stack: call.arg0 set from storage dt.crafting: recipe_tree.5.4
execute if score $total_count dt.tmp matches 5 if score $unique_count dt.tmp matches 5 run data modify storage call_stack: call.arg0 set from storage dt.crafting: recipe_tree.5.5
execute if score $total_count dt.tmp matches 6 if score $unique_count dt.tmp matches 1 run data modify storage call_stack: call.arg0 set from storage dt.crafting: recipe_tree.6.1
execute if score $total_count dt.tmp matches 6 if score $unique_count dt.tmp matches 2 run data modify storage call_stack: call.arg0 set from storage dt.crafting: recipe_tree.6.2
execute if score $total_count dt.tmp matches 6 if score $unique_count dt.tmp matches 3 run data modify storage call_stack: call.arg0 set from storage dt.crafting: recipe_tree.6.3
execute if score $total_count dt.tmp matches 6 if score $unique_count dt.tmp matches 4 run data modify storage call_stack: call.arg0 set from storage dt.crafting: recipe_tree.6.4
execute if score $total_count dt.tmp matches 6 if score $unique_count dt.tmp matches 5 run data modify storage call_stack: call.arg0 set from storage dt.crafting: recipe_tree.6.5
execute if score $total_count dt.tmp matches 6 if score $unique_count dt.tmp matches 6 run data modify storage call_stack: call.arg0 set from storage dt.crafting: recipe_tree.6.6
execute if score $total_count dt.tmp matches 7 if score $unique_count dt.tmp matches 1 run data modify storage call_stack: call.arg0 set from storage dt.crafting: recipe_tree.7.1
execute if score $total_count dt.tmp matches 7 if score $unique_count dt.tmp matches 2 run data modify storage call_stack: call.arg0 set from storage dt.crafting: recipe_tree.7.2
execute if score $total_count dt.tmp matches 7 if score $unique_count dt.tmp matches 3 run data modify storage call_stack: call.arg0 set from storage dt.crafting: recipe_tree.7.3
execute if score $total_count dt.tmp matches 7 if score $unique_count dt.tmp matches 4 run data modify storage call_stack: call.arg0 set from storage dt.crafting: recipe_tree.7.4
execute if score $total_count dt.tmp matches 7 if score $unique_count dt.tmp matches 5 run data modify storage call_stack: call.arg0 set from storage dt.crafting: recipe_tree.7.5
execute if score $total_count dt.tmp matches 7 if score $unique_count dt.tmp matches 6 run data modify storage call_stack: call.arg0 set from storage dt.crafting: recipe_tree.7.6
execute if score $total_count dt.tmp matches 7 if score $unique_count dt.tmp matches 7 run data modify storage call_stack: call.arg0 set from storage dt.crafting: recipe_tree.7.7
execute if score $total_count dt.tmp matches 8 if score $unique_count dt.tmp matches 1 run data modify storage call_stack: call.arg0 set from storage dt.crafting: recipe_tree.8.1
execute if score $total_count dt.tmp matches 8 if score $unique_count dt.tmp matches 2 run data modify storage call_stack: call.arg0 set from storage dt.crafting: recipe_tree.8.2
execute if score $total_count dt.tmp matches 8 if score $unique_count dt.tmp matches 3 run data modify storage call_stack: call.arg0 set from storage dt.crafting: recipe_tree.8.3
execute if score $total_count dt.tmp matches 8 if score $unique_count dt.tmp matches 4 run data modify storage call_stack: call.arg0 set from storage dt.crafting: recipe_tree.8.4
execute if score $total_count dt.tmp matches 8 if score $unique_count dt.tmp matches 5 run data modify storage call_stack: call.arg0 set from storage dt.crafting: recipe_tree.8.5
execute if score $total_count dt.tmp matches 8 if score $unique_count dt.tmp matches 6 run data modify storage call_stack: call.arg0 set from storage dt.crafting: recipe_tree.8.6
execute if score $total_count dt.tmp matches 8 if score $unique_count dt.tmp matches 7 run data modify storage call_stack: call.arg0 set from storage dt.crafting: recipe_tree.8.7
execute if score $total_count dt.tmp matches 8 if score $unique_count dt.tmp matches 8 run data modify storage call_stack: call.arg0 set from storage dt.crafting: recipe_tree.8.8
execute if score $total_count dt.tmp matches 9 if score $unique_count dt.tmp matches 1 run data modify storage call_stack: call.arg0 set from storage dt.crafting: recipe_tree.9.1
execute if score $total_count dt.tmp matches 9 if score $unique_count dt.tmp matches 2 run data modify storage call_stack: call.arg0 set from storage dt.crafting: recipe_tree.9.2
execute if score $total_count dt.tmp matches 9 if score $unique_count dt.tmp matches 3 run data modify storage call_stack: call.arg0 set from storage dt.crafting: recipe_tree.9.3
execute if score $total_count dt.tmp matches 9 if score $unique_count dt.tmp matches 4 run data modify storage call_stack: call.arg0 set from storage dt.crafting: recipe_tree.9.4
execute if score $total_count dt.tmp matches 9 if score $unique_count dt.tmp matches 5 run data modify storage call_stack: call.arg0 set from storage dt.crafting: recipe_tree.9.5
execute if score $total_count dt.tmp matches 9 if score $unique_count dt.tmp matches 6 run data modify storage call_stack: call.arg0 set from storage dt.crafting: recipe_tree.9.6
execute if score $total_count dt.tmp matches 9 if score $unique_count dt.tmp matches 7 run data modify storage call_stack: call.arg0 set from storage dt.crafting: recipe_tree.9.7
execute if score $total_count dt.tmp matches 9 if score $unique_count dt.tmp matches 8 run data modify storage call_stack: call.arg0 set from storage dt.crafting: recipe_tree.9.8
execute if score $total_count dt.tmp matches 9 if score $unique_count dt.tmp matches 9 run data modify storage call_stack: call.arg0 set from storage dt.crafting: recipe_tree.9.9
#[[[end]]]

execute if data storage call_stack: this.valid_count run data modify storage call_stack: call.arg1 set from storage call_stack: this.info_obj.items
execute if data storage call_stack: this.valid_count run function dt.crafting:internal/recipe/find_recipe_loop
execute if data storage call_stack: this.valid_count run data modify storage call_stack: this.result set from storage call_stack: call.result

function call_stack:pop