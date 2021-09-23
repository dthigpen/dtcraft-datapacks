function call_stack:push
data modify storage call_stack: this.array1 set from storage call_stack: this.arg0
data modify storage call_stack: this.array2 set from storage call_stack: this.arg1
data modify storage call_stack: this.merged set from storage call_stack: this.arg2

# case 1: array1 empty and array2 non-empty, then append all of array2
# case 2: array1 non-empty and array2 empty, then append all of array1
# case 3: both non-empty, then append smallest between first of both, recurse
# case 4: both empty, return merged

# set case identifier

# case 1
execute unless data storage call_stack: this.array1[0] if data storage call_stack: this.array2[0] run data modify storage call_stack: this.only_array1_empty set value true
# case 2
execute if data storage call_stack: this.array1[0] unless data storage call_stack: this.array2[0] run data modify storage call_stack: this.only_array2_empty set value true
# case 3
execute if data storage call_stack: this.array1[0] if data storage call_stack: this.array2[0] run data modify storage call_stack: this.both_non_empty set value true
# case 4
execute unless data storage call_stack: this.array1[0] unless data storage call_stack: this.array2[0] run data modify storage call_stack: this.both_empty set value true

# case 1
execute if data storage call_stack: this.only_array1_empty run data modify storage call_stack: this.merged append from storage call_stack: this.array2[]
execute if data storage call_stack: this.only_array1_empty run data modify storage call_stack: this.array2 set value []

# case 2
execute if data storage call_stack: this.only_array2_empty run data modify storage call_stack: this.merged append from storage call_stack: this.array1[]
execute if data storage call_stack: this.only_array2_empty run data modify storage call_stack: this.array1 set value []

#region case 3
execute if data storage call_stack: this.both_non_empty store result score $value1 dt.tmp run data get storage call_stack: this.array1[0].key
execute if data storage call_stack: this.both_non_empty store result score $value2 dt.tmp run data get storage call_stack: this.array2[0].key

# case 3a
execute if data storage call_stack: this.both_non_empty if score $value1 dt.tmp <= $value2 dt.tmp run data modify storage call_stack: this.merged append from storage call_stack: this.array1[0]
execute if data storage call_stack: this.both_non_empty if score $value1 dt.tmp <= $value2 dt.tmp run data remove storage call_stack: this.array1[0]
# case 3b
execute if data storage call_stack: this.both_non_empty if score $value1 dt.tmp > $value2 dt.tmp run data modify storage call_stack: this.merged append from storage call_stack: this.array2[0]
execute if data storage call_stack: this.both_non_empty if score $value1 dt.tmp > $value2 dt.tmp run data remove storage call_stack: this.array2[0]
#endregion

# check for case 4 again
execute unless data storage call_stack: this.array1[0] unless data storage call_stack: this.array2[0] run data modify storage call_stack: this.both_empty set value true
# case 4
execute if data storage call_stack: this.both_empty run data modify storage call_stack: this.return set from storage call_stack: this.merged

# case 1-3 recurse
execute unless data storage call_stack: this.both_empty run data modify storage call_stack: call.arg0 set from storage call_stack: this.array1
execute unless data storage call_stack: this.both_empty run data modify storage call_stack: call.arg1 set from storage call_stack: this.array2
execute unless data storage call_stack: this.both_empty run data modify storage call_stack: call.arg2 set from storage call_stack: this.merged
execute unless data storage call_stack: this.both_empty run function dt.array:internal/sort/merge_sorted_loop
execute unless data storage call_stack: this.both_empty run data modify storage call_stack: this.return set from storage call_stack: call.return
function call_stack:pop