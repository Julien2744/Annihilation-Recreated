# The reason this exist is to prevent the delay when calling the animation function and the abilitiCooldown

$scoreboard players set @s anniR.abilityID $(ID)

#$say test - $(ID)
#execute as @n[type=item_display,tag=aj.annihilation_recreated.root] at @s run function annihilation:boss/execute_attack {ID:}

#rake
execute if score @s anniR.abilityID matches 1 run function animated_java:annihilation_recreated/animations/rake/play
execute if score @s anniR.abilityID matches 1 run scoreboard players set @s anniR.abilityCooldown 87

#flense
execute if score @s anniR.abilityID matches 2 run function animated_java:annihilation_recreated/animations/flense/play
execute if score @s anniR.abilityID matches 2 run scoreboard players set @s anniR.abilityCooldown 87

#secare
execute if score @s anniR.abilityID matches 3 run function animated_java:annihilation_recreated/animations/secare/play
execute if score @s anniR.abilityID matches 3 run scoreboard players set @s anniR.abilityCooldown 75

#cauterize masses
execute if score @s anniR.abilityID matches 4 run function animated_java:annihilation_recreated/animations/cauterize_masses/play
execute if score @s anniR.abilityID matches 4 run scoreboard players set @s anniR.abilityCooldown 100

#cauterize them all
execute if score @s anniR.abilityID matches 5 run function animated_java:annihilation_recreated/animations/cauterize_them_all/play
execute if score @s anniR.abilityID matches 5 run scoreboard players set @s anniR.abilityCooldown 90

#cleasing inferno
execute if score @s anniR.abilityID matches 6 run function annihilation:boss/abilities/cleasing_inferno/begin
execute if score @s anniR.abilityID matches 6 run scoreboard players set @s anniR.abilityCooldown 130

#stoke the blaze
execute if score @s anniR.abilityID matches 7 run function annihilation:boss/abilities/stoke_the_blaze
execute if score @s anniR.abilityID matches 7 run scoreboard players set @s anniR.abilityCooldown 60

#apocalpytic sigil
execute if score @s anniR.abilityID matches 8 run function animated_java:annihilation_recreated/animations/apocalyptic_sigil/play
execute if score @s anniR.abilityID matches 8 run scoreboard players set @s anniR.abilityCooldown 60

#exhort
execute if score @s anniR.abilityID matches 9 run function annihilation:boss/abilities/exhort
execute if score @s anniR.abilityID matches 9 run scoreboard players set @s anniR.abilityCooldown 60

#caustic phlegm
execute if score @s anniR.abilityID matches 10 run function annihilation:boss/abilities/caustic_phlegm
execute if score @s anniR.abilityID matches 10 run scoreboard players set @s anniR.abilityCooldown 40

#death beams
execute if score @s anniR.abilityID matches 11 run function annihilation:boss/abilities/death_beams
execute if score @s anniR.abilityID matches 11 run scoreboard players set @s anniR.abilityCooldown 120

#blossiming chaos
execute if score @s anniR.abilityID matches 12 run function animated_java:annihilation_recreated/animations/blossoming_chaos/play
execute if score @s anniR.abilityID matches 12 run scoreboard players set @s anniR.abilityCooldown 150

#eyes of war
execute if score @s anniR.abilityID matches 13 run function animated_java:annihilation_recreated/animations/eyes_of_war/play
execute if score @s anniR.abilityID matches 13 run scoreboard players set @s anniR.abilityCooldown 60

#new sun
execute if score @s anniR.abilityID matches 14 run function animated_java:annihilation_recreated/animations/new_sun/play
execute if score @s anniR.abilityID matches 14 run scoreboard players set @s anniR.abilityCooldown 170

#keep at end of file
scoreboard players set @s anniR.abilityID 0