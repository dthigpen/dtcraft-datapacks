function call_stack:push

data modify storage dt.refill: settings set value []
data modify storage dt.refill: settings append value {key:"RefillFromAnywhere",value:true,name:"Refill Source",description:"Where item refills come from",false_text:"Same Column", true_text:"Anywhere"}
data modify storage dt.refill: settings append value {key:"MatchingOnly",value:true,name:"Item Type",description:"Which items qualify as a refill item",false_text:"Any", true_text:"Only Matching"}

function call_stack:pop