function unittest:api/test_suite/setup
data modify storage call_stack: this.name set value "Refill Tests"
data modify storage call_stack: this.report_to_all set value true
tag @a remove dt.refill.player
tag @s add dt.refill.player
execute unless entity @s[tag=dt.refill] run trigger dt.refill.toggle
data modify storage call_stack: call.arg0 set value []
# Fabric mod command to ensure that the fake player has the right slot selected
# This will fail and do nothing if a real player runs it
data modify storage call_stack: call.arg0 append value ['player Steve hotbar 1']
data modify storage call_stack: call.arg0 append value ['function dt.refill:test/client/test_refill/tc_pre_drop']
data modify storage call_stack: call.arg0 append value ['say waiting']
data modify storage call_stack: call.arg0 append value ['say waiting']
data modify storage call_stack: call.arg0 append value ['function dt.refill:test/client/test_refill/tc_drop_item']
data modify storage call_stack: call.arg0 append value ['say waiting']
data modify storage call_stack: call.arg0 append value ['say waiting']
data modify storage call_stack: call.arg0 append value ['function dt.refill:test/client/test_refill/tc_slot_refilled']
data modify storage call_stack: call.arg0 append value ['tag @a remove dt.refill.player']
function unittest:api/test_suite/queue_and_teardown