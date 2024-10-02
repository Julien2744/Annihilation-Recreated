function animated_java:annihilation_recreated/zzzzzzzz/animations/cauterize_messes/resume_as_root
function animated_java:annihilation_recreated/zzzzzzzz/animations/cauterize_messes/tween_as_root
function animated_java:annihilation_recreated/zzzzzzzz/animations/cauterize_messes/apply_frame_as_root
execute if score #tween_duration aj.i matches ..0 on passengers run data modify entity @s interpolation_duration set value 1
scoreboard players reset #tween_duration aj.i