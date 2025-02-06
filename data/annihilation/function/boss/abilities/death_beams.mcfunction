#summon beam
function animated_java:annir_death_beams/summon {args: {}}
data merge entity @n[type=item_display,tag=aj.annir_death_beams.bone.skull,distance=..4] {brightness:{sky:15,block:15}}
data merge entity @n[type=item_display,tag=aj.annir_death_beams.bone.big_beam,distance=..4] {brightness:{sky:15,block:15}}
data merge entity @n[type=item_display,tag=aj.annir_death_beams.bone.big_ring,distance=..4] {brightness:{sky:15,block:15}}

execute as @n[type=item_display,tag=aj.annir_death_beams.root,distance=..4] at @s run function animated_java:annir_death_beams/animations/turn/play
execute as @n[type=item_display,tag=aj.annir_death_beams.root,distance=..4] at @s run function animated_java:annir_death_beams/animations/skull_grow/play

#tp to target
execute as @n[type=item_display,tag=aj.annir_death_beams.root,distance=..128] run execute positioned as @n[tag=anniR.target,tag=!anniR.immune,distance=..128] run tp @s ~ ~ ~ 0 0

#buffed
execute unless score @s anniR.isBuffed matches 0 run scoreboard players remove @s anniR.isBuffed 1
execute unless score @s anniR.isBuffed matches 0 run scoreboard players remove @s anniR.isBuffed 1