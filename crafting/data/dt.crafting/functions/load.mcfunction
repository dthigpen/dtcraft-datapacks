#say dt.crafting loaded!
                    
scoreboard players set $dt.crafting.major load.status 0
scoreboard players set $dt.crafting.minor load.status 1
scoreboard players set $dt.crafting.patch load.status 0



scoreboard objectives add dt.tmp dummy
scoreboard players reset * dt.tmp
scoreboard objectives add dt.enum dummy
scoreboard players set #equal dt.enum 0
scoreboard players set #not_equal dt.enum 1

function dt.crafting:internal/load_groups
#say Groups loaded
function dt.crafting:internal/load_recipes
#say Recipes loaded