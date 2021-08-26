function call_stack:push
data modify storage call_stack: this.props set from storage call_stack: this.arg0
data modify storage call_stack: this.item_nbt set value {Item:{id:"minecraft:item_frame",Count:1b,tag:{EntityTag:{Item: {id: "minecraft:item_frame",Count: 1b,tag: {EntityTag: {Item: { id: "minecraft:stick", Count: 1b },Facing: 1b,Silent: 1b,Invulnerable: 1b,id: "minecraft:glow_item_frame",Invisible: 1b,Fixed: 1b},hold: { display: { Name: '{"text":"Custom Block"}' } }}},Facing: 1b,Silent: 1b,Invulnerable: 1b,id: "minecraft:glow_item_frame",Invisible: 1b,Tags: ["custom_block", "unset"],Fixed: 1b}}}}

# Set id to either an item_frame or a glowing item frame
data modify storage call_stack: this.item_id set value "minecraft:item_frame"
execute if data storage call_stack: {this:{props:{block:{glowing:true}}}} run data modify storage call_stack: this.item_id set value "minecraft:glow_item_frame"

data modify storage call_stack: this.item_nbt.Item.id set from storage call_stack: this.item_id
data modify storage call_stack: this.props.item.tag.custom_block set value true
data modify storage call_stack: this.item_nbt.Item.tag merge from storage call_stack: this.props.item.tag
data modify storage call_stack: this.item_nbt.Item.tag.display.Name set from storage call_stack: this.props.item.name
data modify storage call_stack: this.item_nbt.Item.tag.CustomModelData set from storage call_stack: this.props.item.model
data modify storage call_stack: this.item_nbt.Item.tag.EntityTag merge from storage call_stack: this.default_entity_tag
data modify storage call_stack: this.item_nbt.Item.tag.EntityTag.Item.id set from storage call_stack: this.item_id
data modify storage call_stack: this.item_nbt.Item.tag.EntityTag.Item.tag.EntityTag.Item.id set from storage call_stack: this.item_id
data modify storage call_stack: this.item_nbt.Item.tag.EntityTag.Item.tag.hold set from storage call_stack: this.props
data modify storage call_stack: this.item_nbt.Item.tag.EntityTag.Item.tag.CustomModelData set from storage call_stack: this.props.block.model
data modify storage call_stack: this.item_nbt.Tags set from storage call_stack: this.props.item.Tags
data modify storage call_stack: this.result set from storage call_stack: this.item_nbt
function call_stack:pop