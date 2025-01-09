scoreboard players set #anniR.global anniR.boss_summoner 1

clear @p[gamemode=!creative,gamemode=!spectator,distance=..8] nether_star[custom_model_data=38920] 1

summon marker ~ ~ ~ {Tags:["anniR.summoning"]}

function annihilation:boss_summoner/anim

#remove summoner
kill @n[type=interaction,tag=anniR.summoner,distance=..4]
kill @n[type=item_display,tag=anniR.item_display,distance=..4]