data remove entity @s interaction

execute if data storage avarice:macro root.item.components."minecraft:custom_data".avarice{id: "gcoin"} unless entity @s[tag=avarice.spinning] run function avarice:block/gachapon/interact/spin
