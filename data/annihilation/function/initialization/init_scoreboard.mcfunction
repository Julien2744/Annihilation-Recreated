#global
#annihilation
#0: false ; 1: true
scoreboard objectives add anniR.spawned dummy
#0: off(no-instakill) ; 1: on(instakill)
scoreboard objectives add anniR.newsun_kill dummy
#0: demand nether.start ; 1: demand netherite.1 ; 2: demand netherite.2 ; 3: boss summoned   only for boss summoned in the structure
scoreboard objectives add anniR.boss_summoner dummy
#0: false ; 1: true
scoreboard objectives add anniR.00_loaded dummy
#config
#0: vanillia ; 1: modded : 2: heavy.modded
scoreboard objectives add anniR.difficulty dummy
#0: off ; 1: on
scoreboard objectives add anniR.onlyTrophy dummy
#0: off ; 1: on ; 2: music is playing
scoreboard objectives add anniR.music dummy
#0: off ; 1: on
scoreboard objectives add anniR.team dummy
scoreboard objectives add anniR.newsun_grief dummy
#0: off ; 1: on
scoreboard objectives add anniR.subjugate_beam dummy
#gamerule
#0: false ; 1: true
scoreboard objectives add anniR.checkMobLoot dummy
scoreboard objectives add anniR.checkMobGrief dummy
#math
scoreboard objectives add anniR.newsun_div dummy
#other
scoreboard objectives add anniR.player_sigil_buffed dummy
scoreboard objectives add anniR.player_sigil_cooldown dummy

#local
#annihilation
#0: false ; 1: true
scoreboard objectives add anniR.struct_spawned dummy
#0: false ; 1: true
scoreboard objectives add anniR.death dummy
#0: isn't ; number of ability buffed (decrease)
scoreboard objectives add anniR.isBuffed dummy
scoreboard objectives add anniR.buffedCount dummy
scoreboard objectives add anniR.playerCount dummy
#Id start at 1 (0 = no anim) and are the same order in the official wiki (ex. rake = 1, flense = 2)
scoreboard objectives add anniR.abilityID dummy
scoreboard objectives add anniR.abilityCooldown dummy
#0: isn't playing/long ; 1: short ; 2: bridge
scoreboard objectives add anniR.cleasingAnim dummy
scoreboard objectives add anniR.health_pour dummy
scoreboard objectives add anniR.health dummy
scoreboard objectives add anniR.motX dummy
scoreboard objectives add anniR.motY dummy
scoreboard objectives add anniR.motZ dummy
scoreboard objectives add anniR.pitch dummy
scoreboard objectives add anniR.yaw dummy
scoreboard objectives add anniR.new_sun dummy
#0: false ; 1: true
scoreboard objectives add anniR.despawn dummy
#use for math
scoreboard objectives add anniR.math.mem dummy
scoreboard objectives add anniR.math.div dummy
#other
scoreboard objectives add anniR.as_turn dummy
scoreboard objectives add anniR.newsun_comp dummy
scoreboard objectives add anniR.newsun_size dummy

#initialize (only for global)
#annihilation
scoreboard players set #anniR.global anniR.spawned 0
scoreboard players set #anniR.global anniR.boss_summoner 0
#config
scoreboard players set #anniR.global anniR.difficulty 0
scoreboard players set #anniR.global anniR.onlyTrophy 0
scoreboard players set #anniR.global anniR.music 1
scoreboard players set #anniR.global anniR.team 0
scoreboard players set #anniR.global anniR.newsun_kill 0
scoreboard players set #anniR.global anniR.newsun_grief 0
scoreboard players set #anniR.global anniR.subjugate_beam 1
#math
scoreboard players set #anniR.global anniR.newsun_div 20

#create team
team add annihilation_team
team modify annihilation_team color dark_red
team modify annihilation_team friendlyFire false
team modify annihilation_team seeFriendlyInvisibles false
team modify annihilation_team collisionRule pushOtherTeams

## scoreboard version ##
scoreboard players set #anniR.load anniR.scoreboardVersion 8

#end of initialisating
scoreboard players set #anniR.load anniR.loadScoreboard 1

say scoreboard finished