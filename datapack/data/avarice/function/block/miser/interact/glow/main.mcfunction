execute store result storage avarice:macro root.index int 1 run scoreboard players get @s avarice.index
function avarice:block/miser/interact/glow/detect with storage avarice:macro root
playsound avarice:block.miser.glow block @a[distance=..16]
