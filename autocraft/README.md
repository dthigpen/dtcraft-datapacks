# Autocraft

Automate the crafting process with a redstone enabled crafting table.

## Installation

1. Visit the Releases page and download autocraft datapack zip file and resource pack.
2. Copy the downloaded datapack zip file into your world's datapacks folder at `%APPDATA%\.minecraft\saves\<world>\datapacks` or `~/.minecraft/saves/<world>/datapacks`
3. Copy the resource pack into the Minecraft Resource Pack area, and enable it.
4. Launch the world and type `/reload`
5. Check that the datapack is installed under the "Installed Datapacks" Advancement tab with `Ctrl + L`

## Usage

### Autocrafter Recipe

An Autocrafter can be created by combining a `crafting_table` and `dropper` in any position.

<p align="center">
    <img src="docs/recipe.png" />
</p>

### How to Use

The Autocrafter block acts nearly the same as an ordinary crafting table with the exception that the ingredients grid does **not** allow item stacking if slots are free. This is so that hoppers and droppers can place items into the grid in an automated fashion. For example, if a stack of items is placed in the table, they will be redistributed to fill the free slots.

When an enabled hopper is placed under the Autocrafter, the result slot will be pulled into the hopper. If the result slot is empty, the ingredients grid items will be pulled. For shaped recipes, it may be necessary to fill free slots with placeholders that must then be filtered out before the recipe can be crafted.

## TODO

- Add guide for redstone crafting
- Speed optimizations
- Support for item stacks
- Comparator interaction
- Verify hopper cooldown correctness
