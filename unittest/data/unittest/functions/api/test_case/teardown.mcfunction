function unittest:internal/storage/clear/in
function unittest:internal/storage/clear/out


# tellraw @s ["Teardown Test Case: ",{"nbt":"case.name","storage":"unittest:internal"}]
# add test case results to test suite
data modify storage unittest:internal suite.results append value {}
data modify storage unittest:internal suite.results[-1].name set from storage unittest:internal case.name
data modify storage unittest:internal suite.results[-1].results set from storage unittest:internal case.results
function unittest:internal/storage/clear/internal/test_case
