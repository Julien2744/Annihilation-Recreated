execute at @a run tp @e[type=magma_cube,nbt={NoAI:1b,Size:7}] ~ ~-999 ~
execute at @a run data modify entity @e[type=magma_cube,nbt={NoAI:1b,Size:7},limit=1,sort=nearest] Size set value 0
execute at @a run data modify entity @e[type=magma_cube,nbt={NoAI:1b,Size:7},limit=1,sort=nearest] DeathLootTable set value "minecraft:empty"