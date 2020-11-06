# say store selected
function call_stack:push

data modify storage call_stack: this.this_user set from storage call_stack: this.arg0

data modify storage call_stack: this.this_user.data.selected set from entity @s SelectedItem
data modify storage call_stack: this.this_user.data.selected.slot set from entity @s SelectedItemSlot
data modify storage call_stack: this.result set from storage call_stack: this.this_user

function call_stack:pop