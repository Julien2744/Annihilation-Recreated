#initialize scoreboard only once
execute unless score #anniR.load anniR.loadScoreboard matches 1 run function annihilation:initialization/init_scoreboard

#try to place the structure
execute unless score #anniR.load anniR.loadStructure matches 1 run function annihilation:initialization/init_structure
execute unless score #anniR.load anniR.structureTimer matches 25 run scoreboard players add #anniR.load anniR.structureTimer 1

#boss summoner check
execute if score #anniR.global anniR.boss_summoner matches 0 run execute as @e[type=interaction,tag=anniR.summoner] at @s if data entity @s interaction run function annihilation:boss_summoner/check_player

## loop boss ai
execute if score #anniR.global anniR.spawned matches 1 run execute as @e[type=item_display,tag=aj.annihilation_recreated.root] at @s run function annihilation:boss/main_ai

#despawn teh boss if there no player (only for structure boss)
execute if score #anniR.global anniR.spawned matches 1 run execute as @e[type=item_display,tag=aj.annihilation_recreated.root,scores={anniR.struct_spawned=1,anniR.playerCount=1..}] at @s run execute unless entity @p[distance=..105] run function annihilation:boss/despawn

#bless of anni sigil enchantment behavior
execute if entity @e[type=item_display,tag=anniR.player_sigil_buff] run execute as @e[type=item_display,tag=anniR.player_sigil_buff] at @s run function annihilation:enchantement_behavior/annihilation_sigil/sigil_tick