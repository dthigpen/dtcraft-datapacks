function call_stack:push
data modify storage call_stack: this.return_items set from storage call_stack: this.arg0


say replace
execute positioned ~ ~-1 ~ run function dt.autocraft:internal/blocks/autocrafter/placeholders/get_tagged_items
data modify storage call_stack: this.tagged_items_from_below set from storage call_stack: call.return

function call_stack:pop