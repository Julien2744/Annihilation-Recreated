#make sure that the sigil is near the player when the effect wear of
execute at @e[scores={anniR.player_sigil_buffed=1}] run execute positioned ~ ~1.4 ~ unless entity @n[type=item_display,tag=anniR.player_sigil_buff,distance=..0.05] run tp @s ~ ~ ~

attribute @n[distance=..1.5,scores={anniR.player_sigil_buffed=1}] generic.attack_damage modifier remove annir.sigil_buff
attribute @n[distance=..1.5,scores={anniR.player_sigil_buffed=1}] generic.attack_speed modifier remove annir.sigil_buff
attribute @n[distance=..1.5,scores={anniR.player_sigil_buffed=1}] generic.movement_speed modifier remove annir.sigil_buff

scoreboard players reset @n[distance=..1.5,scores={anniR.player_sigil_buffed=1}] anniR.player_sigil_buffed

playsound block.fire.extinguish player @a[distance=..32] ~ ~ ~ 4

kill @s