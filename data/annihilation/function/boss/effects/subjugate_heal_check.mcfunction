#kill end_crystal
execute unless entity @n[type=wither_skeleton,tag=anniR.immune,tag=anniR.summoned,nbt={NoAI:1b},distance=..6] run kill @s

#heal
execute as @n[type=cow,nbt={NoAI:1b,Tags:["anniR.hitbox","anniR.immune"]},distance=..90] unless entity @s[nbt={active_effects:[{id:"minecraft:conduit_power"}]}] on vehicle at @s run execute if entity @e[type=end_crystal,distance=..128,tag=anniR.summoned,tag=anniR.regen,tag=!anniR.subjugate_heal.done,limit=1] run function annihilation:boss/effects/subjugate_heal

#if all subjugate gave their heal give annihilation conduit_power for 1s (cooldown)
execute as @n[type=cow,nbt={NoAI:1b,Tags:["anniR.hitbox","anniR.immune"]},distance=..90] unless entity @s[nbt={active_effects:[{id:"minecraft:conduit_power"}]}] run execute unless entity @e[type=end_crystal,distance=..128,tag=anniR.summoned,tag=anniR.regen,tag=!anniR.subjugate_heal.done,limit=1] run effect give @s minecraft:conduit_power 1 0 true
#remove all subjugate the tag
execute as @n[type=cow,nbt={NoAI:1b,Tags:["anniR.hitbox","anniR.immune"]},distance=..90] if entity @s[nbt={active_effects:[{id:"minecraft:conduit_power"}]}] run execute if entity @e[type=end_crystal,distance=..128,tag=anniR.summoned,tag=anniR.regen,tag=anniR.subjugate_heal.done] run tag @e[type=end_crystal,distance=..128,tag=anniR.summoned,tag=anniR.regen,tag=anniR.subjugate_heal.done] remove anniR.subjugate_heal.done