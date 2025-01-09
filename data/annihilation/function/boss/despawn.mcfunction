execute at @a run tag @e[tag=anniR.target,distance=..7,limit=1] remove anniR.target
scoreboard players set @s anniR.despawn 1

function annihilation:boss/death/stop_all_anim

function annihilation:boss/death/kill_all_summons

bossbar remove annihilation_bossbar
bossbar remove annihilation_newsun_comp

function annihilation:boss_summoner/summon

#announce defeat
playsound minecraft:item.trident.thunder hostile @a[distance=..128] ~ ~ ~ 12 0
tellraw @a [{"text":"There were no players left to defeat ","color":"gray"},{"text":"Annihilation","color":"dark_red"},{"text":"...","color":"gray"}]

execute at @a run stopsound @p record annihilation_recreated:annihilation_by_texilated
schedule function annihilation:boss/play_music 3s

#despawn anni
kill @n[type=cow,nbt={NoAI:1b,Tags:["anniR.hitbox","anniR.immune"]},distance=..2]
function animated_java:annihilation_recreated/remove/this

#check if there any more anni
execute unless entity @e[type=item_display,tag=aj.annihilation_recreated.root,limit=1] run scoreboard players set #anniR.global anniR.spawned 0