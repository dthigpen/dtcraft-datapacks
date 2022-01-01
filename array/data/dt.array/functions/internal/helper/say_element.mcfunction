function call_stack:push
data modify storage call_stack: this.thing set from storage call_stack: this.arg0

tellraw @p ["say_element this.thing: ",{"nbt":"this.thing","storage":"call_stack:"}]

function call_stack:pop