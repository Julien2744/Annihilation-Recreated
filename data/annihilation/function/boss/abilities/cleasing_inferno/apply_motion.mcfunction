execute rotated as @s positioned 0 0 0 align xyz run summon minecraft:armor_stand ^ ^ ^1 {Invulnerable:1b,NoGravity:1b,Tags:["anniR.aim"]}

execute as @e[type=arrow,tag=anniR.projectile,distance=..16,nbt={Fire:120s}] positioned 0 0 0 store result score @s anniR.motX run data get entity @e[type=armor_stand,tag=anniR.aim,limit=1,distance=..2] Pos[0] 1000
execute as @e[type=arrow,tag=anniR.projectile,distance=..16,nbt={Fire:120s}] positioned 0 0 0 store result score @s anniR.motY run data get entity @e[type=armor_stand,tag=anniR.aim,limit=1,distance=..2] Pos[1] 1000
execute as @e[type=arrow,tag=anniR.projectile,distance=..16,nbt={Fire:120s}] positioned 0 0 0 store result score @s anniR.motZ run data get entity @e[type=armor_stand,tag=anniR.aim,limit=1,distance=..2] Pos[2] 1000

execute positioned 0 0 0 run kill @e[type=armor_stand,tag=anniR.aim,distance=..2]

#short
execute if entity @e[tag=anniR.target,tag=!anniR.immune,limit=1,distance=6.5..18] run execute as @e[type=arrow,tag=anniR.projectile,distance=..16,nbt={Fire:120s}] run function annihilation:boss/abilities/cleasing_inferno/motion/short

#brige
execute if entity @e[tag=anniR.target,tag=!anniR.immune,limit=1,distance=22..38] run execute as @e[type=arrow,tag=anniR.projectile,distance=..16,nbt={Fire:120s}] run function annihilation:boss/abilities/cleasing_inferno/motion/bridge

#long
execute if entity @e[tag=anniR.target,tag=!anniR.immune,limit=1,distance=56..80] run execute as @e[type=arrow,tag=anniR.projectile,distance=..16,nbt={Fire:120s}] run function annihilation:boss/abilities/cleasing_inferno/motion/long

#player escape the zone
execute if entity @e[type=arrow,tag=anniR.projectile,distance=..16,nbt={Fire:120s,Motion:[0.0d,0.0d,0.0d]}] run execute as @e[type=arrow,tag=anniR.projectile,distance=..16,nbt={Fire:120s}] store result entity @s Motion[0] double 0.0012 run scoreboard players get @s anniR.motX
execute if entity @e[type=arrow,tag=anniR.projectile,distance=..16,nbt={Fire:120s,Motion:[0.0d,0.0d,0.0d]}] run execute as @e[type=arrow,tag=anniR.projectile,distance=..16,nbt={Fire:120s}] store result entity @s Motion[1] double 0.0002 run scoreboard players get @s anniR.motY
execute if entity @e[type=arrow,tag=anniR.projectile,distance=..16,nbt={Fire:120s,Motion:[0.0d,0.0d,0.0d]}] run execute as @e[type=arrow,tag=anniR.projectile,distance=..16,nbt={Fire:120s}] store result entity @s Motion[2] double 0.0012 run scoreboard players get @s anniR.motZ