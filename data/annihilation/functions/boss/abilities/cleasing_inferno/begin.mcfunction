execute if score #anniR_global anniR_00_loaded matches 0 run forceload add 0 0
scoreboard players set @s anniR_abilityCooldown 130

#short
execute if entity @e[tag=anni_target,tag=!anni_immune,limit=1,distance=6.5..18] run scoreboard players set @s anniR_cleasingAnim 1
execute if score @s anniR_cleasingAnim matches 1 run execute as @e[type=item_display,tag=aj.annir_head.root,distance=..10,sort=nearest] at @s run tp @s ~ ~ ~ ~45 ~

#bridge
execute if entity @e[tag=anni_target,tag=!anni_immune,limit=1,distance=22..38] run scoreboard players set @s anniR_cleasingAnim 2
execute if score @s anniR_cleasingAnim matches 2 run execute as @e[type=item_display,tag=aj.annir_head.root,distance=..10,sort=nearest] at @s run tp @s ~ ~ ~ ~ ~15


playsound minecraft:entity.ender_dragon.growl hostile @a[distance=..64] ~ ~9.3125 ~ 8 0.6
execute as @e[type=item_display,tag=aj.annir_head.root,distance=..10,sort=nearest] at @s run function animated_java:annir_head/animations/cleasing_inferno/play