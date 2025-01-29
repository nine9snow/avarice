particle minecraft:trial_spawner_detection ~ ~ ~ 0.5 0.5 0.5 0 10 force
playsound avarice:block.lockbox.open_miser block @a[distance=..16]
tag @s add avarice.opening_miser
data modify storage avarice:macro root.advancement set value 1
data modify storage avarice:macro root.success set value 1
