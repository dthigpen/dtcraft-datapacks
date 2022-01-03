function call_stack:push
data modify storage call_stack: this.return set value {}
data modify storage call_stack: this.return set from entity @s Item.tag.data
# Default object
function dt.autocraft:internal/autocrafter/database/get_init_data
data modify storage call_stack: this.return merge from storage call_stack: call.return

function call_stack:pop