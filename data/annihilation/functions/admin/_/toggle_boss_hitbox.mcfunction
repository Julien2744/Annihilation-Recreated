scoreboard players add #anniR_global anniR_visibleHitbox 1
execute if score #anniR_global anniR_visibleHitbox matches 2 run scoreboard players set #anniR_global anniR_visibleHitbox 0

execute if score #anniR_global anniR_visibleHitbox matches 1 run execute as @e[type=magma_cube,tag=anni_hitbox,tag=anni_immune,nbt={NoAI:1b}] run data modify entity @s Glowing set value 1b
execute if score #anniR_global anniR_visibleHitbox matches 0 run execute as @e[type=magma_cube,tag=anni_hitbox,tag=anni_immune,nbt={NoAI:1b,Glowing:1b}] run data modify entity @s Glowing set value 0b