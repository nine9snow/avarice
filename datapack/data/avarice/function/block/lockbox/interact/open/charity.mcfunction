particle minecraft:trial_spawner_detection_ominous ~ ~ ~ 0.5 0.5 0.5 0 10 force
playsound avarice:block.lockbox.open_charity block @a[distance=..16]
tag @s add avarice.opening_charity
data modify storage avarice:macro root.advancement set value 2
data modify storage avarice:macro root.success set value 1
