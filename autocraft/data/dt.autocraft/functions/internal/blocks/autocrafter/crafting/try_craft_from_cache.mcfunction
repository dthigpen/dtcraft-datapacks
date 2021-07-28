function call_stack:push
data modify storage call_stack: this.recipes_cache set from storage call_stack: this.arg0
data modify storage call_stack: this.items set from storage call_stack: this.arg1



function call_stack:pop