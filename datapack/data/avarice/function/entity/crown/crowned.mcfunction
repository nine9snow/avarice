tag @s add avarice.crowned
item replace entity @s armor.head with minecraft:poisonous_potato[item_model="avarice:monster_crown",enchantment_glint_override=false,enchantments={"minecraft:projectile_protection":5}]
data modify entity @s drop_chances.head set value 0.0
data modify entity @s CanPickUpLoot set value 0b

attribute @s minecraft:movement_speed modifier add avarice:crowned 0.33 add_multiplied_total
attribute @s[type=!#avarice:crown/skeleton] minecraft:attack_damage modifier add avarice:crowned 0.25 add_multiplied_total
attribute @s minecraft:knockback_resistance modifier add avarice:crowned 0.5 add_value
attribute @s minecraft:max_health modifier add avarice:crowned 0.33 add_multiplied_total
attribute @s minecraft:follow_range modifier add avarice:crowned -0.33 add_multiplied_total
data modify entity @s Health set value 1000
