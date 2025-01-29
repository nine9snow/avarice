execute if score #punishment avarice.dummy matches 1.. run function avarice:entity/apply_stats with storage avarice:stats root
execute if score #punishment avarice.dummy matches 3.. unless entity @s[type=#avarice:effect_exempt] run function avarice:entity/apply_effects
execute if score #curse avarice.dummy matches 8 if entity @s[type=!#avarice:effect_exempt,tag=!avarice.given_effect,predicate=avarice:chance/0.33] run function avarice:entity/apply_blazing

execute if score #punishment avarice.dummy matches 5.. if entity @s[type=#avarice:spiders,predicate=avarice:chance/0.25] run effect give @s minecraft:weaving infinite
execute if score #punishment avarice.dummy matches 7.. if entity @s[type=!minecraft:creeper,team=] run team join avarice.friendly_fire

execute if score #punishment avarice.dummy matches 6..8 if entity @s[type=#avarice:can_upgrade,predicate=avarice:chance/0.1] unless score #curse avarice.dummy matches 3 run function avarice:entity/upgrade/main
execute if score #punishment avarice.dummy matches 9.. if entity @s[type=#avarice:can_upgrade,predicate=avarice:chance/0.25] unless score #curse avarice.dummy matches 3 run function avarice:entity/upgrade/main
