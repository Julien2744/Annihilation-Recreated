execute store result score @s anniR.playerCount run execute if entity @a[distance=..64,gamemode=!creative,gamemode=!spectator,tag=!anniR.immune]

#test player count using villager
#execute store result score @s anniR.playerCount run execute if entity @e[distance=..64,type=villager]

scoreboard players set @s anniR.struct_spawned 0
scoreboard players add @s anniR.death 0
scoreboard players add @s anniR.isBuffed 0
scoreboard players add @s anniR.buffedCount 0
scoreboard players add @s anniR.abilityID 0
scoreboard players add @s anniR.abilityCooldown 135
scoreboard players add @s anniR.cleasingAnim 0
scoreboard players add @s anniR.health_pour 100
scoreboard players add @s anniR.health 800
scoreboard players add @s anniR.new_sun 0
scoreboard players set @s anniR.despawn 0

scoreboard players add @s anniR.math.div 100
scoreboard players add @s anniR.math.mem 100

execute store result score #anniR.global anniR.00_loaded run forceload query 0 0
scoreboard players set #anniR.global anniR.spawned 1