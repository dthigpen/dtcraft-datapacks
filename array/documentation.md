# Array Documentation

### Functions

- [dt.array:api/remove_n](#functiondt.array:api/remove_n)
- [dt.array:api/difference](#functiondt.array:api/difference)
- [dt.array:api/concat](#functiondt.array:api/concat)
- [dt.array:api/trim_to_size](#functiondt.array:api/trim_to_size)
- [dt.array:api/split_by_key](#functiondt.array:api/split_by_key)
- [dt.array:api/split_by_key_limit_n](#functiondt.array:api/split_by_key_limit_n)
- [dt.array:api/pop_n](#functiondt.array:api/pop_n)
- [dt.array:api/index_of](#functiondt.array:api/index_of)
- [dt.array:api/split_half](#functiondt.array:api/split_half)
- [dt.array:api/n_array_of](#functiondt.array:api/n_array_of)
- [dt.array:api/convert/to_key_values](#functiondt.array:api/convert/to_key_values)
- [dt.array:api/math/sum](#functiondt.array:api/math/sum)
- [dt.array:api/sort/merge_sort](#functiondt.array:api/sort/merge_sort)
#### `function dt.array:api/remove_n`
Remove n elements from the end of the given array
```
@params
   storage call_stack: call.arg0
       array
   storage call_stack: call.arg2
       integer
@output
   storage call_stack: call.result
       array
```
#### `function dt.array:api/difference`
The difference between two arrays. Elements common to both lists will not be included in the output. Elements only in the first will be included in the output.
```
@params
   storage call_stack: call.arg0
       array
   storage call_stack: call.arg1
       array
@output
   storage call_stack: call.result
       array
```
#### `function dt.array:api/concat`
@deprecated
concatenate two arrays
```
@params
   storage call_stack: call.arg0
       array1
   storage call_stack: call.arg1
       array2
@output
   storage call_stack: call.result
       array
```
#### `function dt.array:api/trim_to_size`
Trim an array to a set size
```
@params
   storage call_stack: call.arg0
       array
   storage call_stack: call.arg1
       size of the array to trim to.
@output
   storage call_stack: call.result
       array
```
#### `function dt.array:api/split_by_key`
Splits the given list into two lists, first for elements containing the key, and the second its complement
```
@params
   storage call_stack: call.arg0
       array
   storage call_stack: call.arg1
       key to match elements on
@output
   storage call_stack: call.result
       array of two arrays. [[with-key],[complement]]
```
#### `function dt.array:api/split_by_key_limit_n`
Splits the given list into two lists, first for elements containing the key, and the second its complement
```
@params
   storage call_stack: call.arg0
       array
   storage call_stack: call.arg1
       key to match elements on
   storage call_stack: call.arg2
       limit integer, maximum number of results that match the key
@output
   storage call_stack: call.result
       array of two arrays. [[with-key],[complement]]
 splits the given list into two lists, first for elements containing the key, and the second its complement
```
#### `function dt.array:api/pop_n`
Pop n elements from the end of an array and return them
```
@params
   storage call_stack: call.arg0
       array
@output
   storage call_stack: call.result
       array
```
#### `function dt.array:api/index_of`
Get the index of a value in an array
```
@params
   storage call_stack: call.arg0
       array
   storage call_stack: call.arg1
       value
@output
   storage call_stack: call.result
       index of item in array or -1 if not found
```
#### `function dt.array:api/split_half`
Split an array in half
```
@params
   storage call_stack: call.arg0
       array
@output
   storage call_stack: call.result
       array with two elements, [array1, array2]
```
#### `function dt.array:api/n_array_of`
Create an array of length n consisting of the given repeated value
```
@params
   storage call_stack: call.arg0
       length n
   storage call_stack: call.arg2
       element value
@output
   storage call_stack: call.result
       list of values
```
#### `function dt.array:api/convert/to_key_values`
Convert the given array of values into key value pair objects with the keys defaulting to sequence numbers 1..n.
```
@params
   storage call_stack: call.arg0
       array
@output
   storage call_stack: call.result
       array of objects [{key:1,value:a}..{key:n,value:z}]
```
#### `function dt.array:api/math/sum`
Sum array of numbers
```
@params
   storage call_stack: call.arg0
       array of integers
@output
   storage call_stack: call.result
       integer sum of all values
```
#### `function dt.array:api/sort/merge_sort`
Sort the given value objects using the merge sort algorithm
```
@params
   storage call_stack: call.arg0
       array of value objects
@output
   storage call_stack: call.result
       array of value objects
```
