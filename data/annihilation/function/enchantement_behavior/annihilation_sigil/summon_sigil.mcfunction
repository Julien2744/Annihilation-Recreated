scoreboard players set @s anniR.player_sigil_buffed 1

summon item_display ~ ~ ~ {Tags:["anniR.player_sigil_buff"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.8f,0f],scale:[0.5f,0.5f,0.5f]},item:{id:"minecraft:blaze_powder",count:1,components:{"minecraft:custom_model_data":3786}}}
scoreboard players set @n[type=item_display,tag=anniR.player_sigil_buff,distance=..0.05] anniR.player_sigil_cooldown 200

#buff
attribute @s generic.attack_damage modifier add annir.sigil_buff 0.25 add_multiplied_base
attribute @s generic.attack_speed modifier add annir.sigil_buff 0.6 add_multiplied_base
attribute @s generic.movement_speed modifier add annir.sigil_buff 0.05 add_value

playsound entity.blaze.shoot player @a[distance=..32] ~ ~ ~ 4
particle minecraft:flame ~ ~1 ~ 0 0 0 0.25 7 normal