#command here are executed as the ring at the ring
execute if entity @s[tag=anniR.follow] unless score @s anniR.as_turn matches 4 run execute positioned as @e[tag=anniR.target,distance=..128,limit=1] rotated 0 0 run tp ~ ~ ~

#fix broken state bug
#execute unless score @s[tag=anniR.follow] anniR.as_turn matches 0.. run function animated_java:annir_apocalyptic_sigil/remove/this

#sound
execute if score @s anniR.as_turn matches 5 if entity @s[tag=anniR.attack] run playsound minecraft:entity.lightning_bolt.thunder hostile @a[distance=..24] ~ ~ ~ 8 2
execute if entity @s[tag=anniR.attack] run scoreboard players reset @s anniR.as_turn

#damage
execute if score @n[type=item_display,tag=aj.annihilation_recreated.root,distance=..128] anniR.isBuffed matches 0 run execute if score #anniR.global anniR.difficulty matches 0 run execute if entity @s[tag=anniR.attack] run execute as @e[type=!#annihilation:non_mob,tag=!anniR.immune,distance=..2] run damage @s 1.25 annihilation:apocalyptic_sigil by @n[type=cow,nbt={NoAI:1b,Tags:["anniR.hitbox","anniR.immune"]},distance=..128]
execute if score @n[type=item_display,tag=aj.annihilation_recreated.root,distance=..128] anniR.isBuffed matches 0 run execute if score #anniR.global anniR.difficulty matches 0 run execute if entity @s[tag=anniR.attack] run damage @r[tag=!anniR.immune,distance=..2,limit=1] 1.25 annihilation:apocalyptic_sigil by @n[type=cow,nbt={NoAI:1b,Tags:["anniR.hitbox","anniR.immune"]},distance=..128]

execute if score @n[type=item_display,tag=aj.annihilation_recreated.root,distance=..128] anniR.isBuffed matches 0 run execute if score #anniR.global anniR.difficulty matches 1 run execute if entity @s[tag=anniR.attack] run execute as @e[type=!#annihilation:non_mob,tag=!anniR.immune,distance=..2] run damage @s 2 annihilation:apocalyptic_sigil by @n[type=cow,nbt={NoAI:1b,Tags:["anniR.hitbox","anniR.immune"]},distance=..128]
execute if score @n[type=item_display,tag=aj.annihilation_recreated.root,distance=..128] anniR.isBuffed matches 0 run execute if score #anniR.global anniR.difficulty matches 1 run execute if entity @s[tag=anniR.attack] run damage @r[tag=!anniR.immune,distance=..2,limit=1] 2 annihilation:apocalyptic_sigil by @n[type=cow,nbt={NoAI:1b,Tags:["anniR.hitbox","anniR.immune"]},distance=..128]

execute if score @n[type=item_display,tag=aj.annihilation_recreated.root,distance=..128] anniR.isBuffed matches 0 run execute if score #anniR.global anniR.difficulty matches 2 run execute if entity @s[tag=anniR.attack] run execute as @e[type=!#annihilation:non_mob,tag=!anniR.immune,distance=..2] run damage @s 3.25 annihilation:apocalyptic_sigil by @n[type=cow,nbt={NoAI:1b,Tags:["anniR.hitbox","anniR.immune"]},distance=..128]
execute if score @n[type=item_display,tag=aj.annihilation_recreated.root,distance=..128] anniR.isBuffed matches 0 run execute if score #anniR.global anniR.difficulty matches 2 run execute if entity @s[tag=anniR.attack] run damage @r[tag=!anniR.immune,distance=..2,limit=1] 3.25 annihilation:apocalyptic_sigil by @n[type=cow,nbt={NoAI:1b,Tags:["anniR.hitbox","anniR.immune"]},distance=..128]

#buffed
execute unless score @n[type=item_display,tag=aj.annihilation_recreated.root,distance=..128] anniR.isBuffed matches 0 run execute if score #anniR.global anniR.difficulty matches 0 run execute if entity @s[tag=anniR.attack] run execute as @e[type=!#annihilation:non_mob,tag=!anniR.immune,distance=..2] run damage @s 1.75 annihilation:apocalyptic_sigil by @n[type=cow,nbt={NoAI:1b,Tags:["anniR.hitbox","anniR.immune"]},distance=..128]
execute unless score @n[type=item_display,tag=aj.annihilation_recreated.root,distance=..128] anniR.isBuffed matches 0 run execute if score #anniR.global anniR.difficulty matches 0 run execute if entity @s[tag=anniR.attack] run damage @r[tag=!anniR.immune,distance=..2,limit=1] 1.75 annihilation:apocalyptic_sigil by @n[type=cow,nbt={NoAI:1b,Tags:["anniR.hitbox","anniR.immune"]},distance=..128]

execute unless score @n[type=item_display,tag=aj.annihilation_recreated.root,distance=..128] anniR.isBuffed matches 0 run execute if score #anniR.global anniR.difficulty matches 1 run execute if entity @s[tag=anniR.attack] run execute as @e[type=!#annihilation:non_mob,tag=!anniR.immune,distance=..2] run damage @s 2.5 annihilation:apocalyptic_sigil by @n[type=cow,nbt={NoAI:1b,Tags:["anniR.hitbox","anniR.immune"]},distance=..128]
execute unless score @n[type=item_display,tag=aj.annihilation_recreated.root,distance=..128] anniR.isBuffed matches 0 run execute if score #anniR.global anniR.difficulty matches 1 run execute if entity @s[tag=anniR.attack] run damage @r[tag=!anniR.immune,distance=..2,limit=1] 2.5 annihilation:apocalyptic_sigil by @n[type=cow,nbt={NoAI:1b,Tags:["anniR.hitbox","anniR.immune"]},distance=..128]

execute unless score @n[type=item_display,tag=aj.annihilation_recreated.root,distance=..128] anniR.isBuffed matches 0 run execute if score #anniR.global anniR.difficulty matches 2 run execute if entity @s[tag=anniR.attack] run execute as @e[type=!#annihilation:non_mob,tag=!anniR.immune,distance=..2] run damage @s 3.75 annihilation:apocalyptic_sigil by @n[type=cow,nbt={NoAI:1b,Tags:["anniR.hitbox","anniR.immune"]},distance=..128]
execute unless score @n[type=item_display,tag=aj.annihilation_recreated.root,distance=..128] anniR.isBuffed matches 0 run execute if score #anniR.global anniR.difficulty matches 2 run execute if entity @s[tag=anniR.attack] run damage @r[tag=!anniR.immune,distance=..2,limit=1] 3.75 annihilation:apocalyptic_sigil by @n[type=cow,nbt={NoAI:1b,Tags:["anniR.hitbox","anniR.immune"]},distance=..128]


execute unless score @n[type=item_display,tag=aj.annihilation_recreated.root,distance=..128] anniR.isBuffed matches 0 run execute if entity @s[tag=anniR.attack] run execute unless entity @n[type=lightning_bolt,distance=..1] run summon lightning_bolt