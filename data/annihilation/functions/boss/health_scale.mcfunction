#have to change health manually because mutiplyer can't access scoreboard
#max scale is of 6 players

#3 player
execute if score @e[type=item_display,tag=aj.annihilation_recreated.root,distance=..2,limit=1] anniR_playerCount matches 3 run attribute @s generic.max_health modifier add a8194fae-7dec-11d0-a761-10a0c01e6ff0 "player_count" 0.25 multiply

#4 players 
execute if score @e[type=item_display,tag=aj.annihilation_recreated.root,distance=..2,limit=1] anniR_playerCount matches 4 run attribute @s generic.max_health modifier add a8194fae-7dec-11d0-a761-10a0c01e6ff0 "player_count" 0.5 multiply

#5 players
execute if score @e[type=item_display,tag=aj.annihilation_recreated.root,distance=..2,limit=1] anniR_playerCount matches 5 run attribute @s generic.max_health modifier add a8194fae-7dec-11d0-a761-10a0c01e6ff0 "player_count" 0.75 multiply

#6 players
execute if score @e[type=item_display,tag=aj.annihilation_recreated.root,distance=..2,limit=1] anniR_playerCount matches 6 run attribute @s generic.max_health modifier add a8194fae-7dec-11d0-a761-10a0c01e6ff0 "player_count" 1 multiply

execute store result entity @s Health double 1 run attribute @s generic.max_health get
