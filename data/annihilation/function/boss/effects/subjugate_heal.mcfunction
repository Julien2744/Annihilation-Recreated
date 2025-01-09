#heal
#vanilla
execute if score #anniR.global anniR.difficulty matches 0 run execute if entity @n[type=enderman,tag=anniR.immune,tag=anniR.summoned,nbt={NoAI:1b},distance=..3] run execute as @n[type=cow,nbt={NoAI:1b,Tags:["anniR.hitbox","anniR.immune"]},distance=..90] run execute unless entity @s[nbt={active_effects:[{id:"minecraft:regeneration"}]}] if predicate annihilation:random_30 run effect give @s regeneration 1 3 true
execute if score #anniR.global anniR.difficulty matches 0 run execute if entity @n[type=enderman,tag=anniR.immune,tag=anniR.summoned,nbt={NoAI:1b},distance=..3] run execute as @n[type=cow,nbt={NoAI:1b,Tags:["anniR.hitbox","anniR.immune"]},distance=..90] run execute unless entity @s[nbt={active_effects:[{id:"minecraft:regeneration"}]}] run effect give @s regeneration 1 2 true
#modded
execute if score #anniR.global anniR.difficulty matches 1 run execute if entity @n[type=enderman,tag=anniR.immune,tag=anniR.summoned,nbt={NoAI:1b},distance=..3] run execute as @n[type=cow,nbt={NoAI:1b,Tags:["anniR.hitbox","anniR.immune"]},distance=..90] run execute unless entity @s[nbt={active_effects:[{id:"minecraft:regeneration"}]}] if predicate annihilation:random_30 run effect give @s regeneration 1 4 true
execute if score #anniR.global anniR.difficulty matches 1 run execute if entity @n[type=enderman,tag=anniR.immune,tag=anniR.summoned,nbt={NoAI:1b},distance=..3] run execute as @n[type=cow,nbt={NoAI:1b,Tags:["anniR.hitbox","anniR.immune"]},distance=..90] run execute unless entity @s[nbt={active_effects:[{id:"minecraft:regeneration"}]}] run effect give @s regeneration 1 3 true
#heavy_modded
execute if score #anniR.global anniR.difficulty matches 2 run execute if entity @n[type=enderman,tag=anniR.immune,tag=anniR.summoned,nbt={NoAI:1b},distance=..3] run execute as @n[type=cow,nbt={NoAI:1b,Tags:["anniR.hitbox","anniR.immune"]},distance=..90] run execute unless entity @s[nbt={active_effects:[{id:"minecraft:regeneration"}]}] if predicate annihilation:random_30 run effect give @s regeneration 1 5 true
execute if score #anniR.global anniR.difficulty matches 2 run execute if entity @n[type=enderman,tag=anniR.immune,tag=anniR.summoned,nbt={NoAI:1b},distance=..3] run execute as @n[type=cow,nbt={NoAI:1b,Tags:["anniR.hitbox","anniR.immune"]},distance=..90] run execute unless entity @s[nbt={active_effects:[{id:"minecraft:regeneration"}]}] run effect give @s regeneration 1 4 true

#kill slime
execute unless entity @n[type=enderman,tag=anniR.immune,tag=anniR.summoned,nbt={NoAI:1b},distance=..3] run kill @n[type=slime,distance=..5,tag=anniR.immune,tag=anniR.summoned,nbt={NoAI:1b}]
#kill end_crystal
execute unless entity @n[type=enderman,tag=anniR.immune,tag=anniR.summoned,nbt={NoAI:1b},distance=..3] run kill @s