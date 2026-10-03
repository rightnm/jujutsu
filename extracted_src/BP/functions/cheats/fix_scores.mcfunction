scoreboard objectives add fix dummy
execute as @a at @s unless entity @s[scores={fix=-999..}] run scoreboard players set @s fix 0
gamerule falldamage false
gamerule showtags false
gamerule sendcommandfeedback false
gamerule commandblockoutput false
gamerule commandblocksenabled true
gamerule doimmediaterespawn true
gamerule recipesunlock true

  scoreboard objectives add clash_score dummy

scoreboard objectives add techniquerolls dummy
scoreboard objectives add traitrolls dummy
scoreboard objectives add clanrolls dummy
scoreboard objectives add tpdown dummy
scoreboard objectives add rct dummy

scoreboard players set @a Sneaking 1
scoreboard players set @a detect_jump 0
scoreboard players set @a detect_left 0

execute positioned 2500 80 2500 unless entity @a[r=200] run execute as @p run function structure_attractor

scoreboard objectives add blackflashing dummy
scoreboard players add @a blackflashing 0

scoreboard objectives add rct_entity_limit dummy

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

scoreboard objectives add simpledomainown dummy
scoreboard objectives add divergentfistown dummy
scoreboard objectives add fallingblossomown dummy
scoreboard objectives add domainampown dummy
scoreboard objectives add hollowbasketown dummy

scoreboard objectives add abilities dummy
scoreboard objectives add abilitiesCD dummy
scoreboard players add @a abilities 0
scoreboard players set @a Sneaking 0
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

scoreboard players add @a reversecursedCD 0
scoreboard players add @a simpledomainCD 0
scoreboard players add @a divergentfistCD 0
scoreboard players add @a fallingblossomCD 0
scoreboard players add @a domainampCD 0
scoreboard players add @a hollowbasketCD 0
scoreboard players add @a scroll 0
scoreboard players add @a punch 0
scoreboard players add @a[scores={scroll=0}] scroll 1


scoreboard objectives add doublejumpCD dummy
scoreboard players add @a doublejumpCD 0

tag @a[name=iiTestAlt,scores={start=0}] add sukunachancerig

scoreboard objectives add jump dummy
scoreboard objectives add finger dummy
scoreboard players add @a finger 0

scoreboard objectives add dying dummy

gamerule mobgriefing true

function sukuna/sukuna_scores

function cheats/remove_tickingareas
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

scoreboard players set @a rctuses 4

scoreboard objectives add domainamp dummy
scoreboard objectives add clashtype dummy
scoreboard objectives add missionsCD dummy
scoreboard objectives add missions_count dummy
scoreboard objectives add fingeraggro dummy
scoreboard players set @a missions_count 3
scoreboard players set @a missionsCD 0
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
scoreboard objectives add ExpMax dummy
scoreboard objectives add level dummy
scoreboard objectives add grade dummy
scoreboard objectives add invest dummy
scoreboard objectives add rctuses dummy
scoreboard objectives add thezone dummy
scoreboard objectives add combat dummy
scoreboard objectives add hitCD dummy
scoreboard objectives add antiheal dummy
scoreboard objectives add flashstep dummy
scoreboard objectives add moveAngle dummy
scoreboard objectives add damagehalf dummy
scoreboard objectives add scrollanim dummy
scoreboard players add @a scrollanim 0
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

scoreboard players add @a rctuses 0
scoreboard players add @a thezone 0
scoreboard players add @a infinity 0
scoreboard players add @a antiheal 0
scoreboard players add @a divergent 0
scoreboard players add @e ab 0
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
scoreboard players add @a detect_doubleneak 0
scoreboard players add @a detect_sneak2 0
scoreboard players add @a detect_sneak 0
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


scoreboard players add mobeventstoggle Mode 0

scoreboard players set zero endurance 0
scoreboard players set five endurance 5
scoreboard players set seven endurance 7
scoreboard players set nine endurance 9
scoreboard players set two endurance 2
scoreboard players set ten endurance 10
scoreboard players set twenty endurance 20
execute as @p if score mobeventstoggle Mode = zero endurance run scoreboard players set mobeventstoggle Mode 2
scoreboard players set one endurance 1
scoreboard players add count10 endurance 0

scoreboard players set mobeventmax Mode 7200

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

playsound random.toast @a
tellraw @a {"rawtext":[{"text":"§bRefreshed Scoreboards!\n§e§oHopefully any issues you may have been having are now fixed!"}]}
