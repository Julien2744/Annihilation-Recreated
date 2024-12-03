playsound minecraft:entity.ravager.attack hostile @a[distance=..9] ~ ~ ~ 1 0

execute if score #anniR_global anniR_difficulty matches 0 run execute positioned ^-6 ^ ^3 if entity @e[tag=anni_target,tag=!anni_immune,limit=1,distance=..8] run damage @e[tag=anni_target,tag=!anni_immune,limit=1,distance=..8.5] 45 annihilation:annihilation_mele by @e[type=magma_cube,nbt={NoAI:1b,Size:16},distance=..16,limit=1,sort=nearest]

execute if score #anniR_global anniR_difficulty matches 1 run execute positioned ^-6 ^ ^3 if entity @e[tag=anni_target,tag=!anni_immune,limit=1,distance=..8] run damage @e[tag=anni_target,tag=!anni_immune,limit=1,distance=..8.5] 55 annihilation:annihilation_mele by @e[type=magma_cube,nbt={NoAI:1b,Size:16},distance=..16,limit=1,sort=nearest]

execute if score #anniR_global anniR_difficulty matches 2 run execute positioned ^-6 ^ ^3 if entity @e[tag=anni_target,tag=!anni_immune,limit=1,distance=..8] run damage @e[tag=anni_target,tag=!anni_immune,limit=1,distance=..8.5] 75 annihilation:annihilation_mele by @e[type=magma_cube,nbt={NoAI:1b,Size:16},distance=..16,limit=1,sort=nearest]