scoreboard players set @s aj.annir_apocalpytic_sigil.animation.turn.local_anim_time 0
tag @s remove aj.annir_apocalpytic_sigil.animation.turn
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.annir_apocalpytic_sigil.disable_command_keyframes
function animated_java:annir_apocalpytic_sigil/zzzzzzzz/animations/turn/tree/leaf_0
tag @s remove aj.annir_apocalpytic_sigil.disable_command_keyframes