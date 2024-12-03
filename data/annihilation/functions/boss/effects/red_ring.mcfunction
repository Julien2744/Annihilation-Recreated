#command here are executed as the ring at the ring

execute if entity @s[tag=follow] unless score @s anniR_as_turn matches 4 run execute positioned as @e[tag=anni_target,distance=..128,limit=1] rotated 0 0 run tp ~ ~ ~

#fix broken state bug
execute unless score @s[tag=follow] anniR_as_turn matches 0.. run function animated_java:annir_apocalpytic_sigil/remove/this

#auto target
execute if score @s anniR_as_turn matches 5 if entity @s[tag=attack] run execute as @e[type=!player,tag=!anni_immune,distance=..2] run damage @s 0 mob_attack by @e[type=magma_cube,nbt={NoAI:1b,Size:16},tag=anni_hitbox,distance=..128,limit=1,sort=nearest]

#sound
execute if score @s anniR_as_turn matches 5 if entity @s[tag=attack] run playsound minecraft:entity.lightning_bolt.thunder hostile @a[distance=..24] ~ ~ ~ 8 2
execute if entity @s[tag=attack] run scoreboard players reset @s anniR_as_turn

#damage
execute if score @e[type=item_display,tag=aj.annihilation_recreated.root,limit=1,sort=nearest] anniR_isBuffed matches 0 run execute if score #anniR_global anniR_difficulty matches 0 run execute if entity @s[tag=attack] run execute as @e[type=!#annihilation:non_mob,tag=!anni_immune,distance=..2] run damage @s 2.5 annihilation:apocalpytic_sigil
execute if score @e[type=item_display,tag=aj.annihilation_recreated.root,limit=1,sort=nearest] anniR_isBuffed matches 0 run execute if score #anniR_global anniR_difficulty matches 0 run execute if entity @s[tag=attack] run damage @r[tag=!anni_immune,distance=..2,limit=1] 2.5 annihilation:apocalpytic_sigil

execute if score @e[type=item_display,tag=aj.annihilation_recreated.root,limit=1,sort=nearest] anniR_isBuffed matches 0 run execute if score #anniR_global anniR_difficulty matches 1 run execute if entity @s[tag=attack] run execute as @e[type=!#annihilation:non_mob,tag=!anni_immune,distance=..2] run damage @s 4.5 annihilation:apocalpytic_sigil
execute if score @e[type=item_display,tag=aj.annihilation_recreated.root,limit=1,sort=nearest] anniR_isBuffed matches 0 run execute if score #anniR_global anniR_difficulty matches 1 run execute if entity @s[tag=attack] run damage @r[tag=!anni_immune,distance=..2,limit=1] 4.5 annihilation:apocalpytic_sigil

execute if score @e[type=item_display,tag=aj.annihilation_recreated.root,limit=1,sort=nearest] anniR_isBuffed matches 0 run execute if score #anniR_global anniR_difficulty matches 2 run execute if entity @s[tag=attack] run execute as @e[type=!#annihilation:non_mob,tag=!anni_immune,distance=..2] run damage @s 5.5 annihilation:apocalpytic_sigil
execute if score @e[type=item_display,tag=aj.annihilation_recreated.root,limit=1,sort=nearest] anniR_isBuffed matches 0 run execute if score #anniR_global anniR_difficulty matches 2 run execute if entity @s[tag=attack] run damage @r[tag=!anni_immune,distance=..2,limit=1] 5.5 annihilation:apocalpytic_sigil

#buffed
execute unless score @e[type=item_display,tag=aj.annihilation_recreated.root,limit=1,sort=nearest] anniR_isBuffed matches 0 run execute if score #anniR_global anniR_difficulty matches 0 run execute if entity @s[tag=attack] run execute as @e[type=!#annihilation:non_mob,tag=!anni_immune,distance=..2] run damage @s 3.5 annihilation:apocalpytic_sigil
execute unless score @e[type=item_display,tag=aj.annihilation_recreated.root,limit=1,sort=nearest] anniR_isBuffed matches 0 run execute if score #anniR_global anniR_difficulty matches 0 run execute if entity @s[tag=attack] run damage @r[tag=!anni_immune,distance=..2,limit=1] 3.5 annihilation:apocalpytic_sigil

execute unless score @e[type=item_display,tag=aj.annihilation_recreated.root,limit=1,sort=nearest] anniR_isBuffed matches 0 run execute if score #anniR_global anniR_difficulty matches 1 run execute if entity @s[tag=attack] run execute as @e[type=!#annihilation:non_mob,tag=!anni_immune,distance=..2] run damage @s 5.5 annihilation:apocalpytic_sigil
execute unless score @e[type=item_display,tag=aj.annihilation_recreated.root,limit=1,sort=nearest] anniR_isBuffed matches 0 run execute if score #anniR_global anniR_difficulty matches 1 run execute if entity @s[tag=attack] run damage @r[tag=!anni_immune,distance=..2,limit=1] 5.5 annihilation:apocalpytic_sigil

execute unless score @e[type=item_display,tag=aj.annihilation_recreated.root,limit=1,sort=nearest] anniR_isBuffed matches 0 run execute if score #anniR_global anniR_difficulty matches 2 run execute if entity @s[tag=attack] run execute as @e[type=!#annihilation:non_mob,tag=!anni_immune,distance=..2] run damage @s 6.5 annihilation:apocalpytic_sigil
execute unless score @e[type=item_display,tag=aj.annihilation_recreated.root,limit=1,sort=nearest] anniR_isBuffed matches 0 run execute if score #anniR_global anniR_difficulty matches 2 run execute if entity @s[tag=attack] run damage @r[tag=!anni_immune,distance=..2,limit=1] 6.5 annihilation:apocalpytic_sigil


execute unless score @e[type=item_display,tag=aj.annihilation_recreated.root,limit=1,sort=nearest] anniR_isBuffed matches 0 run execute if entity @s[tag=attack] run execute unless entity @e[type=lightning_bolt,limit=1,distance=..1,sort=nearest] run summon lightning_bolt