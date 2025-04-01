advancement revoke @s only avarice:technical/modifiers/dispelling

tag @s add avarice.just_in_case
execute as @n[nbt={HurtTime:10s},tag=!avarice.just_in_case] at @s run function avarice:item/tiers/effects/dispelling/as_target
tag @s remove avarice.just_in_case
