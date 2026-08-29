scoreboard objectives add anniR.loadStructure dummy
scoreboard objectives add anniR.checkMobSpawn dummy
scoreboard objectives add anniR.structureTimer dummy

scoreboard objectives add anniR.loadScoreboard dummy

## auto update ##
scoreboard objectives add anniR.scoreboardVersion dummy
execute if score #anniR.load anniR.loadScoreboard matches 1 run execute unless score #anniR.load anniR.scoreboardVersion matches 8 run function annihilation:initialization/init_scoreboard

scoreboard objectives add anniR.structureVersion dummy
execute if score #anniR.load anniR.loadStructure matches 1 run execute unless score #anniR.load anniR.structureVersion matches 4 run schedule function annihilation:version_warning 5s