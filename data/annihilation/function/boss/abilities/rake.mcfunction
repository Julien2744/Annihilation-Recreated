playsound minecraft:entity.ravager.attack hostile @a[distance=..9] ~ ~ ~ 1 0

execute if score #anniR.global anniR.difficulty matches 0 run execute positioned ^-6 ^ ^3 if entity @n[tag=anniR.target,tag=!anniR.immune,distance=..8.5] run damage @n[tag=anniR.target,tag=!anniR.immune,distance=..8.5] 40 annihilation:annihilation_mele by @n[type=cow,nbt={NoAI:1b,Tags:["anniR.hitbox","anniR.immune"]},distance=..16]

execute if score #anniR.global anniR.difficulty matches 1 run execute positioned ^-6 ^ ^3 if entity @n[tag=anniR.target,tag=!anniR.immune,distance=..8.5] run damage @n[tag=anniR.target,tag=!anniR.immune,distance=..8.5] 50 annihilation:annihilation_mele by @n[type=cow,nbt={NoAI:1b,Tags:["anniR.hitbox","anniR.immune"]},distance=..16]

execute if score #anniR.global anniR.difficulty matches 2 run execute positioned ^-6 ^ ^3 if entity @n[tag=anniR.target,tag=!anniR.immune,distance=..8.5] run damage @n[tag=anniR.target,tag=!anniR.immune,distance=..8.5] 70 annihilation:annihilation_mele by @n[type=cow,nbt={NoAI:1b,Tags:["anniR.hitbox","anniR.immune"]},distance=..16]