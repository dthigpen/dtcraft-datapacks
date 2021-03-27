# Deptree

## Register Algorithm
```python
datapacks = [...]
info = {name:'datapack','major':1, dependencies:[...]}
temp = {dependencies:[]}

def register():
    can_load = True
    # Set default version
    if not info.major: info.major = 0
    if not info.minor: info.minor = 0

    # This must be the first iteration of the function
    if len(temp.dependencies) > 0:
        temp.datapacks = datapacks
        temp.dependencies = info.dependencies
    
        dep = temp.dependencies[0]
        # Set default version
        if not dep.major: dep.major = 0
        if not dep.minor: dep.minor = 0
        
        datapack = temp.datapacks[0]
        
        not_equal = False
        equal_name = False
        not_equal = dep.name != datapack.name

        if not not_equal:
            equal_name = True
            not_equal = dep.major != datapack.major
            if not_equal: msg = 'Error about major version'

        if not not_equal:
            not_equal = dep.minor > datapack.minor
            if not_equal: msg = 'Error about minor version'

        # If successful, remove the dependency and reset the temp datapacks
        if equal_name and not not_equal:
            remove(temp.dependencies[0])
            temp.datapacks = datapacks
        elif equal_name and not_equal:
            # wrong version was found fail to load!
            can_load = False
        else:
            # Name was not the same so keep searching
    
        # Only loop if it has dependencies left
        if len(temp.dependencies[0]) > 0 and can_load:
            register()
        

```