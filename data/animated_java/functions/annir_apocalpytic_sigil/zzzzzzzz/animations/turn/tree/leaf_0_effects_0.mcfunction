scoreboard players add @s anniR_as_turn 1
execute if score @s anniR_as_turn matches 11 run function animated_java:annir_apocalpytic_sigil/animations/turn/stop
execute if score @s anniR_as_turn matches 11 run function animated_java:annir_apocalpytic_sigil/animations/attack/play