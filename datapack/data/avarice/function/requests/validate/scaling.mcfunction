# scale
scoreboard players operation #additive avarice.dummy = #item_count avarice.dummy
scoreboard players operation #additive avarice.dummy *= #100 avarice.dummy

execute if data storage avarice:requested_item {root:{reduce_scaling: "partial"}} run scoreboard players operation #additive avarice.dummy /= #80 avarice.dummy
execute unless data storage avarice:requested_item {root:{reduce_scaling: "partial"}} run scoreboard players operation #additive avarice.dummy /= #40 avarice.dummy

scoreboard players operation #additive avarice.dummy *= #players avarice.dummy
scoreboard players operation #additive avarice.dummy /= #10 avarice.dummy

# update
scoreboard players operation #item_count avarice.dummy += #additive avarice.dummy
