scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.annihilation_recreated.animation.entrance.local_anim_time 0
scoreboard players set @s aj.annihilation_recreated.animation.entrance.loop_mode 2
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:annihilation_recreated/zzzzzzzz/animations/entrance/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.annihilation_recreated.animation.entrance