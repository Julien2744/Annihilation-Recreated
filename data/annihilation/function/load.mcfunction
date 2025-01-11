scoreboard objectives add anniR.loadStructure dummy
scoreboard objectives add anniR.checkMobSpawn dummy
scoreboard objectives add anniR.structureTimer dummy

scoreboard objectives add anniR.loadScoreboard dummy

execute if score #anniR.global anniR.music matches 2 run execute at @a run stopsound @p[distance=..2] record annihilation_recreated:annihilation_by_texilated
execute if score #anniR.global anniR.music matches 2 run schedule clear annihilation:boss/play_music
execute if score #anniR.global anniR.music matches 2 run schedule function annihilation:boss/play_music 5s

## auto update ##
scoreboard objectives add anniR.scoreboardVersion dummy
execute if score #anniR.load anniR.loadScoreboard matches 1 run execute unless score #anniR.load anniR.scoreboardVersion matches 7 run function annihilation:initialization/init_scoreboard

scoreboard objectives add anniR.structureVersion dummy
execute if score #anniR.load anniR.loadStructure matches 1 run execute unless score #anniR.load anniR.structureVersion matches 2 run schedule function annihilation:version_warning 5s