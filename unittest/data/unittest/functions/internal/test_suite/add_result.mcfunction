data modify storage unittest:internal suite.results append value {}
data modify storage unittest:internal suite.results[-1].test_case set from storage unittest:internal case.name
data modify storage unittest:internal suite.results[-1].msg set from storage unittest:out msg
data modify storage unittest:internal suite.results[-1].pass set value true