data remove entity @s interaction
data remove entity @s attack

playsound avarice:block.death_urn.hit block @a[distance=..16]
scoreboard players add @s avarice.dummy 1
particle minecraft:soul ~ ~0.25 ~ 0.5 0.5 0.5 0.05 3 force
execute if score @s avarice.dummy matches 3.. run function avarice:player/death/empty/delete
