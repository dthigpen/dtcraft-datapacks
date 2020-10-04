# dtcraft-datapacks

A collection of utility and vanilla enhancement datapacks.

## Installation

1. Visit the [Releases](https://github.com/dthigpen/dtcraft-datapacks/releases) page and download the desired modpack zip file. If the file ends in bundle.zip follow step 2, otherwise continue to step 3
2. Unzip the downloaded zip file. Open the resulting folder. You should see several zip files inside.
3. Copy all of these files into your world's datapacks folder at `%APPDATA%\.minecraft\saves\<world>\datapacks`
4. Launch the world and type `/reload`

## Vanilla Enhancement Datapacks
Datapacks that do not drastically change vanilla gameplay

### refill
Automatically refill an empty stack of a hotbar item with available stacks from your inventory.

#### Usage
Toggle automatic refilling on and off with the command `/trigger dt.refill.toggle`.
Use items in your hotbar as normal, after the last item is used, the first available stack from your inventory will replace the empty spot.

### inventory-sort
A quality of life datapack that will sort your inventory (excluding hotbar) into a defined group ordering.

#### Usage
Sort your inventory with the command `/trigger dt.sort`

## Utility Datapacks
The following datapacks are libraries of functions that are intended to be used by other datapacks, and **are not standalone**.

### inventory-utils

This datapack offers a number of commonly repeated functions for manipulating player inventories complete with shulkerbox looting. Functions include, getting only hotbar items, only inventory items, replacing a single slot of user inventory with custom item, getting first item by id, and getting all items by id. Other functionality will be added as needed.

### user-utils

This datapack provides basic functions for user specific storage based on player UUID. It provides basic CRUD (Create, Read, Update, Delete) operations. Note, it does not store user data for the calling datapack, it simply modifies and returns the data for the caller to store.

### call-stack
This datapack provides some bare bones support for a call stack like data structure, providing scope to your function files variables. Very convenient for avoiding side effects from other function files overwriting variable values.

## Conventions
All of these datapacks utilize the dtcraft call-stack utility when calling functions. Funtions that implement this utility have function level variables, arguments, and return values without chance of side effects from other functions.
### Example
example.mcfunction
```
data modify storage dtcraft:call_stack call.arg0 set value "foo"
function dtcraft:some/function
data modify storage your-namepace:storage from storage dtcraft:call_stack call.result
```
lib/foo_bar.mcfunction
```
# push a new frame to the stack
function dtcraft:call_stack/push

data modify storage dtcraft:call_stack this.foo set from storage dtcraft:call_stack this.arg0
data modify storage dtcraft:call_stack call.result value "bar"

# pop the frame and replace with parent frame
function dtcraft:call_stack/pop
```

