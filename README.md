# dtcraft-datapacks

A collection of utility and vanilla enhancement datapacks.

## Installation

1. Visit the [Releases](https://github.com/dthigpen/dtcraft-datapacks/releases) page and download the desired modpack zip file.
2. Unzip the downloaded zip file. Open the resulting folder. You should see several zip files inside.
3. Copy all of these files into your world's datapacks folder at `%APPDATA%\.minecraft\saves\<world>\datapacks`
4. Launch the world and type `/reload`

## Vanilla Enhancement Datapacks
Datapacks that do not drastically change vanilla gameplay

### refill
Automatically refill an empty stack of a hotbar item with available stacks from your inventory.

## Utility Datapacks
The following datapacks are libraries of functions that are intended to be used by other datapacks, and **are not standalone**.

### inventory-utils

This datapack offers a number of commonly repeated functions for manipulating player inventories complete with shulkerbox looting. Functions include, getting only hotbar items, only inventory items, replacing a single slot of user inventory with custom item, getting first item by id, and getting all items by id. Other functionality will be added as needed.

### user-utils

This datapack provides basic functions for user specific storage based on player UUID. It provides basic CRUD (Create, Read, Update, Delete) operations. Note, it does not store user data for the calling datapack, it simply modifies and returns the data for the caller to store.


## Conventions
Each datapack more or less follows a standardized way of calling functions, allowing for the use of basic arguments and return values. There are still limitations as the mcfunction implementation does not have a concept of a call stack or scope. Typically library functions will be called in the following way:
```
# Set function arguments, call function, get returned result
data modify storage dtcraft:tmp arg1 set value "foo"
function dtcraft:lib/function
data modify storage your-namepace:storage from storage dtcraft:tmp result
```

