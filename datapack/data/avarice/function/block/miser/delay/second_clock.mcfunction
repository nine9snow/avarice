execute store result score #temp avarice.dummy run time query gametime
execute if score #temp avarice.dummy > @s avarice.dummy run function avarice:block/miser/delay/remove
