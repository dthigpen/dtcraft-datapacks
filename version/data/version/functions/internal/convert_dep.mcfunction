data remove storage version: args.dep_id
data remove storage version: args.dep_major
data remove storage version: args.dep_minor
data remove storage version: args.dep_patch
execute if data storage version: args.dependencies[0] run data modify storage version: args.dep_id set from storage version: args.dependencies[0].id
execute if data storage version: args.dependencies[0] run data modify storage version: args.dep_major set from storage version: args.dependencies[0].version[0]
execute if data storage version: args.dependencies[0] run data modify storage version: args.dep_minor set from storage version: args.dependencies[0].version[1]
execute if data storage version: args.dependencies[0] run data modify storage version: args.dep_patch set from storage version: args.dependencies[0].version[2]
execute if data storage version: args.dependencies[0] run data remove storage version: args.dependencies[0]