function unittest:internal/v1/storage/clear/internal/temp
function unittest:internal/v1/storage/clear/out


data modify storage unittest:out msg set value '[{"text":"IsSet: "}, {"nbt":"temp.result.msg_data[0]","storage":"unittest:internal"}]'
data modify storage unittest:out msg_data set value []
data modify storage unittest:out msg_data append from storage unittest:in actual

function unittest:internal/v1/assert/is_set_unsafe
function unittest:internal/v1/add_result_to_test_case