#new sun completed
data modify entity @e[type=magma_cube,limit=1,tag=new_sun_hitbox,tag=anni_immune,distance=..16] Size set value 0
kill @e[type=magma_cube,tag=new_sun_hitbox,tag=anni_immune,distance=..16]
playsound entity.generic.explode hostile @a[distance=..128] ~ ~ ~ 5 0
particle explosion_emitter ~ ~ ~

#sun instakill
execute if score #anniR_global anniR_newsun_kill matches 1 run kill @e[tag=anni_target,distance=..128,limit=1,type=!player]
execute if score #anniR_global anniR_newsun_kill matches 1 run kill @a[tag=!anni_immune,distance=..128,gamemode=!creative,gamemode=!spectator]

#sun don't intakill
#vanilla diff
execute if score #anniR_global anniR_newsun_kill matches 0 if score #anniR_global anniR_difficulty matches 0 run damage @e[tag=anni_target,distance=..128,limit=1,type=!player] 80 minecraft:explosion by @e[type=magma_cube,nbt={NoAI:1b,Size:16},tag=anni_hitbox,tag=anni_immune,distance=..90,limit=1,sort=nearest]
execute if score #anniR_global anniR_newsun_kill matches 0 if score #anniR_global anniR_difficulty matches 0 run execute at @a[tag=!anni_immune] run damage @p 80 minecraft:explosion by @e[type=magma_cube,nbt={NoAI:1b,Size:16},tag=anni_hitbox,tag=anni_immune,distance=..90,limit=1,sort=nearest]
#modded diff
execute if score #anniR_global anniR_newsun_kill matches 0 if score #anniR_global anniR_difficulty matches 1 run damage @e[tag=anni_target,distance=..128,limit=1,type=!player] 150 minecraft:explosion by @e[type=magma_cube,nbt={NoAI:1b,Size:16},tag=anni_hitbox,tag=anni_immune,distance=..90,limit=1,sort=nearest]
execute if score #anniR_global anniR_newsun_kill matches 0 if score #anniR_global anniR_difficulty matches 1 run execute at @a[tag=!anni_immune] run damage @p 150 minecraft:explosion by @e[type=magma_cube,nbt={NoAI:1b,Size:16},tag=anni_hitbox,tag=anni_immune,distance=..90,limit=1,sort=nearest]
#heavy modded diff
execute if score #anniR_global anniR_newsun_kill matches 0 if score #anniR_global anniR_difficulty matches 2 run damage @e[tag=anni_target,distance=..128,limit=1,type=!player] 225 minecraft:explosion by @e[type=magma_cube,nbt={NoAI:1b,Size:16},tag=anni_hitbox,tag=anni_immune,distance=..90,limit=1,sort=nearest]
execute if score #anniR_global anniR_newsun_kill matches 0 if score #anniR_global anniR_difficulty matches 2 run execute at @a[tag=!anni_immune] run damage @p 225 minecraft:explosion by @e[type=magma_cube,nbt={NoAI:1b,Size:16},tag=anni_hitbox,tag=anni_immune,distance=..90,limit=1,sort=nearest]