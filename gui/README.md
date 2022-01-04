# GUI

Easily create container block based GUIs.

## Installation

1. Navigate to the Releases tab and download the latest `.zip` for this datapack.
2. Place this datapack in your world's datapacks folder.
3. Add `dt.gui:load` before your datapack's load function in the Lantern Load `load.json` tag at `your_pack/data/load/tags/functions/load.json`.

## Usage

1. Create an entity positioned at the barrel block that you wish to make into a custom GUI. For example:

    ```mcfunction
    summon minecraft:marker ~ ~ ~ {Tags:["my_gui"]}
    ```

2. As this entity, execute the `dt.gui:api/self/init` function with your configuration as an argument. See the [Config](#Config) section for more details.

    ```mcfunction
    data modify storage call_stack: call.arg0 set value {tick:false, whitelist:[{Slot:11b},{Slot:15b}], data:[{Slot:26b, tag:{CustomModelData:1}}], hopper:{priority:[{Slot:15b}]}}
    function dt.gui:api/self/init
    ```

3. If your configuration includes `tick:false` then perform the following every tick:
  
  ```mcfunction
  # every tick as gui entity
  function dt.gui:api/self/tick
  function dt.gui:api/self/tick_hopper
  ```

## Config

The following are optional config properties to customize the generated GUI and are intended to be passed in as an NBT value to the init function. Note: JSON is used here for syntax highlighting, use NBT notation when using.

```jsonc
{
  // List if objects with Slots that you do not want a placeholder to occupy.
  "whitelist": [
    { "Slot": 1 } // Note: 1 -> 1b
  ],
  // List of objects with data that will be applied to the given slot every gui tick. (eg. custom model data)
  "data": [
    { "Slot": 26, "tag": { "CustomModelData": 1 } } // Note: 1 -> 1b
  ],
  "hopper": {
    // ordered list of slots a hopper should pull from first
    "priority": [
      { "Slot": 1 } // Note: 1 -> 1b
    ]
  }
}
```
