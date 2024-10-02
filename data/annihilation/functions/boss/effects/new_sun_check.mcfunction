execute if score @s anniR_newsun_comp matches 1 run data merge entity @e[type=item_display,limit=1,tag=anni_immune,tag=new_sun,distance=..2,sort=nearest] {start_interpolation:0,interpolation_duration:200,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,4f,0f],scale:[8f,8f,8f]}}

scoreboard players add @s anniR_newsun_comp 1
scoreboard players operation @s anniR_newsun_size = @s anniR_newsun_comp
scoreboard players operation @s anniR_newsun_size /= #anniR_global anniR_newsun_div

#boss bar update
execute store result bossbar annihilation_newsun_comp value run scoreboard players get @s anniR_newsun_comp
execute unless score @s anniR_newsun_comp matches 200.. store result entity @e[type=magma_cube,tag=new_sun_hitbox,tag=anni_immune,limit=1,distance=..8,sort=nearest] Size short 1 run scoreboard players get @s anniR_newsun_size

#new sun completed
execute if score @s anniR_newsun_comp matches 200.. run data modify entity @e[type=magma_cube,limit=1,tag=new_sun_hitbox,tag=anni_immune,distance=..16] Size set value 0
execute if score @s anniR_newsun_comp matches 200.. run kill @e[type=magma_cube,tag=new_sun_hitbox,tag=anni_immune,distance=..16]
execute if score @s anniR_newsun_comp matches 200.. run playsound entity.generic.explode hostile @a[distance=..128] ~ ~ ~ 1 0
execute if score @s anniR_newsun_comp matches 200.. run kill @e[tag=anni_target,distance=..128,limit=1,type=!player]
execute if score @s anniR_newsun_comp matches 200.. run kill @a[distance=..128,gamemode=!creative,gamemode=!spectator]

#new sun destroyed
execute if entity @e[type=magma_cube,tag=!anni_hitbox,tag=!anni_immune,tag=!new_sun_hitbox,distance=..16,nbt={NoAI:1b}] run execute as @e[type=magma_cube,tag=!anni_hitbox,tag=!anni_immune,tag=!new_sun_hitbox,distance=..16,nbt={NoAI:1b}] run data modify entity @s Size set value 0
#execute unless entity @e[type=magma_cube,limit=1,tag=new_sun_hitbox,tag=anni_immune,distance=..16] unless score @s anniR_newsun_comp matches 200.. run say yipee

#kill entity
execute if entity @e[type=magma_cube,tag=!anni_hitbox,tag=!anni_immune,tag=!new_sun_hitbox,distance=..16,nbt={NoAI:1b,Size:0}] run kill @e[type=magma_cube,tag=!anni_hitbox,tag=!anni_immune,distance=..16,nbt={NoAI:1b}]
execute if score @s anniR_newsun_comp matches 200.. run particle explosion_emitter ~ ~ ~

execute unless entity @e[type=magma_cube,limit=1,tag=new_sun_hitbox,tag=anni_immune,distance=..16] run kill @e[type=item_display,limit=1,tag=new_sun,tag=anni_immune,distance=..8]
execute unless entity @e[type=magma_cube,limit=1,tag=new_sun_hitbox,tag=anni_immune,distance=..16] run bossbar remove annihilation_newsun_comp