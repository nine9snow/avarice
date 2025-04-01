execute if score @s avarice.relog matches 1.. run function avarice:player/install

execute if score #curse avarice.dummy matches 6 if entity @s[gamemode=!spectator] run function avarice:curse/effect/burden/main
execute if score #curse avarice.dummy matches 8 if entity @s[gamemode=!creative,gamemode=!spectator] if dimension minecraft:overworld run function avarice:curse/effect/sun/main
execute if score #curse avarice.dummy matches 9 if entity @s[gamemode=!creative,gamemode=!spectator] if predicate avarice:sneeze run function avarice:curse/effect/pollen/sneeze
execute if entity @s[nbt=!{Health:0f},tag=avarice.respawn_check] run function avarice:player/respawn

execute if entity @s[gamemode=spectator] run effect give @s minecraft:night_vision 15 0 true
execute if entity @s[gamemode=spectator,tag=!avarice.spectator] run function avarice:player/ghost/main

execute if predicate avarice:chance/0.1 run function avarice:item/tiers/effects/prickly/main
execute if predicate avarice:chance/0.05 run function avarice:item/tiers/effects/unstable/main
