execute if score #anniR.global anniR.boss_summoner matches 0 run execute if entity @p[predicate=annihilation:check_corrupted_star,distance=..8] run function annihilation:boss_summoner/init_play
recipe give @a[distance=..8] annihilation:corrupted_star
data remove entity @s interaction