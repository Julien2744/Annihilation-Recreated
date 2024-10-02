#execute as @e[type=item_display,tag=aj.annihilation_recreated.root] at @s run function animated_java:annihilation_recreated/animations/
#scoreboard players set @s anniR_abilityCooldown 60

#new_sun
execute if score @s anniR_abilityCooldown matches 0 run execute if score @s anniR_health_pour matches 21..50 if score @s anniR_new_sun matches 0 run function animated_java:annihilation_recreated/animations/new_sun/play
execute if score @s anniR_health_pour matches ..20 run execute if score @s anniR_abilityCooldown matches 0 if score @s anniR_new_sun matches 1 run function animated_java:annihilation_recreated/animations/new_sun/play

#stoke the blaze
execute unless score @s anniR_buffedCount matches 2 run execute if score @s anniR_isBuffed matches 0 if score @s anniR_health_pour matches 52..65 if score @s anniR_abilityCooldown matches 0 run function annihilation:boss/abilities/stoke_the_blaze
execute unless score @s anniR_buffedCount matches 2 run execute if score @s anniR_isBuffed matches 0 if score @s anniR_health_pour matches 25..43 if score @s anniR_abilityCooldown matches 0 run function annihilation:boss/abilities/stoke_the_blaze

#apocalpytic_sigil
execute if score @s anniR_abilityCooldown matches 0 run execute run execute unless entity @e[type=item_display,tag=aj.annir_apocalpytic_sigil.root,limit=1,distance=..128] if predicate annihilation:random_35 run function animated_java:annihilation_recreated/animations/apocalpytic_sigil/play

#secare
execute if score @s anniR_health_pour matches ..30 run execute if score @s anniR_abilityCooldown matches 0 positioned ^ ^ ^3 if entity @e[tag=anni_target,tag=!anni_immune,limit=1,distance=..8] run function animated_java:annihilation_recreated/animations/secare/play
#rake
execute if score @s anniR_health_pour matches 31.. run execute if score @s anniR_abilityCooldown matches 0 positioned ^7 ^ ^2 if entity @e[tag=anni_target,tag=!anni_immune,limit=1,distance=..8.5] run function animated_java:annihilation_recreated/animations/rake/play
#flense
execute if score @s anniR_health_pour matches 31.. run execute if score @s anniR_abilityCooldown matches 0 positioned ^-7 ^ ^2 if entity @e[tag=anni_target,tag=!anni_immune,limit=1,distance=..8.5] run function animated_java:annihilation_recreated/animations/flense/play

#cauterize_them_all
execute if score @s anniR_health_pour matches ..40 run execute if score @s anniR_abilityCooldown matches 0 if entity @e[tag=anni_target,tag=!anni_immune,limit=1,distance=9..128] if predicate annihilation:random_25 run function animated_java:annihilation_recreated/animations/cauterize_them_all/play
#cauterize_messes
execute if score @s anniR_health_pour matches ..80 run execute if score @s anniR_abilityCooldown matches 0 if entity @e[tag=anni_target,tag=!anni_immune,limit=1,distance=9..128] if predicate annihilation:random_35 run function animated_java:annihilation_recreated/animations/cauterize_messes/play

#cleasing inferno
execute if score @s anniR_abilityCooldown matches 0 run execute if entity @e[tag=anni_target,tag=!anni_immune,limit=1,distance=9..18] if predicate annihilation:random_35 run execute as @e[type=item_display,tag=aj.annir_head.root,distance=..10,sort=nearest] at @s run function animated_java:annir_head/animations/cleasing_inferno/play
execute if score @s anniR_abilityCooldown matches 0 run execute if entity @e[tag=anni_target,tag=!anni_immune,limit=1,distance=22..42] if predicate annihilation:random_35 run execute as @e[type=item_display,tag=aj.annir_head.root,distance=..10,sort=nearest] at @s run function animated_java:annir_head/animations/cleasing_inferno/play
execute if score @s anniR_abilityCooldown matches 0 run execute if entity @e[tag=anni_target,tag=!anni_immune,limit=1,distance=64..86] if predicate annihilation:random_35 run execute as @e[type=item_display,tag=aj.annir_head.root,distance=..10,sort=nearest] at @s run function animated_java:annir_head/animations/cleasing_inferno/play

#exhort
execute if score @s anniR_abilityCooldown matches 0 if score @s anni_pitch matches -90..-30 run execute positioned ^ ^16 ^6 if entity @e[tag=anni_target,tag=!anni_immune,limit=1,distance=..10] run execute as @e[type=magma_cube,nbt={NoAI:1b,Size:16},tag=anni_hitbox,distance=..20,limit=1,sort=nearest] run function annihilation:boss/abilities/exhort

#caustic_phlegm
execute if score @s anniR_abilityCooldown matches 0 run execute if entity @e[tag=anni_target,tag=!anni_immune,limit=1,distance=..45] if predicate annihilation:random_25 run execute if entity @e[type=magma_cube,tag=!anni_hitbox,tag=anni_immune,distance=..64] if predicate annihilation:random_5 run function annihilation:boss/abilities/caustic_phlegm 
execute if score @s anniR_abilityCooldown matches 0 run execute if entity @e[tag=anni_target,tag=!anni_immune,limit=1,distance=..45] if predicate annihilation:random_25 run execute unless entity @e[type=magma_cube,tag=!anni_hitbox,tag=anni_immune,distance=..64] run function annihilation:boss/abilities/caustic_phlegm 

#blossoming_chaos
execute if score @s anniR_abilityCooldown matches 0 unless entity @e[type=end_crystal,distance=..90,tag=anni_immune,tag=anni_regen] run execute if score @s anniR_health_pour matches ..70 run execute if predicate annihilation:random_15 run function animated_java:annihilation_recreated/animations/blossoming_chaos/play

#eye_of_war
execute if score @s anniR_abilityCooldown matches 0 unless entity @e[type=skeleton,distance=..90,tag=anni_immune] run execute if predicate annihilation:random_5 run function animated_java:annihilation_recreated/animations/eyes_of_war/play