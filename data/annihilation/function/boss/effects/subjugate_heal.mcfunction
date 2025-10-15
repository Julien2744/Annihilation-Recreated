#actual regen (0.45% of maxhp every second)

execute store result score @s anniR.math.mem run attribute @n[type=cow,nbt={NoAI:1b,Tags:["anniR.hitbox","anniR.immune"]},distance=..2] generic.max_health get 0.0045

scoreboard players operation @s anniR.health += @s anniR.math.mem
execute as @n[type=cow,nbt={NoAI:1b,Tags:["anniR.hitbox","anniR.immune"]},distance=..2] store result entity @s Health float 1 on vehicle run scoreboard players get @s anniR.health

execute as @n[type=cow,nbt={NoAI:1b,Tags:["anniR.hitbox","anniR.immune"]},distance=..2] at @s run function annihilation:boss/update_health_pour

tag @e[type=end_crystal,distance=..128,tag=anniR.summoned,tag=anniR.regen,tag=!anniR.subjugate_heal.done,limit=1] add anniR.subjugate_heal.done