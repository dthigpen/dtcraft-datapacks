function call_stack:push

setblock ~ ~ ~ barrel{CustomName: '{"text":"Autocrafter"}'} replace
data modify storage call_stack: call.arg0 set value {tick:false, whitelist:[{Slot:1b},{Slot:2b},{Slot:3b},{Slot:10b},{Slot:11b},{Slot:12b},{Slot:19b},{Slot:20b},{Slot:21b}, {Slot:15b}], data:[{Slot:26b, tag:{CustomModelData:1}}], hopper:{priority:[{Slot:15b}]}}
function dt.gui:api/self/init
tag @s remove dt.ac.init

function call_stack:pop