function call_stack:push
data modify storage call_stack: this.item set from entity @s Item
function dt.autocraft:internal/autocrafter/placeholders/remove_item_tag_unsafe
data modify entity @s Item set from storage call_stack: this.item
function call_stack:pop