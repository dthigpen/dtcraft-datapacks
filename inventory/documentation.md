# Inventory Documentation

### Functions

- [dt.inventory:api/item/summon](#functiondt.inventory:api/item/summon)
- [dt.inventory:api/shulker/items/get2](#functiondt.inventory:api/shulker/items/get2)
- [dt.inventory:api/shulker/items/set2](#functiondt.inventory:api/shulker/items/set2)
- [dt.inventory:api/shulker/items/get](#functiondt.inventory:api/shulker/items/get)
- [dt.inventory:api/shulker/items/clear2](#functiondt.inventory:api/shulker/items/clear2)
- [dt.inventory:api/shulker/items/set](#functiondt.inventory:api/shulker/items/set)
- [dt.inventory:api/shulker/items/clear](#functiondt.inventory:api/shulker/items/clear)
- [dt.inventory:api/shulker/loot/give/player](#functiondt.inventory:api/shulker/loot/give/player)
- [dt.inventory:api/shulker/loot/insert/block2](#functiondt.inventory:api/shulker/loot/insert/block2)
- [dt.inventory:api/shulker/loot/insert/block](#functiondt.inventory:api/shulker/loot/insert/block)
- [dt.inventory:api/shulker/loot/replace/entity/hotbar](#functiondt.inventory:api/shulker/loot/replace/entity/hotbar)
- [dt.inventory:api/shulker/loot/replace/entity/inventory](#functiondt.inventory:api/shulker/loot/replace/entity/inventory)
- [dt.inventory:api/items/reset_slots](#functiondt.inventory:api/items/reset_slots)
- [dt.inventory:api/items/combine](#functiondt.inventory:api/items/combine)
- [dt.inventory:api/player/item/replace](#functiondt.inventory:api/player/item/replace)
- [dt.inventory:api/player/item/slot/remove](#functiondt.inventory:api/player/item/slot/remove)
- [dt.inventory:api/player/items/inventory/replace](#functiondt.inventory:api/player/items/inventory/replace)
- [dt.inventory:api/player/items/inventory/get](#functiondt.inventory:api/player/items/inventory/get)
- [dt.inventory:api/player/items/hotbar/replace](#functiondt.inventory:api/player/items/hotbar/replace)
- [dt.inventory:api/player/items/hotbar/get](#functiondt.inventory:api/player/items/hotbar/get)
#### `function dt.inventory:api/item/summon`
Summon an arbitrary item and merge in the given nbt
```
@params
   storage call_stack: call.arg0
       item nbt that is merged into the data of the summoned item. Ex: {Item:{id:"minecraft:egg",Count:1b}}
@output
   storage call_stack: call.return
       boolean true if item was successfully summoned
```
#### `function dt.inventory:api/shulker/items/get2`
Get the shulker2 items
```
@params

@output
   storage call_stack: call.return
       list of items
```
#### `function dt.inventory:api/shulker/items/set2`
Set the shulker2 items to be used for following commands
```
@params
   storage call_stack: call.arg0
       list of items
@output

```
#### `function dt.inventory:api/shulker/items/get`
Get the shulker items
```
@params

@output
   storage call_stack: call.return
       list of items
```
#### `function dt.inventory:api/shulker/items/clear2`
Clear the items in the shulker2
```
@params

@output

```
#### `function dt.inventory:api/shulker/items/set`
Set the shulker items to be used for following commands
```
@params
   storage call_stack: call.arg0
       list of items
@output

```
#### `function dt.inventory:api/shulker/items/clear`
Clear the items in the shulker
```
@params

@output

```
#### `function dt.inventory:api/shulker/loot/give/player`
Give the current player loot from the shulker
```
@params

@output

```
#### `function dt.inventory:api/shulker/loot/insert/block2`
Insert items from the shulker2 into the block
```
@params

@output

```
#### `function dt.inventory:api/shulker/loot/insert/block`
Insert items from the shulker into the block
```
@params

@output

```
#### `function dt.inventory:api/shulker/loot/replace/entity/hotbar`
Replace the current player's hotbar items with items in the shulker
```
@params

@output

```
#### `function dt.inventory:api/shulker/loot/replace/entity/inventory`
Replace the current player's inventory with items in the shulker
```
@params

@output

```
#### `function dt.inventory:api/items/reset_slots`
Reset the slots of the given items starting at Slot 0b
```
@params
   storage call_stack: call.arg0
       list of items
@output
   storage call_stack: call.return
       list of items
```
#### `function dt.inventory:api/items/combine`
Combine multiple partial item stacks into as few item stacks as possible
```
@params
   storage call_stack: call.arg0
       list of items
@output
   storage call_stack: call.return
       list of items
```
#### `function dt.inventory:api/player/item/replace`
Replace the item in the current player's inventory with the given item
```
@params
   storage call_stack: call.arg0
       Item with the Slot:X attribute defined
@output
   storage call_stack: call.return
       boolean successful always true
```
#### `function dt.inventory:api/player/item/slot/remove`
Remove the item at the given slot from the current player's inventory
```
@params
   storage call_stack: call.arg0
       slot to be removed
@output

```
#### `function dt.inventory:api/player/items/inventory/replace`
Replace the current player's inventory with the given items
```
@params
   storage call_stack: call.arg0
       list of items
@output
   storage call_stack: call.return
       boolean successful if inventory items changed after replacement
```
#### `function dt.inventory:api/player/items/inventory/get`
Get the current player's true inventory items (Slots 9-35)
```
@params

@output
   storage call_stack: call.return
       List of items
```
#### `function dt.inventory:api/player/items/hotbar/replace`
Replace the current player's hotbar with the given items
```
@params
   storage call_stack: call.arg0
       List of items
@output
   storage call_stack: call.return
       boolean successful if inventory items changed after replacement
```
#### `function dt.inventory:api/player/items/hotbar/get`
Get the current player's true hotbar items (Slots 0-8)
```
@params

@output
   storage call_stack: call.return
       List of items
```
