#summon beam
execute at @n[tag=anniR.target,tag=!anniR.immune,distance=..128] rotated 0 0 run function animated_java:annir_death_beams/summon {args: {}}
data merge entity @n[type=item_display,tag=aj.annir_death_beams.bone,distance=..2,] {brightness:{sky:15,block:15}}
data merge entity @n[type=item_display,tag=aj.annir_death_beams.bone.beam,distance=..2] {brightness:{sky:15,block:15}}
data merge entity @n[type=item_display,tag=aj.annir_death_beams.bone.red_ring,distance=..2] {brightness:{sky:15,block:15}}

#sound
playsound minecraft:entity.warden.roar hostile @a[distance=..64] ~ ~ ~ 12 1
playsound minecraft:entity.ender_dragon.growl hostile @a[distance=..64] ~ ~ ~ 12 0
execute at @n[tag=anniR.target,tag=!anniR.immune,distance=..128] run playsound minecraft:block.lava.extinguish hostile @a[distance=..64] ~ ~ ~ 12 0

#anim
execute as @n[type=item_display,tag=aj.annir_head.root,distance=..10] at @s run function animated_java:annir_head/animations/death_beam_mouth/play
execute as @e[type=item_display,tag=aj.annir_death_beams.root,limit=1,distance=..128] at @s run function animated_java:annir_death_beams/animations/turn/play
execute as @e[type=item_display,tag=aj.annir_death_beams.root,limit=1,distance=..128] at @s run function animated_java:annir_death_beams/animations/skull_grow/play

#buffed
execute unless score @s anniR.isBuffed matches 0 run scoreboard players remove @s anniR.isBuffed 1
execute unless score @s anniR.isBuffed matches 0 run scoreboard players remove @s anniR.isBuffed 1