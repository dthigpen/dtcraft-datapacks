function call_stack:push

# get or create empty
data modify storage call_stack: call.arg0 set from storage dt.refill: users
function dt.user_util:get_or_create
data modify storage call_stack: this.user set from storage call_stack: call.result

# Default object
function dt.refill:internal/database/get_init_data
data modify storage call_stack: this.default_data set from storage call_stack: call.result

# Merge with actual data
data modify storage call_stack: this.default_data merge from storage call_stack: this.user.data
data modify storage call_stack: this.user.data set from storage call_stack: this.default_data
data modify storage call_stack: this.result set from storage call_stack: this.user
function call_stack:pop