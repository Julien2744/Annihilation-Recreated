scoreboard players set @e[type=item_display,tag=aj.annihilation_recreated.root,distance=..20] anniR_abilityCooldown 60

playsound minecraft:entity.ravager.roar hostile @a[distance=..24] ~ ~ ~ 2
execute at @e[tag=anni_target,tag=!anni_immune,limit=1,distance=..10] run particle explosion ~ ~1 ~

#effect
effect give @e[tag=anni_target,tag=!anni_immune,limit=1,distance=..10] hunger 3 10
effect give @e[tag=anni_target,tag=!anni_immune,limit=1,distance=..10] levitation 1 10

#damage
execute if score @e[type=item_display,tag=aj.annihilation_recreated.root,limit=1,sort=nearest] anniR_isBuffed matches 0 run execute if score #anniR_global anniR_difficulty matches 0 run damage @e[tag=anni_target,tag=!anni_immune,limit=1,distance=..8] 1 annihilation:apocalpytic_sigil by @s

execute if score @e[type=item_display,tag=aj.annihilation_recreated.root,limit=1,sort=nearest] anniR_isBuffed matches 0 run execute if score #anniR_global anniR_difficulty matches 1 run damage @e[tag=anni_target,tag=!anni_immune,limit=1,distance=..8] 2 annihilation:apocalpytic_sigil by @s

execute if score @e[type=item_display,tag=aj.annihilation_recreated.root,limit=1,sort=nearest] anniR_isBuffed matches 0 run execute if score #anniR_global anniR_difficulty matches 2 run damage @e[tag=anni_target,tag=!anni_immune,limit=1,distance=..8] 4 annihilation:apocalpytic_sigil by @s


#buffed
execute unless score @e[type=item_display,tag=aj.annihilation_recreated.root,limit=1,sort=nearest] anniR_isBuffed matches 1 run execute if score #anniR_global anniR_difficulty matches 0 run damage @e[tag=anni_target,tag=!anni_immune,limit=1,distance=..8] 2.5 annihilation:apocalpytic_sigil by @s

execute unless score @e[type=item_display,tag=aj.annihilation_recreated.root,limit=1,sort=nearest] anniR_isBuffed matches 1 run execute if score #anniR_global anniR_difficulty matches 1 run damage @e[tag=anni_target,tag=!anni_immune,limit=1,distance=..8] 2.5 annihilation:apocalpytic_sigil by @s

execute unless score @e[type=item_display,tag=aj.annihilation_recreated.root,limit=1,sort=nearest] anniR_isBuffed matches 1 run execute if score #anniR_global anniR_difficulty matches 2 run damage @e[tag=anni_target,tag=!anni_immune,limit=1,distance=..8] 4.5 annihilation:apocalpytic_sigil by @s


execute unless score @e[type=item_display,tag=aj.annihilation_recreated.root,limit=1,sort=nearest] anniR_isBuffed matches 0 run scoreboard players remove @e[type=item_display,tag=aj.annihilation_recreated.root,limit=1,sort=nearest] anniR_isBuffed 1