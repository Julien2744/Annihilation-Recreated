execute store result score #anniR.global anniR.00_loaded run forceload query 0 0
execute if score #anniR.global anniR.00_loaded matches 0 run forceload add 0 0

#short
execute if entity @n[tag=anniR.target,tag=!anniR.immune,distance=6.5..18] run scoreboard players set @s anniR.cleasingAnim 1
execute if score @s anniR.cleasingAnim matches 1 run execute as @n[type=item_display,tag=aj.annir_head.root,distance=..10] at @s run tp @s ~ ~ ~ ~45 ~

#bridge
execute if entity @e[tag=anniR.target,tag=!anniR.immune,distance=22..38] run scoreboard players set @s anniR.cleasingAnim 2
execute if score @s anniR.cleasingAnim matches 2 run execute as @n[type=item_display,tag=aj.annir_head.root,distance=..10] at @s run tp @s ~ ~ ~ ~ ~15

playsound minecraft:entity.ender_dragon.growl hostile @a[distance=..64] ~ ~9.3125 ~ 8 0.6
execute as @n[type=item_display,tag=aj.annir_head.root,distance=..10] at @s run function animated_java:annir_head/animations/cleasing_inferno/play