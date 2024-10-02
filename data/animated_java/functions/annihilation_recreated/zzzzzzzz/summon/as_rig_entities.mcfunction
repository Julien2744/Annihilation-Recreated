scoreboard players operation @s aj.id = .aj.last_id aj.id
tag @s remove aj.new
function #animated_java:annihilation_recreated/on_summon/as_rig_entities
execute if entity @s[tag=aj.annihilation_recreated.bone] run function #animated_java:annihilation_recreated/zzzzzzzz/on_summon/as_bones

