data remove entity @s interaction

execute on vehicle if entity @s[tag=avarice.opening] run return 0
execute if data storage avarice:macro root.item.components."minecraft:custom_data".avarice.lockbox on vehicle run function avarice:block/lockbox/interact/check_uuid with storage avarice:macro root
