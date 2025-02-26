#execute as @e[type=item_display,tag=aj.annihilation_recreated.root] at @s run function animated_java:annihilation_recreated/animations/
#scoreboard players set @s anniR.abilityCooldown 60

#new_sun
execute if score @s anniR.abilityCooldown matches 0 run execute if score @s anniR.health_pour matches 21..50 if score @s anniR.new_sun matches 0 run function annihilation:boss/execute_attack {ID:14}
execute if score @s anniR.health_pour matches ..20 run execute if score @s anniR.abilityCooldown matches 0 if score @s anniR.new_sun matches 1 unless entity @e[type=magma_cube,limit=1,tag=anniR.new_sun_hitbox,tag=anniR.immune,distance=..32] run function annihilation:boss/execute_attack {ID:14}

#stoke the blaze
execute if score @s anniR.buffedCount matches 0 run execute if score @s anniR.isBuffed matches 0 if score @s anniR.health_pour matches 52..65 if score @s anniR.abilityCooldown matches 0 unless predicate annihilation:random_25 run function annihilation:boss/execute_attack {ID:7}
execute unless score @s anniR.buffedCount matches 2 run execute if score @s anniR.isBuffed matches 0 if score @s anniR.health_pour matches 25..43 if score @s anniR.abilityCooldown matches 0 unless predicate annihilation:random_25 run function annihilation:boss/execute_attack {ID:7}

#cleasing inferno (short)
execute if score @s anniR.abilityCooldown matches 0 run execute if entity @n[tag=anniR.target,tag=!anniR.immune,distance=8..16] if predicate annihilation:random_35 run function annihilation:boss/execute_attack {ID:6}

#apocalyptic sigil
execute if score @s anniR.abilityCooldown matches 0 run execute unless entity @e[type=item_display,tag=aj.annir_apocalyptic_sigil.root,limit=1,distance=..128] if predicate annihilation:random_8 run function annihilation:boss/execute_attack {ID:8}

#secare
execute if score @s anniR.health_pour matches ..35 run execute if score @s anniR.abilityCooldown matches 0 positioned ^ ^ ^3 if entity @n[tag=anniR.target,tag=!anniR.immune,distance=..8] unless predicate annihilation:random_25 run function annihilation:boss/execute_attack {ID:3}
#flense
execute if score @s anniR.abilityCooldown matches 0 positioned ^6 ^ ^3 if entity @n[tag=anniR.target,tag=!anniR.immune,distance=..8] unless predicate annihilation:random_25 run function annihilation:boss/execute_attack {ID:2}
#rake
execute if score @s anniR.abilityCooldown matches 0 positioned ^-6 ^ ^3 if entity @n[tag=anniR.target,tag=!anniR.immune,distance=..8] unless predicate annihilation:random_25 run function annihilation:boss/execute_attack {ID:1}

#cauterize_them_all
execute if score @s anniR.health_pour matches ..90 run execute if score @s anniR.abilityCooldown matches 0 if entity @n[tag=anniR.target,tag=!anniR.immune,distance=11.5..128] if predicate annihilation:random_25 run function annihilation:boss/execute_attack {ID:5}
#cauterize_masses
execute if score @s anniR.health_pour matches ..80 run execute if score @s anniR.abilityCooldown matches 0 if entity @n[tag=anniR.target,tag=!anniR.immune,distance=9.5..128] if predicate annihilation:random_30 run function annihilation:boss/execute_attack {ID:4}

#caustic_phlegm
execute if score @s anniR.abilityCooldown matches 0 run execute if entity @n[tag=anniR.target,tag=!anniR.immune,distance=..45] if predicate annihilation:random_15 run execute if entity @e[type=magma_cube,tag=anniR.immune,tag=anniR.summoned,distance=..64] if predicate annihilation:random_2 run function annihilation:boss/execute_attack {ID:10}
execute if score @s anniR.abilityCooldown matches 0 run execute if entity @n[tag=anniR.target,tag=!anniR.immune,distance=..45] if predicate annihilation:random_25 run execute unless entity @e[type=magma_cube,tag=anniR.immune,tag=anniR.summoned,distance=..64] run function annihilation:boss/execute_attack {ID:10}

#cleasing inferno (bridge / long)
execute if score @s anniR.abilityCooldown matches 0 run execute if entity @n[tag=anniR.target,tag=!anniR.immune,distance=22..38] if predicate annihilation:random_35 run function annihilation:boss/execute_attack {ID:6}
execute if score @s anniR.abilityCooldown matches 0 run execute if entity @n[tag=anniR.target,tag=!anniR.immune,distance=56..80] if predicate annihilation:random_35 run function annihilation:boss/execute_attack {ID:6}

#blossoming_chaos
execute if score @s anniR.abilityCooldown matches 0 unless entity @e[type=end_crystal,distance=..90,tag=anniR.immune,tag=anniR.regen] run execute if score @s anniR.health_pour matches 63..80 run execute if predicate annihilation:random_5 run function annihilation:boss/execute_attack {ID:12}
execute if score @s anniR.abilityCooldown matches 0 unless entity @e[type=end_crystal,distance=..90,tag=anniR.immune,tag=anniR.regen] run execute if score @s anniR.health_pour matches ..62 run execute if predicate annihilation:random_8 run function annihilation:boss/execute_attack {ID:12}

#exhort
#in main_ai.mcfunction

#death beams
execute if score @s anniR.health_pour matches 45..85 if score @s anniR.abilityCooldown matches 0 run execute if predicate annihilation:random_15 run execute at @n[tag=anniR.target,distance=..128] unless entity @n[type=item_display,tag=aj.annir_death_beams.root,distance=..5] unless entity @n[type=enderman,tag=anniR.immune,tag=anniR.summoned,nbt={NoAI:1b},distance=..5] run function annihilation:boss/execute_attack {ID:11}
execute if score @s anniR.health_pour matches ..44 if score @s anniR.abilityCooldown matches 0 run execute if predicate annihilation:random_25 run execute at @n[tag=anniR.target,distance=..128] unless entity @n[type=item_display,tag=aj.annir_death_beams.root,distance=..5] unless entity @n[type=enderman,tag=anniR.immune,tag=anniR.summoned,nbt={NoAI:1b},distance=..5] run function annihilation:boss/execute_attack {ID:11}

#eye_of_war
execute if score @s anniR.abilityCooldown matches 0 unless entity @e[type=skeleton,distance=..90,tag=anniR.immune,tag=anniR.summoned] if score @s anniR.health_pour matches 71.. run execute if predicate annihilation:random_2 run function annihilation:boss/execute_attack {ID:13}
execute if score @s anniR.abilityCooldown matches 0 unless entity @e[type=skeleton,distance=..90,tag=anniR.immune,tag=anniR.summoned] if score @s anniR.health_pour matches ..70 run execute if predicate annihilation:random_8 run function annihilation:boss/execute_attack {ID:13}

#remove arrow to prevent lag from the burning irises
kill @e[type=arrow,distance=..90,nbt={inGround:1b,pickup:0b}]