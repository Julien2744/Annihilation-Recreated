#every command here is executed as the boss hitbox

function annihilation:boss/update_health_pour

#change target
execute on attacker run execute unless entity @e[tag=anniR.target,distance=..128,limit=1] if entity @s[type=player,tag=!anniR.immune,gamemode=!creative,gamemode=!spectator] run function annihilation:set_target
execute on attacker run execute unless entity @e[tag=anniR.target,distance=..128,limit=1] if entity @s[type=!player,tag=!anniR.immune] run function annihilation:set_target

execute on attacker run execute if entity @s[type=player,tag=!anniR.target,tag=!anniR.immune,gamemode=!creative,gamemode=!spectator] if predicate annihilation:random_25 run function annihilation:set_target
execute on attacker run execute if entity @s[type=!player,tag=!anniR.target,tag=!anniR.immune] if predicate annihilation:random_25 run function annihilation:set_target

#face taget
execute if score @e[type=item_display,tag=aj.annihilation_recreated.root,distance=..8,limit=1] anniR.struct_spawned matches 0 run execute if predicate annihilation:random_35 run function annihilation:boss/face_target