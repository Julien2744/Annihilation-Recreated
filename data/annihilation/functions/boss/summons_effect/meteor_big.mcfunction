particle explosion_emitter ~ ~ ~
playsound entity.generic.explode hostile @a[distance=..16] ~ ~ ~ 1 0.5

execute if score @s anniR_isBuffed matches 0 run damage @e[distance=..3.25,tag=anni_target,limit=1] 45 minecraft:explosion by @s
execute if score @s anniR_isBuffed matches 0 run damage @e[distance=..3.25,tag=!anni_immune,tag=!anni_target,limit=1,sort=random] 35 minecraft:explosion by @s
execute if score @s anniR_isBuffed matches 0 run damage @e[distance=..3.25,tag=!anni_immune,tag=!anni_target,limit=1,sort=random] 35 minecraft:explosion by @s
execute if score @s anniR_isBuffed matches 0 run damage @e[distance=..3.25,tag=!anni_immune,tag=!anni_target,limit=1,sort=random] 35 minecraft:explosion by @s

#buffed
execute unless score @s anniR_isBuffed matches 0 run damage @e[distance=..3.25,tag=anni_target,limit=1] 50 minecraft:explosion by @s
execute unless score @s anniR_isBuffed matches 0 run damage @e[distance=..3.25,tag=!anni_immune,tag=!anni_target,limit=1,sort=random] 40 minecraft:explosion by @s
execute unless score @s anniR_isBuffed matches 0 run damage @e[distance=..3.25,tag=!anni_immune,tag=!anni_target,limit=1,sort=random] 40 minecraft:explosion by @s
execute unless score @s anniR_isBuffed matches 0 run damage @e[distance=..3.25,tag=!anni_immune,tag=!anni_target,limit=1,sort=random] 40 minecraft:explosion by @s

kill @e[type=armor_stand,tag=anni_meteor_b,distance=..1,limit=1,sort=nearest]