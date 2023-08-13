#> unittest:api/v1/assert/not_equal
# @deprecated
function unittest:internal/v1/storage/clear/internal/temp
function unittest:internal/v1/storage/clear/out

function unittest:internal/v1/assert/equal_unsafe

function unittest:api/v1/assert/negate_result

data modify storage unittest:internal temp.msg set value ["AssertNotEqual"]
execute if data storage unittest:out msg run data modify storage unittest:internal temp.msg append value ": "
execute if data storage unittest:out msg run data modify storage unittest:internal temp.msg append from storage unittest:out msg
data modify storage unittest:out msg set from storage unittest:internal temp.msg

function unittest:internal/v1/add_result_to_test_case