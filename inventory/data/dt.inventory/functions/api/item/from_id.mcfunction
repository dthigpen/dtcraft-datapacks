function call_stack:push
execute store result score $id dt.tmp run data get storage call_stack: this.arg0
data modify storage call_stack: this.count set value 1b
execute if data storage call_stack: this.arg1 store result storage call_stack: this.count byte 1 run data get storage call_stack: this.arg1
data remove storage call_stack: global.dt.name
function dt.inventory:internal/item/id_search_tree/start

execute if data storage call_stack: global.dt.name run data modify storage call_stack: this.return set value {Count:1b,id:"minecraft:air"}
execute if data storage call_stack: global.dt.name run data modify storage call_stack: this.return.id set from storage call_stack: global.dt.name
execute if data storage call_stack: global.dt.name run data modify storage call_stack: this.return.Count set from storage call_stack: this.count
function call_stack:pop