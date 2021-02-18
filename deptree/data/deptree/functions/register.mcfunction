say register

# Initialize data if first iteration
## Set default versions
execute unless data storage deptree: temp.started unless data storage deptree: info.major run data modify storage deptree: info.major set value 0
execute unless data storage deptree: temp.started unless data storage deptree: info.minor run data modify storage deptree: info.minor set value 0
execute unless data storage deptree: temp.started run data modify storage deptree: temp.datapacks set from storage deptree: datapacks
execute unless data storage deptree: temp.started run data modify storage deptree: temp.dependencies set from storage deptree: info.dependencies
execute unless data storage deptree: temp.started run data modify storage deptree: temp.not_equal set value false
execute unless data storage deptree: temp.started run tellraw @p ["starting to load: ",{"nbt":"info.name","storage":"deptree:"}]
execute unless data storage deptree: temp.started run data modify storage deptree: temp.started set value true

# Handle case where has deps but no datapacks to check
execute if data storage deptree: {temp:{not_equal:false}} unless score $deptree.tmp1 load = $deptree.tmp2 load run 
execute if data storage deptree: {temp:{not_equal:false}} unless score $deptree.tmp1 load = $deptree.tmp2 load run 
execute if data storage deptree: temp.dependencies[0] unless data storage deptree: temp.datapacks[0] run tellraw @p ["",{"text":"Error loading: ","color":"red"},{"nbt":"info.name","storage":"deptree:", "bold":false}]
execute if data storage deptree: temp.dependencies[0] unless data storage deptree: temp.datapacks[0] run tellraw @p ["",{"text":" - not found: "},{"nbt":"temp.dependencies[0].name","storage":"deptree:"}]
execute if data storage deptree: temp.dependencies[0] unless data storage deptree: temp.datapacks[0] run data modify storage deptree: temp.not_equal set value true

# If there are dependencies and datapacks left to check, recursively check them
execute if data storage deptree: temp.dependencies[0] if data storage deptree: temp.datapacks[0] run function deptree:internal/handle_first_dep

# If there are no more dependencies, say it, and add to the loaded datapacks list
execute if data storage deptree: {temp:{not_equal:false}} unless data storage deptree: temp.dependencies[0] run tellraw @p ["",{"text":"Loaded datapack: ","color":"green"},{"nbt":"info.name","storage":"deptree:"}]
execute if data storage deptree: {temp:{not_equal:false}} unless data storage deptree: temp.dependencies[0] run data modify storage deptree: datapacks append from storage deptree: info

# tellraw @p ["",{"text":"DEBUG: data ","color":"red"},{"nbt":"temp","storage":"deptree:"}]
# Clean up temp data
data modify storage deptree: temp set value {}
data modify storage deptree: info set value {}