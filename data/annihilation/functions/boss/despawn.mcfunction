#executed as the strcuture boss if there no player left (if the player count is superior to 1)

execute at @a run tag @e[tag=anni_target,distance=..7,limit=1] remove anni_target
scoreboard players set @s anniR_despawn 1

function annihilation:boss/death/stop_all_anim

#kill all summons
function annihilation:boss/death/remove_slime_duplicate
kill @e[type=armor_stand,tag=anni_meteor_s,distance=..128]
kill @e[type=armor_stand,tag=anni_meteor_b,distance=..128]
execute as @e[type=magma_cube,tag=!anni_hitbox,tag=anni_immune,tag=!new_sun_hitbox,distance=..128] run data modify entity @s Size set value 0
kill @e[type=magma_cube,tag=!anni_hitbox,tag=anni_immune,tag=!new_sun_hitbox,distance=..128]
kill @e[type=blaze,tag=anni_immune,distance=..128]
kill @e[type=piglin,tag=anni_immune,distance=..128]
kill @e[type=piglin_brute,tag=anni_immune,distance=..128]
kill @e[type=end_crystal,tag=anni_immune,distance=..128]
kill @e[type=enderman,tag=anni_immune,distance=..128]
kill @e[type=skeleton,tag=anni_immune,distance=..128]
kill @e[type=bat,tag=anni_immune,tag=eye_plat,distance=..128]
kill @e[type=slime,tag=!anni_hitbox,tag=anni_immune,nbt={Size:0},distance=..128]
kill @e[type=item_display,limit=1,tag=new_sun,tag=anni_immune,distance=..32,sort=nearest]
data modify entity @e[type=magma_cube,tag=!anni_hitbox,tag=anni_immune,tag=new_sun_hitbox,distance=..32,limit=1,sort=nearest] Size set value 0
kill @e[type=magma_cube,tag=!anni_hitbox,tag=anni_immune,tag=new_sun_hitbox,distance=..32,sort=nearest,limit=1]

#remove model
execute as @e[type=minecraft:item_display,tag=aj.annir_apocalpytic_sigil.root,distance=..128,limit=1,sort=nearest] run function animated_java:annir_apocalpytic_sigil/remove/this
execute as @e[type=item_display,tag=aj.annir_head.root,limit=1,distance=..10,sort=nearest] run function animated_java:annir_head/remove/this

bossbar remove annihilation_bossbar
bossbar remove annihilation_newsun_comp

function annihilation:boss_summoner/summon

#announce defeat
playsound minecraft:entity.lightning_bolt.thunder hostile @a[distance=..128] ~ ~ ~ 12
tellraw @a [{"text":"There were no players left to defeat ","color":"gray"},{"text":"Annihilation","color":"dark_red"},{"text":"...","color":"gray"}]

execute at @a run stopsound @p record annihilation_recreated:annihilation_by_texilated
schedule function annihilation:boss/play_music 3s

#despawn anni
data modify entity @e[type=magma_cube,nbt={NoAI:1b,Size:16},tag=anni_hitbox,tag=anni_immune,distance=..8,limit=1,sort=nearest] Size set value 0
kill @e[type=magma_cube,nbt={NoAI:1b,Size:0},tag=anni_hitbox,tag=anni_immune,distance=..8,limit=1,sort=nearest]
function animated_java:annihilation_recreated/remove/this