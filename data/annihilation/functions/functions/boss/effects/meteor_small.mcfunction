particle explosion ~ ~ ~
playsound entity.generic.explode hostile @a[distance=..16] ~ ~ ~

execute if score @s anniR_isBuffed matches 0 run execute if score #anniR_global anniR_difficulty matches 0 run damage @e[distance=..2,tag=anni_target,limit=1] 25 minecraft:explosion by @s
execute if score @s anniR_isBuffed matches 0 run execute if score #anniR_global anniR_difficulty matches 0 run damage @e[distance=..3.25,tag=!anni_immune,tag=!anni_target,limit=1,sort=random] 10 minecraft:explosion by @s

execute if score @s anniR_isBuffed matches 0 run execute if score #anniR_global anniR_difficulty matches 1 run damage @e[distance=..2,tag=anni_target,limit=1] 35 minecraft:explosion by @s
execute if score @s anniR_isBuffed matches 0 run execute if score #anniR_global anniR_difficulty matches 1 run damage @e[distance=..3.25,tag=!anni_immune,tag=!anni_target,limit=1,sort=random] 20 minecraft:explosion by @s

execute if score @s anniR_isBuffed matches 0 run execute if score #anniR_global anniR_difficulty matches 2 run damage @e[distance=..2,tag=anni_target,limit=1] 50 minecraft:explosion by @s
execute if score @s anniR_isBuffed matches 0 run execute if score #anniR_global anniR_difficulty matches 2 run damage @e[distance=..3.25,tag=!anni_immune,tag=!anni_target,limit=1,sort=random] 40 minecraft:explosion by @s

#buffed
execute unless score @s anniR_isBuffed matches 0 run execute if score #anniR_global anniR_difficulty matches 0 run damage @e[distance=..2,tag=anni_target,limit=1] 30 minecraft:explosion by @s
execute unless score @s anniR_isBuffed matches 0 run execute if score #anniR_global anniR_difficulty matches 0 run damage @e[distance=..3.25,tag=!anni_immune,tag=!anni_target,limit=1,sort=random] 15 minecraft:explosion by @s

execute unless score @s anniR_isBuffed matches 0 run execute if score #anniR_global anniR_difficulty matches 1 run damage @e[distance=..2,tag=anni_target,limit=1] 40 minecraft:explosion by @s
execute unless score @s anniR_isBuffed matches 0 run execute if score #anniR_global anniR_difficulty matches 1 run damage @e[distance=..3.25,tag=!anni_immune,tag=!anni_target,limit=1,sort=random] 25 minecraft:explosion by @s

execute unless score @s anniR_isBuffed matches 0 run execute if score #anniR_global anniR_difficulty matches 2 run damage @e[distance=..2,tag=anni_target,limit=1] 55 minecraft:explosion by @s
execute unless score @s anniR_isBuffed matches 0 run execute if score #anniR_global anniR_difficulty matches 2 run damage @e[distance=..3.25,tag=!anni_immune,tag=!anni_target,limit=1,sort=random] 45 minecraft:explosion by @s

kill @e[type=armor_stand,tag=anni_meteor_s,distance=..1,limit=1,sort=nearest]
