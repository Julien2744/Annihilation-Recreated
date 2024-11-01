scoreboard objectives add aj.i dummy
scoreboard objectives add aj.id dummy
scoreboard objectives add aj.tween_time dummy
scoreboard objectives add aj.anim_time dummy
scoreboard objectives add aj.life_time dummy
scoreboard objectives add aj.annir_head.export_version dummy
scoreboard objectives add aj.annir_head.rig_loaded dummy
scoreboard objectives add aj.annir_head.animation.cleasing_inferno.local_anim_time dummy
scoreboard objectives add aj.annir_head.animation.cleasing_inferno.loop_mode dummy
scoreboard players set $aj.annir_head.animation.cleasing_inferno aj.id 0
scoreboard players set $aj.annir_head.variant.default aj.id 0
scoreboard players add .aj.last_id aj.id 0
scoreboard players set $aj.loop_mode.loop aj.i 0
scoreboard players set $aj.loop_mode.once aj.i 1
scoreboard players set $aj.loop_mode.hold aj.i 2
scoreboard players set aj.annir_head.export_version aj.i -920973685
scoreboard players reset * aj.annir_head.rig_loaded
execute as @e[type=minecraft:item_display,tag=aj.annir_head.root] run function animated_java:annir_head/zzzzzzzz/on_load