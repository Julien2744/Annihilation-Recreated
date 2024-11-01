#msuic
#playsound
execute if score #anniR_global anniR_music matches 1 positioned 212 -39 -1292 run playsound annihilation_recreated:annihilation_by_texilated record @a[distance=..90] ~ ~ ~ 10
#credit
execute if score #anniR_global anniR_music matches 1 positioned 212 -39 -1292 run title @a[distance=..90] actionbar [{"text":"now playing ","color":"red"},{"text":"Annihilation","color":"dark_red"},{"text":" by ","color":"red"},{"text":"Texilated","color":"dark_red","underlined":true}]
execute if score #anniR_global anniR_music matches 1 run schedule function annihilation:boss/music_credit 2.25s
execute if score #anniR_global anniR_music matches 1 run schedule function annihilation:boss/play_music 290s
#mark schedule
execute if score #anniR_global anniR_music matches 1 run scoreboard players set #anniR_global anniR_music 2

#kill boss summoner
execute positioned 212 -39 -1292 run kill @e[type=text_display,tag=anni_item_count,distance=..2]
execute positioned 212 -39 -1292 run kill @e[type=interaction,tag=anni_summoner,distance=..2]
execute positioned 212 -39 -1292 run kill @e[type=item_display,tag=anni_item,distance=..2]

#anti-suffocation
execute store result score #anniR_global anniR_checkMobGrief run gamerule mobGriefing
execute if score #anniR_global anniR_checkMobGrief matches 1 run function annihilation:boss_summoner/anti_suffocation

#summon
execute positioned 212 -39 -1292 run function annihilation:admin/_/summon
execute positioned 212 -39 -1292 run scoreboard players set @e[type=item_display,tag=aj.annihilation_recreated.root,distance=..8,limit=1] anniR_struct_spawned 1
execute positioned 212 -39 -1292 run execute at @e[type=magma_cube,tag=anni_hitbox,limit=1,distance=..2] run function annihilation:boss/anim_head
execute positioned 212 -39 -1292 run execute as @e[type=item_display,tag=aj.annihilation_recreated.root,distance=..8,limit=1] at @s run function animated_java:annihilation_recreated/animations/entrance/play
execute positioned 212 -39 -1292 run effect give @e[type=magma_cube,tag=anni_hitbox,limit=1,distance=..2] resistance 5 3 false

#sound
execute positioned 212 -39 -1292 run playsound minecraft:entity.warden.emerge hostile @a[distance=..90] ~ ~ ~ 10