scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.annir_head.animation.cleasing_inferno.local_anim_time 0
scoreboard players set @s aj.annir_head.animation.cleasing_inferno.loop_mode 1
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:annir_head/zzzzzzzz/animations/cleasing_inferno/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.annir_head.animation.cleasing_inferno