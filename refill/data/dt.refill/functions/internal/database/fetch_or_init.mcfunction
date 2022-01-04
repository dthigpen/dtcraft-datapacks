function call_stack:push

# Default object
function dt.refill:internal/database/get_init_data
data modify storage call_stack: this.return set from storage call_stack: call.return

# Merge with actual data
function #rx.playerdb:api/v2/get/self
data modify storage call_stack: this.return merge from storage rx.playerdb:io player.data.dtcraft.refill
function call_stack:pop