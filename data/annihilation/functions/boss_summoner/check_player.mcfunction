execute if score #anniR_global anniR_boss_summoner matches 0 run execute if entity @p[predicate=annihilation:check_netherstar,distance=..8] run function annihilation:boss_summoner/next
execute if score #anniR_global anniR_boss_summoner matches 1..2 run execute if entity @p[predicate=annihilation:check_netherite,distance=..8] run function annihilation:boss_summoner/next

data remove entity @e[type=interaction,tag=anni_summoner,distance=..1,limit=1] interaction