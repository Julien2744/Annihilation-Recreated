execute unless score #frame aj.i = #frame aj.i run scoreboard players set #frame aj.i 0
execute unless score #variant aj.i = #variant aj.i run scoreboard players set #variant aj.i 0
execute unless score #animation aj.i = #animation aj.i run scoreboard players set #animation aj.i -1
scoreboard players set @s aj.anim_time 0
scoreboard players set @s aj.annihilation_recreated.rig_loaded 1
scoreboard players operation @s aj.annihilation_recreated.export_version = aj.annihilation_recreated.export_version aj.i
execute store result score @s aj.id run scoreboard players add .aj.last_id aj.id 1
tp @s ~ ~ ~ ~ ~
execute at @s on passengers run function animated_java:annihilation_recreated/zzzzzzzz/summon/as_rig_entities
execute if score #variant aj.i = $aj.annihilation_recreated.variant.default aj.id run function animated_java:annihilation_recreated/zzzzzzzz/apply_variant/default/as_root
execute if score #animation aj.i matches 0.. run scoreboard players operation @s aj.anim_time = #frame aj.i
execute if score #animation aj.i = $aj.annihilation_recreated.animation.entrance aj.id run function animated_java:annihilation_recreated/zzzzzzzz/animations/entrance/apply_frame_as_root
execute if score #animation aj.i = $aj.annihilation_recreated.animation.entrance aj.id run scoreboard players operation @s aj.annihilation_recreated.animation.entrance.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.annihilation_recreated.animation.rake aj.id run function animated_java:annihilation_recreated/zzzzzzzz/animations/rake/apply_frame_as_root
execute if score #animation aj.i = $aj.annihilation_recreated.animation.rake aj.id run scoreboard players operation @s aj.annihilation_recreated.animation.rake.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.annihilation_recreated.animation.flense aj.id run function animated_java:annihilation_recreated/zzzzzzzz/animations/flense/apply_frame_as_root
execute if score #animation aj.i = $aj.annihilation_recreated.animation.flense aj.id run scoreboard players operation @s aj.annihilation_recreated.animation.flense.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.annihilation_recreated.animation.death aj.id run function animated_java:annihilation_recreated/zzzzzzzz/animations/death/apply_frame_as_root
execute if score #animation aj.i = $aj.annihilation_recreated.animation.death aj.id run scoreboard players operation @s aj.annihilation_recreated.animation.death.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.annihilation_recreated.animation.secare aj.id run function animated_java:annihilation_recreated/zzzzzzzz/animations/secare/apply_frame_as_root
execute if score #animation aj.i = $aj.annihilation_recreated.animation.secare aj.id run scoreboard players operation @s aj.annihilation_recreated.animation.secare.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.annihilation_recreated.animation.cauterize_messes aj.id run function animated_java:annihilation_recreated/zzzzzzzz/animations/cauterize_messes/apply_frame_as_root
execute if score #animation aj.i = $aj.annihilation_recreated.animation.cauterize_messes aj.id run scoreboard players operation @s aj.annihilation_recreated.animation.cauterize_messes.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.annihilation_recreated.animation.cauterize_them_all aj.id run function animated_java:annihilation_recreated/zzzzzzzz/animations/cauterize_them_all/apply_frame_as_root
execute if score #animation aj.i = $aj.annihilation_recreated.animation.cauterize_them_all aj.id run scoreboard players operation @s aj.annihilation_recreated.animation.cauterize_them_all.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.annihilation_recreated.animation.apocalpytic_sigil aj.id run function animated_java:annihilation_recreated/zzzzzzzz/animations/apocalpytic_sigil/apply_frame_as_root
execute if score #animation aj.i = $aj.annihilation_recreated.animation.apocalpytic_sigil aj.id run scoreboard players operation @s aj.annihilation_recreated.animation.apocalpytic_sigil.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.annihilation_recreated.animation.blossoming_chaos aj.id run function animated_java:annihilation_recreated/zzzzzzzz/animations/blossoming_chaos/apply_frame_as_root
execute if score #animation aj.i = $aj.annihilation_recreated.animation.blossoming_chaos aj.id run scoreboard players operation @s aj.annihilation_recreated.animation.blossoming_chaos.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.annihilation_recreated.animation.eyes_of_war aj.id run function animated_java:annihilation_recreated/zzzzzzzz/animations/eyes_of_war/apply_frame_as_root
execute if score #animation aj.i = $aj.annihilation_recreated.animation.eyes_of_war aj.id run scoreboard players operation @s aj.annihilation_recreated.animation.eyes_of_war.local_anim_time = #frame aj.i
execute if score #animation aj.i = $aj.annihilation_recreated.animation.new_sun aj.id run function animated_java:annihilation_recreated/zzzzzzzz/animations/new_sun/apply_frame_as_root
execute if score #animation aj.i = $aj.annihilation_recreated.animation.new_sun aj.id run scoreboard players operation @s aj.annihilation_recreated.animation.new_sun.local_anim_time = #frame aj.i
execute at @s run function #animated_java:annihilation_recreated/on_summon/as_root
tag @s remove aj.new
scoreboard players reset #frame aj.i
scoreboard players reset #variant aj.i
scoreboard players reset #animation aj.i