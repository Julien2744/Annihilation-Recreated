scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.annihilation_recreated.animation.cauterize_messes.local_anim_time 0
scoreboard players set @s aj.annihilation_recreated.animation.cauterize_messes.loop_mode 1
execute on passengers run data modify entity @s interpolation_duration set value 0
function animated_java:annihilation_recreated/zzzzzzzz/animations/cauterize_messes/tree/leaf_0
execute on passengers run data modify entity @s interpolation_duration set value 1
tag @s add aj.annihilation_recreated.animation.cauterize_messes