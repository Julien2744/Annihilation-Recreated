data modify entity @n[type=item_display,tag=aj.annihilation_recreated.bone.head,distance=..32] view_range set value 0.0f
data modify entity @n[type=item_display,tag=aj.annihilation_recreated.bone.jaw,distance=..32] view_range set value 0.0f
data modify entity @n[type=item_display,tag=aj.annihilation_recreated.bone.bone,distance=..32] view_range set value 0.0f

data modify entity @n[type=item_display,tag=aj.annir_head.bone.head,distance=..32] view_range set value 1.0f
data modify entity @n[type=item_display,tag=aj.annir_head.bone.jaw,distance=..32] view_range set value 1.0f
data modify entity @n[type=item_display,tag=aj.annir_head.bone.bone,distance=..32] view_range set value 1.0f
execute unless score @n[type=item_display,tag=aj.annihilation_recreated.root,distance=..32] anniR.isBuffed matches 0 run data modify entity @n[type=item_display,tag=aj.annir_head.bone.sigil,distance=..32] view_range set value 1.0f