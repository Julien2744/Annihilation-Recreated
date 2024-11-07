#small
execute at @e[tag=anni_target,distance=..128,limit=1] if entity @e[type=armor_stand,tag=anni_meteor_s,tag=anni_summoned,distance=..1.15] run function annihilation:boss/effects/meteor_small
execute as @e[type=armor_stand,tag=anni_meteor_s,tag=anni_summoned,distance=..128] at @s unless block ~ ~ ~ air run function annihilation:boss/effects/meteor_small
execute as @e[type=armor_stand,tag=anni_meteor_s,tag=anni_summoned,distance=..128,nbt={NoGravity:1b}] at @s run tp @s ^ ^ ^2

#big
execute at @e[tag=anni_target,distance=..128,limit=1] if entity @e[type=armor_stand,tag=anni_meteor_b,tag=anni_summoned,distance=..1] run function annihilation:boss/effects/meteor_big
execute at @e[type=armor_stand,tag=anni_meteor_b,tag=anni_summoned,distance=..128,nbt={OnGround:1b}] run function annihilation:boss/effects/meteor_big
execute at @e[type=armor_stand,tag=anni_meteor_s2,tag=anni_summoned,distance=..128,nbt={OnGround:1b}] run function annihilation:boss/effects/meteor_small

#out of range meteor
execute as @e[type=armor_stand,tag=anni_meteor,tag=anni_summoned,distance=128..512] at @s run kill @s