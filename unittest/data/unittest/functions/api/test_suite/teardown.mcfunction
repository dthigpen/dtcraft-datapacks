data modify storage call_stack: this.test_suite.name set from storage call_stack: this.name
data modify storage call_stack: this.test_suite.report_to_all set from storage call_stack: this.report_to_all

# reporting to all or if no one is already tagged as a tester, tag everyone to simulate telling all
execute if data storage call_stack: {this:{test_suite:{report_to_all:true}}} run tag @a add dt.unittest.tester
execute unless entity @a[tag=dt.unittest.tester,limit=1] run tag @a add dt.unittest.tester

data modify storage call_stack: this.return set from storage call_stack: this.test_suite
function call_stack:pop
function call_stack:pipe
function unittest:internal/test_suite/report
tag @a remove dt.unittest.tester
