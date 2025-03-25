scoreboard players reset #curse avarice.dummy
scoreboard players set #curse_wheel avarice.dummy 60

title @a times 10t 8s 10t
title @a title {translate:"curse.avarice.header"}
execute as @a at @s run playsound avarice:curse.wheel_begin master @s
execute as @a at @s run function avarice:curse/reset_effects
