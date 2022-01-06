# Custom Block

Easily create blocks with custom models and behaviors.

## Installation

1. Navigate to the Releases tab and download the latest `.zip` for this datapack.
2. Place this datapack in your world's datapacks folder.
3. Add `dt.custom_block:load` before your datapack's load function in the Lantern Load `load.json` tag at `your_pack/data/load/tags/functions/load.json`.

## Usage

1. Build an NBT object with the properties of the custom block and item you want to create. See [Properties](#Properties) section for details. Note the storage destination `call_stack: call.arg0`.
```mcfunction
# your_file.mcfunction
data modify storage call_stack: call.arg0 set value {block:{model:1},item:{model:3}}
```
2. Call the `dt.custom_block:api/item/summon` function with the properties you created to summon a `minecraft:item` that can be used to spawn custom blocks.
```mcfunction
# your_file.mcfunction
data modify storage call_stack: call.arg0 set value {block:{model:1},item:{model:3}}
function dt.custom_block:api/item/summon
```
3. If you included `destroy:false` in your properties, you must manually call the `dt.custom_block:api/block/destroy`. For example you could remove the database entry for the entity or remove block loot (if you changed the block) but then the destroy function must be called to kill the block entity.
```mcfunction
# your custom block tick function
execute unless block ~ ~ ~ dropper run function rx.playerdb:admin/delete_player
execute unless block ~ ~ ~ dropper run kill @e[type=item,nbt={Item:{id:"minecraft:dropper"}},distance=..0.5,limit=1]
execute unless block ~ ~ ~ dropper run function dt.custom_block:api/block/destroy
```
## Properties
Here is an example of all the properties that can be used to create a custom item/block. All are optional, but `item.name` is recommended at a minimum.
```jsonc
{
    "block": {
        "model": 1, // Identifier for a model in your resource pack
        "overrides": { // Model overrides when facing up or down
            "up": 2,
            "down": 3
        },
        "xp": {
          "value": 5, // xp points, use byte in nbt. Ex: 5b
          "count": 1 // use byte in nbt. Ex: 1b
        },
        "Tags": ["my.block.tag"], // Tags copied onto the block entity
        "tag": {"myKey": "arbitrary NBT tag data"} // NBT copied onto block entity's Item.tag
    },
    "item": { // Properties for the item loot for this block
        "name": "{\"text\": \"Test Item\"}",
        "model": 4,
        },
        "Tags": ["my.item.tag"],
        "tag": {"myKey": "arbitrary NBT tag data"}
    },
    "destroy": false // do not automatically create custom item loot and kill block entity when the block at the block entity becomes air
}
```