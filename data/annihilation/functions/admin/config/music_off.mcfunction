scoreboard players set #anniR_global anniR_music 0
execute at @s run stopsound @a[distance=..90] block annihilation_recreated:annihilation_by_texilated
schedule clear annihilation:boss/play_music
function annihilation:admin/_/set_config