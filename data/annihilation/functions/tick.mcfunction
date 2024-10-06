#initialize scoreboard only one
execute unless score #anniR_load anniR_loadScoreboard matches 1 run function annihilation:initialization/init_scoreboard

#try to place the structure
execute unless score #anniR_load anniR_loadStructure matches 1 run function annihilation:initialization/init_structure
execute unless score #anniR_load anniR_structureTimer matches 25 run scoreboard players add #anniR_load anniR_structureTimer 1

#hitbox renderer
execute at @a run execute if score #anniR_global anniR_visibleHitbox matches 1 run data modify entity @e[type=magma_cube,tag=anni_hitbox,nbt={NoAI:1b},limit=1,sort=nearest,distance=..32] Glowing set value 1b
execute at @a run execute if score #anniR_global anniR_visibleHitbox matches 0 run data modify entity @e[type=magma_cube,tag=anni_hitbox,nbt={NoAI:1b},limit=1,sort=nearest,distance=..32] Glowing set value 0b

#boss summoner check
execute in minecraft:overworld positioned 212 -37.5 -1292 as @e[type=interaction,tag=anni_summoner,distance=..8] if data entity @s interaction run function annihilation:boss_summoner/next

#loop boss ai
execute at @a if entity @e[type=item_display,tag=aj.annihilation_recreated.root,distance=..128] run execute as @e[type=item_display,tag=aj.annihilation_recreated.root,distance=..128] at @s run function annihilation:boss/main_ai
#execute at @a if entity @e[type=item_display,tag=aj.annihilation_recreated.root,distance=..256] run execute as @e[type=item_display,tag=aj.annihilation_recreated.root,distance=..128] at @s run function annihilation:boss/main_ai