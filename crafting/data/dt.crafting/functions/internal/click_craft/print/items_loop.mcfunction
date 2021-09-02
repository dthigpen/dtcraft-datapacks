function call_stack:push
data modify storage call_stack: this.display_items set from storage call_stack: this.arg0

#[[[cog
#   output = ''
#   count = 9
#   for i in range(0,count):
#       output += f'{{"nbt":"this.display_items[{i}]","storage":"call_stack:", "interpret": true, "font":"minecraft:custom"}}, " ",'
#   output += '""'
#   cog.outl(f'tellraw @s [{output}]')
#   cog.outl(('data remove storage call_stack: this.display_items[0]\n' * count))
#]]]
tellraw @s [{"nbt":"this.display_items[0]","storage":"call_stack:", "interpret": true, "font":"minecraft:custom"}, " ",{"nbt":"this.display_items[1]","storage":"call_stack:", "interpret": true, "font":"minecraft:custom"}, " ",{"nbt":"this.display_items[2]","storage":"call_stack:", "interpret": true, "font":"minecraft:custom"}, " ",{"nbt":"this.display_items[3]","storage":"call_stack:", "interpret": true, "font":"minecraft:custom"}, " ",{"nbt":"this.display_items[4]","storage":"call_stack:", "interpret": true, "font":"minecraft:custom"}, " ",{"nbt":"this.display_items[5]","storage":"call_stack:", "interpret": true, "font":"minecraft:custom"}, " ",{"nbt":"this.display_items[6]","storage":"call_stack:", "interpret": true, "font":"minecraft:custom"}, " ",{"nbt":"this.display_items[7]","storage":"call_stack:", "interpret": true, "font":"minecraft:custom"}, " ",{"nbt":"this.display_items[8]","storage":"call_stack:", "interpret": true, "font":"minecraft:custom"}, " ",""]
data remove storage call_stack: this.display_items[0]
data remove storage call_stack: this.display_items[0]
data remove storage call_stack: this.display_items[0]
data remove storage call_stack: this.display_items[0]
data remove storage call_stack: this.display_items[0]
data remove storage call_stack: this.display_items[0]
data remove storage call_stack: this.display_items[0]
data remove storage call_stack: this.display_items[0]
data remove storage call_stack: this.display_items[0]

#[[[end]]]

execute if data storage call_stack: this.display_items[0] run data modify storage call_stack: call.arg0 set from storage call_stack: this.display_items
execute if data storage call_stack: this.display_items[0] run function dt.crafting:internal/click_craft/print/items_loop
function call_stack:pop