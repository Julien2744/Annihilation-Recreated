scoreboard players add @s aj.annihilation_recreated.animation.death.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.annihilation_recreated.animation.death.local_anim_time
function animated_java:annihilation_recreated/zzzzzzzz/animations/death/apply_frame_as_root
execute if score @s aj.annihilation_recreated.animation.death.local_anim_time matches 80.. run function animated_java:annihilation_recreated/zzzzzzzz/animations/death/end