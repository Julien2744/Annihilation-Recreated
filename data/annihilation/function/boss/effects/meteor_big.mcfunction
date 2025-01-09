particle explosion_emitter ~ ~ ~
playsound entity.generic.explode hostile @a[distance=..32] ~ ~ ~ 3 0.5

summon armor_stand ~ ~ ~0.75 {Motion:[0.0,0.75,0.75],NoGravity:0b,Invulnerable:1b,HasVisualFire:1b,Glowing:0b,Invisible:1b,Tags:["anniR.immune","anniR.meteor","anniR.meteor_s2","anniR.summoned"],Pose:{Head:[180f,0f,0f]},DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:magma_block",count:1b}]}
summon armor_stand ~-0.5 ~ ~-0.5 {Motion:[-0.5,0.75,-0.5],NoGravity:0b,Invulnerable:1b,HasVisualFire:1b,Glowing:0b,Invisible:1b,Tags:["anniR.immune","anniR.meteor","anniR.meteor_s2","anniR.summoned"],Pose:{Head:[180f,0f,0f]},DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:magma_block",count:1b}]}
summon armor_stand ~0.5 ~ ~-0.5 {Motion:[0.5,0.75,-0.5],NoGravity:0b,Invulnerable:1b,HasVisualFire:1b,Glowing:0b,Invisible:1b,Tags:["anniR.immune","anniR.meteor","anniR.meteor_s2","anniR.summoned"],Pose:{Head:[180f,0f,0f]},DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:magma_block",count:1b}]}

execute if score @s anniR.isBuffed matches 0 run execute if score #anniR.global anniR.difficulty matches 0 run damage @e[distance=..3.25,tag=anniR.target,limit=1] 35 annihilation:metor_big by @s
execute if score @s anniR.isBuffed matches 0 run execute if score #anniR.global anniR.difficulty matches 0 run damage @e[distance=..3.25,tag=!anniR.immune,tag=!anniR.target,limit=1,sort=random] 25 annihilation:metor_big by @s
execute if score @s anniR.isBuffed matches 0 run execute if score #anniR.global anniR.difficulty matches 0 run damage @e[distance=..3.25,tag=!anniR.immune,tag=!anniR.target,limit=1,sort=random] 25 annihilation:metor_big by @s
execute if score @s anniR.isBuffed matches 0 run execute if score #anniR.global anniR.difficulty matches 0 run damage @e[distance=..3.25,tag=!anniR.immune,tag=!anniR.target,limit=1,sort=random] 25 annihilation:metor_big by @s

execute if score @s anniR.isBuffed matches 0 run execute if score #anniR.global anniR.difficulty matches 1 run damage @e[distance=..3.25,tag=anniR.target,limit=1] 45 annihilation:metor_big by @s
execute if score @s anniR.isBuffed matches 0 run execute if score #anniR.global anniR.difficulty matches 1 run damage @e[distance=..3.25,tag=!anniR.immune,tag=!anniR.target,limit=1,sort=random] 35 annihilation:metor_big by @s
execute if score @s anniR.isBuffed matches 0 run execute if score #anniR.global anniR.difficulty matches 1 run damage @e[distance=..3.25,tag=!anniR.immune,tag=!anniR.target,limit=1,sort=random] 35 annihilation:metor_big by @s
execute if score @s anniR.isBuffed matches 0 run execute if score #anniR.global anniR.difficulty matches 1 run damage @e[distance=..3.25,tag=!anniR.immune,tag=!anniR.target,limit=1,sort=random] 35 annihilation:metor_big by @s

execute if score @s anniR.isBuffed matches 0 run execute if score #anniR.global anniR.difficulty matches 2 run damage @e[distance=..3.25,tag=anniR.target,limit=1] 60 annihilation:metor_big by @s
execute if score @s anniR.isBuffed matches 0 run execute if score #anniR.global anniR.difficulty matches 2 run damage @e[distance=..3.25,tag=!anniR.immune,tag=!anniR.target,limit=1,sort=random] 50 annihilation:metor_big by @s
execute if score @s anniR.isBuffed matches 0 run execute if score #anniR.global anniR.difficulty matches 2 run damage @e[distance=..3.25,tag=!anniR.immune,tag=!anniR.target,limit=1,sort=random] 50 annihilation:metor_big by @s
execute if score @s anniR.isBuffed matches 0 run execute if score #anniR.global anniR.difficulty matches 2 run damage @e[distance=..3.25,tag=!anniR.immune,tag=!anniR.target,limit=1,sort=random] 50 annihilation:metor_big by @s

#buffed
execute unless score @s anniR.isBuffed matches 0 run execute if score #anniR.global anniR.difficulty matches 0 run damage @e[distance=..3.25,tag=anniR.target,limit=1] 40 annihilation:metor_big by @s
execute unless score @s anniR.isBuffed matches 0 run execute if score #anniR.global anniR.difficulty matches 0 run damage @e[distance=..3.25,tag=!anniR.immune,tag=!anniR.target,limit=1,sort=random] 35 annihilation:metor_big by @s
execute unless score @s anniR.isBuffed matches 0 run execute if score #anniR.global anniR.difficulty matches 0 run damage @e[distance=..3.25,tag=!anniR.immune,tag=!anniR.target,limit=1,sort=random] 35 annihilation:metor_big by @s
execute unless score @s anniR.isBuffed matches 0 run execute if score #anniR.global anniR.difficulty matches 0 run damage @e[distance=..3.25,tag=!anniR.immune,tag=!anniR.target,limit=1,sort=random] 35 annihilation:metor_big by @s

execute unless score @s anniR.isBuffed matches 0 run execute if score #anniR.global anniR.difficulty matches 1 run damage @e[distance=..3.25,tag=anniR.target,limit=1] 50 annihilation:metor_big by @s
execute unless score @s anniR.isBuffed matches 0 run execute if score #anniR.global anniR.difficulty matches 1 run damage @e[distance=..3.25,tag=!anniR.immune,tag=!anniR.target,limit=1,sort=random] 40 annihilation:metor_big by @s
execute unless score @s anniR.isBuffed matches 0 run execute if score #anniR.global anniR.difficulty matches 1 run damage @e[distance=..3.25,tag=!anniR.immune,tag=!anniR.target,limit=1,sort=random] 40 annihilation:metor_big by @s
execute unless score @s anniR.isBuffed matches 0 run execute if score #anniR.global anniR.difficulty matches 1 run damage @e[distance=..3.25,tag=!anniR.immune,tag=!anniR.target,limit=1,sort=random] 40 annihilation:metor_big by @s

execute unless score @s anniR.isBuffed matches 0 run execute if score #anniR.global anniR.difficulty matches 2 run damage @e[distance=..3.25,tag=anniR.target,limit=1] 65 annihilation:metor_big by @s
execute unless score @s anniR.isBuffed matches 0 run execute if score #anniR.global anniR.difficulty matches 2 run damage @e[distance=..3.25,tag=!anniR.immune,tag=!anniR.target,limit=1,sort=random] 60 annihilation:metor_big by @s
execute unless score @s anniR.isBuffed matches 0 run execute if score #anniR.global anniR.difficulty matches 2 run damage @e[distance=..3.25,tag=!anniR.immune,tag=!anniR.target,limit=1,sort=random] 60 annihilation:metor_big by @s
execute unless score @s anniR.isBuffed matches 0 run execute if score #anniR.global anniR.difficulty matches 2 run damage @e[distance=..3.25,tag=!anniR.immune,tag=!anniR.target,limit=1,sort=random] 60 annihilation:metor_big by @s

kill @n[type=armor_stand,tag=anniR.meteor_b,distance=..1]