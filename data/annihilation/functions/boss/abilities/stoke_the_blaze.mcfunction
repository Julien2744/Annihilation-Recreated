scoreboard players set @s anniR_isBuffed 10
scoreboard players add @s anniR_buffedCount 1
scoreboard players set @s anniR_abilityCooldown 60

playsound minecraft:entity.blaze.ambient hostile @a[distance=..50] ~ ~ ~ 5 0

data modify entity @e[type=item_display,tag=aj.annir_head.bone.sigil,limit=1,distance=..12,sort=nearest] item.id set value "minecraft:nether_brick"

effect give @e[type=magma_cube,nbt={NoAI:1b,Size:16},distance=..8,limit=1,sort=nearest] resistance 60 1