#executed in boss/hurt.mcfunction
execute as @e[type=item_display,tag=aj.annihilation_recreated.root,distance=..8,limit=1] at @s run tp @s ~ ~ ~ facing entity @e[tag=anni_target,distance=..128,limit=1]
execute as @e[type=item_display,tag=aj.annihilation_recreated.root,distance=..8,limit=1] at @s run tp @s ~ ~ ~ ~ 0