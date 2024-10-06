execute positioned 212 -39 -1292 run function annihilation:admin/_/summon

fill 221 -39 -1284 207 -24 -1298 air destroy
setblock 209 -39 -1284 minecraft:light
setblock 207 -39 -1289 minecraft:light
setblock 206 -39 -1296 minecraft:light
setblock 208 -27 -1292 minecraft:light
setblock 214 -39 -1300 minecraft:light
setblock 215 -39 -1295 minecraft:light
setblock 221 -39 -1295 minecraft:light
setblock 217 -39 -1283 minecraft:light
setblock 213 -39 -1288 minecraft:light

execute positioned 212 -39 -1292 run playsound minecraft:entity.warden.emerge hostile @a[distance=..90] ~ ~ ~ 10

execute positioned 212 -39 -1292 run scoreboard players set @e[type=item_display,tag=aj.annihilation_recreated.root,distance=..8,limit=1] anniR_struct_spawned 1

execute positioned 212 -39 -1292 run execute at @e[type=magma_cube,tag=anni_hitbox,limit=1,distance=..2] run function annihilation:boss/anim_head
execute positioned 212 -39 -1292 run execute as @e[type=item_display,tag=aj.annihilation_recreated.root,distance=..8,limit=1] at @s run function animated_java:annihilation_recreated/animations/entrance/play