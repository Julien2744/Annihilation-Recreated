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
tellraw @s [{"text":"Annihilation Recreated config:","color":"gray","underlined":true,"bold":false}]
tellraw @s [{"text":" "}]

#difficulty
execute if score #anniR_global anniR_difficulty matches 0 run tellraw @s [{"text":"  ","underlined":false},{"text":"set difficulty :","color":"gray","underlined":true},{"text":" ","underlined":false},{"text":"[vanilla]","color":"green","underlined":false},{"text":"  ","underlined":false},{"text":"modded","color":"red","underlined":false,"clickEvent":{"action":"run_command","value":"/function annihilation:admin/config/modded"}},{"text":"  ","underlined":false},{"text":"heavy_modded","color":"red","underlined":false,"clickEvent":{"action":"run_command","value":"/function annihilation:admin/config/heavy_modded"}}]
execute if score #anniR_global anniR_difficulty matches 1 run tellraw @s [{"text":"  ","underlined":false},{"text":"set difficulty :","color":"gray","underlined":true},{"text":" ","underlined":false},{"text":"vanilla","color":"red","underlined":false,"clickEvent":{"action":"run_command","value":"/function annihilation:admin/config/vanillia"}},{"text":"  ","underlined":false},{"text":"[modded]","color":"green","underlined":false},{"text":"  ","underlined":false},{"text":"heavy_modded","color":"red","underlined":false,"clickEvent":{"action":"run_command","value":"/function annihilation:admin/config/heavy_modded"}}]
execute if score #anniR_global anniR_difficulty matches 2 run tellraw @s [{"text":"  ","underlined":false},{"text":"set difficulty :","color":"gray","underlined":true},{"text":" ","underlined":false},{"text":"vanilla","color":"red","underlined":false,"clickEvent":{"action":"run_command","value":"/function annihilation:admin/config/vanillia"}},{"text":"  ","underlined":false},{"text":"modded","color":"red","underlined":false,"clickEvent":{"action":"run_command","value":"/function annihilation:admin/config/modded"}},{"text":"  ","underlined":false},{"text":"[heavy_modded]","color":"green","underlined":false}]
tellraw @s [{"text":" "}]

#music
execute if score #anniR_global anniR_music matches 1..2 run tellraw @p [{"text":"  ","underlined":false},{"color":"gray","hoverEvent":{"action":"show_text","value":[{"text":"Annihilation music made by "},{"text":"Texilated","bold":true}]},"text":"set music :","underlined":true},{"text":" ","underlined":false},{"color":"green","text":"[on]","underlined":false},{"text":"  ","underlined":false},{"clickEvent":{"action":"run_command","value":"/function annihilation:admin/config/music_off"},"color":"red","underlined":false,"text":"off"}]
execute if score #anniR_global anniR_music matches 0 run tellraw @p [{"text":"  ","underlined":false},{"color":"gray","hoverEvent":{"action":"show_text","value":[{"text":"Annihilation music made by "},{"text":"Texilated","bold":true}]},"text":"set music :","underlined":true},{"text":" ","underlined":false},{"clickEvent":{"action":"run_command","value":"/function annihilation:admin/config/music_on"},"color":"red","underlined":false,"text":"on"},{"text":"  ","underlined":false},{"color":"green","text":"[off]","underlined":false}]
tellraw @s [{"text":" "}]

#auto team
execute if score #anniR_global anniR_team matches 1 run tellraw @p [{"text":"  ","underlined":false},{"color":"gray","hoverEvent":{"action":"show_text","value":[{"text":"every entities summoned by annihilation will automatically join the team: "},{"text":"annihilation_team","bold":true}]},"text":"set auto-team :","underlined":true},{"text":" ","underlined":false},{"color":"green","text":"[on]","underlined":false},{"text":"  ","underlined":false},{"clickEvent":{"action":"run_command","value":"/function annihilation:admin/config/team_off"},"color":"red","underlined":false,"text":"off"}]
execute if score #anniR_global anniR_team matches 0 run tellraw @p [{"text":"  ","underlined":false},{"color":"gray","hoverEvent":{"action":"show_text","value":[{"text":"every entities summoned by annihilation will automatically join the team: "},{"text":"annihilation_team","bold":true}]},"text":"set auto-team :","underlined":true},{"text":" ","underlined":false},{"clickEvent":{"action":"run_command","value":"/function annihilation:admin/config/team_on"},"color":"red","underlined":false,"text":"on"},{"text":"  ","underlined":false},{"color":"green","text":"[off]","underlined":false}]
tellraw @s [{"text":" "}]

#new sun grief
execute if score #anniR_global anniR_newsun_grief matches 1 run tellraw @p [{"text":"  ","underlined":false},{"color":"gray","hoverEvent":{"action":"show_text","value":[{"text":"new sun will damage every mob when exploded"}]},"text":"set new sun grief :","underlined":true},{"text":" ","underlined":false},{"color":"green","text":"[on]","underlined":false},{"text":"  ","underlined":false},{"clickEvent":{"action":"run_command","value":"/function annihilation:admin/config/new_sun_off"},"color":"red","underlined":false,"text":"off"}]
execute if score #anniR_global anniR_newsun_grief matches 0 run tellraw @p [{"text":"  ","underlined":false},{"color":"gray","hoverEvent":{"action":"show_text","value":[{"text":"new sun will damage every mob when exploded"}]},"text":"set new sun grief :","underlined":true},{"text":" ","underlined":false},{"clickEvent":{"action":"run_command","value":"/function annihilation:admin/config/new_sun_on"},"color":"red","underlined":false,"text":"on"},{"text":"  ","underlined":false},{"color":"green","text":"[off]","underlined":false}]
tellraw @s [{"text":" "}]

#new_sun instakill
execute if score #anniR_global anniR_newsun_kill matches 1 run tellraw @p [{"text":"  ","underlined":false},{"color":"gray","hoverEvent":{"action":"show_text","value":[{"text":"new sun will instakill target and player"}]},"text":"set new sun instakill :","underlined":true},{"text":" ","underlined":false},{"color":"green","text":"[on]","underlined":false},{"text":"  ","underlined":false},{"clickEvent":{"action":"run_command","value":"/function annihilation:admin/config/newsun_kill_off"},"color":"red","underlined":false,"text":"off"}]
execute if score #anniR_global anniR_newsun_kill matches 0 run tellraw @p [{"text":"  ","underlined":false},{"color":"gray","hoverEvent":{"action":"show_text","value":[{"text":"new sun will instakill target and player"}]},"text":"set new sun instakill :","underlined":true},{"text":" ","underlined":false},{"clickEvent":{"action":"run_command","value":"/function annihilation:admin/config/newsun_kill_on"},"color":"red","underlined":false,"text":"on"},{"text":"  ","underlined":false},{"color":"green","text":"[off]","underlined":false}]
tellraw @s [{"text":" "}]