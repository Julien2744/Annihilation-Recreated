execute at @e[tag=anni_target,distance=..256,limit=1] if entity @e[type=armor_stand,tag=anni_meteor_s,distance=..1] run function annihilation:boss/summons_effect/meteor_small
execute at @e[type=armor_stand,tag=anni_meteor_s,distance=..256,nbt={OnGround:1b}] run function annihilation:boss/summons_effect/meteor_small

execute at @e[tag=anni_target,distance=..256,limit=1] if entity @e[type=armor_stand,tag=anni_meteor_b,distance=..1] run function annihilation:boss/summons_effect/meteor_big
execute at @e[type=armor_stand,tag=anni_meteor_b,distance=..256,nbt={OnGround:1b}] run function annihilation:boss/summons_effect/meteor_big