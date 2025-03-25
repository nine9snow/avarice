scoreboard players remove @s avarice.crown_timer 1
execute if score @s avarice.crown_timer matches 0 run function avarice:entity/crown/end_effect
