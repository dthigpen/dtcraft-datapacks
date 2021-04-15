
# Set default version for dependency
execute unless data storage deptree: temp.new_pack_deps[0].major run data modify storage deptree: temp.new_pack_deps[0].major set value 0
execute unless data storage deptree: temp.new_pack_deps[0].minor run data modify storage deptree: temp.new_pack_deps[0].minor set value 0

#region name check
data modify storage deptree: temp.not_equal set value false
execute run data modify storage deptree: temp.lookup set from storage deptree: temp.new_pack_deps[0].name
execute store success storage deptree: temp.not_equal byte 1 run data modify storage deptree: temp.lookup set from storage deptree: temp.loaded_packs[0].name
execute if data storage deptree: {temp:{not_equal:false}} run data modify storage deptree: temp.equal_name set value true
execute if data storage deptree: {temp:{not_equal:true}} run data modify storage deptree: temp.equal_name set value false

# Message
execute if data storage deptree: {temp:{equal_name:false}} unless data storage deptree: temp.loaded_packs[1] run tellraw @p ["",{"text":"Error loading: ","color":"red"},{"nbt":"info.name","storage":"deptree:register", "bold":false}]
execute if data storage deptree: {temp:{equal_name:false}} unless data storage deptree: temp.loaded_packs[1] run tellraw @p ["",{"text":" - missing: "},{"nbt":"temp.new_pack_deps[0].name","storage":"deptree:", "color":"green"}]
#endregion

#region version check
# Check that the major version is =
data modify storage deptree: temp.equal_version set from storage deptree: temp.equal_name
execute if data storage deptree: {temp:{equal_name:true}} store result score $deptree.tmp1 load run data get storage deptree: temp.loaded_packs[0].major
execute if data storage deptree: {temp:{equal_name:true}} store result score $deptree.tmp2 load run data get storage deptree: temp.new_pack_deps[0].major
execute if data storage deptree: {temp:{equal_name:true}} unless score $deptree.tmp1 load = $deptree.tmp2 load run data modify storage deptree: temp.equal_version set value false

# Check that the minor version is >=
execute if data storage deptree: {temp:{equal_version:true}} store result score $deptree.tmp1 load run data get storage deptree: temp.loaded_packs[0].minor
execute if data storage deptree: {temp:{equal_version:true}} store result score $deptree.tmp2 load run data get storage deptree: temp.new_pack_deps[0].minor
#execute if data storage deptree: {temp:{equal_version:true}} if score $deptree.tmp1 load >= $deptree.tmp2 load run data modify storage deptree: temp.found_dep set value true
execute if data storage deptree: {temp:{equal_version:true}} unless score $deptree.tmp1 load >= $deptree.tmp2 load run data modify storage deptree: temp.equal_version set value false

# Message
execute if data storage deptree: {temp:{equal_name:true}} if data storage deptree: {temp:{equal_version:false}} run tellraw @p ["",{"text":"Error loading: ","color":"red"},{"nbt":"info.name","storage":"deptree:register", "bold":false}]
execute if data storage deptree: {temp:{equal_name:true}} if data storage deptree: {temp:{equal_version:false}} run tellraw @p ["",{"text":" - found: "},{"nbt":"temp.loaded_packs[0].name","storage":"deptree:"},{"text":" "},{"nbt":"temp.loaded_packs[0].major","storage":"deptree:","color":"red"},{"text":"."},{"nbt":"temp.loaded_packs[0].minor","storage":"deptree:","color":"red"},{"text":", requires: "},{"nbt":"temp.new_pack_deps[0].major","storage":"deptree:","color":"green"},{"text":"."},{"nbt":"temp.new_pack_deps[0].minor","storage":"deptree:","color":"green"}]
#endregion

# If the names were equal, and the rest of the fields, remove it from the dep list
execute if data storage deptree: {temp:{equal_version:true}} run data remove storage deptree: temp.new_pack_deps[0]
execute if data storage deptree: {temp:{equal_version:true}} run data modify storage deptree: temp.loaded_packs set from storage deptree: datapacks
execute if data storage deptree: {temp:{equal_version:true}} run function deptree:register

# If the names were NOT equal, and there are still datapacks to search, keep looking
execute if data storage deptree: {temp:{equal_name:false}} if data storage deptree: temp.loaded_packs[0] run data remove storage deptree: temp.loaded_packs[0]
execute if data storage deptree: {temp:{equal_name:false}} if data storage deptree: temp.loaded_packs[0] run function deptree:register

