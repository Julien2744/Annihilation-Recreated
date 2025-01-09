scoreboard players set @s anniR.isBuffed 10
scoreboard players add @s anniR.buffedCount 1

playsound minecraft:entity.blaze.ambient hostile @a[distance=..50] ~ ~ ~ 5 0

data modify entity @n[type=item_display,tag=aj.annir_head.bone.sigil,distance=..12] view_range set value 1.0f

effect give @n[type=cow,nbt={NoAI:1b,Tags:["anniR.hitbox","anniR.immune"]},distance=..2] resistance 30 1

#clear fire res
execute if entity @e[tag=anniR.target,tag=!anniR.immune,limit=1,distance=..128,nbt={active_effects:[{id:"minecraft:fire_resistance"}]}] run execute at @e[tag=anniR.target,tag=!anniR.immune,limit=1,distance=..128] run playsound block.fire.extinguish hostile @p[tag=anniR.target,tag=!anniR.immune,distance=..128] ~ ~ ~ 2
execute if entity @e[tag=anniR.target,tag=!anniR.immune,limit=1,distance=..128,nbt={active_effects:[{id:"minecraft:fire_resistance"}]}] run execute at @e[tag=anniR.target,tag=!anniR.immune,limit=1,distance=..128] run particle minecraft:poof ^ ^0.5 ^0.25 0 0 0 1 3
execute if entity @e[tag=anniR.target,tag=!anniR.immune,limit=1,distance=..128,nbt={active_effects:[{id:"minecraft:fire_resistance"}]}] run title @p[tag=anniR.target,tag=!anniR.immune,distance=..128] actionbar {"text":"your fire resistance has ben extinguished"}
execute if entity @e[tag=anniR.target,tag=!anniR.immune,limit=1,distance=..128,nbt={active_effects:[{id:"minecraft:fire_resistance"}]}] run effect clear @e[tag=anniR.target,tag=!anniR.immune,limit=1,distance=..128] fire_resistance