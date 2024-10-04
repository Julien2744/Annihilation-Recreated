scoreboard players add @s anniR_new_sun 1

playsound minecraft:entity.ravager.roar hostile @a[distance=..128] ~ ~ ~ 10
playsound minecraft:entity.blaze.shoot hostile @a[distance=..128] ~ ~ ~ 10 0
playsound minecraft:block.respawn_anchor.set_spawn hostile @a[distance=..128] ~ ~ ~ 10

#new sun
summon magma_cube ~ ~ ~ {Glowing:0b,NoGravity:1b,Silent:1b,DeathLootTable:"minecraft:empty",PersistenceRequired:1b,NoAI:1b,Health:40f,Size:1,Tags:["anni_immune","new_sun_hitbox"],ActiveEffects:[{Id:14,Amplifier:1b,Duration:-1,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:40}]}
summon item_display ~ ~ ~ {width:1f,height:1f,Tags:["anni_immune","new_sun"],brightness:{sky:15,block:15},start_interpolation:0,interpolation_duration:0,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:shroomlight",Count:1b}}

#make the target aggro to the new_sun
damage @e[tag=anni_target,limit=1,distance=..128] 0 mob_attack by @e[type=magma_cube,tag=new_sun_hitbox,tag=anni_immune,limit=1,distance=..8,sort=nearest]

scoreboard players add @e[type=item_display,limit=1,tag=new_sun,tag=anni_immune,distance=..16] anniR_newsun_comp 0
scoreboard players add @e[type=item_display,limit=1,tag=new_sun,tag=anni_immune,distance=..16] anniR_newsun_size 0

bossbar add annihilation_newsun_comp {"bold":false,"color":"red","text":"Forming a New Sun..."}
bossbar set annihilation_newsun_comp style progress
bossbar set annihilation_newsun_comp color red
bossbar set annihilation_newsun_comp players @a[distance=..128]
bossbar set annihilation_newsun_comp max 200
bossbar set annihilation_newsun_comp value 0

#infernal subjugate
execute at @e[type=item_display,tag=aj.annihilation_recreated.root,distance=..32,limit=1,sort=nearest] positioned ^-36 ^8 ^27 run function annihilation:boss/summons/infernal_subjugate
execute at @e[type=item_display,tag=aj.annihilation_recreated.root,distance=..32,limit=1,sort=nearest] positioned ^34 ^3 ^27 run function annihilation:boss/summons/infernal_subjugate

execute if score #anniR_global anniR_team matches 1 run team join annihilation_team @e[tag=anni_immune,distance=..128]