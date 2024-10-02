scoreboard players add @s aj.annir_apocalpytic_sigil.animation.turn.local_anim_time 1
scoreboard players operation @s aj.anim_time = @s aj.annir_apocalpytic_sigil.animation.turn.local_anim_time
function animated_java:annir_apocalpytic_sigil/zzzzzzzz/animations/turn/apply_frame_as_root
execute if score @s aj.annir_apocalpytic_sigil.animation.turn.local_anim_time matches 20.. run function animated_java:annir_apocalpytic_sigil/zzzzzzzz/animations/turn/end