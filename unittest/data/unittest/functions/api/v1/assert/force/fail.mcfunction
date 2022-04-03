function unittest:internal/v1/storage/clear/internal/temp
function unittest:internal/v1/storage/clear/out
data modify storage unittest:out msg set value "force fail"
data modify storage unittest:out fail set value true
function unittest:internal/v1/add_result_to_test_case