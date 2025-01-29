gamerule doDaylightCycle true
gamerule doWeatherCycle true
execute if score #punishment avarice.dummy matches 10 if score #time avarice.dummy matches 18000..18100 run gamerule doDaylightCycle false

function avarice:technical/timestop/macro with storage avarice:timestop root
scoreboard players set #timestop avarice.dummy 0
