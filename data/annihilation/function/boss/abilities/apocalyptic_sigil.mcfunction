function animated_java:annir_apocalyptic_sigil/summon {args: {}}
data merge entity @n[type=item_display,tag=aj.annir_apocalyptic_sigil.bone,distance=..2,] {brightness:{sky:15,block:15}}
data merge entity @n[type=item_display,tag=aj.annir_apocalyptic_sigil.bone.beam,distance=..2] {brightness:{sky:15,block:15}}
data merge entity @n[type=item_display,tag=aj.annir_apocalyptic_sigil.bone.red_ring,distance=..2] {brightness:{sky:15,block:15}}

playsound minecraft:entity.evoker.cast_spell hostile @a[distance=..50] ~ ~ ~ 3

execute as @e[type=item_display,tag=aj.annir_apocalyptic_sigil.root,limit=1,distance=..128] at @s run function animated_java:annir_apocalyptic_sigil/animations/turn/play

execute unless score @s anniR.isBuffed matches 0 run scoreboard players remove @s anniR.isBuffed 1