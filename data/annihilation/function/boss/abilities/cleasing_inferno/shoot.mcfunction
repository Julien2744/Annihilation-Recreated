playsound minecraft:entity.blaze.shoot hostile @a[distance=..50] ~ ~ ~ 3

summon arrow ^ ^ ^6 {Fire:120,damage:0d,Motion:[0.0,0.0,0.0],SoundEvent:"block.fire.ambient",Tags:["anniR.projectile"],life:1180}
summon arrow ^-2.1 ^-0.3 ^5.8 {Fire:120,damage:0d,Motion:[0.0,0.0,0.0],SoundEvent:"block.fire.ambient",Tags:["anniR.projectile"],life:1180}
summon arrow ^1.4 ^ ^6 {Fire:120,damage:0d,Motion:[0.0,0.0,0.0],SoundEvent:"block.fire.ambient",Tags:["anniR.projectile"],life:1180}
summon arrow ^2.3 ^-1.3 ^5.8 {Fire:120,damage:0d,Motion:[0.0,0.0,0.0],SoundEvent:"block.fire.ambient",Tags:["anniR.projectile"],life:1180}
summon arrow ^-1.6 ^0.6 ^6.2 {Fire:120,damage:0d,Motion:[0.0,0.0,0.0],SoundEvent:"block.fire.ambient",Tags:["anniR.projectile"],life:1180}
summon arrow ^-0.5 ^1 ^6.15 {Fire:120,damage:0d,Motion:[0.0,0.0,0.0],SoundEvent:"block.fire.ambient",Tags:["anniR.projectile"],life:1180}
summon arrow ^2.8 ^1.1 ^5.9 {Fire:120,damage:0d,Motion:[0.0,0.0,0.0],SoundEvent:"block.fire.ambient",Tags:["anniR.projectile"],life:1180}
summon arrow ^-2.5 ^1.13 ^6 {Fire:120,damage:0d,Motion:[0.0,0.0,0.0],SoundEvent:"block.fire.ambient",Tags:["anniR.projectile"],life:1180}
summon arrow ^-1.4 ^-1 ^6.3 {Fire:120,damage:0d,Motion:[0.0,0.0,0.0],SoundEvent:"block.fire.ambient",Tags:["anniR.projectile"],life:1180}
summon arrow ^0.6 ^-0.5 ^7 {Fire:120,damage:0d,Motion:[0.0,0.0,0.0],SoundEvent:"block.fire.ambient",Tags:["anniR.projectile"],life:1180}
summon arrow ^-1.05 ^1 ^6.6 {Fire:120,damage:0d,Motion:[0.0,0.0,0.0],SoundEvent:"block.fire.ambient",Tags:["anniR.projectile"],life:1180}

#damage is in annihilation:boss/abilities/cleasing_inferno/apply_motion/

execute if score #anniR.global anniR.team matches 1 run team join annihilation_team @e[type=arrow,tag=anniR.projectile,distance=..16]

#check if annihilation is buffed
execute unless score @n[type=item_display,tag=aj.annihilation_recreated.root,distance=..16] anniR.isBuffed matches 0 run execute as @e[type=arrow,tag=anniR.projectile,distance=..16] run data modify entity @s crit set value 1b
execute unless score @n[type=item_display,tag=aj.annihilation_recreated.root,distance=..16] anniR.isBuffed matches 0 if predicate annihilation:random_50 run scoreboard players remove @n[type=item_display,tag=aj.annihilation_recreated.root,distance=..16] anniR.isBuffed 1

function annihilation:boss/abilities/cleasing_inferno/apply_motion