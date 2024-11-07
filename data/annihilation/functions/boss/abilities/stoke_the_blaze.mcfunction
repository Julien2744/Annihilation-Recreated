scoreboard players set @s anniR_isBuffed 10
scoreboard players add @s anniR_buffedCount 1
scoreboard players set @s anniR_abilityCooldown 60

playsound minecraft:entity.blaze.ambient hostile @a[distance=..50] ~ ~ ~ 5 0

data modify entity @e[type=item_display,tag=aj.annir_head.bone.sigil,limit=1,distance=..12,sort=nearest] item.id set value "minecraft:nether_brick"

effect give @e[type=magma_cube,nbt={NoAI:1b,Size:16},distance=..8,limit=1,sort=nearest] resistance 30 1

#clear fire res
execute if entity @e[tag=anni_target,tag=!anni_immune,limit=1,distance=..128,nbt={ActiveEffects:[{Id:12}]}] run execute at @e[tag=anni_target,tag=!anni_immune,limit=1,distance=..128] run playsound block.fire.extinguish hostile @p[tag=anni_target,tag=!anni_immune,limit=1,distance=..128] ~ ~ ~ 2
execute if entity @e[tag=anni_target,tag=!anni_immune,limit=1,distance=..128,nbt={ActiveEffects:[{Id:12}]}] run execute at @e[tag=anni_target,tag=!anni_immune,limit=1,distance=..128] run particle minecraft:poof ^ ^0.5 ^0.25 0 0 0 1 3
execute if entity @e[tag=anni_target,tag=!anni_immune,limit=1,distance=..128,nbt={ActiveEffects:[{Id:12}]}] run title @p[tag=anni_target,tag=!anni_immune,limit=1,distance=..128] actionbar {"text":"your fire resistance has ben extinguished"}
execute if entity @e[tag=anni_target,tag=!anni_immune,limit=1,distance=..128,nbt={ActiveEffects:[{Id:12}]}] run effect clear @e[tag=anni_target,tag=!anni_immune,limit=1,distance=..128] fire_resistance