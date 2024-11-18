#global
#annihilation
#0: false ; 1: true
scoreboard objectives add anniR_spawned dummy
scoreboard objectives add anniR_visibleHitbox dummy
#0: off(no-instakill) ; 1: on(instakill)
scoreboard objectives add anniR_newsun_kill dummy
#0: demand nether_start ; 1: demand netherite_1 ; 2: demand netherite_2 ; 3: boss summoned   only for boss summoned in the structure
scoreboard objectives add anniR_boss_summoner dummy
#0: false ; 1: true
scoreboard objectives add anniR_00_loaded dummy
#config
#0: vanillia ; 1: modded : 2: heavy_modded
scoreboard objectives add anniR_difficulty dummy
#0: off ; 1: on
scoreboard objectives add anniR_onlyTrophy dummy
#0: off ; 1: on ; 2: music is playing
scoreboard objectives add anniR_music dummy
#0: off ; 1: on
scoreboard objectives add anniR_team dummy
scoreboard objectives add anniR_newsun_grief dummy
#gamerule
#0: false ; 1: true
scoreboard objectives add anniR_checkMobLoot dummy
scoreboard objectives add anniR_checkMobGrief dummy
#math
scoreboard objectives add anniR_newsun_div dummy

#local
#annihilation
#0: false ; 1: true
scoreboard objectives add anniR_struct_spawned dummy
#0: false ; 1: true
scoreboard objectives add anniR_death dummy
#0: isn't ; number of ability buffed (decrease)
scoreboard objectives add anniR_isBuffed dummy
scoreboard objectives add anniR_buffedCount dummy
scoreboard objectives add anniR_playerCount dummy
scoreboard objectives add anniR_abilityCooldown dummy
#0: false ; 1: true (only for the aj.annir_head.root)
#scoreboard objectives add anniR_stopTracking dummy
#0: isn't playing/long ; 1: short ; 2: bridge
scoreboard objectives add anniR_cleasingAnim dummy
scoreboard objectives add anniR_health_pour dummy
scoreboard objectives add anniR_health dummy
scoreboard objectives add anni_motX dummy
scoreboard objectives add anni_motY dummy
scoreboard objectives add anni_motZ dummy
scoreboard objectives add anni_pitch dummy
scoreboard objectives add anni_yaw dummy
scoreboard objectives add anniR_new_sun dummy
#0: false ; 1: true
scoreboard objectives add anniR_despawn dummy
#use for math
scoreboard objectives add math_anni_mem dummy
scoreboard objectives add math_anni_div dummy
scoreboard objectives add anni_newsun_div dummy
#other
scoreboard objectives add anniR_as_turn dummy
scoreboard objectives add anniR_newsun_comp dummy
scoreboard objectives add anniR_newsun_size dummy

#initialize (only for global)
#annihilation
scoreboard players set #anniR_global anniR_spawned 0
scoreboard players set #anniR_global anniR_visibleHitbox 0
scoreboard players set #anniR_global anniR_boss_summoner 0
#config
scoreboard players set #anniR_global anniR_difficulty 0
scoreboard players set #anniR_global anniR_onlyTrophy 0
scoreboard players set #anniR_global anniR_music 1
scoreboard players set #anniR_global anniR_team 0
scoreboard players set #anniR_global anniR_newsun_kill 0
scoreboard players set #anniR_global anniR_newsun_grief 0
#math
scoreboard players set #anniR_global anniR_newsun_div 20

#create team
team add annihilation_team
team modify annihilation_team color dark_red
team modify annihilation_team friendlyFire false
team modify annihilation_team seeFriendlyInvisibles false
team modify annihilation_team collisionRule pushOtherTeams

## scoreboard version ##
scoreboard players set #anniR_load anniR_scoreboardVersion 5

#end of initialisating
scoreboard players set #anniR_load anniR_loadScoreboard 1

#say scoreboard finished