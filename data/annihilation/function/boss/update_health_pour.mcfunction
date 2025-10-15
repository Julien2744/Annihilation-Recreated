#update boss health %
execute store result score @n[type=item_display,tag=aj.annihilation_recreated.root,distance=..8] anniR.math.mem run data get entity @s Health 100
execute store result score @n[type=item_display,tag=aj.annihilation_recreated.root,distance=..8] anniR.math.div run attribute @s generic.max_health get
scoreboard players operation @n[type=item_display,tag=aj.annihilation_recreated.root,distance=..8] anniR.math.mem /= @n[type=item_display,tag=aj.annihilation_recreated.root,distance=..8] anniR.math.div
scoreboard players operation @n[type=item_display,tag=aj.annihilation_recreated.root,distance=..8] anniR.health_pour = @n[type=item_display,tag=aj.annihilation_recreated.root,distance=..8] anniR.math.mem