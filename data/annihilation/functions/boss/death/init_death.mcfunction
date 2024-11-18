scoreboard players set @s anniR_death 1
execute if entity @a[distance=..64,advancements={annihilation:nether/kill_annihilation = true}] run advancement grant @a[distance=..64] only annihilation:nether/kill_annihilation

function annihilation:boss/death/stop_all_anim
function annihilation:boss/anim_head

playsound minecraft:entity.ravager.death hostile @a[distance=..90] ~ ~ ~ 10
playsound minecraft:entity.warden.roar hostile @a[distance=..90] ~ ~ ~ 10 0

#kill all summons
schedule function annihilation:boss/death/remove_slime_duplicate 1.75s
kill @e[type=armor_stand,tag=anni_meteor_s,tag=anni_summoned,distance=..128]
kill @e[type=armor_stand,tag=anni_meteor_b,tag=anni_summoned,distance=..128]
execute as @e[type=magma_cube,tag=!anni_hitbox,tag=anni_immune,tag=anni_summoned,tag=!new_sun_hitbox,distance=..128] run data modify entity @s Size set value 0
kill @e[type=magma_cube,tag=!anni_hitbox,tag=anni_immune,tag=anni_summoned,tag=!new_sun_hitbox,distance=..128]
kill @e[type=blaze,tag=anni_immune,tag=anni_summoned,distance=..128]
kill @e[type=piglin,tag=anni_immune,tag=anni_summoned,distance=..128]
kill @e[type=piglin_brute,tag=anni_immune,tag=anni_summoned,distance=..128]
kill @e[type=end_crystal,tag=anni_immune,distance=..128]
kill @e[type=enderman,tag=anni_immune,tag=anni_summoned,distance=..128]
kill @e[type=skeleton,tag=anni_immune,tag=anni_summoned,distance=..128]
kill @e[type=bat,tag=anni_immune,tag=eye_plat,tag=anni_summoned,distance=..128]
kill @e[type=slime,tag=!anni_hitbox,tag=anni_immune,tag=anni_summoned,nbt={Size:0},distance=..128]
kill @e[type=item_display,limit=1,tag=new_sun,tag=anni_immune,tag=anni_summoned,distance=..32,sort=nearest]
data modify entity @e[type=magma_cube,tag=!anni_hitbox,tag=anni_immune,tag=new_sun_hitbox,tag=anni_summoned,distance=..32,limit=1,sort=nearest] Size set value 0
kill @e[type=magma_cube,tag=!anni_hitbox,tag=anni_immune,tag=new_sun_hitbox,tag=anni_summoned,distance=..32,sort=nearest,limit=1]

execute as @e[type=minecraft:item_display,tag=aj.annir_apocalpytic_sigil.root,distance=..128,limit=1,sort=nearest] run function animated_java:annir_apocalpytic_sigil/remove/this

execute as @e[type=item_display,tag=aj.annir_head.root,limit=1,distance=..10,sort=nearest] run function animated_java:annir_head/remove/this
function animated_java:annihilation_recreated/animations/death/play