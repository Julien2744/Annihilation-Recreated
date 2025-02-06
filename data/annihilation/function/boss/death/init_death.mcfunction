scoreboard players set @s anniR.death 1

execute if entity @a[distance=..64,advancements={annihilation:nether/kill_annihilation = true}] run advancement grant @a[distance=..64] only annihilation:nether/kill_annihilation

function annihilation:boss/death/stop_all_anim
function annihilation:boss/anim_head

playsound minecraft:entity.ravager.death hostile @a[distance=..90] ~ ~ ~ 10
playsound minecraft:entity.warden.roar hostile @a[distance=..90] ~ ~ ~ 10 0

#kill all summons
function annihilation:boss/death/kill_all_summons

function animated_java:annihilation_recreated/animations/death/play

#unload 00
execute if score #anniR.global anniR.00_loaded matches 0 run forceload remove 0 0