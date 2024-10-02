execute store result score @s anniR_playerCount run execute if entity @a[distance=..80,gamemode=!creative,gamemode=!spectator,tag=!anni_immune]

#test player count using village
#execute store result score @s anniR_playerCount run execute if entity @e[distance=..80,type=villager]

scoreboard players set @s anniR_struct_spawned 0
scoreboard players add @s anniR_deathCooldown 0
scoreboard players add @s anniR_isBuffed 0
scoreboard players add @s anniR_buffedCount 0
scoreboard players add @s anniR_abilityCooldown 120
#scoreboard players add @s anniR_red_ring_turn 0
#execute as @e[type=item_display,tag=aj.annir_head.root,distance=..12,limit=1] at @s run scoreboard players add @s anniR_stopTracking 0
scoreboard players add @s anniR_health_pour 100
scoreboard players add @s anniR_new_sun 0

scoreboard players add @s math_anni_div 100
scoreboard players add @s math_anni_mem 100