playsound minecraft:entity.ravager.roar hostile @a[distance=..24] ~ ~ ~ 2
execute at @e[tag=anniR.target,tag=!anniR.immune,limit=1,distance=..16] rotated as @s run summon creeper ^ ^2 ^-0.5 {Tags:["anniR.exhort_launch"],NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,ExplosionRadius:-1b,Fuse:0,ignited:1b,attributes:[{id:"minecraft:generic.scale",base:0}]}

#effect
execute at @e[tag=anniR.target,tag=!anniR.immune,limit=1,distance=..16] run particle gust_emitter_large ~ ~ ~
effect give @e[tag=anniR.target,tag=!anniR.immune,limit=1,distance=..16] hunger 3 10

#damage
execute if score @s anniR.isBuffed matches 0 run execute if score #anniR.global anniR.difficulty matches 0 run damage @e[tag=anniR.target,tag=!anniR.immune,limit=1,distance=..8] 1 annihilation:exhort by @n[type=cow,nbt={NoAI:1b,Tags:["anniR.hitbox","anniR.immune"]},distance=..20]

execute if score @s anniR.isBuffed matches 0 run execute if score #anniR.global anniR.difficulty matches 1 run damage @e[tag=anniR.target,tag=!anniR.immune,limit=1,distance=..8] 2 annihilation:exhort by @n[type=cow,nbt={NoAI:1b,Tags:["anniR.hitbox","anniR.immune"]},distance=..20]

execute if score @s anniR.isBuffed matches 0 run execute if score #anniR.global anniR.difficulty matches 2 run damage @e[tag=anniR.target,tag=!anniR.immune,limit=1,distance=..8] 4 annihilation:exhort by @n[type=cow,nbt={NoAI:1b,Tags:["anniR.hitbox","anniR.immune"]},distance=..20]


#buffed
execute unless score @s anniR.isBuffed matches 1 run execute if score #anniR.global anniR.difficulty matches 0 run damage @e[tag=anniR.target,tag=!anniR.immune,limit=1,distance=..8] 2.5 annihilation:exhort by @n[type=cow,nbt={NoAI:1b,Tags:["anniR.hitbox","anniR.immune"]},distance=..20]

execute unless score @s anniR.isBuffed matches 1 run execute if score #anniR.global anniR.difficulty matches 1 run damage @e[tag=anniR.target,tag=!anniR.immune,limit=1,distance=..8] 2.5 annihilation:exhort by @n[type=cow,nbt={NoAI:1b,Tags:["anniR.hitbox","anniR.immune"]},distance=..20]

execute unless score @s anniR.isBuffed matches 1 run execute if score #anniR.global anniR.difficulty matches 2 run damage @e[tag=anniR.target,tag=!anniR.immune,limit=1,distance=..8] 4.5 annihilation:exhort by @n[type=cow,nbt={NoAI:1b,Tags:["anniR.hitbox","anniR.immune"]},distance=..20]


execute unless score @s anniR.isBuffed matches 0 run scoreboard players remove @s anniR.isBuffed 1