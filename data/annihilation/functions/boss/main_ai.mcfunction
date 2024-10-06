#every command here is executed as rott hitbox at the root

#execute commands if the boss has taken damage
execute as @e[type=magma_cube,nbt={NoAI:1b,Size:16,HurtTime:9s},distance=..8,limit=1,sort=nearest] as @s run function annihilation:boss/hurt

#make the hitbox stuck to the model
execute unless entity @e[type=magma_cube,nbt={NoAI:1b,Size:16},distance=0,limit=1,sort=nearest] run ride @e[type=magma_cube,nbt={NoAI:1b,Size:16},distance=..128,limit=1,sort=nearest] dismount
execute unless entity @e[type=magma_cube,nbt={NoAI:1b,Size:16},distance=0,limit=1,sort=nearest] run tp @e[type=magma_cube,nbt={NoAI:1b,Size:16},distance=..128,limit=1,sort=nearest] @s

#refresh boss health bar (excluded from hurt because of regen and not updated when the boss die)
execute store result bossbar annihilation_bossbar value run data get entity @e[type=magma_cube,nbt={NoAI:1b,Size:16},tag=anni_hitbox,tag=anni_immune,distance=..8,limit=1,sort=nearest] Health

#face target
execute if entity @e[tag=anni_target,distance=..128,limit=1] run execute as @e[type=item_display,tag=aj.annir_head.root,distance=..10,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ facing entity @e[tag=anni_target,distance=..128,limit=1]
execute if entity @e[tag=anni_target,distance=..128,limit=1] run execute store result score @s anni_pitch run data get entity @e[type=item_display,tag=aj.annir_head.root,distance=..10,limit=1,sort=nearest] Rotation[1]
execute unless entity @e[tag=anni_target,distance=..128,limit=1] run execute as @e[type=item_display,tag=aj.annir_head.root,distance=..10,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ -90 32

#check if the boss died
execute if entity @e[type=magma_cube,nbt={NoAI:true,Size:7},distance=..8] run function annihilation:boss/death/init_death

#attack/ability
#cooldown
execute if entity @e[type=magma_cube,nbt={NoAI:1b,Size:16},tag=anni_hitbox,distance=..8,limit=1,sort=nearest] unless score @s anniR_abilityCooldown matches 0 run scoreboard players remove @s anniR_abilityCooldown 1
execute unless score @s anniR_isBuffed matches 0 if entity @e[type=magma_cube,nbt={NoAI:1b,Size:16},tag=anni_hitbox,distance=..8,limit=1,sort=nearest] unless score @s anniR_abilityCooldown matches 0 if predicate annihilation:random_15 run scoreboard players remove @s anniR_abilityCooldown 1

#execute ability
execute if entity @e[tag=anni_target,distance=..128,limit=1] if entity @e[type=magma_cube,nbt={NoAI:1b,Size:16},distance=..8,limit=1,sort=nearest] if score @s anniR_abilityCooldown matches 0 run function annihilation:boss/can_attack
#check ability
#meteor
execute as @e[type=magma_cube,nbt={NoAI:1b,Size:16},tag=anni_hitbox,distance=..8,limit=1,sort=nearest] unless score @s anniR_abilityCooldown matches 0 run function annihilation:boss/effects/check_meteor
#red_ring
execute if entity @e[type=item_display,tag=aj.annir_apocalpytic_sigil.root,limit=1,distance=..128] run execute as @e[type=item_display,tag=aj.annir_apocalpytic_sigil.root,limit=1,distance=..128] at @s run function annihilation:boss/effects/red_ring
#infernal subjugate
execute if entity @e[type=end_crystal,distance=..90,tag=anni_immune,tag=anni_regen] run execute as @e[type=end_crystal,distance=..90,tag=anni_immune,tag=anni_regen] at @s run function annihilation:boss/effects/subjugate_heal
#burning irise
execute if entity @e[type=bat,distance=..128,tag=anni_immune,tag=eye_plat] run execute as @e[type=bat,distance=..128,tag=anni_immune,tag=eye_plat] at @s unless entity @e[type=skeleton,distance=..1,limit=1,sort=nearest,tag=anni_immune] run kill @s
#new sun
execute if score @s anniR_new_sun matches 1..2 run execute if entity @e[type=item_display,limit=1,tag=new_sun,tag=anni_immune,distance=..32] run execute as @e[type=item_display,limit=1,tag=new_sun,tag=anni_immune,distance=..32] at @s run function annihilation:boss/effects/new_sun_check
execute if score @s anniR_new_sun matches 1..2 run execute if entity @e[type=magma_cube,limit=1,tag=!anni_hitbox,tag=!anni_immune,tag=!new_sun_hitbox,distance=..32,nbt={NoAI:1b}] run kill @e[type=magma_cube,limit=1,tag=!anni_hitbox,tag=!anni_immune,tag=!new_sun_hitbox,distance=..32,nbt={NoAI:1b}]

#check sigil (buff)
execute unless score @s anniR_abilityCooldown matches 0 if score @s anniR_isBuffed matches 0 run data modify entity @e[type=item_display,tag=aj.annir_head.bone.sigil,limit=1,distance=..12,sort=nearest] item.id set value "minecraft:air"