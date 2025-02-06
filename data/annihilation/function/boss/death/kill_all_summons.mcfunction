execute as @e[type=magma_cube,tag=anniR.immune,tag=anniR.summoned,tag=!new_sun_hitbox,distance=..128] run data modify entity @s Size set value 0
kill @e[type=armor_stand,tag=anniR.meteor,tag=anniR.summoned,distance=..128]
kill @e[type=magma_cube,tag=anniR.immune,tag=anniR.summoned,distance=..128]
kill @e[type=blaze,tag=anniR.immune,tag=anniR.summoned,distance=..128]
kill @e[type=piglin,tag=anniR.immune,tag=anniR.summoned,distance=..128]
kill @e[type=piglin_brute,tag=anniR.immune,tag=anniR.summoned,distance=..128]
kill @e[type=end_crystal,tag=anniR.immune,distance=..128]
kill @e[type=enderman,tag=anniR.immune,tag=anniR.summoned,distance=..128]
kill @e[type=skeleton,tag=anniR.immune,tag=anniR.summoned,distance=..128]
kill @e[type=bat,tag=anniR.immune,tag=eye_plat,tag=anniR.summoned,distance=..128]
kill @e[type=slime,tag=anniR.immune,tag=anniR.summoned,nbt={Size:0},distance=..128]
kill @n[type=item_display,tag=anniR.new_sun_display,tag=anniR.immune,tag=anniR.summoned,distance=..32]

execute as @n[type=minecraft:item_display,tag=aj.annir_apocalyptic_sigil.root,distance=..128] run function animated_java:annir_apocalyptic_sigil/remove/this

execute as @n[type=minecraft:item_display,tag=aj.annir_death_beams.root,distance=..128] run function animated_java:annir_death_beams/remove/this

execute as @n[type=item_display,tag=aj.annir_head.root,distance=..10] run function animated_java:annir_head/remove/this