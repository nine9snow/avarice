attribute @s minecraft:max_health modifier remove avarice:punishment
attribute @s minecraft:gravity modifier remove avarice:anchoring
attribute @s minecraft:fall_damage_multiplier modifier remove avarice:anchoring
attribute @s minecraft:safe_fall_distance modifier remove avarice:anchoring
attribute @s minecraft:movement_speed modifier remove avarice:burden
attribute @s minecraft:jump_strength modifier remove avarice:burden

scoreboard players reset @s avarice.relog
execute unless entity @s[gamemode=spectator] run function avarice:curse/apply_effects
