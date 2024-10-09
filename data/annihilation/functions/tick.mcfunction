#initialize scoreboard only once
execute unless score #anniR_load anniR_loadScoreboard matches 1 run function annihilation:initialization/init_scoreboard

#try to place the structure
execute unless score #anniR_load anniR_loadStructure matches 1 run function annihilation:initialization/init_structure
execute unless score #anniR_load anniR_structureTimer matches 25 run scoreboard players add #anniR_load anniR_structureTimer 1

#hitbox renderer
execute at @a run execute if score #anniR_global anniR_visibleHitbox matches 1 run data modify entity @e[type=magma_cube,tag=anni_hitbox,nbt={NoAI:1b},limit=1,sort=nearest,distance=..32] Glowing set value 1b
execute at @a run execute if score #anniR_global anniR_visibleHitbox matches 0 run data modify entity @e[type=magma_cube,tag=anni_hitbox,nbt={NoAI:1b},limit=1,sort=nearest,distance=..32] Glowing set value 0b

#boss summoner check
execute in minecraft:overworld positioned 212 -37.5 -1292 as @e[type=interaction,tag=anni_summoner,distance=..8] if data entity @s interaction if score #anniR_global anniR_boss_summoner matches 0 run execute if entity @p[predicate=annihilation:check_netherstar,distance=..8] run function annihilation:boss_summoner/next
execute in minecraft:overworld positioned 212 -37.5 -1292 as @e[type=interaction,tag=anni_summoner,distance=..8] if data entity @s interaction if score #anniR_global anniR_boss_summoner matches 1..2 run execute if entity @p[predicate=annihilation:check_netherite,distance=..8] run function annihilation:boss_summoner/next
execute in minecraft:overworld positioned 212 -37.5 -1292 as @e[type=interaction,tag=anni_summoner,distance=..8] if data entity @s interaction run data remove entity @e[type=interaction,tag=anni_summoner,distance=..8,limit=1] interaction

#loop boss ai
execute at @a if entity @e[type=item_display,tag=aj.annihilation_recreated.root,distance=..128] run execute as @e[type=item_display,tag=aj.annihilation_recreated.root,distance=..128] at @s run function annihilation:boss/main_ai

#despawn teh boss if there no player (only for structure boss)
execute in minecraft:overworld positioned 212 -37.5 -1292 run execute if entity @e[type=item_display,tag=aj.annihilation_recreated.root,distance=..8,limit=1,scores={anniR_struct_spawned=1,anniR_playerCount=1..}] run execute as @e[type=item_display,tag=aj.annihilation_recreated.root,distance=..8,limit=1,scores={anniR_struct_spawned=1,anniR_playerCount=1..}] at @s unless entity @p[distance=..105] run function annihilation:boss/despawn 