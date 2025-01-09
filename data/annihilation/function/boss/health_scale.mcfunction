#max scale is of 6 players

#3 players
execute if score @n[type=item_display,tag=aj.annihilation_recreated.root,distance=..2] anniR.playerCount matches 3 run attribute @s generic.max_health modifier add annir.player_count 0.25 add_multiplied_base

#4 players
execute if score @n[type=item_display,tag=aj.annihilation_recreated.root,distance=..2] anniR.playerCount matches 4 run attribute @s generic.max_health modifier add annir.player_count 0.5 add_multiplied_base

#5 players
execute if score @n[type=item_display,tag=aj.annihilation_recreated.root,distance=..2] anniR.playerCount matches 5 run attribute @s generic.max_health modifier add annir.player_count 0.75 add_multiplied_base

#6 players
execute if score @n[type=item_display,tag=aj.annihilation_recreated.root,distance=..2] anniR.playerCount matches 6.. run attribute @s generic.max_health modifier add annir.player_count 1 add_multiplied_base

execute store result entity @s Health double 1 run attribute @s generic.max_health get