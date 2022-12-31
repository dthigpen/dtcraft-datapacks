function call_stack:push
data modify storage call_stack: this.test_case set from storage call_stack: this.arg0

# process skip and todo tags
execute if data storage call_stack: {this:{test_case:{skip:true}}} run data modify storage call_stack: this.skip set value true
execute if data storage call_stack: {this:{test_case:{todo:true}}} run data modify storage call_stack: this.todo set value true
execute if data storage call_stack: this.skip run data modify storage call_stack: this.pass set value true
# execute if data storage call_stack: this.todo run data modify storage call_stack: this.pass set value true
execute if data storage call_stack: this.skip run data modify storage call_stack: this.directive_prefix set value " # "
execute if data storage call_stack: this.skip run data modify storage call_stack: this.directive set value "SKIP"
execute if data storage call_stack: this.todo run data modify storage call_stack: this.directive_prefix set value " # "
execute if data storage call_stack: this.todo run data modify storage call_stack: this.directive set value "TODO Not written yet"

# check last assertion to see if test passed
data modify storage call_stack: this.last_assertion set from storage call_stack: this.test_case.assertions[-1]
execute if data storage call_stack: {this:{last_assertion:{pass:true}}} run data modify storage call_stack: this.pass set value true

# set the not/ok string
execute if data storage call_stack: this.pass run data modify storage call_stack: this.ok_msg set value '{"text":"ok","color":"green"}'
execute unless data storage call_stack: this.pass run data modify storage call_stack: this.ok_msg set value '{"text":"not ok","color":"red"}'
# Shim to communicate to server console that the testsuite passed or failed
execute unless data storage call_stack: this.pass run scoreboard players operation $status unittest = #status.fail unittest

# print the test results and optional fail msg below
tellraw @a[tag=dt.unittest.tester] ["",{"nbt":"this.ok_msg","storage":"call_stack:","interpret": true}," ",{"nbt":"this.test_case.id","storage":"call_stack:"}," ",{"nbt":"this.test_case.name","storage":"call_stack:"},{"nbt":"this.directive_prefix","storage":"call_stack:", "color": "gray"},{"nbt":"this.directive","storage":"call_stack:", "color": "gray"}]
execute unless data storage call_stack: this.pass if data storage call_stack: this.last_assertion run data modify storage call_stack: call.arg0 set from storage call_stack: this.last_assertion
execute unless data storage call_stack: this.pass if data storage call_stack: this.last_assertion unless data storage call_stack: this.skip unless data storage call_stack: this.todo run function unittest:internal/assert/report

function call_stack:pop