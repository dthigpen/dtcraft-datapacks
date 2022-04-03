function unittest:internal/v1/storage/clear/internal/temp
function unittest:internal/v1/storage/clear/in
data modify storage unittest:internal case.results append value {}
data modify storage unittest:internal case.results[-1].msg set from storage unittest:out msg
data modify storage unittest:internal case.results[-1].msg_data set from storage unittest:out msg_data
data modify storage unittest:internal case.results[-1].pass set value false
execute if data storage unittest:out pass unless data storage unittest:out fail run data modify storage unittest:internal case.results[-1].pass set value true
