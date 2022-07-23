
scoreboard players set #counter dt.callback 0

data modify storage call_stack: call.arg0 set value [['tellraw @p ["FIRST test_mutli_queue #counter:",{"score":{"name":"#counter","objective":"dt.callback"}}]','say tick 0'],['tellraw @p ["SECOND test_mutli_queue #counter:",{"score":{"name":"#counter","objective":"dt.callback"}}]','say tick 1']]
function dt.callback:api/multi_queue

function call_stack:pop