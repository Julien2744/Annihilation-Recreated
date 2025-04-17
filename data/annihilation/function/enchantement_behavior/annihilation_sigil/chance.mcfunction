#yes the command is executes as the player, enven without command/cheat on
#fix bug if player die while having the sigil
execute if entity @s[scores={anniR.player_sigil_buffed=1}] run execute positioned ~ ~1.4 ~ unless entity @n[type=item_display,tag=anniR.player_sigil_buff,distance=..0.05] run scoreboard players reset @s anniR.player_sigil_buffed

#chance
execute unless entity @s[scores={anniR.player_sigil_buffed=1}] run execute if predicate annihilation:random_15 run function annihilation:enchantement_behavior/annihilation_sigil/summon_sigil