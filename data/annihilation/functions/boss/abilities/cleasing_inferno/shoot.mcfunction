playsound minecraft:entity.blaze.shoot hostile @a[distance=..50] ~ ~ ~ 3

summon arrow ^ ^ ^5 {Fire:120,damage:5d,Motion:[0.0,0.0,0.0],SoundEvent:"block.fire.ambient",Tags:["anni_projectile"],life:1150}
summon arrow ^-1.25 ^-2 ^6 {Fire:120,damage:5d,Motion:[0.0,0.0,0.0],SoundEvent:"block.fire.ambient",Tags:["anni_projectile"],life:1150}
summon arrow ^2.3 ^ ^5 {Fire:120,damage:5d,Motion:[0.0,0.0,0.0],SoundEvent:"block.fire.ambient",Tags:["anni_projectile"],life:1150}
summon arrow ^1 ^2.3 ^5 {Fire:120,damage:5d,Motion:[0.0,0.0,0.0],SoundEvent:"block.fire.ambient",Tags:["anni_projectile"],life:1150}
summon arrow ^2 ^3 ^2 {Fire:120,damage:5d,Motion:[0.0,0.0,0.0],SoundEvent:"block.fire.ambient",Tags:["anni_projectile"],life:1150}
summon arrow ^1.5 ^2 ^6 {Fire:120,damage:5d,Motion:[0.0,0.0,0.0],SoundEvent:"block.fire.ambient",Tags:["anni_projectile"],life:1150}
summon arrow ^1 ^3 ^5 {Fire:120,damage:5d,Motion:[0.0,0.0,0.0],SoundEvent:"block.fire.ambient",Tags:["anni_projectile"],life:1150}
summon arrow ^-1 ^2 ^6 {Fire:120,damage:5d,Motion:[0.0,0.0,0.0],SoundEvent:"block.fire.ambient",Tags:["anni_projectile"],life:1150}
summon arrow ^-2 ^1 ^6 {Fire:120,damage:5d,Motion:[0.0,0.0,0.0],SoundEvent:"block.fire.ambient",Tags:["anni_projectile"],life:1150}
summon arrow ^2 ^-1 ^5 {Fire:120,damage:5d,Motion:[0.0,0.0,0.0],SoundEvent:"block.fire.ambient",Tags:["anni_projectile"],life:1150}
summon arrow ^2 ^3 ^5 {Fire:120,damage:5d,Motion:[0.0,0.0,0.0],SoundEvent:"block.fire.ambient",Tags:["anni_projectile"],life:1150}

execute if score #anniR_global anniR_difficulty matches 1 run execute as @e[type=arrow,tag=anni_projectile,distance=..16] run data modify entity @s damage set value 12
execute if score #anniR_global anniR_difficulty matches 2 run execute as @e[type=arrow,tag=anni_projectile,distance=..16] run data modify entity @s damage set value 24

execute if score #anniR_global anniR_team matches 1 run team join annihilation_team @e[type=arrow,tag=anni_projectile,distance=..16]

#check if annihilation is buffed
execute unless score @e[type=item_display,tag=aj.annihilation_recreated.root,limit=1,sort=nearest] anniR_isBuffed matches 0 run execute as @e[type=arrow,tag=anni_projectile,distance=..16] run data modify entity @s damage set value 10
execute unless score @e[type=item_display,tag=aj.annihilation_recreated.root,limit=1,sort=nearest] anniR_isBuffed matches 0 if predicate annihilation:random_50 run scoreboard players remove @e[type=item_display,tag=aj.annihilation_recreated.root,limit=1,sort=nearest] anniR_isBuffed 1

function annihilation:boss/abilities/cleasing_inferno/apply_motion

