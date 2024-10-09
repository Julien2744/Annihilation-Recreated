scoreboard objectives add anniR_loadStructure dummy
scoreboard objectives add anniR_structureTimer dummy

scoreboard objectives add anniR_loadScoreboard dummy

## auto update ##
scoreboard objectives add anniR_scoreboardVersion dummy
execute if score #anniR_load anniR_loadScoreboard matches 1 run execute unless score #anniR_load anniR_scoreboardVersion matches 1 run function annihilation:initialization/init_scoreboard

scoreboard objectives add anniR_structureVersion dummy
execute if score #anniR_load anniR_loadStructure matches 1 run execute unless score #anniR_load anniR_structureVersion matches 1 run schedule function annihilation:version_warning 5s