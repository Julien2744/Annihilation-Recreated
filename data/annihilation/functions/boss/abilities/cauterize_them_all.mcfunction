playsound minecraft:entity.blaze.shoot hostile @a[distance=..60] ~ ~ ~ 3 0

execute at @e[tag=anni_target,tag=!anni_immune,limit=1,distance=9..128] run summon armor_stand ~ ~16 ~2 {NoGravity:0b,Invulnerable:1b,HasVisualFire:1b,Glowing:1b,Invisible:1b,Tags:["anni_immune","anni_meteor_b"],Pose:{Head:[180f,0f,0f]},DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:black_glazed_terracotta",Count:1b}]}
execute at @e[tag=anni_target,tag=!anni_immune,limit=1,distance=9..128] run summon armor_stand ~-1 ~16 ~-2 {NoGravity:0b,Invulnerable:1b,HasVisualFire:1b,Glowing:1b,Invisible:1b,Tags:["anni_immune","anni_meteor_b"],Pose:{Head:[180f,0f,0f]},DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:black_glazed_terracotta",Count:1b}]}
execute at @e[tag=anni_target,tag=!anni_immune,limit=1,distance=9..128] run summon armor_stand ~1 ~16 ~-2 {NoGravity:0b,Invulnerable:1b,HasVisualFire:1b,Glowing:1b,Invisible:1b,Tags:["anni_immune","anni_meteor_b"],Pose:{Head:[180f,0f,0f]},DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:black_glazed_terracotta",Count:1b}]}

execute unless score @e[type=item_display,tag=aj.annihilation_recreated.root,limit=1,sort=nearest] anniR_isBuffed matches 0 run scoreboard players remove @e[type=item_display,tag=aj.annihilation_recreated.root,limit=1,sort=nearest] anniR_isBuffed 1

execute if score #anniR_global anniR_team matches 1 run team join annihilation_team @e[type=armor_stand,tag=anni_immune,tag=anni_meteor_b,distance=..20,limit=3]