playsound minecraft:entity.blaze.shoot hostile @a[distance=..60] ~ ~ ~ 3 0

#summon
execute as @n[type=item_display,tag=aj.annir_head.root,distance=..10] at @s run summon armor_stand ^-5 ^8 ^8 {NoGravity:1b,Invulnerable:1b,HasVisualFire:1b,Glowing:0b,Invisible:1b,Tags:["anniR.immune","anniR.meteor","anniR.meteor_s","anniR.summoned"],Pose:{Head:[180f,0f,0f]},DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:magma_block",count:1b}]}
execute as @n[type=item_display,tag=aj.annir_head.root,distance=..10,] at @s run summon armor_stand ^-2.5 ^8 ^8 {NoGravity:1b,Invulnerable:1b,HasVisualFire:1b,Glowing:0b,Invisible:1b,Tags:["anniR.immune","anniR.meteor","anniR.meteor_s","anniR.summoned"],Pose:{Head:[180f,0f,0f]},DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:magma_block",count:1b}]}
execute as @n[type=item_display,tag=aj.annir_head.root,distance=..10] at @s run summon armor_stand ^ ^8 ^8 {NoGravity:1b,Invulnerable:1b,HasVisualFire:1b,Glowing:0b,Invisible:1b,Tags:["anniR.immune","anniR.meteor","anniR.meteor_s","anniR.summoned"],Pose:{Head:[180f,0f,0f]},DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:magma_block",count:1b}]}
execute as @n[type=item_display,tag=aj.annir_head.root,distance=..10] at @s run summon armor_stand ^2.5 ^8 ^8 {NoGravity:1b,Invulnerable:1b,HasVisualFire:1b,Glowing:0b,Invisible:1b,Tags:["anniR.immune","anniR.meteor","anniR.meteor_s","anniR.summoned"],Pose:{Head:[180f,0f,0f]},DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:magma_block",count:1b}]}
execute as @n[type=item_display,tag=aj.annir_head.root,distance=..10] at @s run summon armor_stand ^5 ^8 ^8 {NoGravity:1b,Invulnerable:1b,HasVisualFire:1b,Glowing:0b,Invisible:1b,Tags:["anniR.immune","anniR.meteor","anniR.meteor_s","anniR.summoned"],Pose:{Head:[180f,0f,0f]},DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:magma_block",count:1b}]}

#facing
execute as @n[type=item_display,tag=aj.annir_head.root,distance=..10] at @s run summon armor_stand ^ ^8 ^8 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["anniR.meteor","anniR.meteor_s_look","anniR.summoned"]}
execute as @e[type=armor_stand,tag=anniR.meteor_s_look,tag=anniR.summoned,distance=..32,limit=1] at @s run tp @s ~ ~ ~ facing entity @e[tag=anniR.target,distance=..128,limit=1]

execute as @e[type=armor_stand,tag=anniR.meteor_s,tag=anniR.summoned,distance=..32,limit=5] run execute store result entity @s Rotation[0] float 1 run data get entity @e[type=armor_stand,tag=anniR.meteor_s_look,tag=anniR.summoned,distance=..32,limit=1] Rotation[0]
execute as @e[type=armor_stand,tag=anniR.meteor_s,tag=anniR.summoned,distance=..32,limit=5] run execute store result entity @s Rotation[1] float 1 run data get entity @e[type=armor_stand,tag=anniR.meteor_s_look,tag=anniR.summoned,distance=..32,limit=1] Rotation[1]

kill @e[type=armor_stand,tag=anniR.meteor_s_look,tag=anniR.summoned,distance=..32,limit=1]

#buff
execute unless score @s anniR.isBuffed matches 0 if predicate annihilation:random_50 run scoreboard players remove @s anniR.isBuffed 1

execute if score #anniR.global anniR.team matches 1 run team join annihilation_team @e[type=armor_stand,tag=anniR.immune,tag=anniR.meteor_s,distance=..32,limit=5]