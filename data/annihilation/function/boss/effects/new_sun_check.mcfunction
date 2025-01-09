execute if score @s anniR.newsun_comp matches 1 run data merge entity @n[type=item_display,tag=anniR.immune,tag=anniR.new_sun_display,tag=anniR.summoned,distance=..2] {start_interpolation:0,interpolation_duration:300,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,4f,0f],scale:[8f,8f,8f]}}

scoreboard players add @s anniR.newsun_comp 1
scoreboard players operation @s anniR.newsun_size = @s anniR.newsun_comp
scoreboard players operation @s anniR.newsun_size /= #anniR.global anniR.newsun_div
scoreboard players add @s anniR.newsun_size 1

#boss bar update
execute store result bossbar annihilation_newsun_comp value run scoreboard players get @s anniR.newsun_comp
#change new_sun hitbox
execute unless score @s anniR.newsun_comp matches 300.. store result entity @n[type=magma_cube,tag=anniR.new_sun_hitbox,tag=anniR.immune,tag=anniR.summoned,distance=..8] attributes[{id:"minecraft:generic.scale"}].base short 1 run scoreboard players get @s anniR.newsun_size

#new sun completed
execute if score @s anniR.newsun_comp matches 300.. run function annihilation:boss/effects/new_sun_complete

#kill entity
execute unless entity @e[type=magma_cube,limit=1,tag=anniR.new_sun_hitbox,tag=anniR.immune,tag=anniR.summoned,distance=..16] run kill @e[type=item_display,limit=1,tag=anniR.new_sun_display,tag=anniR.immune,distance=..8]
execute unless entity @e[type=magma_cube,limit=1,tag=anniR.new_sun_hitbox,tag=anniR.immune,tag=anniR.summoned,distance=..16] run bossbar remove annihilation_newsun_comp