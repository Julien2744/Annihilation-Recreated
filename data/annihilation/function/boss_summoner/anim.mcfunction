#effect
execute if score #anniR.global anniR.boss_summoner matches 1 run execute as @e[type=marker,tag=anniR.summoning,limit=1] at @s run playsound entity.zombie_villager.cure block @a[distance=..90] ~ ~ ~ 10 0.5
execute if score #anniR.global anniR.boss_summoner matches 1 run execute as @e[type=marker,tag=anniR.summoning,limit=1] at @s run particle minecraft:trial_spawner_detection ~ ~-0.5 ~ 0.25 0.25 0.25 0 15
execute if score #anniR.global anniR.boss_summoner matches 1 run execute as @e[type=marker,tag=anniR.summoning,limit=1] at @s run particle minecraft:ash ~ ~0.5 ~ 0.25 0.25 0.25 0 15
execute unless score #anniR.global anniR.boss_summoner matches 1 run execute as @e[type=marker,tag=anniR.summoning,limit=1] at @s run playsound entity.elder_guardian.curse block @a[distance=..90] ~ ~ ~ 10
execute unless score #anniR.global anniR.boss_summoner matches 1 run execute as @e[type=marker,tag=anniR.summoning,limit=1] at @s positioned ^-5 ^3 ^ rotated ~-90 ~ run function annihilation:boss/effects/sigil_small

scoreboard players add #anniR.global anniR.boss_summoner 1

#anim delay
execute if score #anniR.global anniR.boss_summoner matches 2 run schedule function annihilation:boss_summoner/anim 2s

execute if score #anniR.global anniR.boss_summoner matches 3 run schedule function annihilation:boss_summoner/anim 1.5s

execute if score #anniR.global anniR.boss_summoner matches 4 run schedule function annihilation:boss_summoner/anim 1s

execute if score #anniR.global anniR.boss_summoner matches 5 run execute as @e[type=marker,tag=anniR.summoning,limit=1] at @s positioned ~ ~-1 ~ run function annihilation:boss_summoner/struct_boss_summon