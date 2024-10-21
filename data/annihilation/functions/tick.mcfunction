#initialize scoreboard only once
execute unless score #anniR_load anniR_loadScoreboard matches 1 run function annihilation:initialization/init_scoreboard

#try to place the structure
execute unless score #anniR_load anniR_loadStructure matches 1 run function annihilation:initialization/init_structure
execute unless score #anniR_load anniR_structureTimer matches 25 run scoreboard players add #anniR_load anniR_structureTimer 1

#boss summoner check
execute if entity @r[predicate=annihilation:player_near_summoner] run execute positioned 211 -38.075 -1291.05 if data entity @e[type=interaction,tag=anni_summoner,distance=..1,limit=1] interaction run function annihilation:boss_summoner/check_player

#loop boss ai
execute at @a if entity @e[type=item_display,tag=aj.annihilation_recreated.root,distance=..128] run execute as @e[type=item_display,tag=aj.annihilation_recreated.root,distance=..128] at @s run function annihilation:boss/main_ai

#despawn teh boss if there no player (only for structure boss)
execute if score #anniR_global anniR_boss_summoner matches 3 run execute positioned 211 -38.075 -1291.05 run execute if entity @e[type=item_display,tag=aj.annihilation_recreated.root,distance=..8,limit=1,scores={anniR_struct_spawned=1,anniR_playerCount=1..}] run execute as @e[type=item_display,tag=aj.annihilation_recreated.root,distance=..8,limit=1,scores={anniR_struct_spawned=1,anniR_playerCount=1..}] at @s unless entity @p[distance=..105] run function annihilation:boss/despawn 