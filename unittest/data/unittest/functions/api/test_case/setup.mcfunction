function call_stack:push
data modify storage call_stack: this.test_case set value {name:"Unnamed Test",assertions:[]}
data modify storage call_stack: this.test_case.name set from storage call_stack: this.arg0