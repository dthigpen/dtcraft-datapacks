function dtcraft:call_stack/push

data modify storage dtcraft:call_stack this.user set value {UUID:[],data:{}}
data modify storage dtcraft:call_stack this.user.UUID set from storage dtcraft:call_stack this.arg0
data modify storage dtcraft:call_stack this.result.value set from storage dtcraft:call_stack this.user

function dtcraft:call_stack/pop