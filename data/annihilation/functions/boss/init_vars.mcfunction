execute store result score @s anniR_playerCount run execute if entity @a[distance=..64,gamemode=!creative,gamemode=!spectator,tag=!anni_immune]

#test player count using villager
#execute store result score @s anniR_playerCount run execute if entity @e[distance=..64,type=villager]

scoreboard players set @s anniR_struct_spawned 0
scoreboard players add @s anniR_deathCooldown 0
scoreboard players add @s anniR_isBuffed 0
scoreboard players add @s anniR_buffedCount 0
scoreboard players add @s anniR_abilityCooldown 120
scoreboard players add @s anniR_cleasingAnim 0
scoreboard players add @s anniR_health_pour 100
scoreboard players add @s anniR_health 800
scoreboard players add @s anniR_new_sun 0
scoreboard players set @s anniR_despawn 0

scoreboard players add @s math_anni_div 100
scoreboard players add @s math_anni_mem 100

execute store result score #anniR_global anniR_00_loaded run forceload query 0 0