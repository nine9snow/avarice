tp @s ~ ~ ~-1 0 0
gamemode survival @s

tellraw @a {translate: "ui.avarice.revive", color: "#f2f0a5", with: [{text: "1", font: "avarice:icon", color: "white", "shadow_color": 15592941}, {"selector": "@p[tag=avarice.reviving]"}, {"selector": "@s"}]}
tag @a[tag=avarice.reviving] remove avarice.reviving

execute if entity @s[team=avarice.dead_players] run team leave @s

effect give @s minecraft:resistance 5 255
effect give @s minecraft:fire_resistance 15
effect clear @s minecraft:night_vision

function avarice:curse/reset_effects
