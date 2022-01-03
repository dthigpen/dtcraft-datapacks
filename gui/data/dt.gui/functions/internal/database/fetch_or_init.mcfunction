function call_stack:push
function #rx.playerdb:api/v2/get/self

# Default object
function dt.gui:internal/database/get_init_data
data modify storage call_stack: this.return set from storage call_stack: call.return

# Merge with actual data
data modify storage call_stack: this.return merge from storage rx.playerdb:io player.data.dtcraft.gui

function call_stack:pop