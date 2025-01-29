execute if score #debug avarice.dummy matches 1 run particle minecraft:end_rod ~ ~0.5 ~
execute unless score #debug avarice.dummy matches 1 run function avarice:block/postgen/create
