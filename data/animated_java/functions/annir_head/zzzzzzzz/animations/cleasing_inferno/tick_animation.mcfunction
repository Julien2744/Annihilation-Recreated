scoreboard players add @s aj.annir_head.animation.cleasing_inferno.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.annir_head.animation.cleasing_inferno.local_anim_time
function animated_java:annir_head/zzzzzzzz/animations/cleasing_inferno/apply_frame_as_root
execute if score @s aj.annir_head.animation.cleasing_inferno.local_anim_time matches 72.. run function animated_java:annir_head/zzzzzzzz/animations/cleasing_inferno/end