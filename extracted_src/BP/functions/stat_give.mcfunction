
gamerule falldamage false
gamerule showtags false
gamerule sendcommandfeedback false
gamerule commandblockoutput false
gamerule doimmediaterespawn true

effect @a[tag=arenaboss,scores={respawn=1..,lives=1..}] health_boost 0 255 true
effect @a[tag=arenaboss,scores={respawn=1..,lives=1..}] health_boost infinite 244 true
effect @a[tag=arenaboss,scores={respawn=1..,lives=1..}] instant_health 2 25 true

execute as @a[scores={respawn=1..},tag=special_mission_vessel] at @s run function missions/vessel_mission/mission_failed
tag @a[scores={respawn=1..},tag=speech_limited] remove speech_limited

effect @a[scores={respawn=1..},tag=curse] saturation infinite 1 true

tag @a[scores={respawn=1..},tag=delusional1] remove delusional1
tag @a[scores={respawn=1..},tag=delusional2] remove delusional2
tag @a[scores={respawn=1..},tag=delusional3] remove delusional3
tag @a[scores={respawn=1..},tag=delusional4] remove delusional4
tag @a[scores={respawn=1..},tag=delusional5] remove delusional5

scoreboard players set @a[scores={respawn=1..,sukunacutscene=1..}] sukunacutscene 0
execute as @a[scores={respawn=1..}] at @s run scoreboard players add @p[tag=abilitying,rm=0.15,r=50,scores={respawn=0}] guilty_score 1
scoreboard players set @a[scores={respawn=1..,activemission=1..}] activemission 0
scoreboard players set @a[scores={respawn=1..,mission_credit=1..}] mission_credit 0
scoreboard players set @a[scores={respawn=1..,missiontimer=1..}] missiontimer 0
scoreboard players set @a[scores={respawn=1..}] missionsCD 30
scoreboard players set @a[scores={respawn=1..,random_mission=!0}] random_mission 0
scoreboard players set @a[scores={respawn=1..,domain=4..}] domain 3

camera @a[scores={respawn=1..}] clear

execute as @a[tag=instant_body,scores={respawn=1..}] at @s run function idle_transfig/end_transformation

tag @a[scores={respawn=1..},tag=reversecursedobtain] remove reversecursedobtain
tag @a[scores={respawn=1..},tag=rogue_target] remove rogue_target

execute as @a[tag=delusional,scores={respawn=1..}] at @s run function remove_delusional

scoreboard players set @a[scores={respawn=1..,absorption=1..}] absorption 0
scoreboard players set @a[scores={respawn=1..,dying=1..}] dying 0
scoreboard players set @a[scores={respawn=1..,overdose=1..}] overdose 0 
scoreboard players set @a[scores={respawn=1..,sleep=1..}] sleep 0
scoreboard players set @a[scores={respawn=1..,sleep_start=1..}] sleep_start 0
scoreboard players set @a[scores={respawn=1..,speech=1..}] speech 0

execute if entity @e[type=ds:primesoul] run tellraw @a[tag=arenaboss,scores={lives=1..,respawn=1}] {"rawtext":[{"text":"§r§f< §o§lHeroic Prime §r§f> §4Ｗｅａｋ．"}]}
camera @a[tag=arenaboss,scores={lives=1..,respawn=1}] fade time 0 1 1 color 255 255 255
scoreboard players set @a[tag=!arenaboss,scores={respawn=1..,lives=1..}] lives 0

tag @a[scores={respawn=1..},tag=impenetrable2] remove impenetrable2

tag @a[scores={respawn=1..},tag=rapid_assault_trg] remove rapid_assault_trg
tag @a[scores={respawn=1..},tag=rapid_assault] remove rapid_assault

tag @a[scores={respawn=1..},tag=takedown_slam_trg] remove takedown_slam_trg
tag @a[scores={respawn=1..},tag=takedown_slam] remove takedown_slam


tag @a[scores={respawn=1..},tag=idols_debut] remove idols_debut

tag @a[scores={respawn=1..},tag=domain_start] remove domain_start
tag @a[scores={respawn=1..},tag=domain_start2] remove domain_start2

execute as @a[scores={respawn=1..,lives=0},tag=arenaboss] at @s run function rat2
tag @a[scores={respawn=1..,lives=0},tag=arenaboss] remove arenaboss
execute as @a[scores={respawn=1..},tag=arenaboss] unless entity @s[scores={lives=1..}] run scoreboard players set @s lives 3
scoreboard players set @a[scores={respawn=1..,lives=1..},tag=arenaboss] Frames 60
scoreboard players remove @a[scores={respawn=1,lives=1..},tag=arenaboss] lives 1
tp @a[scores={respawn=1..,lives=1..},tag=arenaboss] -60000 240 -60000

tag @a[scores={respawn=1..},tag=focus_striked] remove focus_striked
tag @a[scores={respawn=1..},tag=bodyrepeled] remove bodyrepeled

tag @a[scores={respawn=1..},tag=kiss_countered] remove kiss_countered

tag @a[scores={respawn=1..},tag=transfigure_death] remove transfigure_death
tag @a[scores={respawn=1..},tag=transfigure_death2] remove transfigure_death2

tag @a[scores={respawn=1..},tag=plusultra] remove plusultra
tag @a[scores={respawn=1..},tag=plusultra_brother] remove plusultra_brother
tag @a[scores={respawn=1..},tag=plusultra_victim] remove plusultra_victim

tag @a[scores={respawn=1..},tag=exception_todo] remove exception_todo
tag @a[scores={respawn=1..},tag=exception_brother] remove exception_brother
tag @a[scores={respawn=1..},tag=exception_victim] remove exception_victim

tag @s remove wep1m
tag @s remove wep2m
tag @s remove wep3m
tag @s remove wep4m
tag @s remove wep5m

tag @a[scores={respawn=1..},tag=exception_victim] remove exception_victim
tag @a[scores={respawn=1..},tag=exception_brother] remove exception_brother
tag @a[scores={respawn=1..},tag=exception_todo] remove exception_todo
tag @a[scores={respawn=1..},tag=exception_tag] remove exception_tag
tag @a[scores={respawn=1..},tag=styleswap_tag] remove styleswap_tag
tag @a[scores={respawn=1..},tag=styleswapper] remove styleswapper
tag @a[scores={respawn=1..},tag=styleswap_brother] remove styleswap_brother
tag @a[scores={respawn=1..},tag=styleswap_victim] remove styleswap_victim
tag @a[scores={respawn=1..},tag=jjk_jumptodo] remove jjk_jumptodo
tag @a[scores={respawn=1..},tag=jjk_jumpvictim] remove jjk_jumpvictim
tag @a[scores={respawn=1..},tag=jjk_jumpbrother] remove jjk_jumpbrother
tag @a[scores={respawn=1..},tag=pebblethrown] remove pebblethrown
tag @a[scores={respawn=1..},tag=climax_jumping] remove climax_jumping
tag @a[scores={respawn=1..},tag=falling_tempest] remove falling_tempest
tag @a[scores={respawn=1..},tag=vanishingfangs] remove vanishingfangs
tag @a[scores={respawn=1..},tag=finalflash] remove finalflash
tag @a[scores={respawn=1..},tag=SwiftkickTRG] remove SwiftkickTRG
tag @a[scores={respawn=1..},tag=beru_clash] remove beru_clash
tag @a[scores={respawn=1..},tag=rogue_target] remove rogue_target
tag @a[scores={respawn=1..},tag=leftright] remove leftright
tag @a[scores={respawn=1..},tag=blackflash_marked] remove blackflash_marked
tag @a[scores={respawn=1..},tag=anklecut_finisher] remove anklecut_finisher
tag @a[scores={respawn=1..},tag=anklecut] remove anklecut
tag @a[scores={respawn=1..},tag=cleaved_finisher] remove cleaved_finisher
tag @a[scores={respawn=1..},tag=soulcleaved1] remove soulcleaved1
tag @a[scores={respawn=1..},tag=vengeancefists] remove vengeancefists
tag @a[scores={respawn=1..},tag=finalstrike] remove finalstrike
tag @a[scores={respawn=1..},tag=trikick] remove trikick
tag @a[scores={respawn=1..},tag=twinkicks] remove twinkicks
tag @a[scores={respawn=1..},tag=finalstrike] remove finalstrike
tag @a[scores={respawn=1..},tag=yujifinisher1] remove yujifinisher1
tag @a[scores={respawn=1..},tag=yujifinisher2] remove yujifinisher2
tag @a[scores={respawn=1..},tag=yujifinisher3] remove yujifinisher3
tag @a[scores={respawn=1..},tag=imyoucutscene] remove imyoucutscene
tag @a[scores={respawn=1..},tag=voidcrush] remove voidcrush
tag @a[scores={respawn=1..},tag=domainactive] remove domainactive
tag @a[scores={respawn=1..},tag=cantdomain] remove cantdomain
tag @a[scores={respawn=1..},tag=flourish] remove flourish
tag @a[scores={respawn=1..},tag=obliterate] remove obliterate
tag @a[scores={respawn=1..},tag=wcs_death_cutscene] remove wcs_death_cutscene
tag @a[scores={respawn=1..},tag=deathsentence] remove deathsentence
tag @a[scores={respawn=1..},tag=swiftflash] remove swiftflash
tag @a[scores={respawn=1..},tag=bluefire] remove bluefire
tag @a[scores={respawn=1..},tag=whirlwindcombo] remove whirlwindcombo
tag @a[scores={respawn=1..},tag=headsmash] remove headsmash
tag @a[scores={respawn=1..},tag=FuryBarrage2] remove FuryBarrage2
tag @a[scores={respawn=1..},tag=FeverCombo2] remove FeverCombo2
tag @a[scores={respawn=1..},tag=deadlypiercing2] remove deadlypiercing2
tag @a[scores={respawn=1..},tag=deadlypiercing] remove deadlypiercing
tag @a[scores={respawn=1..},tag=gojo_blackflash_cutscene] remove gojo_blackflash_cutscene
tag @a[scores={respawn=1..},tag=gojo_blackflash_cutscene1] remove gojo_blackflash_cutscene1
tag @a[scores={respawn=1..},tag=gojo_blackflash_cutscene2] remove gojo_blackflash_cutscene2
tag @a[scores={respawn=1..},tag=imyoucutscene] remove imyoucutscene
tag @a[scores={respawn=1..},tag=deadlystrikeclash2] remove deadlystrikeclash2
tag @a[scores={respawn=1..},tag=the_judge] remove the_judge
tag @a[scores={respawn=1..},tag=on_trial] remove on_trial
tag @a[scores={respawn=1..},tag=warp] remove warp
tag @a[scores={respawn=1..},tag=domainlayout] remove domainlayout
tag @a[scores={respawn=1..},tag=quickdomain] remove quickdomain
tag @a[scores={respawn=1..},tag=flashfire] remove flashfire
tag @a[scores={respawn=1..},tag=imyoucutscene] remove imyoucutscene
tag @a[scores={respawn=1..},tag=preysperil] remove preysperil
tag @a[scores={respawn=1..},tag=vanishing] remove vanishing
tag @a[scores={respawn=1..},tag=vanishingblow] remove vanishingblow
tag @a[scores={respawn=1..},tag=fierce] remove fierce
tag @a[scores={respawn=1..},tag=fiercebarrage] remove fiercebarrage
tag @a[scores={respawn=1..},tag=shadowdance] remove shadowdance
tag @a[scores={respawn=1..},tag=shadowdance2] remove shadowdance2
tag @a[scores={respawn=1..},tag=battoslash] remove battoslash
tag @a[scores={respawn=1..},tag=flashstrike] remove flashstrike
tag @a[scores={respawn=1..},tag=domainamplification] remove domainamplification
tag @a[scores={respawn=1..},tag=fistenergy] remove fistenergy
tag @a[scores={respawn=1..},tag=finger_eaten] remove finger_eaten
tag @a[scores={respawn=1..},tag=finger_rejected] remove finger_rejected
tag @a[scores={respawn=1..},tag=sukuna_awakening] remove sukuna_awakening
tag @a[scores={respawn=1..},tag=takedown] remove takedown
tag @a[scores={respawn=1..},tag=takedown2] remove takedown2
tag @a[scores={respawn=1..},tag=demonicblows] remove demonicblows
tag @a[scores={respawn=1..},tag=demonicblows2] remove demonicblows2
tag @a[scores={respawn=1..},tag=openspace] remove openspace
tag @a[scores={respawn=1..},tag=openspace2] remove openspace2
tag @a[scores={respawn=1..},tag=demonicblitz2] remove demonicblitz2
tag @a[scores={respawn=1..},tag=demonicblitz] remove demonicblitz
tag @a[scores={respawn=1..},tag=dismantlepummel] remove dismantlepummel
tag @a[scores={respawn=1..},tag=dismantlepummel2] remove dismantlepummel2
tag @a[scores={respawn=1..},tag=RagaCombo1] remove RagaCombo1
tag @a[scores={respawn=1..},tag=fuga_use] remove fuga_use
tag @a[scores={respawn=1..},tag=sukunadomain1] remove sukunadomain1
tag @a[scores={respawn=1..},tag=sukunadomain2] remove sukunadomain2
tag @a[scores={respawn=1..},tag=sukunadomain3] remove sukunadomain3
tag @a[scores={respawn=1..},tag=domainactive] remove domainactive
tag @a[scores={respawn=1..},tag=fugascythe] remove fugascythe
tag @a[scores={respawn=1..},tag=doubleimpact] remove doubleimpact
tag @a[scores={respawn=1..},tag=hltn] remove hltn
tag @a[scores={respawn=1..},tag=wcs_death_cutscene] remove wcs_death_cutscene

scoreboard players set @a[scores={respawn=1..,fuga=1..}] fuga 0

event entity @a[scores={respawn=1..,sukunaperm=0},has_property={property:sukuna_markings=1..}] sukunatextureoff
event entity @a[scores={respawn=1..},has_property={property:heart=1..}] heart_off
event entity @a[scores={respawn=1..},has_property={property:heart_wound=1..}] heart_wound_off

fog @a[scores={respawn=1..}] remove red

scoreboard players set @a[scores={respawn=1..,sukunamode=35..}] sukunamode 34
tag @a[scores={respawn=1..,sukunamode=1..,finger=0..14},tag=sukuna] remove sukuna
scoreboard players set @a[scores={respawn=1..,sight=1..}] sight 0
scoreboard players set @a[scores={respawn=1..,damage=1..}] damage 0 
scoreboard players set @a[scores={respawn=1..,nocts=1..}] nocts 0
scoreboard players set @a[scores={respawn=1..,Stun=1..}] Stun 0
scoreboard players set @a[scores={respawn=1..,knock=1..}] knock 0
scoreboard players set @a[scores={respawn=1..,knockdown=1..}] knockdown 0
scoreboard players set @a[scores={respawn=1..,Flourish=1..}] Flourish 0
scoreboard players set @a[scores={respawn=1..,rct=1..}] rct 0
tag @a[scores={respawn=1..},tag=flourish] remove flourish
tag @a[scores={respawn=1..},tag=fallingflourish] remove fallingflourish
tag @a[scores={respawn=1..},tag=knockdown] remove knockdown
tag @a[scores={respawn=1..},tag=hardknockback] remove hardknockback
tag @a[scores={respawn=1..},tag=downknockback] remove downknockback
tag @a[scores={respawn=1..},tag=knock] remove knock
tag @a[scores={respawn=1..},tag=nocts] remove nocts
tag @a[scores={respawn=1..},tag=noct] remove noct
execute as @a[scores={respawn=1,activemission=1..}] at @s run function missions/cancel_missions
scoreboard players set @a[scores={respawn=1..},tag=!rctmaster] rctuses 3
scoreboard players set @a[scores={respawn=1..},tag=rctmaster] rctuses 5
execute as @a[scores={respawn=1..}] at @s run function cheats/mode_off
execute as @a[scores={respawn=1..}] at @s run function cancel_attack
tag @a[scores={respawn=1..},tag=mahoraga_fight] remove mahoraga_fight
clear @a[scores={respawn=1..},hasitem={item=ds:lightning5}] ds:lightning5
clear @a[scores={respawn=1..},hasitem={item=ds:lightning6}] ds:lightning6
clear @a[scores={respawn=1..},hasitem={item=ds:amberbeast2}] ds:amberbeast2
clear @a[scores={respawn=1..},hasitem={item=ds:amberbeast2a}] ds:amberbeast2a
clear @a[scores={respawn=1..},hasitem={item=ds:amberbeastfull}] ds:amberbeastfull
clear @a[scores={respawn=1..},hasitem={item=ds:amberbeastfulla}] ds:amberbeastfulla
scoreboard players set @a[scores={respawn=1..,shock=1..}] shock 0
scoreboard players set @a[scores={respawn=1..,onfire=1..}] onfire 0
scoreboard players set @a[scores={respawn=1..,amberbeast=1..}] amberbeast 0
tag @a[scores={respawn=1..},tag=mythicalbeastamber] remove mythicalbeastamber
scoreboard players set @a[scores={respawn=1..2,antiheal=1..}] antiheal 0
scoreboard players set @a[scores={respawn=1..2}] Frames 100
effect @a[scores={respawn=1..2}] health_boost infinite 4 true
effect @a[scores={respawn=1..2,endurance=1}] health_boost infinite 5 true
effect @a[scores={respawn=1..2,endurance=2}] health_boost infinite 6 true
effect @a[scores={respawn=1..2,endurance=3}] health_boost infinite 7 true
effect @a[scores={respawn=1..2,endurance=4}] health_boost infinite 8 true
effect @a[scores={respawn=1..2,endurance=5}] health_boost infinite 9 true
effect @a[scores={respawn=1..2,endurance=6}] health_boost infinite 10 true
effect @a[scores={respawn=1..2,endurance=7}] health_boost infinite 11 true
effect @a[scores={respawn=1..2,endurance=8}] health_boost infinite 12 true
effect @a[scores={respawn=1..2,endurance=9}] health_boost infinite 13 true
effect @a[scores={respawn=1..2,endurance=10}] health_boost infinite 14 true
effect @a[scores={respawn=1..2,endurance=11}] health_boost infinite 15 true
effect @a[scores={respawn=1..2,endurance=12}] health_boost infinite 16 true
effect @a[scores={respawn=1..2,endurance=13}] health_boost infinite 17 true
effect @a[scores={respawn=1..2,endurance=14}] health_boost infinite 18 true
effect @a[scores={respawn=1..2,endurance=15}] health_boost infinite 19 true
effect @a[scores={respawn=1..2,endurance=16}] health_boost infinite 20 true
effect @a[scores={respawn=1..2,endurance=17}] health_boost infinite 21 true
effect @a[scores={respawn=1..2,endurance=18}] health_boost infinite 22 true
effect @a[scores={respawn=1..2,endurance=19}] health_boost infinite 23 true
effect @a[scores={respawn=1..2,endurance=20}] health_boost infinite 24 true
effect @a[scores={respawn=1..2,endurance=21}] health_boost infinite 25 true
effect @a[scores={respawn=1..2,endurance=22}] health_boost infinite 26 true
effect @a[scores={respawn=1..2,endurance=23}] health_boost infinite 27 true
effect @a[scores={respawn=1..2,endurance=24}] health_boost infinite 28 true
effect @a[scores={respawn=1..2,endurance=25}] health_boost infinite 29 true
effect @a[scores={respawn=1..2,endurance=26}] health_boost infinite 30 true
effect @a[scores={respawn=1..2,endurance=27}] health_boost infinite 31 true
effect @a[scores={respawn=1..2,endurance=28}] health_boost infinite 32 true
effect @a[scores={respawn=1..2,endurance=29}] health_boost infinite 33 true
effect @a[scores={respawn=1..2,endurance=30}] health_boost infinite 34 true
effect @a[scores={respawn=1..2,endurance=31}] health_boost infinite 35 true
effect @a[scores={respawn=1..2,endurance=32}] health_boost infinite 36 true
effect @a[scores={respawn=1..2,endurance=33}] health_boost infinite 37 true
effect @a[scores={respawn=1..2,endurance=34}] health_boost infinite 38 true
effect @a[scores={respawn=1..2,endurance=35}] health_boost infinite 39 true
effect @a[scores={respawn=1..2,endurance=36}] health_boost infinite 40 true
effect @a[scores={respawn=1..2,endurance=37}] health_boost infinite 41 true
effect @a[scores={respawn=1..2,endurance=38}] health_boost infinite 42 true
effect @a[scores={respawn=1..2,endurance=39}] health_boost infinite 43 true
effect @a[scores={respawn=1..2,endurance=40}] health_boost infinite 44 true
effect @a[scores={respawn=1..2,endurance=41}] health_boost infinite 45 true
effect @a[scores={respawn=1..2,endurance=42}] health_boost infinite 46 true
effect @a[scores={respawn=1..2,endurance=43}] health_boost infinite 47 true
effect @a[scores={respawn=1..2,endurance=44}] health_boost infinite 48 true
effect @a[scores={respawn=1..2,endurance=45}] health_boost infinite 49 true
effect @a[scores={respawn=1..2,endurance=46}] health_boost infinite 50 true
effect @a[scores={respawn=1..2,endurance=47}] health_boost infinite 51 true
effect @a[scores={respawn=1..2,endurance=48}] health_boost infinite 52 true
effect @a[scores={respawn=1..2,endurance=49}] health_boost infinite 53 true
effect @a[scores={respawn=1..2,endurance=50}] health_boost infinite 54 true
effect @a[scores={respawn=1..2,endurance=51}] health_boost infinite 55 true
effect @a[scores={respawn=1..2,endurance=52}] health_boost infinite 56 true
effect @a[scores={respawn=1..2,endurance=53}] health_boost infinite 57 true
effect @a[scores={respawn=1..2,endurance=54}] health_boost infinite 58 true
effect @a[scores={respawn=1..2,endurance=55}] health_boost infinite 59 true
effect @a[scores={respawn=1..2,endurance=56}] health_boost infinite 60 true
effect @a[scores={respawn=1..2,endurance=57}] health_boost infinite 61 true
effect @a[scores={respawn=1..2,endurance=58}] health_boost infinite 62 true
effect @a[scores={respawn=1..2,endurance=59}] health_boost infinite 63 true
effect @a[scores={respawn=1..2,endurance=60}] health_boost infinite 64 true
effect @a[scores={respawn=1..2,endurance=61}] health_boost infinite 65 true
effect @a[scores={respawn=1..2,endurance=62}] health_boost infinite 66 true
effect @a[scores={respawn=1..2,endurance=63}] health_boost infinite 67 true
effect @a[scores={respawn=1..2,endurance=64}] health_boost infinite 68 true
effect @a[scores={respawn=1..2,endurance=65}] health_boost infinite 69 true
effect @a[scores={respawn=1..2,endurance=66}] health_boost infinite 70 true
effect @a[scores={respawn=1..2,endurance=67}] health_boost infinite 71 true
effect @a[scores={respawn=1..2,endurance=68}] health_boost infinite 72 true
effect @a[scores={respawn=1..2,endurance=69}] health_boost infinite 73 true
effect @a[scores={respawn=1..2,endurance=70}] health_boost infinite 74 true
effect @a[scores={respawn=1..2,endurance=71}] health_boost infinite 75 true
effect @a[scores={respawn=1..2,endurance=72}] health_boost infinite 76 true
effect @a[scores={respawn=1..2,endurance=73}] health_boost infinite 77 true
effect @a[scores={respawn=1..2,endurance=74}] health_boost infinite 78 true
effect @a[scores={respawn=1..2,endurance=75}] health_boost infinite 79 true
effect @a[scores={respawn=1..2,endurance=76}] health_boost infinite 80 true
effect @a[scores={respawn=1..2,endurance=77}] health_boost infinite 81 true
effect @a[scores={respawn=1..2,endurance=78}] health_boost infinite 82 true
effect @a[scores={respawn=1..2,endurance=79}] health_boost infinite 83 true
effect @a[scores={respawn=1..2,endurance=80}] health_boost infinite 84 true
effect @a[scores={respawn=1..2,endurance=81}] health_boost infinite 85 true
effect @a[scores={respawn=1..2,endurance=82}] health_boost infinite 86 true
effect @a[scores={respawn=1..2,endurance=83}] health_boost infinite 87 true
effect @a[scores={respawn=1..2,endurance=84}] health_boost infinite 88 true
effect @a[scores={respawn=1..2,endurance=85}] health_boost infinite 89 true
effect @a[scores={respawn=1..2,endurance=86}] health_boost infinite 90 true
effect @a[scores={respawn=1..2,endurance=87}] health_boost infinite 91 true
effect @a[scores={respawn=1..2,endurance=88}] health_boost infinite 92 true
effect @a[scores={respawn=1..2,endurance=89}] health_boost infinite 93 true
effect @a[scores={respawn=1..2,endurance=90}] health_boost infinite 94 true
effect @a[scores={respawn=1..2,endurance=91}] health_boost infinite 95 true
effect @a[scores={respawn=1..2,endurance=92}] health_boost infinite 96 true
effect @a[scores={respawn=1..2,endurance=93}] health_boost infinite 97 true
effect @a[scores={respawn=1..2,endurance=94}] health_boost infinite 98 true
effect @a[scores={respawn=1..2,endurance=95}] health_boost infinite 99 true
effect @a[scores={respawn=1..2,endurance=96}] health_boost infinite 100 true
effect @a[scores={respawn=1..2,endurance=97}] health_boost infinite 101 true
effect @a[scores={respawn=1..2,endurance=98}] health_boost infinite 102 true
effect @a[scores={respawn=1..2,endurance=99}] health_boost infinite 103 true
effect @a[scores={respawn=1..2,endurance=100}] health_boost infinite 104 true
effect @a[scores={respawn=1..2,endurance=101}] health_boost infinite 105 true
effect @a[scores={respawn=1..2,endurance=102}] health_boost infinite 106 true
effect @a[scores={respawn=1..2,endurance=103}] health_boost infinite 107 true
effect @a[scores={respawn=1..2,endurance=104}] health_boost infinite 108 true
effect @a[scores={respawn=1..2,endurance=105}] health_boost infinite 109 true
effect @a[scores={respawn=1..2,endurance=106}] health_boost infinite 110 true
effect @a[scores={respawn=1..2,endurance=107}] health_boost infinite 111 true
effect @a[scores={respawn=1..2,endurance=108}] health_boost infinite 112 true
effect @a[scores={respawn=1..2,endurance=109}] health_boost infinite 113 true
effect @a[scores={respawn=1..2,endurance=110}] health_boost infinite 114 true
effect @a[scores={respawn=1..2,endurance=111}] health_boost infinite 115 true
effect @a[scores={respawn=1..2,endurance=112}] health_boost infinite 116 true
effect @a[scores={respawn=1..2,endurance=113}] health_boost infinite 117 true
effect @a[scores={respawn=1..2,endurance=114}] health_boost infinite 118 true
effect @a[scores={respawn=1..2,endurance=115}] health_boost infinite 119 true
effect @a[scores={respawn=1..2,endurance=116}] health_boost infinite 120 true
effect @a[scores={respawn=1..2,endurance=117}] health_boost infinite 121 true
effect @a[scores={respawn=1..2,endurance=118}] health_boost infinite 122 true
effect @a[scores={respawn=1..2,endurance=119}] health_boost infinite 123 true
effect @a[scores={respawn=1..2,endurance=120..665}] health_boost infinite 124 true

effect @a[scores={respawn=1..2,endurance=666..},tag=!120percent] health_boost infinite 184 true
effect @a[scores={respawn=1..2,endurance=666..},tag=120percent] health_boost infinite 194 true

effect @a[scores={respawn=1..2}] instant_health 1 99 true

effect @a[scores={respawn=1..2,strength=25..}] strength infinite 0 true


