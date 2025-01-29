gamerule doDaylightCycle false
gamerule doWeatherCycle false

execute store result storage avarice:timestop root.tickspeed int 1 run gamerule randomTickSpeed
gamerule randomTickSpeed 0

scoreboard players set #timestop avarice.dummy 1
