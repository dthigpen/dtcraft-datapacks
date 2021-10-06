function call_stack:push
data modify storage call_stack: this.display_items set from storage call_stack: this.arg0

#[[[cog
#   output = '{"text":""}, '
#   count = 9
#   for i in range(0,count):
#       output += f'{{"nbt":"this.display_items[{i}].icon","storage":"call_stack:", "interpret": true}}, " ",'
#   output += '""'
#   cog.outl(f'tellraw @s [{output}]')
#   cog.outl(('data remove storage call_stack: this.display_items[0]\n' * count))
#]]]
tellraw @s [{"text":""}, {"nbt":"this.display_items[0].icon","storage":"call_stack:", "interpret": true}, " ",{"nbt":"this.display_items[1].icon","storage":"call_stack:", "interpret": true}, " ",{"nbt":"this.display_items[2].icon","storage":"call_stack:", "interpret": true}, " ",{"nbt":"this.display_items[3].icon","storage":"call_stack:", "interpret": true}, " ",{"nbt":"this.display_items[4].icon","storage":"call_stack:", "interpret": true}, " ",{"nbt":"this.display_items[5].icon","storage":"call_stack:", "interpret": true}, " ",{"nbt":"this.display_items[6].icon","storage":"call_stack:", "interpret": true}, " ",{"nbt":"this.display_items[7].icon","storage":"call_stack:", "interpret": true}, " ",{"nbt":"this.display_items[8].icon","storage":"call_stack:", "interpret": true}, " ",""]
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
execute if data storage call_stack: this.display_items[0] run function dt.click_craft:internal/print/display_items_loop
function call_stack:pop