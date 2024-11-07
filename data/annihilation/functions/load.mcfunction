scoreboard objectives add anniR_loadStructure dummy
scoreboard objectives add anniR_checkMobSpawn dummy
scoreboard objectives add anniR_structureTimer dummy

scoreboard objectives add anniR_loadScoreboard dummy

execute if score #anniR_global anniR_music matches 2 run execute at @a run stopsound @p[distance=..2] record annihilation_recreated:annihilation_by_texilated
execute if score #anniR_global anniR_music matches 2 run schedule clear annihilation:boss/play_music
execute if score #anniR_global anniR_music matches 2 run schedule function annihilation:boss/play_music 5s

## auto update ##
scoreboard objectives add anniR_scoreboardVersion dummy
execute if score #anniR_load anniR_loadScoreboard matches 1 run execute unless score #anniR_load anniR_scoreboardVersion matches 4 run function annihilation:initialization/init_scoreboard

scoreboard objectives add anniR_structureVersion dummy
execute if score #anniR_load anniR_loadStructure matches 1 run execute unless score #anniR_load anniR_structureVersion matches 1 run schedule function annihilation:version_warning 5s