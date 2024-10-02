scoreboard players add @s aj.annihilation_recreated.animation.cauterize_them_all.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.annihilation_recreated.animation.cauterize_them_all.local_anim_time
function animated_java:annihilation_recreated/zzzzzzzz/animations/cauterize_them_all/apply_frame_as_root
execute if score @s aj.annihilation_recreated.animation.cauterize_them_all.local_anim_time matches 50.. run function animated_java:annihilation_recreated/zzzzzzzz/animations/cauterize_them_all/end