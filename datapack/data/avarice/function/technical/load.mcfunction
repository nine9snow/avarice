scoreboard objectives add avarice.dummy dummy
scoreboard objectives add avarice.slot dummy
scoreboard objectives add avarice.index dummy
scoreboard objectives add avarice.sun_exposure dummy
scoreboard objectives add avarice.sneeze dummy
scoreboard objectives add avarice.crown_timer dummy
scoreboard objectives add avarice.relog minecraft.custom:minecraft.leave_game

team add avarice.friendly_fire
team modify avarice.friendly_fire friendlyFire false

team add avarice.dead_players
team modify avarice.dead_players prefix [{text: "2", font: "avarice:icon", color: "white", "shadow_color": 15592941}, " "]
team modify avarice.dead_players color gray

function avarice:requests/generate
execute unless score #installed avarice.dummy matches 1 run function avarice:technical/first_load

function avarice:technical/second_clock/main

# const
scoreboard players set #2 avarice.dummy 2
scoreboard players set #3 avarice.dummy 3
scoreboard players set #10 avarice.dummy 10
scoreboard players set #20 avarice.dummy 20
scoreboard players set #40 avarice.dummy 40
scoreboard players set #50 avarice.dummy 50
scoreboard players set #80 avarice.dummy 80
scoreboard players set #100 avarice.dummy 100
