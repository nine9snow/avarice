advancement revoke @s only avarice:technical/modifiers/toxic_damage

tag @s add avarice.just_in_case
effect give @n[nbt={HurtTime:10s},tag=!avarice.just_in_case] minecraft:wither 5 1
tag @s remove avarice.just_in_case
