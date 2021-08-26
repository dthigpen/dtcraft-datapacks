function call_stack:push

function dt.inventory:api/player/get/inventory
data modify storage call_stack: this.player_inventory set from storage call_stack: call.result
function dt.inventory:api/player/get/hotbar
data modify storage call_stack: this.player_hotbar set from storage call_stack: call.result

function dt.inventory:test/api/test_replace_slot_hotbar
function dt.inventory:test/api/test_replace_slot_inventory

function dt.inventory:test/api/test_summon
function dt.inventory:test/api/player/slot/test_remove
function dt.inventory:test/api/player/slot/test_replace

function dt.inventory:test/api/test_remove_slot_inventory
function dt.inventory:test/api/test_combine_items
function dt.inventory:test/api/shulker/items/test_set_get
function dt.inventory:test/api/shulker/loot/insert/test_block

data modify storage call_stack: call.arg0 set from storage call_stack: this.player_inventory
function dt.inventory:api/player/replace/inventory
data modify storage call_stack: call.arg0 set from storage call_stack: this.player_hotbar
function dt.inventory:api/player/replace/hotbar

function call_stack:pop