# Autocraft
Automate the crafting process with a redstone enabled crafting table.

## Installation

1. Download the latest [PlayerDB Datapack](https://github.com/rx-modules/PlayerDB/releases)
2. Follow instructions on main [README](https://github.com/dthigpen/dtcraft-datapacks/blob/master/README.md)

## Usage
Automatically craft items using a redstone enabled crafting table called an autocrafter. You can create an autocrafter for nearly any item that has a recipe. The recipe for each autocrafter is as follows:
```crafting_table + dropper + <item-of-choice> = <item-of-choice autocrafter```

The autocrafter will only work when there is a `hopper` below it. Lock the `hopper` and fill in the items for the recipe, then unlock the `hopper` to craft the item.

## Caveats and Limitations
- Currently only single item stacks are supported in the autocraft. For example, it will not craft when there are 2+ ingredients in a stack
- Non-item specific crafting is possible but not recommended as it is a very resource intensive operation to perform every tick and causes **significant** lag.
- Cannot move the table with pistons because it is a block entity.

## TODO
- Customization settings
- Item specific custom models to indicate autocrafter type
- Improve recipe matching logic
- Speed optimizations