# Custom Block Documentation

### Functions

- [dt.custom_block:api/item/summon](#functiondt.custom_block:api/item/summon)
- [dt.custom_block:api/item/create_nbt](#functiondt.custom_block:api/item/create_nbt)
- [dt.custom_block:api/block/destroy](#functiondt.custom_block:api/block/destroy)
#### `function dt.custom_block:api/item/summon`
Summon an custom item entity for placing custom blocks.
```
@params
   storage call_stack: call.arg0
       NBT object with properties of the custom item and block
```
#### `function dt.custom_block:api/item/create_nbt`
Create a custom item NBT to be summoned with the api/item/summon command.
```
@params
   storage call_stack: call.arg0
       NBT item properties that determine the attributes of the custom item. See README.md for details.
@output
   storage call_stack: call.result
       NBT item
```
#### `function dt.custom_block:api/block/destroy`
Spawn an item entity for the custom block destroyed at ~ ~ ~.

