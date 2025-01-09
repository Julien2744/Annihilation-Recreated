#new sun completed
kill @e[type=magma_cube,tag=anniR.new_sun_hitbox,tag=anniR.immune,tag=anniR.summoned,distance=..16]
playsound entity.generic.explode hostile @a[distance=..150] ~ ~ ~ 5 0
particle explosion_emitter ~ ~ ~

#sun instakill
execute if score #anniR.global anniR.newsun_kill matches 1 run kill @e[tag=anniR.target,distance=..150,limit=1,type=!player]
execute if score #anniR.global anniR.newsun_kill matches 1 if score #anniR.global anniR.newsun_grief matches 1 run kill @e[type=!#annihilation:non_mob,distance=..150,tag=!anniR.immune,tag=!anniR.target]
execute if score #anniR.global anniR.newsun_kill matches 1 run kill @a[tag=!anniR.immune,distance=..150,gamemode=!creative,gamemode=!spectator]

#sun don't intakill
#vanilla diff
execute if score #anniR.global anniR.newsun_kill matches 0 if score #anniR.global anniR.difficulty matches 0 run damage @e[tag=anniR.target,distance=..150,limit=1,type=!player] 80 annihilation:new_sun by @n[type=cow,nbt={NoAI:1b,Tags:["anniR.hitbox","anniR.immune"]},distance=..150]
execute if score #anniR.global anniR.newsun_kill matches 0 if score #anniR.global anniR.difficulty matches 0 if score #anniR.global anniR.newsun_grief matches 1 run execute as @e[type=!#annihilation:non_mob,distance=..150,tag=!anniR.immune,tag=!anniR.target] run damage @s 80 annihilation:new_sun by @n[type=cow,nbt={NoAI:1b,Tags:["anniR.hitbox","anniR.immune"]},distance=..150]
execute if score #anniR.global anniR.newsun_kill matches 0 if score #anniR.global anniR.difficulty matches 0 run execute at @a[tag=!anniR.immune,distance=..150,gamemode=!creative,gamemode=!spectator] run damage @p 80 annihilation:new_sun by @n[type=cow,nbt={NoAI:1b,Tags:["anniR.hitbox","anniR.immune"]},distance=..150]
#modded diff
execute if score #anniR.global anniR.newsun_kill matches 0 if score #anniR.global anniR.difficulty matches 1 run damage @e[tag=anniR.target,distance=..150,limit=1,type=!player] 150 annihilation:new_sun by @n[type=cow,nbt={NoAI:1b,Tags:["anniR.hitbox","anniR.immune"]},distance=..150]
execute if score #anniR.global anniR.newsun_kill matches 0 if score #anniR.global anniR.difficulty matches 1 if score #anniR.global anniR.newsun_grief matches 1 run execute as @e[type=!#annihilation:non_mob,distance=..150,tag=!anniR.immune,tag=!anniR.target] run damage @s 150 annihilation:new_sun by @n[type=cow,nbt={NoAI:1b,Tags:["anniR.hitbox","anniR.immune"]},distance=..150]
execute if score #anniR.global anniR.newsun_kill matches 0 if score #anniR.global anniR.difficulty matches 1 run execute at @a[tag=!anniR.immune,distance=..150,gamemode=!creative,gamemode=!spectator] run damage @p 150 annihilation:new_sun by @n[type=cow,nbt={NoAI:1b,Tags:["anniR.hitbox","anniR.immune"]},distance=..150]
#heavy modded diff
execute if score #anniR.global anniR.newsun_kill matches 0 if score #anniR.global anniR.difficulty matches 2 run damage @e[tag=anniR.target,distance=..150,limit=1,type=!player] 225 annihilation:new_sun by @n[type=cow,nbt={NoAI:1b,Tags:["anniR.hitbox","anniR.immune"]},distance=..150]
execute if score #anniR.global anniR.newsun_kill matches 0 if score #anniR.global anniR.difficulty matches 2 if score #anniR.global anniR.newsun_grief matches 1 run execute as @e[type=!#annihilation:non_mob,distance=..150,tag=!anniR.immune,tag=!anniR.target] run damage @s 225 annihilation:new_sun by @n[type=cow,nbt={NoAI:1b,Tags:["anniR.hitbox","anniR.immune"]},distance=..150]
execute if score #anniR.global anniR.newsun_kill matches 0 if score #anniR.global anniR.difficulty matches 2 run execute at @a[tag=!anniR.immune,distance=..150,gamemode=!creative,gamemode=!spectator] run damage @p 225 annihilation:new_sun by @n[type=cow,nbt={NoAI:1b,Tags:["anniR.hitbox","anniR.immune"]},distance=..150]