function unittest:internal/storage/clear/internal/temp
function unittest:internal/storage/clear/out
data modify storage unittest:out msg set value "force fail"
data modify storage unittest:out fail set value true
function unittest:internal/add_result_to_test_case