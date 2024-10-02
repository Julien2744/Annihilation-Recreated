scoreboard players set @s aj.annir_head.animation.cleasing_inferno.local_anim_time 0
tag @s remove aj.annir_head.animation.cleasing_inferno
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.annir_head.disable_command_keyframes
function animated_java:annir_head/zzzzzzzz/animations/cleasing_inferno/tree/leaf_0
tag @s remove aj.annir_head.disable_command_keyframes