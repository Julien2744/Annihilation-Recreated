execute if entity @s[tag=aj.annihilation_recreated.root] run function animated_java:annihilation_recreated/zzzzzzzz/animations/secare/play_as_root
execute if entity @s[tag=!aj.annihilation_recreated.root] run tellraw @a ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},{"text":"ERROR ☠","color":"red"},{"text":" > ","color":"gray"},[{"text":"The function","color":"yellow"},{"text":" animated_java:annihilation_recreated/animations/secare/play ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]