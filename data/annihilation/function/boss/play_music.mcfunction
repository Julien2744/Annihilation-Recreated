scoreboard players set #anniR.global anniR.music 2

#playsound
execute at @n[type=item_display,tag=aj.annihilation_recreated.root] run playsound annihilation_recreated:annihilation_by_texilated record @a[distance=..90] ~ ~ ~ 10
#credit
execute at @n[type=item_display,tag=aj.annihilation_recreated.root] run title @a[distance=..90] actionbar [{"text":"now playing ","color":"red"},{"text":"Annihilation","color":"dark_red"},{"text":" by ","color":"red"},{"text":"Texilated","color":"dark_red","underlined":true}]
schedule function annihilation:boss/music_credit 2.25s

#de-activate loop if there aren't any annihilation
execute if score #anniR.global anniR.music matches 2 unless entity @n[type=item_display,tag=aj.annihilation_recreated.root] run scoreboard players set #anniR.global anniR.music 1

execute if score #anniR.global anniR.music matches 2 run schedule function annihilation:boss/play_music 290s