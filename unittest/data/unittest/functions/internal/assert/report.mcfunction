function call_stack:push
data modify storage call_stack: this merge from storage call_stack: this.arg0
tellraw @p [{"text": "# ","color": "aqua"},{"nbt":"this.name","storage":"call_stack:","interpret": false},": ", {"nbt":"this.msg","storage":"call_stack:", "interpret": true}]
function call_stack:pop