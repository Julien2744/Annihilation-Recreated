#place the structure
execute if score #anniR_load anniR_structureTimer matches 1 run forceload add 195 -1330 393 -1245

#remove old summoner if the structure got generated again
execute if score #anniR_load anniR_structureTimer matches 1 run execute positioned 212 -37.5 -1291.05 run kill @e[type=interaction,tag=anni_summoner,distance=..8]
execute if score #anniR_load anniR_structureTimer matches 1 run execute positioned 212 -37.5 -1291.05 run kill @e[type=item_display,tag=anni_item,distance=..8]
execute if score #anniR_load anniR_structureTimer matches 1 run execute positioned 212 -37.5 -1291.05 run kill @e[type=text_display,tag=anni_item_count,distance=..8]

#comment this line to disable structure generation
execute if score #anniR_load anniR_structureTimer matches 2 run execute store result score #anniR_load anniR_checkMobSpawn run gamerule doMobSpawning
execute if score #anniR_load anniR_structureTimer matches 2 if score #anniR_load anniR_checkMobSpawn matches 1 run function annihilation:initialization/generate_structure

#put the boss summoner
execute if score #anniR_load anniR_structureTimer matches 24 run function annihilation:boss_summoner/summon

execute if score #anniR_load anniR_structureTimer matches 24 run forceload remove 195 -1330 393 -1245

#mark the strcuture as placed
execute if score #anniR_load anniR_structureTimer matches 25 run scoreboard players set #anniR_load anniR_loadStructure 1

## structure version ##
execute if score #anniR_load anniR_structureTimer matches 25 run scoreboard players set #anniR_load anniR_structureVersion 1

#end of initialisating
execute if score #anniR_load anniR_structureTimer matches 25 run function annihilation:initialization/welcome_message