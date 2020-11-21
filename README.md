# dtcraft-datapacks

A collection of utility and vanilla enhancement datapacks.

## Installation

1. Visit the [Releases](https://github.com/dthigpen/dtcraft-datapacks/releases) page and download the desired datapack zip file.
2. Copy the downloaded zip files into your world's datapacks folder at `%APPDATA%\.minecraft\saves\<world>\datapacks`
3. Launch the world and type `/reload`
4. Check that the datapack is installed under the "Installed Datapacks" Advancement tab with `Ctrl + L`

## Vanilla Enhancement Datapacks
Datapacks that do not drastically change vanilla gameplay

### Refill
Automatically refill an empty stack of a hotbar item with available stacks from your inventory.

#### Usage
Toggle automatic refilling on and off with the command `/trigger dt.refill.toggle`.
Use items in your hotbar as normal, after the last item is used, the first available stack from your inventory will replace the empty spot.

### Inventory Sort
A quality of life datapack that will sort your inventory (excluding hotbar) into a defined group ordering.

#### Usage
Sort your inventory with the command `/trigger dt.sort`

## Utility Datapacks
The following datapacks are libraries of functions that are intended to be used by other datapacks, and **are not standalone**.

### Call-stack
This datapack provides some bare bones support for a call stack like data structure, providing scope to your function files variables. Very convenient for avoiding side effects from other function files overwriting variable values.

### Inventory Util

This datapack offers a number of commonly repeated functions for manipulating player inventories complete with shulkerbox looting. Functions include, getting only hotbar items, only inventory items, replacing a single slot of user inventory with custom item, getting first item by id, and getting all items by id. Other functionality will be added as needed.

### User Util

This datapack provides basic functions for user specific storage based on player UUID. It provides basic CRUD (Create, Read, Update, Delete) operations. Note, it does not store user data for the calling datapack, it simply modifies and returns the data for the caller to store.


## Conventions
All of these datapacks utilize the dtcraft call-stack utility when calling functions. Funtions that implement this utility have function level variables, arguments, and return values without chance of side effects from other functions.

### Example
example.mcfunction
```
data modify storage call_stack: call.arg0 set value "foo"
function namespace:some/function
data modify storage namepace:storage from storage call_stack: this.result
```
lib/foo_bar.mcfunction
```
# push a new frame to the stack
function call_stack:push

data modify storage call_stack: this.foo set from storage call_stack: this.arg0
data modify storage call_stack: call.result value "bar"

# pop the frame and replace with parent frame
function call_stack:pop
```

