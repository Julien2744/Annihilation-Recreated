#place the structure
execute if score #anniR.load anniR.structureTimer matches 1 run forceload add 195 -1330 393 -1245

#remove old summoner if the structure got generated again
execute if score #anniR.load anniR.structureTimer matches 1 run execute positioned 212 -37.5 -1291.05 run kill @e[type=interaction,tag=anni.summoner,distance=..8]
execute if score #anniR.load anniR.structureTimer matches 1 run execute positioned 212 -37.5 -1291.05 run kill @e[type=item_display,tag=anni.item,distance=..8]

#comment this two line to disable structure generation
execute if score #anniR.load anniR.structureTimer matches 2 run execute store result score #anniR.load anniR.checkMobSpawn run gamerule doMobSpawning
execute if score #anniR.load anniR.structureTimer matches 2 if score #anniR.load anniR.checkMobSpawn matches 1 run function annihilation:initialization/generate_structure

#put the boss summoner
execute if score #anniR.load anniR.structureTimer matches 24 run execute positioned 210 -39 -1292 run function annihilation:boss_summoner/summon

execute if score #anniR.load anniR.structureTimer matches 24 run forceload remove 195 -1330 393 -1245

#mark the strcuture as placed
execute if score #anniR.load anniR.structureTimer matches 25 run scoreboard players set #anniR.load anniR.loadStructure 1

## structure version ##
execute if score #anniR.load anniR.structureTimer matches 25 run scoreboard players set #anniR.load anniR.structureVersion 3

#end of initialisating
execute if score #anniR.load anniR.structureTimer matches 25 run function annihilation:initialization/welcome_message