#summon beam
function animated_java:annir_death_beams/summon {args: {}}
data merge entity @n[type=item_display,tag=aj.annir_death_beams.bone.skull,distance=..4] {brightness:{sky:15,block:15}}
data merge entity @n[type=item_display,tag=aj.annir_death_beams.bone.big_beam,distance=..4] {brightness:{sky:15,block:15}}
data merge entity @n[type=item_display,tag=aj.annir_death_beams.bone.big_ring,distance=..4] {brightness:{sky:15,block:15}}

#sound
playsound minecraft:entity.warden.roar hostile @a[distance=..64] ~ ~ ~ 12 1
playsound minecraft:entity.ender_dragon.growl hostile @a[distance=..64] ~ ~ ~ 12 0
playsound minecraft:block.lava.extinguish hostile @a[distance=..64] ~ ~ ~ 12 0

#anim
execute as @n[type=item_display,tag=aj.annir_head.root,distance=..10] at @s run function animated_java:annir_head/animations/death_beam_mouth/play
execute as @n[type=item_display,tag=aj.annir_death_beams.root,distance=..4] at @s run function animated_java:annir_death_beams/animations/turn/play
execute as @n[type=item_display,tag=aj.annir_death_beams.root,distance=..4] at @s run function animated_java:annir_death_beams/animations/skull_grow/play

#tp to target
execute positioned as @n[tag=anniR.target,tag=!anniR.immune,distance=..128] rotated 0 0 run tp @n[type=item_display,tag=aj.annir_death_beams.root,distance=..128] ~ ~ ~

#buffed
execute unless score @s anniR.isBuffed matches 0 run scoreboard players remove @s anniR.isBuffed 1
execute unless score @s anniR.isBuffed matches 0 run scoreboard players remove @s anniR.isBuffed 1