# Call-stack

This datapack provides some bare bones support for a call stack like data structure, providing scope to your function files variables. Very convenient for avoiding side effects from other function files overwriting variable values.

## Installation

1. Navigate to the Releases tab and download the latest `.zip` for this datapack.
2. Place this datapack in your world's datapacks folder.
3. Add `call_stack:load` before your datapack's load function in the Lantern Load `load.json` tag at `your_pack/data/load/tags/functions/load.json`.

## Usage

### Scoping function variables
1. Wrap function content in the two functions `call_stack:push` and `call_stack:pop`.

    ```mcfunction
    # myfunct.mcfunction
    function call_stack:push

    # your commands here

    function call_stack:pop
    ```

2. Create and modify storage variables at `call_stack: this.<var-name>` without worrying about side affects from other functions (that also implement call_stack).

    ```mcfunction
    # myfunct.mcfunction
    function call_stack:push

    data modify storage call_stack: this.items set from entity @s Inventory

    # call function that may also set this.items
    function mypack:otherfunct

    # this.items will remain the same here

    function call_stack:pop
    ```
### Passing Arguments to Functions
Data can be passed from caller to callee functions by setting storage at `call_stack: call.<var-name>`. The callee will then have correspondnig `this.<var-name>` to access. By convention `arg0`,`arg1`...`argN` variables are used to pass data from caller to callee functions. Note: `call.return` is restricted since this value is used for function returns.
```mcfunction
# myfunct.mcfunction (caller)
function call_stack:push

data modify storage call_stack: call.arg0 set value "foo"
function mypack:otherfunct

function call_stack:pop
```

```mcfunction
# otherfunct.mcfunction (callee)
function call_stack:push

# set a local variable from the this.arg0
data modify storage call_stack: this.thing set from storage call_stack: this.arg0

# your commands

function call_stack:pop
```

### Function Return Values
Return data from a function by setting the storage `call_stack: this.return`. This value will be copied into caller functions scope at `call_stack: call.return`.
