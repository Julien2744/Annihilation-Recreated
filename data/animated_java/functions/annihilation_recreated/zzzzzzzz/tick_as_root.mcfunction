execute unless score @s aj.annihilation_recreated.rig_loaded = @s aj.annihilation_recreated.rig_loaded run function animated_java:annihilation_recreated/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:annihilation_recreated/zzzzzzzz/animations/tick
function #animated_java:annihilation_recreated/on_tick/as_root