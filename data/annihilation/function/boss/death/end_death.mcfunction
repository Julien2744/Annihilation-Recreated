#loot
execute store result score #anniR.global anniR.checkMobLoot run gamerule doMobLoot

execute if score #anniR.global anniR.onlyTrophy matches 0 if score #anniR.global anniR.checkMobLoot matches 1 run fill ^ ^ ^5 ^ ^1 ^5 air destroy
execute if score #anniR.global anniR.onlyTrophy matches 0 if score #anniR.global anniR.checkMobLoot matches 1 if score #anniR.global anniR.difficulty matches 0 run setblock ^ ^ ^5 chest[facing=east]{LootTable:"annihilation:vanilla_loot"}
execute if score #anniR.global anniR.onlyTrophy matches 0 if score #anniR.global anniR.checkMobLoot matches 1 if score #anniR.global anniR.difficulty matches 1 run setblock ^ ^ ^5 chest[facing=east]{LootTable:"annihilation:modded_loot"}
execute if score #anniR.global anniR.onlyTrophy matches 0 if score #anniR.global anniR.checkMobLoot matches 1 if score #anniR.global anniR.difficulty matches 2 run setblock ^ ^ ^5 chest[facing=east]{LootTable:"annihilation:heavy_modded_loot"}

execute if score #anniR.global anniR.checkMobLoot matches 1 run summon item ^ ^1 ^5 {Glowing:1b,CustomNameVisible:1b,CustomName:'{"color":"dark_purple","text":"Corrupted Trophy"}',Item:{id:"minecraft:nether_wart",count:1,components:{"minecraft:item_name":'"Corrupted Trophy"',"minecraft:fire_resistant":{},"minecraft:rarity":"epic","minecraft:custom_model_data":167808}}}

execute if score @s anniR.struct_spawned matches 1 run function annihilation:boss_summoner/summon

function animated_java:annihilation_recreated/remove/this

execute unless entity @n[type=item_display,tag=aj.annihilation_recreated.root] run bossbar remove annihilation_bossbar
execute unless entity @n[type=item_display,tag=aj.annihilation_recreated.root] run bossbar remove annihilation_newsun_comp
execute unless entity @n[type=item_display,tag=aj.annihilation_recreated.root] run tag @e[tag=anniR.target,distance=..128,limit=1] remove anniR.target

#check if there any more anni
execute unless entity @e[type=item_display,tag=aj.annihilation_recreated.root,limit=1] run scoreboard players set #anniR.global anniR.spawned 0