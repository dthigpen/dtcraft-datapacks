# say store selected
function dtcraft:call_stack/push

data modify storage dtcraft:call_stack this.this_user set from storage dtcraft:call_stack this.arg0

data modify storage dtcraft:call_stack this.this_user.data.selected set from entity @s SelectedItem
data modify storage dtcraft:call_stack this.this_user.data.selected.slot set from entity @s SelectedItemSlot
data modify storage dtcraft:call_stack this.result.value set from storage dtcraft:call_stack this.this_user

function dtcraft:call_stack/pop