gamerule falldamage false
gamerule showtags false
gamerule sendcommandfeedback false
gamerule commandblockoutput false
gamerule commandblocksenabled true
gamerule doimmediaterespawn true
gamerule recipesunlock true

tag @a[scores={start=0}] add impactframesoff

scoreboard objectives add blackflashTag dummy


scoreboard objectives add clash_score dummy
scoreboard players add @a clash_score 0

execute positioned 2500 80 2500 unless entity @a[r=200] run execute as @p run function structure_attractor

scoreboard objectives add blackflashing dummy
scoreboard players add @a blackflashing 0

scoreboard objectives add enrage dummy
scoreboard players add @a enrage 0
scoreboard objectives add entity_spawn_anim dummy
scoreboard objectives add rct_entity_limit dummy
scoreboard objectives add ceregen dummy
scoreboard objectives add selection dummy
scoreboard objectives add judgetimer dummy
scoreboard objectives add counting dummy
scoreboard objectives add evidence dummy
scoreboard objectives add trial_mode dummy
scoreboard objectives add verdict dummy
scoreboard objectives add deathpenaltytimer dummy
scoreboard objectives add menubackground dummy
scoreboard objectives add menutimer dummy
scoreboard objectives add menutimer2 dummy
scoreboard objectives add menupage dummy
scoreboard objectives add menumusic dummy
scoreboard objectives add menuscroll dummy
scoreboard objectives add menuselect dummy
scoreboard objectives add human dummy
scoreboard objectives add timertick2 dummy
scoreboard objectives add common dummy
scoreboard objectives add uncommon dummy
scoreboard objectives add rare dummy
scoreboard objectives add exotic dummy
scoreboard objectives add honored dummy
scoreboard players add @a menupage 0
scoreboard players add @a menutimer 0

scoreboard objectives add simpledomainown dummy
scoreboard objectives add divergentfistown dummy
scoreboard objectives add fallingblossomown dummy
scoreboard objectives add domainampown dummy
scoreboard objectives add hollowbasketown dummy

scoreboard objectives add abilities dummy
scoreboard objectives add abilitiesCD dummy
scoreboard objectives add reversecursedCD dummy
scoreboard objectives add simpledomainCD dummy
scoreboard objectives add divergentfistCD dummy
scoreboard objectives add fallingblossomCD dummy
scoreboard objectives add domainampCD dummy
scoreboard objectives add hollowbasketCD dummy

scoreboard players add @a scrollanim 0
scoreboard players add @a simpledomainown 0
scoreboard players add @a divergentfistown 0
scoreboard players add @a fallingblossomown 0
scoreboard players add @a domainampown 0
scoreboard players add @a hollowbasketown 0

scoreboard players set three endurance 3



scoreboard objectives add doublejumpCD dummy
scoreboard players add @a doublejumpCD 0




tag @a[name=iiTestAlt,scores={start=0}] add sukunachancerig

scoreboard objectives add jump dummy
scoreboard objectives add finger dummy
scoreboard players add @a finger 0

scoreboard objectives add dying dummy


title @a[scores={start=0},tag=!impactframesoff] title 

replaceitem entity @a[scores={start=0},hasitem={item=ds:dash,location=slot.hotbar,quantity=0,slot=1}] slot.hotbar 1 ds:dash 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_slot"}}
give @a[scores={start=0},m=c] ds:settings
give @a[scores={start=0}] ds:basic_combat 1 0 {"minecraft:keep_on_death":{}}
tag @a[scores={start=0},tag=!menu] add menu
effect @a[scores={start=0}] regeneration 10 10 true
tag @e[tag=BasicM1s] remove BasicM1s
give @a[scores={start=0}] ds:stats_book 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
give @a[scores={start=0}] ds:cursedenergy 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}

tag @a add griefable
gamerule mobgriefing true

execute as @p[scores={start=0}] at @s run function sukuna/sukuna_scores

tickingarea remove kashimodomain
tickingarea remove infinitydash
tickingarea remove IronMountain
tickingarea remove jogodomain
tickingarea remove test2
tickingarea remove deadlysentencing
tickingarea remove malevolentshrine
tickingarea remove shadowgarden
tickingarea remove shadowgarden1
tickingarea remove shadowgarden2

scoreboard objectives add mainplayer dummy
execute as @p[scores={start=0}] unless entity @e[scores={mainplayer=1..}] run scoreboard players set @p mainplayer 1

scoreboard objectives add rctuses dummy
scoreboard players set @a[scores={start=0}] rctuses 3

scoreboard objectives add domainamp dummy
scoreboard objectives add clashtype dummy
scoreboard objectives add missionsCD dummy
scoreboard objectives add missions_count dummy
scoreboard objectives add fingeraggro dummy
scoreboard players set @a[scores={start=0}] missions_count 3
scoreboard players set @a[scores={start=0}] missionsCD 0
scoreboard objectives add jjkacompatible1 dummy
scoreboard players set @a jjkacompatible1 1
scoreboard objectives add onfire dummy
scoreboard objectives add onfire2 dummy
scoreboard objectives add guilty_score dummy
scoreboard players add @a guilty_score 0
scoreboard objectives add nocts dummy
scoreboard objectives add scene dummy
scoreboard objectives add itemdrop dummy
scoreboard objectives add expadd dummy
scoreboard objectives add Exp dummy
scoreboard players add @a Exp 0
scoreboard players set @a[scores={start=0}] nocts 0
scoreboard players set @a[scores={start=0}] Exp 0
scoreboard objectives add ExpMax dummy
scoreboard players set @a[scores={start=0}] ExpMax 30
scoreboard objectives add level dummy
scoreboard players set @a[scores={start=0}] level 1
scoreboard objectives add grade dummy
scoreboard players set @a[scores={start=0}] grade 1
scoreboard objectives add invest dummy
scoreboard players set @a[scores={start=0}] invest 2
scoreboard objectives add thezone dummy
scoreboard objectives add combat dummy
scoreboard objectives add hitCD dummy
scoreboard objectives add antiheal dummy
scoreboard objectives add flashstep dummy
scoreboard objectives add moveAngle dummy
scoreboard objectives add damagehalf dummy
scoreboard objectives add scrollanim dummy
scoreboard players add @a scrollanim 0
scoreboard players set @a[scores={start=0}] scroll 1
scoreboard objectives add ab dummy
scoreboard objectives add punch dummy
scoreboard objectives add scroll dummy
scoreboard objectives add anim dummy
scoreboard objectives add doublesneak dummy
scoreboard objectives add damage dummy
scoreboard objectives add damageadd dummy
scoreboard objectives add respawn dummy
scoreboard objectives add agility dummy
scoreboard objectives add energystat dummy
scoreboard objectives add strength2 dummy
scoreboard objectives add strength dummy
scoreboard objectives add endurance dummy
scoreboard objectives add CEreset dummy
scoreboard objectives add domainstart dummy
scoreboard objectives add domain dummy
scoreboard objectives add domainactive dummy
scoreboard objectives add domainCD dummy
scoreboard objectives add knockdown dummy
scoreboard objectives add blackflashchance dummy
scoreboard objectives add infinity dummy
scoreboard objectives add cutscene dummy
scoreboard objectives add invest dummy
scoreboard objectives add statopen dummy
scoreboard objectives add breathing dummy
scoreboard objectives add Super dummy
scoreboard objectives add atk dummy
scoreboard objectives add BasicM1 dummy
scoreboard objectives add BasicM1s dummy
scoreboard objectives add M1ing dummy
scoreboard objectives add Stun dummy
scoreboard objectives add Hit dummy
scoreboard objectives add Move dummy
scoreboard objectives add Camera dummy
scoreboard objectives add detect_left dummy
scoreboard objectives add detect_sneak2 dummy
scoreboard objectives add detect_sneak dummy
scoreboard objectives add detect_doublesneak dummy
scoreboard objectives add detect_move dummy
scoreboard objectives add detect_sprint dummy
scoreboard objectives add detect_health dummy
scoreboard objectives add detect_jump dummy
scoreboard objectives add Sneaking dummy
scoreboard objectives add Deleter dummy
scoreboard objectives add Mode dummy
scoreboard objectives add Disabled dummy
scoreboard objectives add Disabled2 dummy
scoreboard objectives add M1Reset dummy
scoreboard objectives add Frames dummy
scoreboard objectives add AfterAnim dummy
scoreboard objectives add Flourish dummy
scoreboard objectives add Blocking dummy
scoreboard objectives add Posture dummy
scoreboard objectives add sprinting dummy
scoreboard objectives add Dash dummy
scoreboard objectives add DashCD dummy
scoreboard objectives add knock dummy
scoreboard objectives add AirCom dummy
scoreboard objectives add Energy dummy
scoreboard objectives add EnergyCap dummy
scoreboard objectives add Evade dummy
scoreboard objectives add Evasive dummy
scoreboard objectives add Move dummy
scoreboard objectives add move dummy
scoreboard objectives add wep1 dummy
scoreboard objectives add wep2 dummy
scoreboard objectives add wep3 dummy
scoreboard objectives add wep4 dummy
scoreboard objectives add wep5 dummy

scoreboard objectives add wep1v2 dummy
scoreboard objectives add wep2v2 dummy
scoreboard objectives add wep3v2 dummy
scoreboard objectives add wep4v2 dummy
scoreboard objectives add wep5v2 dummy
scoreboard objectives add wep6v2 dummy

scoreboard objectives add altctCD1 dummy
scoreboard objectives add altctCD2 dummy
scoreboard objectives add altctCD3 dummy
scoreboard objectives add altctCD4 dummy
scoreboard objectives add altctCD5 dummy
scoreboard objectives add altctCD6 dummy
scoreboard objectives add altctCD7 dummy
scoreboard objectives add altctCD8 dummy
scoreboard objectives add altctCD9 dummy
scoreboard objectives add altctCD10 dummy
scoreboard objectives add altctCD11 dummy
scoreboard objectives add altctCD12 dummy

scoreboard players add @a wep1v2 0
scoreboard players add @a wep2v2 0
scoreboard players add @a wep3v2 0
scoreboard players add @a wep4v2 0
scoreboard players add @a wep5v2 0
scoreboard players add @a wep6v2 0

scoreboard players add @a altctCD1 0
scoreboard players add @a altctCD2 0
scoreboard players add @a altctCD3 0
scoreboard players add @a altctCD4 0
scoreboard players add @a altctCD5 0
scoreboard players add @a altctCD6 0
scoreboard players add @a altctCD7 0
scoreboard players add @a altctCD8 0
scoreboard players add @a altctCD9 0
scoreboard players add @a altctCD10 0
scoreboard players add @a altctCD11 0
scoreboard players add @a altctCD12 0

scoreboard objectives add ability1 dummy
scoreboard objectives add ability2 dummy
scoreboard objectives add ability3 dummy
scoreboard objectives add ability4 dummy
scoreboard objectives add ability5 dummy
scoreboard objectives add ability6 dummy
scoreboard objectives add ability7 dummy
scoreboard objectives add ability8 dummy
scoreboard objectives add ability9 dummy
scoreboard objectives add ability10 dummy
scoreboard objectives add ability11 dummy
scoreboard objectives add ability12 dummy
scoreboard objectives add transform dummy
scoreboard objectives add Evade dummy
scoreboard objectives add chance dummy
scoreboard objectives add forms dummy
scoreboard objectives add divergent dummy

scoreboard objectives add shocked dummy
scoreboard objectives add fire dummy

scoreboard players add @a[scores={start=0}] clanrolls 3
scoreboard players add @a[scores={start=0}] traitrolls 3
scoreboard players add @a[scores={start=0}] techniquerolls 3

scoreboard players add @a reversecursedCD 0
scoreboard players add @a simpledomainCD 0
scoreboard players add @a divergentfistCD 0
scoreboard players add @a fallingblossomCD 0
scoreboard players add @a domainampCD 0
scoreboard players add @a hollowbasketCD 0
scoreboard players add @a scroll 0
scoreboard players add @a punch 0
scoreboard players add @a[scores={scroll=0}] scroll 1


scoreboard players add @a rctuses 0
scoreboard players add @a thezone 0
scoreboard players add @a infinity 0
scoreboard players add @a antiheal 0
scoreboard players add @a divergent 0
scoreboard players add @a ab 0
scoreboard players add @a respawn 0
scoreboard players add @a domainstart 0
scoreboard players add @a domain 0
scoreboard players add @a domainactive 0
scoreboard players add @a domainCD 0
scoreboard players add @a Evade 0
scoreboard players add @a Evasive 0
scoreboard players add @a Super 0
scoreboard players add @a knock 0
scoreboard players add @a atk 0
scoreboard players add @a sprinting 0
scoreboard players add @a Posture 0
scoreboard players add @a Flourish 0
scoreboard players add @a BasicM1 0
scoreboard players add @a BasicM1s 0
scoreboard players add @a abilities 0
scoreboard players add @a detect_doubleneak 0
scoreboard players add @a detect_sneak 0
scoreboard players add @a detect_sneak2 0
scoreboard players add @a Sneaking 0
scoreboard players add @a jump 0
scoreboard players add @a detect_jump 0
scoreboard players add @a detect_left 0
scoreboard players add @a Hit 0
scoreboard players add @a Stun 0
scoreboard players add @a Move 0
scoreboard players add @a Camera 0
scoreboard players add @a Disabled 0
scoreboard players add @a Disabled2 0
scoreboard players add @a AfterAnim 0
scoreboard players add @a Blocking 0
scoreboard players add @a cutscene 0
scoreboard players add @a Dash 0
scoreboard players add @a DashCD 0

scoreboard players add @a AirCom 0
scoreboard players add @a Energy 0
scoreboard players add @a ability1 0
scoreboard players add @a ability2 0
scoreboard players add @a ability3 0
scoreboard players add @a ability4 0
scoreboard players add @a ability5 0
scoreboard players add @a ability6 0
scoreboard players add @a ability7 0
scoreboard players add @a ability8 0
scoreboard players add @a ability9 0
scoreboard players add @a ability10 0
scoreboard players add @a ability11 0
scoreboard players add @a ability12 0
scoreboard players add @a wep1 0
scoreboard players add @a wep2 0
scoreboard players add @a wep3 0
scoreboard players add @a wep4 0
scoreboard players add @a wep5 0
scoreboard players add @a move 0
scoreboard players add @a strength 0
scoreboard players add @a damageadd 0
scoreboard players add @a agility 0
scoreboard players add @a endurance 0
scoreboard players add @a energystat 0
scoreboard players add @a combat 0
effect @a[scores={start=0,endurance=0}] health_boost infinite 4 true
scoreboard players set @a[scores={start=0}] EnergyCap 100

scoreboard objectives add familiarID dummy
scoreboard objectives add BoogieSelfID dummy
scoreboard objectives add BoogieTargetID dummy
scoreboard objectives add temp dummy
scoreboard objectives add oldID dummy
scoreboard objectives add brotherID dummy
scoreboard objectives add plusultraID dummy
scoreboard objectives add chance2 dummy

scoreboard players add @a plusultraID 0
scoreboard players add @a brotherID 0
scoreboard players add @a BoogieTargetID 0
scoreboard players add @a BoogieSelfID 0
scoreboard players add @a temp 0
scoreboard players add @a oldID 0
scoreboard players add @a chance2 0

scoreboard players add ID plusultraID 0
scoreboard players add ID brotherID 0
scoreboard players add ID BoogieTargetID 0
scoreboard objectives add domainID dummy
scoreboard objectives add projectileID dummy
scoreboard objectives add ritualID dummy
scoreboard objectives add summonerID dummy
scoreboard objectives add prev_health dummy
scoreboard objectives add damage_taken dummy
scoreboard objectives add detect_health_50p dummy
scoreboard objectives add chance2 dummy
scoreboard players add @a prev_health 0
scoreboard players add @a damage_taken 0
scoreboard players add @a detect_health_50p 0
scoreboard players add @a chance2 0
scoreboard objectives add uniqueid dummy
scoreboard players add @a uniqueid 0
execute as @a[scores={uniqueid=0}] at @s run function uniqueid

scoreboard players add mobeventstoggle Mode 0

scoreboard players set zero endurance 0
scoreboard players set five endurance 5
scoreboard players set seven endurance 7
scoreboard players set nine endurance 9
scoreboard players set two endurance 2
scoreboard players set ten endurance 10
scoreboard players set twenty endurance 20
scoreboard players set one endurance 1
scoreboard players add count10 endurance 0
execute as @p if score mobeventstoggle Mode = zero endurance run scoreboard players set mobeventstoggle Mode 2
execute as @p unless score abilities abilities = one endurance run scoreboard players set abilities abilities 1

scoreboard players set one Mode 1
scoreboard players set two Mode 2
scoreboard players set three Mode 3
scoreboard players set four Mode 4
scoreboard players set five Mode 5
scoreboard players set six Mode 6
scoreboard players set seven Mode 7
scoreboard players set eight Mode 8
scoreboard players set nine Mode 9
scoreboard players set ten Mode 10
scoreboard players set eleven Mode 11
scoreboard players set twelve Mode 12

scoreboard players set mobeventmax Mode 7200

scoreboard players add @a[name=iiTestAlt] traitrolls 999
scoreboard players add @a[name=iiTestAlt] clanrolls 999
scoreboard players add @a[name=iiTestAlt] techniquerolls 999
scoreboard players add @a[name=KarmaComes] traitrolls 5
scoreboard players add @a[name=KarmaComes] techniquerolls 5
scoreboard players add @a[name=KarmaComes] clanrolls 5


scoreboard players set timer20mins Mode 24000
scoreboard players set timer40mins Mode 48000
scoreboard players set timer60mins Mode 72000

scoreboard players add @a selection 0
scoreboard players add @a judgetimer 0
scoreboard players add @a counting 0
scoreboard players add @a evidence 0
scoreboard players add @a trial_mode 0
scoreboard players add @a verdict 0
scoreboard players add @a deathpenaltytimer 0

scoreboard objectives add domainimmune dummy
scoreboard objectives add blackflashlearn dummy
scoreboard objectives add blackflash_amount dummy
scoreboard objectives add blackflashcount dummy
scoreboard players add @a domainimmune 0
scoreboard players add @a blackflashlearn 0
scoreboard players add @a blackflash_amount 0
scoreboard players add @a blackflashcount 0

scoreboard objectives add techniquerolls dummy
scoreboard objectives add traitrolls dummy
scoreboard objectives add clanrolls dummy
scoreboard objectives add tpdown dummy
scoreboard objectives add rct dummy

scoreboard objectives add detect_health dummy
scoreboard objectives add prev_health dummy
scoreboard objectives add damage_taken dummy
scoreboard objectives add absorption dummy
scoreboard objectives add absorption_timer dummy

scoreboard objectives add delusional_music dummy
scoreboard objectives add delusional_timer dummy

scoreboard objectives add insanity dummy
scoreboard objectives add insanityCD dummy
scoreboard players add @a insanity 0
scoreboard players add @a insanityCD 0
scoreboard players add @a prev_health 0
scoreboard players add @a damage_taken 0
scoreboard players add @a absorption 0
scoreboard players add @a absorption_timer 0

scoreboard objectives add lives dummy
scoreboard objectives add guitimer dummy
scoreboard objectives add mobevent dummy
scoreboard objectives add mobevent_1 dummy
scoreboard objectives add mobevent_2 dummy
scoreboard objectives add mobevent_3 dummy
scoreboard objectives add mobevent_4 dummy
scoreboard objectives add mobevent_5 dummy
scoreboard objectives add activemission dummy
scoreboard objectives add random_mission dummy
scoreboard objectives add missiontimer dummy
scoreboard objectives add calling dummy
scoreboard objectives add callingrandom dummy
scoreboard objectives add mission_credit dummy
scoreboard objectives add kusakabequest dummy
scoreboard objectives add aircom dummy
scoreboard objectives add doublejump dummy
scoreboard objectives add rctheal dummy
scoreboard objectives add damageinsurance dummy
scoreboard players add @a guitimer 0
scoreboard players add @a mobevent 0
scoreboard players add @a mobevent_1 0
scoreboard players add @a mobevent_2 0
scoreboard players add @a mobevent_3 0
scoreboard players add @a mobevent_4 0
scoreboard players add @a mobevent_5 0
scoreboard players add @a activemission 0
scoreboard players add @a random_mission 0
scoreboard players add @a missiontimer 0
scoreboard players add @a calling 0
scoreboard players add @a callingrandom 0
scoreboard players add @a mission_credit 0
scoreboard players add @a kusakabequest 0
scoreboard players add @a aircom 0
scoreboard players add @a doublejump 0
scoreboard players add @a rctheal 0
scoreboard players add @a damageinsurance 0
scoreboard players add @a dying 0




scoreboard objectives add overdose dummy
scoreboard objectives add plummet_start dummy
scoreboard objectives add plummet dummy
scoreboard objectives add getcrushed dummy
scoreboard objectives add speech_repair dummy
scoreboard players set three endurance 3
scoreboard players set four endurance 4
scoreboard players set ten endurance 10

scoreboard objectives add hitdodge dummy
scoreboard objectives add wheelactive dummy
scoreboard objectives add adapttimer dummy
scoreboard objectives add adaptCD dummy
scoreboard players add @a adaptCD 0
scoreboard players add @a adapttimer 0
scoreboard players add @a wheelactive 0

scoreboard objectives add speech_limit dummy
scoreboard objectives add speech dummy
scoreboard objectives add speech_effect dummy
scoreboard objectives add speech_strength dummy
scoreboard objectives add runaway dummy
scoreboard objectives add sleep dummy
scoreboard objectives add sleep_start dummy
scoreboard objectives add speech_amt dummy
scoreboard players set ten endurance 10



execute as @a[scores={start=0}] run tellraw @a {"rawtext":[{"text":"§b§lJujutsu Awakening \n§r§eA Heroic Productions...\n§fCheck out my Youtube: §4https://www.youtube.com/@heroicmaps1138\n§f§fAnd Join the Discord! §9https://discord.gg/sNKJqFp8BS\n\n§cIf your addon is delayed/laggy it might be because of your Device or Realms, ect\n\nALSO Make sure BETA APis are enabled and you are using the CORRECT minecraft version!!!\n\n§rType /tag @s remove menu if you cannot use the menu correctly\n\n§4Remember, If your textures aren't showing or are all bugged, delete the RP from ur game, restart and reinstall the resource pack to fix it!"}]}
execute as @a[scores={start=0}] run playsound random.toast @a
scoreboard players set @a[scores={start=0}] start 1