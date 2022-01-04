item replace entity @s hotbar.1 with air
experience set @s 0 levels
experience set @s 0 points
function call_stack:push

data modify storage call_stack: call.arg0 set value {block:{name:'{"text": "Test Block"}', Tags:["test_block"], tag:{data:{aaa:'111'}}, xp:{value:6b}},item:{name:'{"text": "Test Item"}', Tags:["test_item"], tag:{extras:{thing:false}}}}
execute positioned ~2 ~ ~2 run function dt.custom_block:api/item/summon

function call_stack:pop