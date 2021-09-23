function call_stack:push

data modify storage call_stack: call.arg0 set from block 24 67 -220 Items
function dt.crafting:api/recipe/find_old
data modify storage call_stack: this.actual set from storage call_stack: call.return
tellraw @p [{"text":"Result: "},{"nbt":"this.actual.result.id","storage":"call_stack:"}]
function call_stack:pop