# Deptree
This datapack enables dynamic versioned dependency loading with detailed error messages.

Each datapack publishes a JSON object with information about itself and its dependencies. For example,
```jsonc
{
  "name": "your_pack",
  "major": 0,
  "minor": 1,
  "patch": 0,
  "dependencies": [
    {
      "name": "dep1",
      "major": 1, // optional, found major must = this minor
      "minor": 2, // optional, found minor must be >= this minor
    }
  ]
}
```
## Usage

Add the following to your `load.mcfunction` in order to register your datapack.
```mcfunction
#load.mcfunction

data modify storage deptree:register info set value {name:"your_pack",major:0,minor:1,patch:0, dependencies:[{name:"dep1"}, {name:"dep2", major:1}]}
function deptree:register

execute if data storage deptree:register loaded run ...
```

