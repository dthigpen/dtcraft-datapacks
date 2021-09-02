function call_stack:push
data modify storage call_stack: this.remaining set from storage call_stack: this.arg0

execute unless data storage call_stack: this.remaining run function dt.crafting:internal/click_craft/database/fetch_or_init
execute unless data storage call_stack: this.remaining if data storage call_stack: call.result.craft_with[0] run tellraw @s ["Selected Items:"]
execute unless data storage call_stack: this.remaining run data modify storage call_stack: this.remaining set from storage call_stack: call.result.craft_with

#[[[cog
#   output = ''
#   count = 9
#   for i in range(0,count):
#       output += f'{{"nbt":"this.remaining[{i}]","storage":"call_stack:", "interpret": true}}, " ",'
#   output += '""'
#   cog.outl(f'tellraw @s [{output}]')
#   cog.outl(('data remove storage call_stack: this.remaining[0]\n' * count))
#]]]
tellraw @s [{"nbt":"this.remaining[0]","storage":"call_stack:", "interpret": true}, " ",{"nbt":"this.remaining[1]","storage":"call_stack:", "interpret": true}, " ",{"nbt":"this.remaining[2]","storage":"call_stack:", "interpret": true}, " ",{"nbt":"this.remaining[3]","storage":"call_stack:", "interpret": true}, " ",{"nbt":"this.remaining[4]","storage":"call_stack:", "interpret": true}, " ",{"nbt":"this.remaining[5]","storage":"call_stack:", "interpret": true}, " ",{"nbt":"this.remaining[6]","storage":"call_stack:", "interpret": true}, " ",{"nbt":"this.remaining[7]","storage":"call_stack:", "interpret": true}, " ",{"nbt":"this.remaining[8]","storage":"call_stack:", "interpret": true}, " ",""]
data remove storage call_stack: this.remaining[0]
data remove storage call_stack: this.remaining[0]
data remove storage call_stack: this.remaining[0]
data remove storage call_stack: this.remaining[0]
data remove storage call_stack: this.remaining[0]
data remove storage call_stack: this.remaining[0]
data remove storage call_stack: this.remaining[0]
data remove storage call_stack: this.remaining[0]
data remove storage call_stack: this.remaining[0]

#[[[end]]]

execute if data storage call_stack: this.remaining[0] run data modify storage call_stack: call.arg0 set from storage call_stack: this.remaining
execute if data storage call_stack: this.remaining[0] run function dt.crafting:internal/click_craft/print/selected_items_loop

function call_stack:pop