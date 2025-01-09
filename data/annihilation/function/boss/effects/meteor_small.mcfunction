particle explosion ~ ~ ~
playsound entity.generic.explode hostile @a[distance=..16] ~ ~ ~

execute if score @s anniR.isBuffed matches 0 run execute if score #anniR.global anniR.difficulty matches 0 run damage @e[distance=..2,tag=anniR.target,limit=1] 20 annihilation:metor_small by @s
execute if score @s anniR.isBuffed matches 0 run execute if score #anniR.global anniR.difficulty matches 0 run damage @e[distance=..3.25,tag=!anniR.immune,tag=!anniR.target,limit=1,sort=random] 5 annihilation:metor_small by @s

execute if score @s anniR.isBuffed matches 0 run execute if score #anniR.global anniR.difficulty matches 1 run damage @e[distance=..2,tag=anniR.target,limit=1] 30 annihilation:metor_small by @s
execute if score @s anniR.isBuffed matches 0 run execute if score #anniR.global anniR.difficulty matches 1 run damage @e[distance=..3.25,tag=!anniR.immune,tag=!anniR.target,limit=1,sort=random] 15 annihilation:metor_small by @s

execute if score @s anniR.isBuffed matches 0 run execute if score #anniR.global anniR.difficulty matches 2 run damage @e[distance=..2,tag=anniR.target,limit=1] 45 annihilation:metor_small by @s
execute if score @s anniR.isBuffed matches 0 run execute if score #anniR.global anniR.difficulty matches 2 run damage @e[distance=..3.25,tag=!anniR.immune,tag=!anniR.target,limit=1,sort=random] 40 annihilation:metor_small by @s

#buffed
execute unless score @s anniR.isBuffed matches 0 run execute if score #anniR.global anniR.difficulty matches 0 run damage @e[distance=..2,tag=anniR.target,limit=1] 25 annihilation:metor_small by @s
execute unless score @s anniR.isBuffed matches 0 run execute if score #anniR.global anniR.difficulty matches 0 run damage @e[distance=..3.25,tag=!anniR.immune,tag=!anniR.target,limit=1,sort=random] 10 annihilation:metor_small by @s

execute unless score @s anniR.isBuffed matches 0 run execute if score #anniR.global anniR.difficulty matches 1 run damage @e[distance=..2,tag=anniR.target,limit=1] 35 annihilation:metor_small by @s
execute unless score @s anniR.isBuffed matches 0 run execute if score #anniR.global anniR.difficulty matches 1 run damage @e[distance=..3.25,tag=!anniR.immune,tag=!anniR.target,limit=1,sort=random] 20 annihilation:metor_small by @s

execute unless score @s anniR.isBuffed matches 0 run execute if score #anniR.global anniR.difficulty matches 2 run damage @e[distance=..2,tag=anniR.target,limit=1] 50 annihilation:metor_small by @s
execute unless score @s anniR.isBuffed matches 0 run execute if score #anniR.global anniR.difficulty matches 2 run damage @e[distance=..3.25,tag=!anniR.immune,tag=!anniR.target,limit=1,sort=random] 45 annihilation:metor_small by @s

kill @n[type=armor_stand,tag=anniR.meteor_s,distance=..1]
kill @n[type=armor_stand,tag=anniR.meteor_s2,distance=..1]
