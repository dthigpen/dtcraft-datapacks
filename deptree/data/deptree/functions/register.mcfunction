#say register

# Initialize data if first iteration
## Set default versions
execute unless data storage deptree: temp.started unless data storage deptree:register info.major run data modify storage deptree:register info.major set value 0
execute unless data storage deptree: temp.started unless data storage deptree:register info.minor run data modify storage deptree:register info.minor set value 0
execute unless data storage deptree: temp.started run data remove storage deptree:register loaded
execute unless data storage deptree: temp.started run data modify storage deptree: temp.loaded_packs set from storage deptree: datapacks
execute unless data storage deptree: temp.started run data modify storage deptree: temp.new_pack_deps set from storage deptree:register info.dependencies
execute unless data storage deptree: temp.started run data modify storage deptree: temp.not_equal set value false
execute unless data storage deptree: temp.started run data modify storage deptree: temp.equal_name set value true
execute unless data storage deptree: temp.started run data modify storage deptree: temp.equal_version set value true
execute unless data storage deptree: temp.started run data modify storage deptree: temp.started set value true

# Handle case where has deps but no datapacks to check
execute if data storage deptree: temp.new_pack_deps[0] unless data storage deptree: temp.loaded_packs[0] run tellraw @p ["",{"text":"Error loading: ","color":"red"},{"nbt":"info.name","storage":"deptree:register", "bold":false}]
execute if data storage deptree: temp.new_pack_deps[0] unless data storage deptree: temp.loaded_packs[0] run tellraw @p ["",{"text":" - not found: "},{"nbt":"temp.new_pack_deps[0].name","storage":"deptree:"}]
execute if data storage deptree: temp.new_pack_deps[0] unless data storage deptree: temp.loaded_packs[0] run data modify storage deptree: temp.not_equal set value true

# If there are dependencies and datapacks left to check, recursively check them
execute if data storage deptree: temp.new_pack_deps[0] if data storage deptree: temp.loaded_packs[0] run function deptree:internal/handle_first_dep

# If there are no more dependencies, say it, and add to the loaded datapacks list
execute if data storage deptree: {temp:{equal_version:true}} unless data storage deptree: temp.new_pack_deps[0] run tellraw @p ["",{"text":"Loaded datapack: ","color":"green"},{"nbt":"info.name","storage":"deptree:register"}]
execute if data storage deptree: {temp:{equal_version:true}} unless data storage deptree: temp.new_pack_deps[0] run data modify storage deptree: datapacks append from storage deptree:register info
execute if data storage deptree: {temp:{equal_version:true}} unless data storage deptree: temp.new_pack_deps[0] run data modify storage deptree:register loaded set value true
#tellraw @p ["",{"text":"DEBUG: ","color":"green"},{"nbt":"temp.equal_name","storage":"deptree:"}]

# tellraw @p ["",{"text":"DEBUG: data ","color":"red"},{"nbt":"temp","storage":"deptree:"}]
# Clean up temp data
data modify storage deptree: temp set value {}
data modify storage deptree:register info set value {}