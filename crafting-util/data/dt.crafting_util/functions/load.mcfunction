#say dt.crafting_util loaded!
                    
scoreboard players set $dt.crafting_util.major load 0
scoreboard players set $dt.crafting_util.minor load 1
scoreboard players set $dt.crafting_util.patch load 0

data modify storage deptree:register info set value {name:"crafting_util",major:0,minor:1,patch:0, dependencies:[{name:"call_stack"},{name:"array_util"}]}
function deptree:register

scoreboard objectives add dt.tmp dummy
scoreboard players reset * dt.tmp
scoreboard objectives add dt.enum dummy
scoreboard players set #equal dt.enum 0
scoreboard players set #not_equal dt.enum 1

function dt.crafting_util:internal/load_groups
#say Groups loaded
function dt.crafting_util:internal/load_recipes
#say Recipes loaded
function dt.crafting_util:internal/load_recipe_tags
#say Recipe tags loaded

data modify storage dt.crafting_util: groups_cache set value []
data modify storage dt.crafting_util: groups_cache_size set value 10
data modify storage dt.crafting_util: recipes_cache set value []
data modify storage dt.crafting_util: recipes_cache_size set value 50