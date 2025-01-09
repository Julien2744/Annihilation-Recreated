playsound entity.generic.explode hostile @a[distance=..32] ~ ~ ~ 4 0.5
particle explosion ~ ~ ~ 0 0 0 0 0 force

execute as @e[type=!#annihilation:non_mob,tag=!anniR.immune,distance=..3.5] run damage @s 18 explosion

kill @s