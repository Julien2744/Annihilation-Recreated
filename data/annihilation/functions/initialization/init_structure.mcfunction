#place the structure
execute if score #anniR_load anniR_structureTimer matches 1 run forceload add 195 -1330 393 -1245

#comment this line to disable structure generation
execute if score #anniR_load anniR_structureTimer matches 2 run function annihilation:initialization/generate_structure

#put the boss summoner
execute if score #anniR_load anniR_structureTimer matches 24 run function annihilation:boss_summoner/summon

execute if score #anniR_load anniR_structureTimer matches 24 run forceload remove 195 -1330 393 -1245

#mark the strcuture as placed
execute if score #anniR_load anniR_structureTimer matches 25 run scoreboard players set #anniR_load anniR_loadStructure 1

#end of initialisating
#execute if score #structPlacer structureTimer matches 25 run setblock 0 64 0 diamond_block
execute if score #anniR_load anniR_structureTimer matches 25 run function annihilation:initialization/welcome_message