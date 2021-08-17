function unittest:internal/storage/clear/internal/temp
function unittest:internal/storage/clear/out

function unittest:internal/assert/equal_unsafe

function unittest:api/assert/negate_result

data modify storage unittest:internal temp.msg set value ["AssertNotEqual"]
execute if data storage unittest:out msg run data modify storage unittest:internal temp.msg append value ": "
execute if data storage unittest:out msg run data modify storage unittest:internal temp.msg append from storage unittest:out msg
data modify storage unittest:out msg set from storage unittest:internal temp.msg

function unittest:internal/add_result_to_test_case