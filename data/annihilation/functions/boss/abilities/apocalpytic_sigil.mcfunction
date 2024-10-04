function animated_java:annir_apocalpytic_sigil/summon

playsound minecraft:entity.evoker.cast_spell hostile @a[distance=..50] ~ ~ ~ 3

execute as @e[type=item_display,tag=aj.annir_apocalpytic_sigil.root,limit=1,distance=..128] at @s run function animated_java:annir_apocalpytic_sigil/animations/turn/play

execute unless score @e[type=item_display,tag=aj.annihilation_recreated.root,limit=1,sort=nearest,distance=..128] anniR_isBuffed matches 0 run scoreboard players remove @e[type=item_display,tag=aj.annihilation_recreated.root,limit=1,sort=nearest] anniR_isBuffed 1

execute if score #anniR_global anniR_team matches 1 run team join annihilation_team @e[tag=anni_immune,distance=..128]