execute at @n[type=item_display,tag=aj.annihilation_recreated.root,distance=..16] run execute store result entity @s Motion[0] double 0.005 run scoreboard players get @s anniR.motX
execute at @n[type=item_display,tag=aj.annihilation_recreated.root,distance=..16] run execute store result entity @s Motion[1] double 0.0008 run scoreboard players get @s anniR.motY
execute at @n[type=item_display,tag=aj.annihilation_recreated.root,distance=..16] run execute store result entity @s Motion[2] double 0.005 run scoreboard players get @s anniR.motZ
execute if score #anniR.global anniR.difficulty matches 0 run data modify entity @s damage set value 3
execute if score #anniR.global anniR.difficulty matches 1 run data modify entity @s damage set value 5
execute if score #anniR.global anniR.difficulty matches 2 run data modify entity @s damage set value 8