execute at @e[tag=anni_target,distance=..128,limit=1] if entity @e[type=armor_stand,tag=anni_meteor_s,tag=anni_summoned,distance=..1] run function annihilation:boss/effects/meteor_small
execute at @e[type=armor_stand,tag=anni_meteor_s,tag=anni_summoned,distance=..256,nbt={OnGround:1b}] run function annihilation:boss/effects/meteor_small

execute at @e[tag=anni_target,distance=..128,limit=1] if entity @e[type=armor_stand,tag=anni_meteor_b,tag=anni_summoned,distance=..1] run function annihilation:boss/effects/meteor_big
execute at @e[type=armor_stand,tag=anni_meteor_b,tag=anni_summoned,distance=..256,nbt={OnGround:1b}] run function annihilation:boss/effects/meteor_big