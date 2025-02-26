#every command here is executed as root model at the root

#execute commands if the boss has taken damage
execute as @n[type=cow,nbt={NoAI:1b,HurtTime:9s,Tags:["anniR.hitbox","anniR.immune"]},distance=..2] run function annihilation:boss/hurt

#auto-target using the hitbox minecraft target
execute unless entity @e[tag=anniR.target,distance=..128] run execute as @n[type=cow,nbt={NoAI:1b,Tags:["anniR.hitbox","anniR.immune"]},distance=..2] at @s on target run function annihilation:set_target

#make the head stuck the the model
execute if entity @n[type=cow,nbt={NoAI:1b,Tags:["anniR.hitbox","anniR.immune"]},distance=..2] run execute positioned ~ ~8.25 ~ unless entity @n[type=item_display,tag=aj.annir_head.root,distance=..0.25] run tp @n[type=item_display,tag=aj.annir_head.root,distance=..128] ~ ~ ~
#make the hitbox stuck to model if dismounted
execute on passengers unless entity @s[type=cow,nbt={NoAI:1b,Tags:["anniR.hitbox","anniR.immune"]}] run ride @n[type=cow,nbt={NoAI:1b,Tags:["anniR.hitbox","anniR.immune"]},distance=..4] mount @s

#check if the boss died
execute unless score @s anniR.death matches 1 run execute unless entity @n[type=cow,nbt={NoAI:1b,Tags:["anniR.hitbox","anniR.immune"]},distance=..2] run function annihilation:boss/death/init_death

#refresh boss health bar (excluded from hurt because of regen and not updated when the boss die)
execute store result score @s anniR.health run data get entity @n[type=cow,nbt={NoAI:1b,Tags:["anniR.hitbox","anniR.immune"]},distance=..2] Health
execute store result bossbar annihilation_bossbar value run scoreboard players get @s anniR.health
bossbar set annihilation_bossbar name [{"text":"Annihilation","color":"red"},{"text":" - ","color":"gray"},{"score":{"name":"@s","objective":"anniR.health"},"color":"red"},{"text":"❤","color":"dark_red"}]

#face target
execute if entity @e[tag=anniR.target,distance=..128,limit=1] run execute if score @s anniR.cleasingAnim matches 0 as @n[type=item_display,tag=aj.annir_head.root,distance=..10] at @s run tp @s ~ ~ ~ facing entity @e[tag=anniR.target,distance=..128,limit=1] eyes
execute if entity @e[tag=anniR.target,distance=..128,limit=1] run execute if score @s anniR.cleasingAnim matches 0 store result score @s anniR.pitch run data get entity @n[type=item_display,tag=aj.annir_head.root,distance=..10] Rotation[1]

#attack/ability
#cooldown
execute if entity @n[type=cow,nbt={NoAI:1b,Tags:["anniR.hitbox","anniR.immune"]},distance=..2] unless score @s anniR.abilityCooldown matches 0 run scoreboard players remove @s anniR.abilityCooldown 1
execute unless score @s anniR.isBuffed matches 0 if entity @n[type=cow,nbt={NoAI:1b,Tags:["anniR.hitbox","anniR.immune"]},distance=..2] unless score @s anniR.abilityCooldown matches 0 if predicate annihilation:random_8 run scoreboard players remove @s anniR.abilityCooldown 1

#execute ability
execute if entity @e[tag=anniR.target,distance=..128,limit=1] if entity @n[type=cow,nbt={NoAI:1b,Tags:["anniR.hitbox","anniR.immune"]},distance=..2] if score @s anniR.abilityCooldown matches 0 run function annihilation:boss/can_attack
#exhort
execute if score @s anniR.abilityCooldown matches ..20 if score @s anniR.pitch matches -90..-30 run execute positioned ^ ^16 ^6 if entity @n[tag=anniR.target,tag=!anniR.immune,distance=..16] run function annihilation:boss/execute_attack {ID:9}
#check ability
#cleasing inferno
#short
execute if score @s anniR.cleasingAnim matches 1 run execute as @n[type=item_display,tag=aj.annir_head.root,distance=..10] at @s run tp @s ~ ~ ~ ~-1.75 ~
#bridge
execute if score @s anniR.cleasingAnim matches 2 run execute as @n[type=item_display,tag=aj.annir_head.root,distance=..10] at @s run tp @s ~ ~ ~ ~ ~-0.95
#meteor
execute as @n[type=cow,nbt={NoAI:1b,Tags:["anniR.hitbox","anniR.immune"]},distance=..2] unless score @s anniR.abilityCooldown matches 0 run function annihilation:boss/effects/check_meteor
#red_ring
execute if entity @e[type=item_display,tag=aj.annir_apocalyptic_sigil.root,limit=1,distance=..128] run execute as @e[type=item_display,tag=aj.annir_apocalyptic_sigil.root,limit=1,distance=..128] at @s run function annihilation:boss/effects/red_ring
#death_ring
execute if entity @e[type=item_display,tag=aj.annir_death_beams.root,tag=aj.annir_death_beams.animation.attack.playing,limit=1,distance=..128] run execute as @e[type=item_display,tag=aj.annir_death_beams.root,tag=aj.annir_death_beams.animation.attack.playing,limit=1,distance=..128] at @s run function annihilation:boss/effects/death_ring
#infernal subjugate
execute if entity @e[type=end_crystal,distance=..128,tag=anniR.summoned,tag=anniR.regen] run execute as @e[type=end_crystal,distance=..128,tag=anniR.summoned,tag=anniR.regen] at @s run function annihilation:boss/effects/subjugate_heal
#new sun
execute if score @s anniR.new_sun matches 1..2 run execute if entity @e[type=item_display,limit=1,tag=anniR.new_sun_display,tag=anniR.immune,tag=anniR.summoned,distance=..32] run execute as @e[type=item_display,limit=1,tag=anniR.new_sun_display,tag=anniR.immune,tag=anniR.summoned,distance=..32] at @s run function annihilation:boss/effects/new_sun_check

#check sigil (buff)
execute unless score @s anniR.abilityCooldown matches 0 if score @s anniR.isBuffed matches 0 run data modify entity @n[type=item_display,tag=aj.annir_head.bone.sigil,distance=..12] view_range set value 0.0f