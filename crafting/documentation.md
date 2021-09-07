# Crafting Documentation

### Functions

- [dt.crafting:api/recipe/result_to_item](#functiondt.crafting:api/recipe/result_to_item)
- [dt.crafting:api/recipe/find_from_recipes](#functiondt.crafting:api/recipe/find_from_recipes)
- [dt.crafting:api/recipe/is_eligible](#functiondt.crafting:api/recipe/is_eligible)
- [dt.crafting:api/recipe/find_with_cache](#functiondt.crafting:api/recipe/find_with_cache)
- [dt.crafting:api/recipe/find](#functiondt.crafting:api/recipe/find)
- [dt.crafting:api/crafter/distribute_items](#functiondt.crafting:api/crafter/distribute_items)
- [dt.crafting:api/crafter/balance_items](#functiondt.crafting:api/crafter/balance_items)
#### `function dt.crafting:api/recipe/result_to_item`
Convert a recipe object into a game item that can be looted to players or containers
```
@params
   storage call_stack: call.arg0
       Recipe object
@output
   storage call_stack: call.result
       Item object
```
#### `function dt.crafting:api/recipe/find_from_recipes`
Find a matching recipe from the given item list configuration from a set of recipes
```
@params
   storage call_stack: call.arg0
       array of ingredient items
   storage call_stack: call.arg1
       array of recipe objects
@output
   storage call_stack: call.result
       Matching recipe object or empty object if no match
```
#### `function dt.crafting:api/recipe/is_eligible`
Check that the given array of items is eligible to be a set of crafting ingredients.
```
@params
   storage call_stack: call.arg0
       array of items
@output
   storage call_stack: call.result
       true or false
```
#### `function dt.crafting:api/recipe/find_with_cache`
Find a matching recipe from the given item list configuration first from the calling entity's cache then from all recipes in the game.
```
@params
   storage call_stack: call.arg0
       array of items
@output
   storage call_stack: call.result
       the recipe data for the given items or an empty object if none is found
```
#### `function dt.crafting:api/recipe/find`
Find a matching recipe from the given item list using all recipes in the game
```
@params
   storage call_stack: call.arg0
       array of items from crafter to be checked for the first matching recipe
@output
   storage call_stack: call.result
       the recipe data for the given items or an empty object if none is found
```
#### `function dt.crafting:api/crafter/distribute_items`
Distribute items with counts greater than one into free slots with 9 total slots
```
@params
   storage call_stack: call.arg0
       array of items
@output
   storage call_stack: call.result
       array of items
```
#### `function dt.crafting:api/crafter/balance_items`
Balance item counts across other stacks of the same item in the list
```
@params
   storage call_stack: call.arg0
       array of items
@output
   storage call_stack: call.result
       array of items
```
