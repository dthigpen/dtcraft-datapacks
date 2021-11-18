function call_stack:push
data modify storage call_stack: call.arg0 set from storage call_stack: this.arg0
function dt.inventory:api/item/id/tag/get
data modify storage call_stack: this.return set from storage call_stack: call.return.tag.dt.id
function call_stack:pop