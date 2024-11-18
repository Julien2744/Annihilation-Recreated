execute if score @s anniR_newsun_comp matches 1 run data merge entity @e[type=item_display,limit=1,tag=anni_immune,tag=new_sun,tag=anni_summoned,distance=..2,sort=nearest] {start_interpolation:0,interpolation_duration:300,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,4f,0f],scale:[8f,8f,8f]}}

scoreboard players add @s anniR_newsun_comp 1
scoreboard players operation @s anniR_newsun_size = @s anniR_newsun_comp
scoreboard players operation @s anniR_newsun_size /= #anniR_global anniR_newsun_div

#boss bar update
execute store result bossbar annihilation_newsun_comp value run scoreboard players get @s anniR_newsun_comp
#change new_sun hitbox
execute unless score @s anniR_newsun_comp matches 300.. store result entity @e[type=magma_cube,tag=new_sun_hitbox,tag=anni_immune,tag=anni_summoned,limit=1,distance=..8,sort=nearest] Size short 1 run scoreboard players get @s anniR_newsun_size

#new sun completed
execute if score @s anniR_newsun_comp matches 300.. run function annihilation:boss/effects/new_sun_complete

#kill entity
execute unless entity @e[type=magma_cube,limit=1,tag=new_sun_hitbox,tag=anni_immune,tag=anni_summoned,distance=..16] run kill @e[type=item_display,limit=1,tag=new_sun,tag=anni_immune,distance=..8]
execute unless entity @e[type=magma_cube,limit=1,tag=new_sun_hitbox,tag=anni_immune,tag=anni_summoned,distance=..16] run bossbar remove annihilation_newsun_comp