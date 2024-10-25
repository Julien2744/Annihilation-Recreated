#heal
#vanilla
execute if score #anniR_global anniR_difficulty matches 0 run execute if entity @e[type=enderman,tag=anni_immune,tag=anni_summoned,nbt={NoAI:1b},limit=1,distance=..3,sort=nearest] run execute as @e[type=magma_cube,nbt={NoAI:1b,Size:16},distance=..90,limit=1,sort=nearest] run execute unless entity @s[nbt={ActiveEffects:[{Id:10}]}] run effect give @s regeneration 2 2 true
#modded
execute if score #anniR_global anniR_difficulty matches 1 run execute if entity @e[type=enderman,tag=anni_immune,tag=anni_summoned,nbt={NoAI:1b},limit=1,distance=..3,sort=nearest] run execute as @e[type=magma_cube,nbt={NoAI:1b,Size:16},distance=..90,limit=1,sort=nearest] run execute unless entity @s[nbt={ActiveEffects:[{Id:10}]}] run effect give @s regeneration 2 3 true
#heavy_modded
execute if score #anniR_global anniR_difficulty matches 2 run execute if entity @e[type=enderman,tag=anni_immune,tag=anni_summoned,nbt={NoAI:1b},limit=1,distance=..3,sort=nearest] run execute as @e[type=magma_cube,nbt={NoAI:1b,Size:16},distance=..90,limit=1,sort=nearest] run execute unless entity @s[nbt={ActiveEffects:[{Id:10}]}] run effect give @s regeneration 2 4 true

#kill end_crystal
execute unless entity @e[type=enderman,tag=anni_immune,tag=anni_summoned,nbt={NoAI:1b},limit=1,distance=..3,sort=nearest] run kill @s
#kill magma cube that prevent it from teleporting
execute unless entity @e[type=enderman,tag=anni_immune,tag=anni_summoned,nbt={NoAI:1b},limit=1,distance=..3,sort=nearest] run kill @e[type=slime,distance=..3,tag=!anni_hitbox,tag=anni_immune,tag=anni_summoned,nbt={NoAI:1b,Size:0}]