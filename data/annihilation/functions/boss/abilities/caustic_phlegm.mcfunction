scoreboard players set @s anniR_abilityCooldown 40
playsound minecraft:block.respawn_anchor.set_spawn hostile @a[distance=..45] ~ ~ ~ 3

execute positioned ^ ^ ^12 run function annihilation:boss/summons/caustic_phlegm
execute positioned ^4 ^ ^12 run function annihilation:boss/summons/caustic_phlegm
execute positioned ^-4 ^ ^12 run function annihilation:boss/summons/caustic_phlegm