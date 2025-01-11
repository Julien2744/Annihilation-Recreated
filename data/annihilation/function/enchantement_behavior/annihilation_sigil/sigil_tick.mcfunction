#tp and rotation
execute at @e[scores={anniR.player_sigil_buffed=1}] run execute positioned ~ ~1.4 ~ unless entity @n[type=item_display,tag=anniR.player_sigil_buff,distance=..0.05] run tp @s ~ ~ ~

execute positioned ~ ~-1.4 ~ run data modify entity @s Rotation set from entity @n[distance=..1.5,scores={anniR.player_sigil_buffed=1}] Rotation

scoreboard players remove @s anniR.player_sigil_cooldown 1

execute if score @s anniR.player_sigil_cooldown matches ..0 run execute positioned ~ ~-1.4 ~ run function annihilation:enchantement_behavior/annihilation_sigil/sigil_end