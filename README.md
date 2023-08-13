# dtcraft-datapacks

A collection of vanilla enhancement datapacks and utilities. Click on the following datapacks for specific usage and installation information or see the general [Installation](#installation) section here.

**Note**
These datapacks are in development and may not be stable or up to date.

## [Autocraft](autocraft/README.md)

Automate the crafting process with a redstone enabled crafting table.

## [Inventory Sort](inventory-sort/README.md)

A quality of life datapack that will sort your inventory (excluding hotbar) into a defined group ordering.

## [Refill](refill/README.md)

Automatically refill an empty stack of a hotbar item with available stacks from your inventory.

## Library Datapacks

The following datapacks are libraries of functions that are intended to be used by other datapacks, and **are not standalone**.

### [Call-stack](call-stack/README.md)

This datapack provides some bare bones support for a call stack like data structure, providing scope to your function variables. This is very convenient for avoiding side effects from other functions overwriting variable values.

### [Array](array/README.md)

This datapack encapsulates common array operations.

### [Crafting](crafting/README.md)

This datapack offers an api for crafting items from recipes through commands.

### [Inventory](inventory/README.md)

This datapack offers a number of commonly repeated functions for manipulating player inventories complete with shulker box looting. Functions include, getting only hotbar items, only inventory items, replacing a single slot of user inventory with custom item, getting first item by id, and getting all items by id. Other functionality will be added as needed.

### [Raycast](raycast/README.md)

A utility datapack used for performing raycasts with configurable parameters.

### [Custom-Block](custom-block/README.md)

Easily create blocks with custom models and behaviors.

### [GUI](gui/README.md)

Easily create container based GUIs.

### [Unit-Test](unittest/README.md)

This datapack offers an api for testing functions. Additionally includes experimental multi-tick testing functionality.

## Installation

Navigate to the Releases tab and download the desired datapack's `.zip` file. Copy the zip file into your Minecraft world's `datapacks` folder. Open your Minecraft world and type `/reload`.

Library datapacks (intended for datapack devs) such as `call-stack` or `crafting` can be added to existing datapacks with [Lantern Load](https://github.com/LanternMC/Load). This entails adding the load function of the library datapack to the `load.json` tag.
For example:

```json
{
    "values": [
        "dt.crafting:load",
        "your_pack:load"
    ]
}
```

## Building From Source

1. Create a datapack development directory and change directories into it. For example,

    ```sh
    mkdir -p dev/datapacks; cd dev/datapacks
   ```

2. Clone this repository into your datapack development directory

   ```sh
   git clone git@github.com:dthigpen/dtcraft-datapacks.git
   ```

3. Create a libraries directory, and put the latest compatible PlayerDB release zip into it.
4. You should have something like

   ```sh
   ls
   dtcraft-datapacks/
   libraries/
       playerdb-v1.20.zip
   ```

5. Navigate into the `dtcraft-datapacks` directory with `cd dtcraft-datapacks`.
6. Create and source a Python virtual envirnment so that we can install project dependencies. Remember to run the `source` command in the future.

   ```sh
   python -m venv env
   source env/bin/activate
   ```

7. Install dependencies with `pip`.

    ```sh
    pip install -e .
    ```

8. Run build tasks with `invoke`.

    ```sh
    # show commands
    invoke --list
    # bundle the datapack with dependencies
    invoke bundle autocraft ~/.minecraft/saves/test-world/datapacks --watch
    ```

## Datapack Conventions

All of these datapacks utilize the `call-stack` utility when calling functions. Functions that implement this utility have function level variables, arguments, and return values without chance of side effects from other functions.

### Example

example.mcfunction

```mcfunction
data modify storage call_stack: call.arg0 set value "foo"
function namespace:some/function
data modify storage namespace:storage from storage call_stack: call.return
```

lib/foo_bar.mcfunction

```mcfunction
# push a new frame to the stack
function call_stack:push

data modify storage call_stack: this.foo set from storage call_stack: this.arg0
data modify storage call_stack: this.return value "bar"

# pop the frame and replace with parent frame
function call_stack:pop
```

See the [call-stack](call-stack/README.md) for more details.

## Credits

- Rx for providing the essential PlayerDB datapack
- CloudWolf for recipe format inspiration
