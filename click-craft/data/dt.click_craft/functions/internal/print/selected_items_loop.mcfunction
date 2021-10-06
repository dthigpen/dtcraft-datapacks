function call_stack:push
data modify storage call_stack: this.remaining set from storage call_stack: this.arg0

execute unless data storage call_stack: this.remaining run function dt.click_craft:internal/database/fetch_or_init
# execute unless data storage call_stack: this.remaining run tellraw @p ["selected_items_loop.mcfunction: ",{"nbt":"call.return.craft_with[0]","storage":"call_stack:"}]
execute unless data storage call_stack: this.remaining if data storage call_stack: call.return.craft_with[0] run tellraw @s ["Selected Items:"]
execute unless data storage call_stack: this.remaining run data modify storage call_stack: this.remaining set from storage call_stack: call.return.craft_with

#[[[cog
#   output = ''
#   count = 9
#   for i in range(0,count):
#       output += f'{{"text":""}}, {{"nbt":"this.remaining[{i}].icon","storage":"call_stack:", "interpret": true}}, " ",'
#   output += '""'
#   cog.outl(f'tellraw @s [{output}]')
#   cog.outl(('data remove storage call_stack: this.remaining[0]\n' * count))
#]]]
tellraw @s [{"text":""}, {"nbt":"this.remaining[0].icon","storage":"call_stack:", "interpret": true}, " ",{"text":""}, {"nbt":"this.remaining[1].icon","storage":"call_stack:", "interpret": true}, " ",{"text":""}, {"nbt":"this.remaining[2].icon","storage":"call_stack:", "interpret": true}, " ",{"text":""}, {"nbt":"this.remaining[3].icon","storage":"call_stack:", "interpret": true}, " ",{"text":""}, {"nbt":"this.remaining[4].icon","storage":"call_stack:", "interpret": true}, " ",{"text":""}, {"nbt":"this.remaining[5].icon","storage":"call_stack:", "interpret": true}, " ",{"text":""}, {"nbt":"this.remaining[6].icon","storage":"call_stack:", "interpret": true}, " ",{"text":""}, {"nbt":"this.remaining[7].icon","storage":"call_stack:", "interpret": true}, " ",{"text":""}, {"nbt":"this.remaining[8].icon","storage":"call_stack:", "interpret": true}, " ",""]
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
execute if data storage call_stack: this.remaining[0] run function dt.click_craft:internal/print/selected_items_loop

function call_stack:pop