playsound minecraft:entity.blaze.shoot hostile @a[distance=..60] ~ ~ ~ 3 0

execute at @e[tag=anniR.target,tag=!anniR.immune,limit=1,distance=9..128] run summon armor_stand ~ ~18 ~ {NoGravity:0b,Invulnerable:1b,HasVisualFire:1b,Glowing:1b,Invisible:1b,NoBasePlate:1b,Tags:["anniR.immune","anniR.meteor","anniR.meteor_b","anniR.summoned"],Pose:{Head:[180f,0f,0f]},DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:black_glazed_terracotta",count:1b}],HasVisualFire:1b,attributes:[{id:"minecraft:generic.scale",base:3}]}

execute unless score @s anniR.isBuffed matches 0 run scoreboard players remove @s anniR.isBuffed 1

execute if score #anniR.global anniR.team matches 1 run team join annihilation_team @n[type=armor_stand,tag=anniR.immune,tag=anniR.meteor_b,distance=..128]