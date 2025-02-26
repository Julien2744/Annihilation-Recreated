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

#top message
tellraw @s [{"text":"Annihilation Recreated config:","color":"gray","underlined":true,"bold":false}]
tellraw @s [{"text":" "}]

#difficulty
execute if score #anniR.global anniR.difficulty matches 0 run tellraw @s [{"text":" - difficulty :           ","color":"gray"},{"text":"[vanilla]  ","color":"green"},{"text":"modded  ","color":"red","clickEvent":{"action":"run_command","value":"/function annihilation:admin/config/modded"}},{"text":"heavy_modded","color":"red","clickEvent":{"action":"run_command","value":"/function annihilation:admin/config/heavy_modded"}}]
execute if score #anniR.global anniR.difficulty matches 1 run tellraw @s [{"text":" - difficulty :           ","color":"gray"},{"text":"vanilla  ","color":"red","clickEvent":{"action":"run_command","value":"/function annihilation:admin/config/vanillia"}},{"text":"[modded]  ","color":"green"},{"text":"heavy_modded","color":"red","clickEvent":{"action":"run_command","value":"/function annihilation:admin/config/heavy_modded"}}]
execute if score #anniR.global anniR.difficulty matches 2 run tellraw @s [{"text":" - difficulty :           ","color":"gray"},{"text":"vanilla  ","color":"red","clickEvent":{"action":"run_command","value":"/function annihilation:admin/config/vanillia"}},{"text":"modded  ","color":"red","clickEvent":{"action":"run_command","value":"/function annihilation:admin/config/modded"}},{"text":"[heavy_modded]","color":"green"}]
tellraw @s [{"text":" "}]

#only trophy
execute if score #anniR.global anniR.onlyTrophy matches 1 run tellraw @s [{"color":"gray","hoverEvent":{"action":"show_text","value":[{"text":"Annihilation will only drop the trophy"}]},"text":" - only trophy :                   "},{"color":"green","text":"[on]  "},{"clickEvent":{"action":"run_command","value":"/function annihilation:admin/config/only_trophy_off"},"color":"red","text":"off"}]
execute if score #anniR.global anniR.onlyTrophy matches 0 run tellraw @s [{"color":"gray","hoverEvent":{"action":"show_text","value":[{"text":"Annihilation will only drop the trophy"}]},"text":" - only trophy :                   "},{"clickEvent":{"action":"run_command","value":"/function annihilation:admin/config/only_trophy_on"},"color":"red","text":"on  "},{"color":"green","text":"[off]"}]
tellraw @s [{"text":" "}]

#music
execute if score #anniR.global anniR.music matches 1..2 run tellraw @s [{"color":"gray","hoverEvent":{"action":"show_text","value":[{"text":"Annihilation music made by "},{"text":"Texilated","bold":true}]},"text":" - music :                           "},{"color":"green","text":"[on]  "},{"clickEvent":{"action":"run_command","value":"/function annihilation:admin/config/music_off"},"color":"red","text":"off"}]
execute if score #anniR.global anniR.music matches 0 run tellraw @s [{"color":"gray","hoverEvent":{"action":"show_text","value":[{"text":"Annihilation music made by "},{"text":"Texilated","bold":true}]},"text":" - music :                           "},{"clickEvent":{"action":"run_command","value":"/function annihilation:admin/config/music_on"},"color":"red","text":"on  "},{"color":"green","text":"[off]"}]
tellraw @s [{"text":" "}]

#auto team
execute if score #anniR.global anniR.team matches 1 run tellraw @s [{"color":"gray","hoverEvent":{"action":"show_text","value":[{"text":"every entities summoned by annihilation will automatically join the team: "},{"text":"annihilation_team","bold":false}]},"text":" - auto-team :                     "},{"color":"green","text":"[on]  "},{"clickEvent":{"action":"run_command","value":"/function annihilation:admin/config/team_off"},"color":"red","text":"off"}]
execute if score #anniR.global anniR.team matches 0 run tellraw @s [{"color":"gray","hoverEvent":{"action":"show_text","value":[{"text":"every entities summoned by annihilation will automatically join the team: "},{"text":"annihilation_team","bold":false}]},"text":" - auto-team :                     "},{"clickEvent":{"action":"run_command","value":"/function annihilation:admin/config/team_on"},"color":"red","text":"on  "},{"color":"green","text":"[off]"}]
tellraw @s [{"text":" "}]

#new sun grief
execute if score #anniR.global anniR.newsun_grief matches 1 run tellraw @s [{"color":"gray","hoverEvent":{"action":"show_text","value":[{"text":"new sun will damage every mob when exploded"}]},"text":" - new sun grief :                "},{"color":"green","text":"[on]  "},{"clickEvent":{"action":"run_command","value":"/function annihilation:admin/config/new_sun_off"},"color":"red","text":"off"}]
execute if score #anniR.global anniR.newsun_grief matches 0 run tellraw @s [{"color":"gray","hoverEvent":{"action":"show_text","value":[{"text":"new sun will damage every mob when exploded"}]},"text":" - new sun grief :                "},{"clickEvent":{"action":"run_command","value":"/function annihilation:admin/config/new_sun_on"},"color":"red","text":"on  "},{"color":"green","text":"[off]"}]
tellraw @s [{"text":" "}]

#new_sun instakill
execute if score #anniR.global anniR.newsun_kill matches 1 run tellraw @s [{"color":"gray","hoverEvent":{"action":"show_text","value":[{"text":"new sun will instakill target and player"}]},"text":" - new sun instakill :             "},{"color":"green","text":"[on]  "},{"clickEvent":{"action":"run_command","value":"/function annihilation:admin/config/newsun_kill_off"},"color":"red","text":"off"}]
execute if score #anniR.global anniR.newsun_kill matches 0 run tellraw @s [{"color":"gray","hoverEvent":{"action":"show_text","value":[{"text":"new sun will instakill target and player"}]},"text":" - new sun instakill :             "},{"clickEvent":{"action":"run_command","value":"/function annihilation:admin/config/newsun_kill_on"},"color":"red","text":"on  "},{"color":"green","text":"[off]"}]
tellraw @s [{"text":" "}]

#subjugate beam
execute if score #anniR.global anniR.subjugate_beam matches 1 run tellraw @s [{"color":"gray","hoverEvent":{"action":"show_text","value":[{"text":"Infernal Subjugate will showcase an end crystal beam at Annihilation"}]},"text":" - Infernal Subjugate beam :  "},{"color":"green","text":"[on]  "},{"clickEvent":{"action":"run_command","value":"/function annihilation:admin/config/subjugate_beam_off"},"color":"red","text":"off"}]
execute if score #anniR.global anniR.subjugate_beam matches 0 run tellraw @s [{"color":"gray","hoverEvent":{"action":"show_text","value":[{"text":"Infernal Subjugate will showcase an end crystal beam at Annihilation"}]},"text":" - Infernal Subjugate beam :  "},{"clickEvent":{"action":"run_command","value":"/function annihilation:admin/config/subjugate_beam_on"},"color":"red","text":"on  "},{"color":"green","text":"[off]"}]
tellraw @s [{"text":" "}]