$data modify storage version: args set value $(args)
data modify storage version: args.major set from storage version: args.version[0]
data modify storage version: args.minor set from storage version: args.version[1]
data modify storage version: args.patch set from storage version: args.version[2]
function version:internal/set_version_score with storage version: args
function version:internal/convert_dep
execute if data storage version: args.dep_id run function version:internal/check_deps with storage version: args
execute if data storage version: args.tick run function version:internal/call_tick with storage version: args