execute store result score #curse avarice.dummy run random value 1..9 avarice:curse
scoreboard players operation #curse_display avarice.dummy = #curse avarice.dummy
function avarice:curse/roll/list

schedule function avarice:curse/roll/scheduled 50t replace
execute as @a at @s run function avarice:curse/reset_effects
execute as @a at @s run playsound avarice:curse.wheel_end master @s

execute if score #curse avarice.dummy matches 8 run weather clear 48000t
