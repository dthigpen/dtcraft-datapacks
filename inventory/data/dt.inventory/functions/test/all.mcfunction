function call_stack:push

function dt.inventory:api/get_inventory
data modify storage call_stack: this.player_inventory set from storage call_stack: call.result
function dt.inventory:api/get_hotbar
data modify storage call_stack: this.player_hotbar set from storage call_stack: call.result

function dt.inventory:test/test_replace_slot_hotbar
function dt.inventory:test/test_replace_slot_inventory

function dt.inventory:test/test_get_all_by_id_inventory
function dt.inventory:test/test_get_all_by_id_hotbar

function dt.inventory:test/test_get_first_by_id_inventory
function dt.inventory:test/test_get_first_by_id_hotbar


function dt.inventory:test/test_remove_slot_inventory

function dt.inventory:test/api/test_combine_items


data modify storage call_stack: call.arg0 set from storage call_stack: this.player_inventory
function dt.inventory:api/player/replace/inventory
data modify storage call_stack: call.arg0 set from storage call_stack: this.player_hotbar
function dt.inventory:api/player/replace/hotbar

function call_stack:pop