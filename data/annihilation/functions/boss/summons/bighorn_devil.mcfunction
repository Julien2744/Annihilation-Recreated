execute if score #anniR_global anniR_difficulty matches 0 run summon piglin ~ ~ ~ {DeathLootTable:"minecraft:empty",PersistenceRequired:1b,CanPickUpLoot:0b,Health:10f,IsImmuneToZombification:1b,CannotHunt:1b,Tags:["anni_immune"],HandItems:[{id:"minecraft:netherite_sword",Count:1b,tag:{Unbreakable:1b}},{}],HandDropChances:[0.000F,0.085F],ArmorItems:[{id:"minecraft:netherite_boots",Count:1b,tag:{Unbreakable:1b,Trim:{material:"minecraft:redstone",pattern:"minecraft:rib"}}},{id:"minecraft:netherite_leggings",Count:1b,tag:{Unbreakable:1b,Trim:{material:"minecraft:redstone",pattern:"minecraft:silence"}}},{id:"minecraft:netherite_chestplate",Count:1b,tag:{Unbreakable:1b,Trim:{material:"minecraft:redstone",pattern:"minecraft:snout"}}},{id:"minecraft:netherite_helmet",Count:1b,tag:{Unbreakable:1b,Trim:{material:"minecraft:redstone",pattern:"minecraft:vex"}}}],ArmorDropChances:[0.000F,0.000F,0.000F,0.000F],ActiveEffects:[{Id:12,Amplifier:5b,Duration:-1,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:10},{Name:generic.knockback_resistance,Base:0},{Name:generic.movement_speed,Base:0.25},{Name:generic.attack_damage,Base:15},{Name:generic.attack_knockback,Base:2},{Name:generic.follow_range,Base:100}]}
execute if score #anniR_global anniR_difficulty matches 1 run summon piglin ~ ~ ~ {DeathLootTable:"minecraft:empty",PersistenceRequired:1b,CanPickUpLoot:0b,Health:25f,IsImmuneToZombification:1b,CannotHunt:1b,Tags:["anni_immune"],HandItems:[{id:"minecraft:netherite_sword",Count:1b,tag:{Unbreakable:1b}},{}],HandDropChances:[0.000F,0.085F],ArmorItems:[{id:"minecraft:netherite_boots",Count:1b,tag:{Unbreakable:1b,Trim:{material:"minecraft:redstone",pattern:"minecraft:rib"}}},{id:"minecraft:netherite_leggings",Count:1b,tag:{Unbreakable:1b,Trim:{material:"minecraft:redstone",pattern:"minecraft:silence"}}},{id:"minecraft:netherite_chestplate",Count:1b,tag:{Unbreakable:1b,Trim:{material:"minecraft:redstone",pattern:"minecraft:snout"}}},{id:"minecraft:netherite_helmet",Count:1b,tag:{Unbreakable:1b,Trim:{material:"minecraft:redstone",pattern:"minecraft:vex"}}}],ArmorDropChances:[0.000F,0.000F,0.000F,0.000F],ActiveEffects:[{Id:12,Amplifier:5b,Duration:-1,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:25},{Name:generic.knockback_resistance,Base:0},{Name:generic.movement_speed,Base:0.25},{Name:generic.attack_damage,Base:27},{Name:generic.attack_knockback,Base:2},{Name:generic.follow_range,Base:100}]}
execute if score #anniR_global anniR_difficulty matches 2 run summon piglin ~ ~ ~ {DeathLootTable:"minecraft:empty",PersistenceRequired:1b,CanPickUpLoot:0b,Health:40f,IsImmuneToZombification:1b,CannotHunt:1b,Tags:["anni_immune"],HandItems:[{id:"minecraft:netherite_sword",Count:1b,tag:{Unbreakable:1b}},{}],HandDropChances:[0.000F,0.085F],ArmorItems:[{id:"minecraft:netherite_boots",Count:1b,tag:{Unbreakable:1b,Trim:{material:"minecraft:redstone",pattern:"minecraft:rib"}}},{id:"minecraft:netherite_leggings",Count:1b,tag:{Unbreakable:1b,Trim:{material:"minecraft:redstone",pattern:"minecraft:silence"}}},{id:"minecraft:netherite_chestplate",Count:1b,tag:{Unbreakable:1b,Trim:{material:"minecraft:redstone",pattern:"minecraft:snout"}}},{id:"minecraft:netherite_helmet",Count:1b,tag:{Unbreakable:1b,Trim:{material:"minecraft:redstone",pattern:"minecraft:vex"}}}],ArmorDropChances:[0.000F,0.000F,0.000F,0.000F],ActiveEffects:[{Id:12,Amplifier:5b,Duration:-1,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:40},{Name:generic.knockback_resistance,Base:0},{Name:generic.movement_speed,Base:0.25},{Name:generic.attack_damage,Base:32},{Name:generic.attack_knockback,Base:2},{Name:generic.follow_range,Base:100}]}

damage @e[type=piglin,limit=1,distance=0,tag=anni_immune] 0 mob_attack by @e[tag=anni_target,distance=..128,limit=1]

execute if score #anniR_global anniR_team matches 1 run team join annihilation_team @e[type=piglin,tag=anni_immune,distance=..0,limit=1,sort=nearest]