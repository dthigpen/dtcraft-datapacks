# Custom Block

Easily create blocks with custom models and behaviors.

## Usage

1. Create a custom `minecraft:item` for a `minecraft:dropper`. This should include the following `nbt`, replacing the `CustomModelData` value with your resource pack's block model and the `Lock` value with a unique identifier for your block:

```json
{
    "id": "minecraft:dropper",
    "tag": {
      "custom_block": true,
      "CusomModelData": 1234567,
      "BlockEntityTag": {
        "Lock": "unique_block_name"
      }
    }
  }
```
2. Create a function tags for the on place and on remove hooks. The on place tag should be located at `<your-datapack>/data/dt.custom_block/tags/functions/on_place.json`. The on remove tag should be located at `<your-datapack>/data/dt.custom_block/tags/functions/on_place.json`.
```json
// <your-datapack>/data/dt.custom_block/tags/functions/on_place.json
{
    "values": ["your_namespace:path/to/your/place/block/check"]
}
```
```json
// <your-datapack>/data/dt.custom_block/tags/functions/on_remove.json
{
    "values": ["your_namespace:path/to/your/remove/block/check"]
}
```

3. Create the functions that the tags in the step above will call. This function should **not** do the placing/removing directly. They must check that the block/entity contains your unique id before doing the placing and removing.
```mcfunction
# on_place_check.mcfunction
execute if data block ~ ~ ~ {Lock:"unique_block_name"} run tag @s add my.custom.tag
execute if data block ~ ~ ~ {Lock:"unique_block_name"} run say do custom block setup
```
```mcfunction
# on_remove_check.mcfunction
execute if entity @s[tag=my.custom.tag] run say do custom block clean up
```

4. If you want to apply a `CustomBlockModel` you can call `dt.custom_block:api/set_model` in the `on_place_check.mcfunction` or later. Optionally you can do the lock check, then call a function to do all of the setup. The example below shows setting a directional model for the custom block in the `on_place_check.mcfunction` file.
```mcfunction
# on_place_check.mcfunction
execute if data block ~ ~ ~ {Lock:"unique_block_name"} run data modify storage dt.custom_block:in item set value {id:"minecraft:dropper", Count:1b, tag:{CustomModelData:777777}}
execute if data block ~ ~ ~ {Lock:"unique_block_name"} run data modify storage dt.custom_block:in overrides.up set value {id:"minecraft:dropper", Count:1b, tag:{CustomModelData:777778}}
execute if data block ~ ~ ~ {Lock:"unique_block_name"} run data modify storage dt.custom_block:in overrides.down set value {id:"minecraft:dropper", Count:1b, tag:{CustomModelData:777779}}
execute if data block ~ ~ ~ {Lock:"unique_block_name"} run function dt.custom_block:api/set_model
```
