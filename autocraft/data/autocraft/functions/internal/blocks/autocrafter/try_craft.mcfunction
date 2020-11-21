function call_stack:push

# only craft if there are no stacks
data modify storage call_stack: call.arg0 set from block ~ ~ ~ Items
function autocraft:internal/blocks/autocrafter/can_craft
data modify storage call_stack: this.can_craft set from storage call_stack: call.result


execute if data storage call_stack: {this:{can_craft:true}} run function autocraft:internal/blocks/autocrafter/fetch_or_init_data
execute if data storage call_stack: {this:{can_craft:true}} run data modify storage call_stack: this.recipes set from storage call_stack: call.result
execute if data storage call_stack: {this:{can_craft:true}} run data modify storage call_stack: call.arg0 set from block ~ ~ ~ Items
execute if data storage call_stack: {this:{can_craft:true}} run data modify storage call_stack: call.arg1 set from storage call_stack: this.recipes
execute if data storage call_stack: {this:{can_craft:true}} run function autocraft:internal/blocks/autocrafter/do_craft

#execute unless data storage call_stack: {this:{can_craft:true}} run tellraw @a[distance=..5] [{"text":"Cannot craft with stacked items: "},{"nbt":"Items","block":"~ ~ ~"}]

#execute if data storage call_stack: {this:{can_craft:true}} if data storage call_stack: this.recipes[0] run data modify storage call_stack: call.arg0 set from block ~ ~ ~ Items
#execute if data storage call_stack: {this:{can_craft:true}} if data storage call_stack: this.recipes[0] run data modify storage call_stack: call.arg1 set from storage call_stack: this.recipes
#execute if data storage call_stack: {this:{can_craft:true}} if data storage call_stack: this.recipes[0] run function dt.crafting_util:api/recipe/find_from_recipes
#execute if data storage call_stack: {this:{can_craft:true}} unless data storage call_stack: this.recipes[0] run function dt.crafting_util:api/recipe/find
#execute if data storage call_stack: {this:{can_craft:true}} run data modify storage call_stack: this.recipe_result set from storage call_stack: call.result
#execute if data storage call_stack: {this:{can_craft:true}} unless data storage call_stack: this.recipes[0] if data storage call_stack: this.recipe_result.result.id run data modify storage call_stack: this.recipes append from storage call_stack: this.recipe_result


#execute if data storage call_stack: {this:{can_craft:true}} run data modify block ~ ~ ~ Items set from storage call_stack: this.recipe_result
#execute if data storage call_stack: {this:{can_craft:true}} run say Crafted..
#execute if data storage call_stack: {this:{can_craft:true}} run tellraw @p {"nbt":"this.recipe_result","storage":"call_stack:"}
#execute if data storage call_stack: {this:{can_craft:true}} run tellraw @p {"nbt":"Items","block":"~ ~ ~"}
function call_stack:pop