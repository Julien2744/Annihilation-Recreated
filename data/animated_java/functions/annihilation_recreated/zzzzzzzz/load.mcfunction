scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.annihilation_recreated.export_version dummy
scoreboard objectives add aj.annihilation_recreated.rig_loaded dummy
scoreboard objectives add aj.annihilation_recreated.animation.entrance.local_anim_time dummy
scoreboard objectives add aj.annihilation_recreated.animation.rake.local_anim_time dummy
scoreboard objectives add aj.annihilation_recreated.animation.flense.local_anim_time dummy
scoreboard objectives add aj.annihilation_recreated.animation.death.local_anim_time dummy
scoreboard objectives add aj.annihilation_recreated.animation.secare.local_anim_time dummy
scoreboard objectives add aj.annihilation_recreated.animation.cauterize_messes.local_anim_time dummy
scoreboard objectives add aj.annihilation_recreated.animation.cauterize_them_all.local_anim_time dummy
scoreboard objectives add aj.annihilation_recreated.animation.apocalpytic_sigil.local_anim_time dummy
scoreboard objectives add aj.annihilation_recreated.animation.blossoming_chaos.local_anim_time dummy
scoreboard objectives add aj.annihilation_recreated.animation.eyes_of_war.local_anim_time dummy
scoreboard objectives add aj.annihilation_recreated.animation.new_sun.local_anim_time dummy
scoreboard objectives add aj.annihilation_recreated.animation.entrance.loop_mode dummy
scoreboard objectives add aj.annihilation_recreated.animation.rake.loop_mode dummy
scoreboard objectives add aj.annihilation_recreated.animation.flense.loop_mode dummy
scoreboard objectives add aj.annihilation_recreated.animation.death.loop_mode dummy
scoreboard objectives add aj.annihilation_recreated.animation.secare.loop_mode dummy
scoreboard objectives add aj.annihilation_recreated.animation.cauterize_messes.loop_mode dummy
scoreboard objectives add aj.annihilation_recreated.animation.cauterize_them_all.loop_mode dummy
scoreboard objectives add aj.annihilation_recreated.animation.apocalpytic_sigil.loop_mode dummy
scoreboard objectives add aj.annihilation_recreated.animation.blossoming_chaos.loop_mode dummy
scoreboard objectives add aj.annihilation_recreated.animation.eyes_of_war.loop_mode dummy
scoreboard objectives add aj.annihilation_recreated.animation.new_sun.loop_mode dummy
scoreboard players set $aj.annihilation_recreated.animation.entrance aj.id 0
scoreboard players set $aj.annihilation_recreated.animation.rake aj.id 1
scoreboard players set $aj.annihilation_recreated.animation.flense aj.id 2
scoreboard players set $aj.annihilation_recreated.animation.death aj.id 3
scoreboard players set $aj.annihilation_recreated.animation.secare aj.id 4
scoreboard players set $aj.annihilation_recreated.animation.cauterize_messes aj.id 5
scoreboard players set $aj.annihilation_recreated.animation.cauterize_them_all aj.id 6
scoreboard players set $aj.annihilation_recreated.animation.apocalpytic_sigil aj.id 7
scoreboard players set $aj.annihilation_recreated.animation.blossoming_chaos aj.id 8
scoreboard players set $aj.annihilation_recreated.animation.eyes_of_war aj.id 9
scoreboard players set $aj.annihilation_recreated.animation.new_sun aj.id 10
scoreboard players set $aj.annihilation_recreated.variant.default aj.id 0
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.annihilation_recreated.export_version aj.i 161041440
scoreboard players reset * aj.annihilation_recreated.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.annihilation_recreated.root] run function animated_java:annihilation_recreated/zzzzzzzz/on_load