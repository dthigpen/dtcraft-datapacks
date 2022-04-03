function call_stack:push
data modify storage call_stack: this.name set value 'Unnamed Test'
data modify storage call_stack: this.msg set value '["expected: ",{"nbt":"this.expected","storage":"call_stack:"}, " ", "actual: ",{"nbt":"this.actual","storage":"call_stack:"}]'
