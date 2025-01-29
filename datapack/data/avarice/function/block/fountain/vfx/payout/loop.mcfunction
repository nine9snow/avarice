particle end_rod ~ ~ ~ ^ ^ ^100000000000 0.000000000003 0 force

scoreboard players remove #temp avarice.dummy 1
execute if score #temp avarice.dummy matches 1.. rotated ~5 ~ run function avarice:block/fountain/vfx/payout/loop
