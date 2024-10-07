#root nbt   CustomName:'{"text":"Annihilation","color":"dark_red"}',Tags:["anni_body","anni_immune"]

#hitbox
summon magma_cube ~ ~ ~ {NoGravity:1b,Silent:1b,CustomNameVisible:0b,DeathLootTable:"minecraft:empty",PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Health:800f,Size:16,Tags:["anni_hitbox","anni_immune"],CustomName:'{"text":"Annihilation","color":"dark_red"}',ActiveEffects:[{Id:12,Amplifier:5b,Duration:-1,ShowParticles:0b},{Id:14,Amplifier:1b,Duration:-1,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:800},{Name:generic.armor,Base:10}],HandItems:[{id:"minecraft:wooden_axe",Count:1b,tag:{Unbreakable:1b}},{}],HandDropChances:[0.000F,0.085F]}

#model
execute at @e[type=magma_cube,tag=anni_hitbox,limit=1,distance=..2] rotated -90 0 run function animated_java:annihilation_recreated/summon
execute at @e[type=magma_cube,tag=anni_hitbox,limit=1,distance=..2] rotated -90 0 run execute positioned ~ ~9.3125 ~ run function animated_java:annir_head/summon
execute at @e[type=magma_cube,tag=anni_hitbox,limit=1,distance=..2] run function annihilation:boss/looking_head
data modify entity @e[type=item_display,tag=aj.annir_head.bone.sigil,limit=1,distance=..32,sort=nearest] item.id set value "minecraft:air"
data merge entity @e[type=item_display,tag=aj.annir_head.bone.sigil,limit=1,distance=..32,sort=nearest] {brightness:{sky:15,block:15}}
data modify entity @e[type=item_display,tag=aj.annihilation_recreated.bone.sigil,limit=1,distance=..32,sort=nearest] item.id set value "minecraft:air"

#local scoreboard
execute as @e[type=item_display,tag=aj.annihilation_recreated.root,distance=..2,limit=1] at @s run function annihilation:boss/init_vars

#change data due to difficulty
execute if score #anniR_global anniR_difficulty matches 1 run execute at @s run data merge entity @e[type=magma_cube,tag=anni_hitbox,nbt={NoAI:1b},limit=1,sort=nearest,distance=..2] {Health:2500,Attributes:[{Name:generic.max_health,Base:2500},{Name:generic.armor,Base:15}]}
execute if score #anniR_global anniR_difficulty matches 2 run execute at @s run data merge entity @e[type=magma_cube,tag=anni_hitbox,nbt={NoAI:1b},limit=1,sort=nearest,distance=..2] {Health:8000,Attributes:[{Name:generic.max_health,Base:8000},{Name:generic.armor,Base:20}]}

#change health depanding of the number of player
execute if score @e[type=item_display,tag=aj.annihilation_recreated.root,distance=..2,limit=1] anniR_playerCount matches 2.. run execute as @e[type=magma_cube,tag=anni_hitbox,limit=1,distance=..2] at @s run function annihilation:boss/health_scale

#initiliaze boss health%
execute store result score @e[type=item_display,tag=aj.annihilation_recreated.root,distance=..2,limit=1] math_anni_mem run data get entity @e[type=magma_cube,nbt={NoAI:1b,Size:16},distance=..2,limit=1,sort=nearest] Health
scoreboard players operation @e[type=item_display,tag=aj.annihilation_recreated.root,distance=..2,limit=1] math_anni_mem /= @e[type=item_display,tag=aj.annihilation_recreated.root,distance=..2,limit=1] math_anni_div
scoreboard players operation @e[type=item_display,tag=aj.annihilation_recreated.root,distance=..2,limit=1] math_anni_div = @e[type=item_display,tag=aj.annihilation_recreated.root,distance=..2,limit=1] math_anni_mem
execute as @e[type=magma_cube,tag=anni_hitbox,limit=1,distance=..2] at @s run function annihilation:boss/update_health_pour

#set bossbar
bossbar add annihilation_bossbar {"bold":false,"color":"dark_red","text":"Annihilation"}
bossbar set annihilation_bossbar style progress
bossbar set annihilation_bossbar color red
bossbar set annihilation_bossbar players @a[distance=..128]
execute store result bossbar annihilation_bossbar max run attribute @e[type=magma_cube,tag=anni_hitbox,nbt={NoAI:1b},limit=1,distance=..2] generic.max_health get
execute store result bossbar annihilation_bossbar value run data get entity @e[type=magma_cube,tag=anni_hitbox,nbt={NoAI:1b},limit=1,distance=..2] Health

#msuic
execute if score #anniR_global anniR_music matches 1 run execute at @e[type=item_display,tag=aj.annihilation_recreated.root,limit=1,distance=..2,sort=nearest] run function annihilation:boss/play_music

#team
execute if score #anniR_global anniR_team matches 1 run team join annihilation_team @e[type=item_display,tag=anni_immune,distance=..16]
execute if score #anniR_global anniR_team matches 1 run team join annihilation_team @e[type=magma_cube,tag=anni_immune,tag=anni_hitbox,distance=..2,limit=1]

tag @p[tag=!anni_target,distance=..128,gamemode=!creative,gamemode=!spectator,limit=1] add anni_target

