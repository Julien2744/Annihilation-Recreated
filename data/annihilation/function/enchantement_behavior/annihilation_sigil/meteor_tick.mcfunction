particle flame ~ ~3 ~ 0.25 0 0.25 0 1 force

execute if entity @e[tag=!anniR.immune,distance=..0.5] run function annihilation:enchantement_behavior/annihilation_sigil/meteor_explode
execute if entity @s[nbt={OnGround:1b}] run function annihilation:enchantement_behavior/annihilation_sigil/meteor_explode