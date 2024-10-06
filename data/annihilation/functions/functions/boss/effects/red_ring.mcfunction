#command here are executed as the ring at the ring
execute if entity @s[tag=follow] unless score @s anniR_as_turn matches 10 run execute positioned as @e[tag=anni_target,distance=..128,limit=1] rotated 0 0 run tp ~ ~ ~

#damage
execute if score @e[type=item_display,tag=aj.annihilation_recreated.root,limit=1,sort=nearest] anniR_isBuffed matches 0 run execute if score #anniR_global anniR_difficulty matches 0 run execute if entity @s[tag=attack] if predicate annihilation:random_50 run damage @e[tag=anni_target,distance=..2.5,limit=1] 1.5 annihilation:apocalpytic_sigil by @e[type=magma_cube,nbt={NoAI:1b,Size:16},tag=anni_hitbox,distance=..128,limit=1]

execute if score @e[type=item_display,tag=aj.annihilation_recreated.root,limit=1,sort=nearest] anniR_isBuffed matches 0 run execute if score #anniR_global anniR_difficulty matches 1 run execute if entity @s[tag=attack] if predicate annihilation:random_50 run damage @e[tag=anni_target,distance=..2.5,limit=1] 2.5 annihilation:apocalpytic_sigil by @e[type=magma_cube,nbt={NoAI:1b,Size:16},tag=anni_hitbox,distance=..128,limit=1]

execute if score @e[type=item_display,tag=aj.annihilation_recreated.root,limit=1,sort=nearest] anniR_isBuffed matches 0 run execute if score #anniR_global anniR_difficulty matches 2 run execute if entity @s[tag=attack] if predicate annihilation:random_50 run damage @e[tag=anni_target,distance=..2.5,limit=1] 4 annihilation:apocalpytic_sigil by @e[type=magma_cube,nbt={NoAI:1b,Size:16},tag=anni_hitbox,distance=..128,limit=1]

#buffed
execute unless score @e[type=item_display,tag=aj.annihilation_recreated.root,limit=1,sort=nearest] anniR_isBuffed matches 0 run execute if score #anniR_global anniR_difficulty matches 0 run execute if entity @s[tag=attack] if predicate annihilation:random_50 run damage @e[tag=anni_target,distance=..3,limit=1] 2 annihilation:apocalpytic_sigil by @e[type=magma_cube,nbt={NoAI:1b,Size:16},tag=anni_hitbox,distance=..128,limit=1]

execute unless score @e[type=item_display,tag=aj.annihilation_recreated.root,limit=1,sort=nearest] anniR_isBuffed matches 0 run execute if score #anniR_global anniR_difficulty matches 1 run execute if entity @s[tag=attack] if predicate annihilation:random_50 run damage @e[tag=anni_target,distance=..3,limit=1] 2.5 annihilation:apocalpytic_sigil by @e[type=magma_cube,nbt={NoAI:1b,Size:16},tag=anni_hitbox,distance=..128,limit=1]

execute unless score @e[type=item_display,tag=aj.annihilation_recreated.root,limit=1,sort=nearest] anniR_isBuffed matches 0 run execute if score #anniR_global anniR_difficulty matches 2 run execute if entity @s[tag=attack] if predicate annihilation:random_50 run damage @e[tag=anni_target,distance=..3,limit=1] 4.75 annihilation:apocalpytic_sigil by @e[type=magma_cube,nbt={NoAI:1b,Size:16},tag=anni_hitbox,distance=..128,limit=1]


execute unless score @e[type=item_display,tag=aj.annihilation_recreated.root,limit=1,sort=nearest] anniR_isBuffed matches 0 run execute if entity @s[tag=attack] run execute unless entity @e[type=lightning_bolt,limit=1,distance=..1,sort=nearest] run summon lightning_bolt