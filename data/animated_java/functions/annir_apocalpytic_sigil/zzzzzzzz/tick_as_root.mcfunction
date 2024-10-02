execute unless score @s aj.annir_apocalpytic_sigil.rig_loaded = @s aj.annir_apocalpytic_sigil.rig_loaded run function animated_java:annir_apocalpytic_sigil/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:annir_apocalpytic_sigil/zzzzzzzz/animations/tick
function #animated_java:annir_apocalpytic_sigil/on_tick/as_root