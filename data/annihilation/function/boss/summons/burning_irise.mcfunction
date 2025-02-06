execute if score #anniR.global anniR.difficulty matches 0 run summon skeleton ~ ~ ~ {HasVisualFire:1b,DeathLootTable:"minecraft:empty",PersistenceRequired:1b,CanPickUpLoot:0b,Health:20f,Tags:["anniR.immune","anniR.summoned"],HandItems:[{id:"minecraft:bow",count:1,components:{"minecraft:unbreakable":{},"minecraft:enchantments":{levels:{"minecraft:flame":2,"minecraft:power":7}}}},{}],HandDropChances:[0.000F,0.085F],ArmorItems:[{},{},{},{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzc0YTNiODEyYmNhM2FhYjQ0NTQ5NzAyYWQ1NmYzMmY0Mzk1MjIwNzMyMjBkODU0NTBlNDQyZGMyZTE3MzMzIn19fQ=="}]}}}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F],active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b,ambient:0b},{id:"minecraft:fire_resistance",amplifier:1,duration:-1,show_particles:0b,ambient:0b}],attributes:[{id:"minecraft:generic.follow_range",base:128},{id:"minecraft:generic.gravity",base:0},{id:"minecraft:generic.max_health",base:20},{id:"minecraft:generic.movement_efficiency",base:0},{id:"minecraft:generic.water_movement_efficiency",base:0}]}
execute if score #anniR.global anniR.difficulty matches 1 run summon skeleton ~ ~ ~ {HasVisualFire:1b,DeathLootTable:"minecraft:empty",PersistenceRequired:1b,CanPickUpLoot:0b,Health:28f,Tags:["anniR.immune","anniR.summoned"],HandItems:[{id:"minecraft:bow",count:1,components:{"minecraft:unbreakable":{},"minecraft:enchantments":{levels:{"minecraft:flame":2,"minecraft:power":12}}}},{}],HandDropChances:[0.000F,0.085F],ArmorItems:[{},{},{},{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzc0YTNiODEyYmNhM2FhYjQ0NTQ5NzAyYWQ1NmYzMmY0Mzk1MjIwNzMyMjBkODU0NTBlNDQyZGMyZTE3MzMzIn19fQ=="}]}}}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F],active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b,ambient:0b},{id:"minecraft:fire_resistance",amplifier:1,duration:-1,show_particles:0b,ambient:0b}],attributes:[{id:"minecraft:generic.follow_range",base:128},{id:"minecraft:generic.gravity",base:0},{id:"minecraft:generic.max_health",base:28},{id:"minecraft:generic.movement_efficiency",base:0},{id:"minecraft:generic.water_movement_efficiency",base:0}]}
execute if score #anniR.global anniR.difficulty matches 2 run summon skeleton ~ ~ ~ {HasVisualFire:1b,DeathLootTable:"minecraft:empty",PersistenceRequired:1b,CanPickUpLoot:0b,Health:37f,Tags:["anniR.immune","anniR.summoned"],HandItems:[{id:"minecraft:bow",count:1,components:{"minecraft:unbreakable":{},"minecraft:enchantments":{levels:{"minecraft:flame":2,"minecraft:power":19}}}},{}],HandDropChances:[0.000F,0.085F],ArmorItems:[{},{},{},{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzc0YTNiODEyYmNhM2FhYjQ0NTQ5NzAyYWQ1NmYzMmY0Mzk1MjIwNzMyMjBkODU0NTBlNDQyZGMyZTE3MzMzIn19fQ=="}]}}}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F],active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b,ambient:0b},{id:"minecraft:fire_resistance",amplifier:1,duration:-1,show_particles:0b,ambient:0b}],attributes:[{id:"minecraft:generic.follow_range",base:128},{id:"minecraft:generic.gravity",base:0},{id:"minecraft:generic.max_health",base:37},{id:"minecraft:generic.movement_efficiency",base:0},{id:"minecraft:generic.water_movement_efficiency",base:0}]}

execute if score #anniR.global anniR.team matches 1 run team join annihilation_team @n[type=skeleton,tag=anniR.immune,tag=anniR.summoned,distance=..1]