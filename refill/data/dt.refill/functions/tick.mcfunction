#say main
function dt.refill:handle_toggle
function dt.refill:handle_settings


execute as @a[tag=dt.refill] run function dt.refill:check_refills

schedule function dt.refill:tick 1t replace