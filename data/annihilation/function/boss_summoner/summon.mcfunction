summon interaction ~ ~1 ~ {NoGravity:1b,width:1.075f,height:1.25f,Tags:["anniR.summoner"]}
summon item_display ~ ~1.5 ~ {width:1f,height:1f,Rotation:[90F,0F],item:{id:"minecraft:nether_star",count:1b,components:{"minecraft:custom_model_data":38920}},Tags:["anniR.item_display"],item_display:"gui"}

#rotate the item_display (if the function wasn't executed by the Server)
#non-mob
execute if entity @s[type=#annihilation:non_mob] run data modify entity @n[type=minecraft:item_display,tag=anniR.item_display,distance=..4] Rotation set from entity @s Rotation
execute if entity @s[type=#annihilation:non_mob] run execute as @n[type=minecraft:item_display,tag=anniR.item_display,distance=..4] at @s run tp @s ~ ~ ~ ~180 0
#mob
execute if entity @s[type=!#annihilation:non_mob] run data modify entity @n[type=minecraft:item_display,tag=anniR.item_display,distance=..4] Rotation set from entity @s Rotation
execute if entity @s[type=!#annihilation:non_mob] run execute as @n[type=minecraft:item_display,tag=anniR.item_display,distance=..4] at @s run tp @s ~ ~ ~ ~180 0

scoreboard players set #anniR.global anniR.boss_summoner 0