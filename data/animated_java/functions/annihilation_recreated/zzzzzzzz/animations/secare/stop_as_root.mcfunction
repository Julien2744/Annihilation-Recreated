scoreboard players set @s aj.annihilation_recreated.animation.secare.local_anim_time 0
tag @s remove aj.annihilation_recreated.animation.secare
execute on passengers run data modify entity @s interpolation_duration set value 0
tag @s add aj.annihilation_recreated.disable_command_keyframes
function animated_java:annihilation_recreated/zzzzzzzz/animations/secare/tree/leaf_0
tag @s remove aj.annihilation_recreated.disable_command_keyframes