# say handle_first_dep

# Set default version for dependency
execute unless data storage deptree: temp.dependencies[0].major run data modify storage deptree: temp.dependencies[0].major set value 0
execute unless data storage deptree: temp.dependencies[0].minor run data modify storage deptree: temp.dependencies[0].minor set value 0

# Check the name of the datapack
data modify storage deptree: temp.not_equal set value false
execute run data modify storage deptree: temp.lookup set from storage deptree: temp.dependencies[0].name
execute store success storage deptree: temp.not_equal byte 1 run data modify storage deptree: temp.lookup set from storage deptree: temp.datapacks[0].name
execute if data storage deptree: {temp:{not_equal:false}} run data modify storage deptree: temp.equal_name set value true
execute if data storage deptree: {temp:{not_equal:true}} run data modify storage deptree: temp.equal_name set value false

# Check that the major version is =
execute if data storage deptree: {temp:{not_equal:false}} store result score $deptree.tmp1 load run data get storage deptree: temp.datapacks[0].major
execute if data storage deptree: {temp:{not_equal:false}} store result score $deptree.tmp2 load run data get storage deptree: temp.dependencies[0].major
execute if data storage deptree: {temp:{not_equal:false}} unless score $deptree.tmp1 load = $deptree.tmp2 load run tellraw @p ["",{"text":"Error loading: ","color":"red"},{"nbt":"info.name","storage":"deptree:", "bold":false}]
execute if data storage deptree: {temp:{not_equal:false}} unless score $deptree.tmp1 load = $deptree.tmp2 load run tellraw @p ["",{"text":" - found: "},{"nbt":"temp.datapacks[0].name","storage":"deptree:"},{"text":" "},{"nbt":"temp.datapacks[0].major","storage":"deptree:","color":"red"},{"text":"."},{"nbt":"temp.datapacks[0].minor","storage":"deptree:","color":"red"},{"text":", requires: "},{"nbt":"temp.dependencies[0].major","storage":"deptree:","color":"green"},{"text":"."},{"nbt":"temp.dependencies[0].minor","storage":"deptree:","color":"green"}]
execute if data storage deptree: {temp:{not_equal:false}} unless score $deptree.tmp1 load = $deptree.tmp2 load run data modify storage deptree: temp.not_equal set value true
# Check that the minor version is >=
# data modify storage deptree: temp.found_dep set value false
execute if data storage deptree: {temp:{not_equal:false}} store result score $deptree.tmp1 load run data get storage deptree: temp.datapacks[0].minor
execute if data storage deptree: {temp:{not_equal:false}} store result score $deptree.tmp2 load run data get storage deptree: temp.dependencies[0].minor
# execute if data storage deptree: {temp:{not_equal:false}} if score $deptree.tmp1 load >= $deptree.tmp2 load run data modify storage deptree: temp.found_dep set value true
execute if data storage deptree: {temp:{not_equal:false}} unless score $deptree.tmp1 load >= $deptree.tmp2 load run data modify storage deptree: temp.not_equal set value true
# No need to check patch version
# execute if data storage deptree: temp.dependencies[0] if data storage deptree: {temp:{not_equal:false}} run tellraw @p ["",{"text":" - Found datapack ","color":"green"},{"nbt":"temp.dependencies[0].name","storage":"deptree:"}]

# If the names were equal, and the rest of the fields, remove it from the dep list
# execute if data storage deptree: {temp:{equal_name:true}} if data storage deptree: {temp:{not_equal:false}} run say FOUND DEP
execute if data storage deptree: {temp:{equal_name:true}} if data storage deptree: {temp:{not_equal:false}} run data remove storage deptree: temp.dependencies[0]
execute if data storage deptree: {temp:{equal_name:true}} if data storage deptree: {temp:{not_equal:false}} run data modify storage deptree: temp.datapacks set from storage deptree: datapacks
execute if data storage deptree: {temp:{equal_name:true}} if data storage deptree: {temp:{not_equal:false}} run function deptree:register

# If the names were NOT equal, and there are still datapacks to search, keep looking
# execute if data storage deptree: {temp:{equal_name:false}} if data storage deptree: temp.datapacks[0] run say NOT FOUND, LOOPING
execute if data storage deptree: {temp:{equal_name:false}} if data storage deptree: temp.datapacks[0] run data remove storage deptree: temp.datapacks[0]
execute if data storage deptree: {temp:{equal_name:false}} if data storage deptree: temp.datapacks[0] run function deptree:register



