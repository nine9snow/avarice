# Time management
execute store result score #day avarice.dummy run time query day
execute unless score #day avarice.dummy = #old_day avarice.dummy run function avarice:technical/day_management/increase

execute store result score #time avarice.dummy run time query daytime
execute if score #punishment avarice.dummy matches 10.. if score #time avarice.dummy matches 18000..18100 run gamerule doDaylightCycle false

# Entities
execute store result storage avarice:stats root.health float 0.125 run scoreboard players get #punishment avarice.dummy
execute store result storage avarice:stats root.damage float 0.04 run scoreboard players get #punishment avarice.dummy

tag @e[type=#avarice:hostile,tag=avarice.possessed] remove avarice.possessed
execute as @e[type=#avarice:second_clock] at @s run function avarice:technical/second_clock/as_entity
execute as @a at @s run function avarice:player/second_clock

# Curses
execute if score #curse avarice.dummy matches 7 if predicate avarice:chance/0.25 if entity @a[gamemode=!spectator,predicate=avarice:can_spawn_meteors] as @r[gamemode=!spectator,predicate=avarice:can_spawn_meteors] at @s run function avarice:curse/effect/debris/spawning/main
execute if score #curse avarice.dummy matches 1.. unless score #punishment avarice.dummy matches 1.. run function avarice:curse/remove

# Time stop
execute store result score #time avarice.dummy run time query daytime

execute unless score #timestop avarice.dummy matches 1 unless entity @a[gamemode=!spectator] run function avarice:technical/timestop/begin
execute if score #timestop avarice.dummy matches 1 if entity @a[gamemode=!spectator] run function avarice:technical/timestop/end

# Setup
execute unless score #setup_fountain avarice.dummy matches 1 as @r run function avarice:block/postgen/fountain/create

# Loop
schedule function avarice:technical/second_clock/main 1s replace
