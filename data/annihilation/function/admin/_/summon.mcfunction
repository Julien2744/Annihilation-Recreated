#root nbt   CustomName:'{"text":"Annihilation","color":"dark_red"}',Tags:["anniR.body","anniR.immune"]

#hitbox
summon cow ~ ~ ~ {NoGravity:1b,Silent:1b,Glowing:0b,CustomNameVisible:0b,DeathLootTable:"minecraft:empty",PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Health:800f,InLove:0,Age:0,Rotation:[-90F,0F],Tags:["anniR.hitbox","anniR.immune","ps-mob","mobvariants.blacklist","in.checked"],CustomName:'{"color":"dark_red","text":"Annihilation"}',HandItems:[{id:"minecraft:wooden_axe",count:1,components:{"minecraft:unbreakable":{}}},{}],HandDropChances:[0.000F,0.085F],active_effects:[{id:"minecraft:fire_resistance",amplifier:1,duration:-1,show_particles:0b},{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b}],attributes:[{id:"minecraft:generic.armor",base:10},{id:"minecraft:generic.armor_toughness",base:2},{id:"minecraft:generic.max_health",base:800},{id:"minecraft:generic.scale",base:10},{id:"generic.burning_time",base:0}]}

#detect if the hitbox has been replaced/missing
execute unless entity @n[type=cow,nbt={NoAI:1b,Tags:["anniR.hitbox","anniR.immune"]},distance=..2] run tellraw @a[distance=..64] [{"color":"red","hoverEvent":{"action":"show_text","value":[{"text":"error message sent by the datapack Annihilation Recreated","color":"gray"}]},"text":"Problem detected"},{"color":"red","text":": Annihilation hitbox has been replaced or is missing !"}]

#model
execute at @n[type=cow,nbt={NoAI:1b,Tags:["anniR.hitbox","anniR.immune"]},distance=..2] rotated -90 0 run function animated_java:annihilation_recreated/summon {args: {}}
execute at @n[type=cow,nbt={NoAI:1b,Tags:["anniR.hitbox","anniR.immune"]},distance=..2] rotated -90 25 run execute positioned ~ ~9.3125 ~ run function animated_java:annir_head/summon {args: {}}
execute at @n[type=cow,nbt={NoAI:1b,Tags:["anniR.hitbox","anniR.immune"]},distance=..2] run function annihilation:boss/looking_head
execute as @n[type=cow,nbt={NoAI:1b,Tags:["anniR.hitbox","anniR.immune"]},distance=..2] run ride @s mount @n[type=item_display,tag=aj.annihilation_recreated.root,distance=..2]
data modify entity @n[type=item_display,tag=aj.annir_head.bone.sigil,distance=..32] view_range set value 0.0f
data merge entity @n[type=item_display,tag=aj.annir_head.bone.sigil,distance=..32] {brightness:{sky:15,block:15}}
data modify entity @n[type=item_display,tag=aj.annihilation_recreated.bone.sigil,distance=..32] view_range set value 0.0f

#itnit boss bar & team
bossbar add annihilation_bossbar {"text":"Annihilation","color":"red"}
bossbar set annihilation_bossbar style progress
bossbar set annihilation_bossbar color red
bossbar set annihilation_bossbar players @a[distance=..128]
execute if score #anniR.global anniR.team matches 1 run team join annihilation_team @e[type=item_display,tag=anniR.immune,distance=..16]
execute if score #anniR.global anniR.team matches 1 run team join annihilation_team @e[type=cow,nbt={NoAI:1b,Tags:["anniR.hitbox","anniR.immune"]},distance=..2,limit=1]

#local scoreboard
execute as @n[type=item_display,tag=aj.annihilation_recreated.root,distance=..2] at @s run function annihilation:boss/init_vars

#change data due to difficulty
execute if score #anniR.global anniR.difficulty matches 1 run data merge entity @n[type=cow,tag=anniR.hitbox,nbt={NoAI:1b},distance=..2] {Health:2500,attributes:[{id:generic.max_health,base:2500},{id:generic.armor,base:15},{id:generic.armor_toughness,base:5}]}
execute if score #anniR.global anniR.difficulty matches 2 run data merge entity @n[type=cow,tag=anniR.hitbox,nbt={NoAI:1b},distance=..2] {Health:8000,attributes:[{id:generic.max_health,base:8000},{id:generic.armor,base:20},{id:generic.armor_toughness,base:7}]}

#change health depending on player
execute if score @e[type=item_display,tag=aj.annihilation_recreated.root,distance=..2,limit=1] anniR.playerCount matches 2.. run execute as @n[type=cow,tag=anniR.hitbox,nbt={NoAI:1b},distance=..2] at @s run function annihilation:boss/health_scale

#initiliaze boss health%
execute store result score @e[type=item_display,tag=aj.annihilation_recreated.root,distance=..2,limit=1] anniR.math.mem run data get entity @n[type=cow,tag=anniR.hitbox,nbt={NoAI:1b},distance=..2] Health
scoreboard players operation @e[type=item_display,tag=aj.annihilation_recreated.root,distance=..2,limit=1] anniR.math.mem /= @e[type=item_display,tag=aj.annihilation_recreated.root,distance=..2,limit=1] anniR.math.div
scoreboard players operation @e[type=item_display,tag=aj.annihilation_recreated.root,distance=..2,limit=1] anniR.math.div = @e[type=item_display,tag=aj.annihilation_recreated.root,distance=..2,limit=1] anniR.math.mem
execute as @n[type=cow,tag=anniR.hitbox,nbt={NoAI:1b},distance=..2] at @s run function annihilation:boss/update_health_pour

#set bossbar
execute store result bossbar annihilation_bossbar max run attribute @n[type=cow,tag=anniR.hitbox,nbt={NoAI:1b},distance=..2] generic.max_health get
execute store result bossbar annihilation_bossbar value run data get entity @n[type=cow,tag=anniR.hitbox,nbt={NoAI:1b},distance=..2] Health

tag @p[tag=!anniR.target,distance=..128,gamemode=!creative,gamemode=!spectator,limit=1] add anniR.target