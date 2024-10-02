#filler to only show the ui
playsound minecraft:ui.button.click neutral @s
tellraw @s [{"text":" "}]
tellraw @s [{"text":" "}]
tellraw @s [{"text":" "}]
tellraw @s [{"text":" "}]
tellraw @s [{"text":" "}]
tellraw @s [{"text":" "}]
tellraw @s [{"text":" "}]
tellraw @s [{"text":" "}]
tellraw @s [{"text":" "}]
tellraw @s [{"text":" "}]
tellraw @s [{"text":" "}]
tellraw @s [{"text":" "}]
tellraw @s [{"text":" "}]
tellraw @s [{"text":" "}]
tellraw @s [{"text":" "}]
tellraw @s [{"text":" "}]
tellraw @s [{"text":" "}]
tellraw @s [{"text":" "}]
tellraw @s [{"text":" "}]
tellraw @s [{"text":" "}]
tellraw @s [{"text":" "}]
tellraw @s [{"text":" "}]

#top message
tellraw @s [{"text":"Annihilation Recreated config:","color":"white","bold":true}]
tellraw @s [{"text":" "}]

#difficulty
execute if score #anniR_global anniR_difficulty matches 0 run tellraw @s [{"text":"set difficulty :","color":"gray","underlined":true},{"text":"               ","underlined":false},{"text":"vanilla","color":"green","bold":true,"underlined":true},{"text":"    ","underlined":false},{"text":"modded","color":"red","clickEvent":{"action":"run_command","value":"/function annihilation:admin/config/modded"}},{"text":"     ","underlined":false},{"text":"heavy_modded","color":"red","clickEvent":{"action":"run_command","value":"/function annihilation:admin/config/heavy_modded"}}]
execute if score #anniR_global anniR_difficulty matches 1 run tellraw @s [{"text":"set difficulty :","color":"gray","underlined":true},{"text":"               ","underlined":false},{"text":"vanilla","color":"red","clickEvent":{"action":"run_command","value":"/function annihilation:admin/config/vanillia"}},{"text":"    ","underlined":false},{"text":"modded","color":"green","bold":true,"underlined":true},{"text":"    ","underlined":false},{"text":"heavy_modded","color":"red","clickEvent":{"action":"run_command","value":"/function annihilation:admin/config/heavy_modded"}}]
execute if score #anniR_global anniR_difficulty matches 2 run tellraw @s [{"text":"set difficulty :","color":"gray","underlined":true},{"text":"               ","underlined":false},{"text":"vanilla","color":"red","clickEvent":{"action":"run_command","value":"/function annihilation:admin/config/vanillia"}},{"text":"    ","underlined":false},{"text":"modded","color":"red","clickEvent":{"action":"run_command","value":"/function annihilation:admin/config/modded"}},{"text":"    ","underlined":false},{"text":"heavy_modded","color":"green","bold":true,"underlined":true}]
tellraw @s [{"text":" "}]

#music
execute if score #anniR_global anniR_music matches 1 run tellraw @p [{"color":"gray","hoverEvent":{"action":"show_text","value":[{"text":"music made by "},{"text":"Texilated","color":"white","bold":true}]},"text":"set music :","underlined":true},{"color":"white","text":"                                                      ","underlined":false},{"bold":true,"color":"green","text":"on","underlined":true},{"text":"    ","underlined":false},{"clickEvent":{"action":"run_command","value":"/function annihilation:admin/config/music_off"},"color":"red","text":"off"}]
execute if score #anniR_global anniR_music matches 0 run tellraw @p [{"color":"gray","hoverEvent":{"action":"show_text","value":[{"text":"music made by "},{"text":"Texilated","color":"white","bold":true}]},"text":"set music :","underlined":true},{"color":"white","text":"                                                      ","underlined":false},{"clickEvent":{"action":"run_command","value":"/function annihilation:admin/config/music_on"},"color":"red","text":"on"},{"text":"    ","underlined":false},{"bold":true,"color":"green","text":"off","underlined":true}]
tellraw @s [{"text":" "}]

#auto team
execute if score #anniR_global anniR_team matches 1 run tellraw @p [{"color":"gray","hoverEvent":{"action":"show_text","value":[{"text":"every entities summoned by annihilation will automatically join the team: "},{"text":"annihilation_team","color":"white","bold":true}]},"text":"set auto-team :","underlined":true},{"color":"white","text":"                                                ","underlined":false},{"bold":true,"color":"green","text":"on","underlined":true},{"text":"    ","underlined":false},{"clickEvent":{"action":"run_command","value":"/function annihilation:admin/config/team_off"},"color":"red","text":"off"}]
execute if score #anniR_global anniR_team matches 0 run tellraw @p [{"color":"gray","hoverEvent":{"action":"show_text","value":[{"text":"every entities summoned by annihilation will automatically join the team: "},{"text":"annihilation_team","color":"white","bold":true}]},"text":"set auto-team :","underlined":true},{"color":"white","text":"                                                ","underlined":false},{"clickEvent":{"action":"run_command","value":"/function annihilation:admin/config/team_on"},"color":"red","text":"on"},{"text":"    ","underlined":false},{"bold":true,"color":"green","text":"off","underlined":true}]
tellraw @s [{"text":" "}]

#infernal subjugate grief
execute if score #anniR_global anniR_infsub_grief matches 1 run tellraw @p [{"color":"gray","hoverEvent":{"action":"show_text","value":[{"text":"infernal subjugate will destroy block when spawned to prevent suffocation"}]},"text":"set infernal subjugate grief :","underlined":true},{"color":"white","text":"                             ","underlined":false},{"bold":true,"color":"green","text":"on","underlined":true},{"text":"    ","underlined":false},{"clickEvent":{"action":"run_command","value":"/function annihilation:admin/config/infsub_grief_off"},"color":"red","text":"off"}]
execute if score #anniR_global anniR_infsub_grief matches 0 run tellraw @p [{"color":"gray","hoverEvent":{"action":"show_text","value":[{"text":"infernal subjugate will destroy block when spawned to prevent suffocation"}]},"text":"set infernak subjugate grief :","underlined":true},{"color":"white","text":"                             ","underlined":false},{"clickEvent":{"action":"run_command","value":"/function annihilation:admin/config/infsub_grief_on"},"color":"red","text":"on"},{"text":"    ","underlined":false},{"bold":true,"color":"green","text":"off","underlined":true}]
