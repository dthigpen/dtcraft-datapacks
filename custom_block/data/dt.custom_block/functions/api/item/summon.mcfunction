#> dt.custom_block:api/item/summon
# Summon an custom item entity for placing custom blocks.
# @params
#   storage call_stack: call.arg0
#       NBT object with properties of the custom item and block
function call_stack:push
data modify storage call_stack: call.arg0 set from storage call_stack: this.arg0
function dt.custom_block:api/item/create_nbt
data modify storage call_stack: this.item_nbt set from storage call_stack: call.result
data modify storage call_stack: call.arg0 set from storage call_stack: this.item_nbt
function dt.inventory:api/summon

function call_stack:pop