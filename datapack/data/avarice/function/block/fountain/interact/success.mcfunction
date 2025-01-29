data modify storage avarice:macro root.success set value 1
execute store result score #items avarice.dummy run data get storage avarice:fountain_item root.requested_count
playsound avarice:block.fountain.donate block @a[distance=..16]
