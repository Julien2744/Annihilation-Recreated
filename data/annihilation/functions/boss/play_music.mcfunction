scoreboard players set #anniR_global anniR_music 2

execute at @e[type=item_display,tag=aj.annihilation_recreated.root,limit=1,sort=nearest] run playsound annihilation_recreated:annihilation_by_texilated block @a[distance=..90] ~ ~ ~ 10
execute at @e[type=item_display,tag=aj.annihilation_recreated.root,limit=1,sort=nearest] run title @a[distance=..90] actionbar [{"text":"now playing ","color":"red"},{"text":"Annihilation","color":"dark_red"},{"text":" by ","color":"red"},{"text":"Texilated","color":"red"}]

execute if score #anniR_global anniR_music matches 2 if entity @e[type=item_display,tag=aj.annihilation_recreated.root,limit=1,sort=nearest] run scoreboard players set #anniR_global anniR_music 2
#de-activate loop if there aren't any annihilation
execute if score #anniR_global anniR_music matches 2 unless entity @e[type=item_display,tag=aj.annihilation_recreated.root,limit=1,sort=nearest] run scoreboard players set #anniR_global anniR_music 1

execute if score #anniR_global anniR_music matches 2 run schedule function annihilation:boss/play_music 292s