playsound minecraft:entity.ravager.attack hostile @a[distance=..9] ~ ~ ~ 1 0

execute if score #anniR_global anniR_difficulty matches 0 run execute positioned ^ ^ ^3 if entity @e[tag=anni_target,tag=!anni_immune,limit=1,distance=..8] run damage @e[tag=anni_target,tag=!anni_immune,limit=1,distance=..8] 50 mob_attack by @e[type=magma_cube,nbt={NoAI:1b,Size:16},distance=..16,limit=1,sort=nearest]

execute if score #anniR_global anniR_difficulty matches 1 run execute positioned ^ ^ ^3 if entity @e[tag=anni_target,tag=!anni_immune,limit=1,distance=..8] run damage @e[tag=anni_target,tag=!anni_immune,limit=1,distance=..8] 65 mob_attack by @e[type=magma_cube,nbt={NoAI:1b,Size:16},distance=..16,limit=1,sort=nearest]

execute if score #anniR_global anniR_difficulty matches 2 run execute positioned ^ ^ ^3 if entity @e[tag=anni_target,tag=!anni_immune,limit=1,distance=..8] run damage @e[tag=anni_target,tag=!anni_immune,limit=1,distance=..8] 80 mob_attack by @e[type=magma_cube,nbt={NoAI:1b,Size:16},distance=..16,limit=1,sort=nearest]