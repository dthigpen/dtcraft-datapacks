#say load call-stack

#[[[cog
#   from datapack_utils import utils
#   from datapack_utils.utils import Pack
#   
#   cog.outl(utils.setup_versioning(
#       Pack('call_stack',Pack.Version(1,0,0),name='call-stack')
#   ))
#]]]

scoreboard players set $call_stack.version.major load.status 1
scoreboard players set $call_stack.version.minor load.status 0
scoreboard players set $call_stack.version.patch load.status 0

scoreboard players set $call_stack load.status 1


#[[[end]]]

scoreboard objectives add dt.tmp dummy
scoreboard objectives add dt.call_stack dummy
scoreboard players set debug dt.call_stack 0

data modify storage call_stack: frames set value []
data modify storage call_stack: call set value {}
data modify storage call_stack: this set value {}
data modify storage call_stack: global merge value {}
data remove storage call_stack: return