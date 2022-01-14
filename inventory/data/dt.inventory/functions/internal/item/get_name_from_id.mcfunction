function call_stack:push
execute store result score $id dt.tmp run data get storage call_stack: this.arg0
data remove storage call_stack: global.dt.name
function dt.inventory:internal/item/id_search_tree/start
execute if data storage call_stack: global.dt.name run data modify storage call_stack: this.return set from storage call_stack: global.dt.name
function call_stack:pop