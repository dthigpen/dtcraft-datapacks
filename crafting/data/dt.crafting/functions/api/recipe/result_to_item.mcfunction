function call_stack:push

data modify storage call_stack: this.recipe_result set from storage call_stack: this.arg0

data modify storage call_stack: this.result set value {id:"", Count:1b, Slot:0b}
data modify storage call_stack: this.result.id set from storage call_stack: this.recipe_result.id
execute store result storage call_stack: this.result.Count byte 1 run data get storage call_stack: this.recipe_result.count

function call_stack:pop