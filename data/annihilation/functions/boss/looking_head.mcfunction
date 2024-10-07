data modify entity @e[type=item_display,tag=aj.annihilation_recreated.bone.head,limit=1,distance=..32,sort=nearest] item.id set value "minecraft:air"
data modify entity @e[type=item_display,tag=aj.annihilation_recreated.bone.jaw,limit=1,distance=..32,sort=nearest] item.id set value "minecraft:air"
data modify entity @e[type=item_display,tag=aj.annihilation_recreated.bone.bone,limit=1,distance=..32,sort=nearest] item.id set value "minecraft:air"

data modify entity @e[type=item_display,tag=aj.annir_head.bone.head,limit=1,distance=..32,sort=nearest] item.id set value "minecraft:nether_brick"
data modify entity @e[type=item_display,tag=aj.annir_head.bone.jaw,limit=1,distance=..32,sort=nearest] item.id set value "minecraft:nether_brick"
data modify entity @e[type=item_display,tag=aj.annir_head.bone.bone,limit=1,distance=..32,sort=nearest] item.id set value "minecraft:nether_brick"
execute unless score @e[type=item_display,tag=aj.annihilation_recreated.root,distance=..32,limit=1,sort=nearest] anniR_isBuffed matches 0 run data modify entity @e[type=item_display,tag=aj.annir_head.bone.sigil,limit=1,distance=..32,sort=nearest] item.id set value "minecraft:nether_brick"