execute at @e[type=item_display,tag=aj.annihilation_recreated.root,distance=..16,limit=1] run execute store result entity @s Motion[0] double 0.0008 run scoreboard players get @s anni_motX
execute at @e[type=item_display,tag=aj.annihilation_recreated.root,distance=..16,limit=1] run execute store result entity @s Motion[1] double 0.00018 run scoreboard players get @s anni_motY
execute at @e[type=item_display,tag=aj.annihilation_recreated.root,distance=..16,limit=1] run execute store result entity @s Motion[2] double 0.0008 run scoreboard players get @s anni_motZ
execute if score #anniR_global anniR_difficulty matches 0 run data modify entity @s damage set value 18.5
execute if score #anniR_global anniR_difficulty matches 1 run data modify entity @s damage set value 22.5
execute if score #anniR_global anniR_difficulty matches 2 run data modify entity @s damage set value 28.5