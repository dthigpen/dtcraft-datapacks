function call_stack:push
function rx.playerdb:api/get_self

# Default object
function dt.click_craft:internal/database/get_init_data
data modify storage call_stack: this.return set from storage call_stack: call.return

# Merge with actual data
data modify storage call_stack: this.return merge from storage rx:io playerdb.player.data.dtcraft.click_craft

function call_stack:pop