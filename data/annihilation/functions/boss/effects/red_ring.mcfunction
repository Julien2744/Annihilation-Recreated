#command here are executed as the ring at the ring

execute if entity @s[tag=follow] unless score @s anniR_as_turn matches 10 run execute positioned as @e[tag=anni_target,distance=..128,limit=1] rotated 0 0 run tp ~ ~ ~

#fix broken state bug
execute unless score @s[tag=follow] anniR_as_turn matches 0.. run function animated_java:annir_apocalpytic_sigil/remove/this

#sound
execute if score @s anniR_as_turn matches 11 if entity @s[tag=attack] run playsound item.trident.thunder hostile @a[distance=..8] ~ ~ ~ 6
execute if entity @s[tag=attack] run scoreboard players reset @s anniR_as_turn

#damage
execute if score @e[type=item_display,tag=aj.annihilation_recreated.root,limit=1,sort=nearest] anniR_isBuffed matches 0 run execute if score #anniR_global anniR_difficulty matches 0 run execute if entity @s[tag=attack] run damage @e[tag=anni_target,distance=..2.5,limit=1] 7.5 annihilation:apocalpytic_sigil by @e[type=magma_cube,nbt={NoAI:1b,Size:16},tag=anni_hitbox,distance=..128,limit=1]

execute if score @e[type=item_display,tag=aj.annihilation_recreated.root,limit=1,sort=nearest] anniR_isBuffed matches 0 run execute if score #anniR_global anniR_difficulty matches 1 run execute if entity @s[tag=attack] run damage @e[tag=anni_target,distance=..2.5,limit=1] 9.5 annihilation:apocalpytic_sigil by @e[type=magma_cube,nbt={NoAI:1b,Size:16},tag=anni_hitbox,distance=..128,limit=1]

execute if score @e[type=item_display,tag=aj.annihilation_recreated.root,limit=1,sort=nearest] anniR_isBuffed matches 0 run execute if score #anniR_global anniR_difficulty matches 2 run execute if entity @s[tag=attack] run damage @e[tag=anni_target,distance=..2.5,limit=1] 10 annihilation:apocalpytic_sigil by @e[type=magma_cube,nbt={NoAI:1b,Size:16},tag=anni_hitbox,distance=..128,limit=1]

#buffed
execute unless score @e[type=item_display,tag=aj.annihilation_recreated.root,limit=1,sort=nearest] anniR_isBuffed matches 0 run execute if score #anniR_global anniR_difficulty matches 0 run execute if entity @s[tag=attack] run damage @e[tag=anni_target,distance=..3,limit=1] 8 annihilation:apocalpytic_sigil by @e[type=magma_cube,nbt={NoAI:1b,Size:16},tag=anni_hitbox,distance=..128,limit=1]

execute unless score @e[type=item_display,tag=aj.annihilation_recreated.root,limit=1,sort=nearest] anniR_isBuffed matches 0 run execute if score #anniR_global anniR_difficulty matches 1 run execute if entity @s[tag=attack] run damage @e[tag=anni_target,distance=..3,limit=1] 10.5 annihilation:apocalpytic_sigil by @e[type=magma_cube,nbt={NoAI:1b,Size:16},tag=anni_hitbox,distance=..128,limit=1]

execute unless score @e[type=item_display,tag=aj.annihilation_recreated.root,limit=1,sort=nearest] anniR_isBuffed matches 0 run execute if score #anniR_global anniR_difficulty matches 2 run execute if entity @s[tag=attack] run damage @e[tag=anni_target,distance=..3,limit=1] 11.75 annihilation:apocalpytic_sigil by @e[type=magma_cube,nbt={NoAI:1b,Size:16},tag=anni_hitbox,distance=..128,limit=1]


execute unless score @e[type=item_display,tag=aj.annihilation_recreated.root,limit=1,sort=nearest] anniR_isBuffed matches 0 run execute if entity @s[tag=attack] run execute unless entity @e[type=lightning_bolt,limit=1,distance=..1,sort=nearest] run summon lightning_bolt