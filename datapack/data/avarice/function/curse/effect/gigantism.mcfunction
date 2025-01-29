execute unless predicate avarice:can_enlarge run return 0
attribute @s minecraft:scale modifier add avarice:gigantism 1 add_value
attribute @s minecraft:step_height modifier add avarice:gigantism 1 add_value
attribute @s minecraft:attack_damage modifier add avarice:gigantism 0.5 add_multiplied_base
attribute @s minecraft:movement_speed modifier add avarice:gigantism 0.5 add_multiplied_base
attribute @s minecraft:max_health modifier add avarice:gigantism 0.33 add_multiplied_base

playsound avarice:entity.increase_size hostile @a[distance=..16]

execute if entity @s[type=minecraft:creeper] run data modify entity @s ExplosionRadius set value 5b
