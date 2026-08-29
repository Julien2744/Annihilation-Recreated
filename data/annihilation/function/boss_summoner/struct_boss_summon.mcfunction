scoreboard players set #anniR.global anniR.boss_summoner 0

#summon
function annihilation:admin/_/summon
scoreboard players set @n[type=item_display,tag=aj.annihilation_recreated.root,distance=..4] anniR.struct_spawned 1
execute at @n[type=cow,nbt={NoAI:1b,Tags:["anniR.hitbox","anniR.immune"]},distance=..4] run function annihilation:boss/anim_head
execute as @n[type=item_display,tag=aj.annihilation_recreated.root,distance=..4] at @s run function animated_java:annihilation_recreated/animations/entrance/play
effect give @n[type=cow,nbt={NoAI:1b,Tags:["anniR.hitbox","anniR.immune"]},distance=..4] resistance 5 3 true

#anti-suffocation
#execute store result score #anniR.global anniR.checkMobGrief run gamerule mobGriefing
#execute if score #anniR.global anniR.checkMobGrief matches 1 run execute as @n[type=item_display,tag=aj.annihilation_recreated.root,distance=..4] at @s run fill ^10 ^12 ^4 ^-10 ^ ^-2 air destroy

#remove maker
kill @s

#sound
playsound minecraft:entity.warden.emerge hostile @a[distance=..90] ~ ~ ~ 10