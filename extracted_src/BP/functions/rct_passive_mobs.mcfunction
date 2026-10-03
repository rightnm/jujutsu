
scoreboard players add @e[type=!player,scores={rct=1..}] rct_entity_limit 1
scoreboard players set @e[type=!player,scores={rct=1..,rct_entity_limit=1200..},family=special_grade] rct 0
scoreboard players set @e[type=!player,scores={rct=1..,rct_entity_limit=800..},family=grade1] rct 0
scoreboard players set @e[type=!player,scores={rct=1..,rct_entity_limit=600..},family=grade2] rct 0
scoreboard players set @e[type=!player,scores={rct=1..,rct_entity_limit=400..},family=grade3] rct 0
scoreboard players set @e[type=!player,scores={rct=1..,rct_entity_limit=200..},family=grade4] rct 0

scoreboard players set @e[type=!player,scores={rct=1800..}] rct 1799

scoreboard players remove @e[type=!player,scores={rct=1..}] rct 1
scoreboard players remove @e[type=!player,scores={rct=3..,onfire=1..},family=!purecurse,tag=!curse] rct 2

execute as @e[type=!player,scores={rct=1..},family=!purecurse,tag=!curse] unless entity @s[type=!player,scores={rctuses=600..},family=!special_grade] unless entity @s[type=!player,scores={rctuses=800..},family=special_grade] run scoreboard players add @s rctuses 1
scoreboard players set @e[type=!player,scores={rctuses=600..,rct=1..},family=!special_grade,family=!purecurse,tag=!curse] Stun 125
scoreboard players set @e[type=!player,scores={rctuses=600..,rct=1..},family=!special_grade,family=!purecurse,tag=!curse] rct 0
scoreboard players set @e[type=!player,scores={rctuses=800..,rct=1..},family=special_grade,family=!purecurse,tag=!curse] Stun 125
scoreboard players set @e[type=!player,scores={rctuses=800..,rct=1..},family=special_grade,family=!purecurse,tag=!curse] rct 0

scoreboard players set @e[type=!player,scores={Energy=-999999..0,rct=1..},family=!heavenlyrestriction,tag=!heavenlyrestriction,family=!purecurse,tag=!curse] rct 0


execute as @e[type=!player,scores={rct=1..},family=!purecurse,tag=!curse] unless entity @s[scores={antiheal=0..}] run scoreboard players add @s antiheal 0

damage @e[type=!player,scores={rct=1..},tag=!dying,family=purecurse,tag=!curse] 2 override
damage @e[type=!player,scores={rct=1..},tag=!dying,tag=curse] 2 override

execute as @e[type=!player,scores={rct=1..,antiheal=0},tag=!dying,family=!small,family=!purecurse,tag=!curse] at @s run particle ds:rct_aura
execute as @e[type=!player,scores={rct=1..,antiheal=0},tag=!dying,family=!small,family=!purecurse,tag=!curse] at @s run particle ds:rct_aura2
execute as @e[type=!player,scores={rct=1..},tag=!dying,family=!small] unless entity @s[family=!purecurse,tag=!curse] at @s run particle ds:rct_aura
execute as @e[type=!player,scores={rct=1..},tag=!dying,family=!small] unless entity @s[family=!purecurse,tag=!curse] at @s run particle ds:rct_aura2

scoreboard players add @e[type=!player,scores={rct=1..,antiheal=0},tag=!dying,tag=cursed_speech,family=!purecurse,tag=!curse] speech_repair 1

effect @e[type=!player,scores={rct=1..,antiheal=0,Stun=0},tag=!dying,family=!special_grade,family=!purecurse,tag=!curse] regeneration 1 2 true
effect @e[type=!player,scores={rct=1..,antiheal=0,Stun=0},tag=!dying,family=special_grade,family=!purecurse,tag=!curse] regeneration 1 5 true
effect @e[type=!player,scores={rct=1..,antiheal=0,Stun=1..},tag=!dying,family=special_grade,family=!purecurse,tag=!curse] regeneration 1 2 true
effect @e[type=!player,scores={rct=1..,antiheal=0,Hit=1},tag=!dying,family=special_grade,family=!purecurse,tag=!curse] instant_health 1 0 true

scoreboard players remove @e[type=!player,scores={rct=1..,Energy=1..},tag=!dying,tag=!rctmaster,family=!heavenlyrestriction,tag=!heavenlyrestriction,family=!purecurse,tag=!curse] Energy 1
scoreboard players remove @e[type=!player,scores={rct=1..,Energy=1..},tag=!dying,family=!heavenlyrestriction,tag=!heavenlyrestriction,family=!purecurse,tag=!curse] Energy 1
execute as @e[type=!player,scores={rct=1..},tag=!dying] unless entity @s[family=!purecurse,tag=!curse] run scoreboard players remove @s Energy 2
damage @e[type=!player,scores={rct=1..,Energy=..30},tag=!dying,family=!heavenlyrestriction,tag=!heavenlyrestriction] 3 override
scoreboard players set @e[type=!player,scores={rct=1..,Energy=-999999..0,reversedcursedCD=!1200..},family=!heavenlyrestriction,tag=!heavenlyrestriction,family=!purecurse,tag=!curse] reversedcursedCD 1200



