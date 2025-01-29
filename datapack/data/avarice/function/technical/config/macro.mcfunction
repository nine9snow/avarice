$data modify storage avarice:config $(index) set value "$(value)"
function avarice:technical/config/main

execute store result score #feedback avarice.dummy run gamerule sendCommandFeedback
gamerule sendCommandFeedback false
execute if score #feedback avarice.dummy matches 1 run schedule function avarice:technical/config/scheduled 1t replace
