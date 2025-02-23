execute if entity @s[gamemode=spectator] run return 0
execute if score #curse avarice.dummy matches 1 run attribute @s minecraft:gravity modifier add avarice:anchoring 0.0285 add_value
execute if score #curse avarice.dummy matches 1 run attribute @s minecraft:fall_damage_multiplier modifier add avarice:anchoring 2 add_value
execute if score #curse avarice.dummy matches 1 run attribute @s minecraft:safe_fall_distance modifier add avarice:anchoring -2 add_value

execute if score #punishment avarice.dummy matches 6 run attribute @s minecraft:max_health modifier add avarice:punishment -2 add_value
execute if score #punishment avarice.dummy matches 7 run attribute @s minecraft:max_health modifier add avarice:punishment -4 add_value
execute if score #punishment avarice.dummy matches 8 run attribute @s minecraft:max_health modifier add avarice:punishment -6 add_value
execute if score #punishment avarice.dummy matches 9 run attribute @s minecraft:max_health modifier add avarice:punishment -8 add_value
execute if score #punishment avarice.dummy matches 10 run attribute @s minecraft:max_health modifier add avarice:punishment -10 add_value
