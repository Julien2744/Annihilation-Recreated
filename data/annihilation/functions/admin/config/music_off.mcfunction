scoreboard players set #anniR_global anniR_music 0
execute at @s run stopsound @a[distance=..90] record annihilation_recreated:annihilation_by_texilated
schedule clear annihilation:boss/play_music
execute if entity @s[type=player] run function annihilation:admin/_/set_config