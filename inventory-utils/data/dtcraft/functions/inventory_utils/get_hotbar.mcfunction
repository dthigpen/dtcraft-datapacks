# say get_hotbar
function dtcraft:call_stack/push

data modify storage dtcraft:call_stack this.result.value set value []
data modify storage dtcraft:call_stack this.result.value append from entity @s Inventory[{Slot:0b}]
data modify storage dtcraft:call_stack this.result.value append from entity @s Inventory[{Slot:1b}]
data modify storage dtcraft:call_stack this.result.value append from entity @s Inventory[{Slot:2b}]
data modify storage dtcraft:call_stack this.result.value append from entity @s Inventory[{Slot:3b}]
data modify storage dtcraft:call_stack this.result.value append from entity @s Inventory[{Slot:4b}]
data modify storage dtcraft:call_stack this.result.value append from entity @s Inventory[{Slot:5b}]
data modify storage dtcraft:call_stack this.result.value append from entity @s Inventory[{Slot:6b}]
data modify storage dtcraft:call_stack this.result.value append from entity @s Inventory[{Slot:7b}]
data modify storage dtcraft:call_stack this.result.value append from entity @s Inventory[{Slot:8b}]

function dtcraft:call_stack/pop