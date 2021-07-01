# dtcraft-datapacks

A collection of vanilla enhancement datapacks and utilities. Click on the following datapacks for specific usage and installation information.

## [Autocraft](https://github.com/dthigpen/dtcraft-datapacks/blob/master/autocraft/README.md)

Automate the crafting process with a redstone enabled crafting table.

## [Inventory Sort](https://github.com/dthigpen/dtcraft-datapacks/blob/master/inventory-sort/README.md)

A quality of life datapack that will sort your inventory (excluding hotbar) into a defined group ordering.

## [Refill](https://github.com/dthigpen/dtcraft-datapacks/blob/master/refill/README.md)

Automatically refill an empty stack of a hotbar item with available stacks from your inventory.


## Utility Datapacks

The following datapacks are libraries of functions that are intended to be used by other datapacks, and **are not standalone**.

### [Call-stack](https://github.com/dthigpen/dtcraft-datapacks/blob/master/call-stack/README.md)

This datapack provides some bare bones support for a call stack like data structure, providing scope to your function files variables. Very convenient for avoiding side effects from other function files overwriting variable values.

### [Array Util](https://github.com/dthigpen/dtcraft-datapacks/blob/master/array_util/README.md)

This datapack encapsulates common array operations.

### [Crafting Util](https://github.com/dthigpen/dtcraft-datapacks/blob/master/crafting-util/README.md)

This datapack offers an api for crafting items from recipes through commands.

### [Inventory Util](https://github.com/dthigpen/dtcraft-datapacks/blob/master/inventory-utils/README.md)

This datapack offers a number of commonly repeated functions for manipulating player inventories complete with shulkerbox looting. Functions include, getting only hotbar items, only inventory items, replacing a single slot of user inventory with custom item, getting first item by id, and getting all items by id. Other functionality will be added as needed.

### [User Util](https://github.com/dthigpen/dtcraft-datapacks/blob/master/user-utils/README.md)

This datapack provides basic functions for user specific storage based on player UUID. It provides basic CRUD (Create, Read, Update, Delete) operations. Note, it does not store user data for the calling datapack, it simply modifies and returns the data for the caller to store.


## Datapack Conventions
All of these datapacks utilize the `dtcraft:call-stack` utility when calling functions. Funtions that implement this utility have function level variables, arguments, and return values without chance of side effects from other functions.

### Example

example.mcfunction
```mcfunction
data modify storage call_stack: call.arg0 set value "foo"
function namespace:some/function
data modify storage namepace:storage from storage call_stack: this.result
```
lib/foo_bar.mcfunction
```mcfunction
# push a new frame to the stack
function call_stack:push

data modify storage call_stack: this.foo set from storage call_stack: this.arg0
data modify storage call_stack: call.result value "bar"

# pop the frame and replace with parent frame
function call_stack:pop
```

