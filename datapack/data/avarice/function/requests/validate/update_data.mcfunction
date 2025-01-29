$data modify storage avarice:requested_item root set from storage avarice:requests root.choices[$(index)]
$data modify storage avarice:macro root.min set from storage avarice:requests root.choices[$(index)].count[0]
$data modify storage avarice:macro root.max set from storage avarice:requests root.choices[$(index)].count[1]

data remove storage avarice:requests root.choices
execute if data storage avarice:requested_item {root:{count:1}} run return run data modify storage avarice:requested_item root.requested_count set value 1
function avarice:requests/validate/update_count with storage avarice:macro root
