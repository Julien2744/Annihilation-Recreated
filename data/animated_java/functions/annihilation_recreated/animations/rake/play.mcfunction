execute if entity @s[tag=aj.annihilation_recreated.root] run function animated_java:annihilation_recreated/zzzzzzzz/animations/rake/play_as_root
execute if entity @s[tag=!aj.annihilation_recreated.root] run tellraw @a ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},{"text":"ERROR ☠","color":"red"},{"text":" > ","color":"gray"},[{"text":"The function","color":"yellow"},{"text":" animated_java:annihilation_recreated/animations/rake/play ","color":"blue"},{"text":"must be run"},{"text":" as ","color":"red"},{"text":"the root entity!"}]]