scoreboard players add @s aj.annir_apocalpytic_sigil.animation.attack.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.annir_apocalpytic_sigil.animation.attack.local_anim_time
function animated_java:annir_apocalpytic_sigil/zzzzzzzz/animations/attack/apply_frame_as_root
execute if score @s aj.annir_apocalpytic_sigil.animation.attack.local_anim_time matches 30.. run function animated_java:annir_apocalpytic_sigil/zzzzzzzz/animations/attack/end