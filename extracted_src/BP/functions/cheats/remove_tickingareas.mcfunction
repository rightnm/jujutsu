tickingarea remove cursed_cavern
tickingarea remove structure_medium
execute unless entity @e[tag=special_mission_vessel] run tickingarea remove vessel_point
execute unless entity @e[tag=limitless,tag=domainactive] unless entity @e[family=gojo,scores={domainactive=1..}] run tickingarea remove UnlimitedVoid
execute unless entity @e[tag=10shadows,tag=domainactive] unless entity @e[family=fushiguro,scores={domainactive=1..}] run tickingarea remove shadowgarden


execute unless entity @e[tag=sukuna,tag=domainactive] unless entity @e[family=sukuna,scores={domainactive=1..}] run tickingarea remove incomplete_kitchen

tickingarea remove speech_domain
tickingarea remove YujiDomain
execute unless entity @e[type=ds:jogo,scores={move=1..}] run tickingarea remove meteor
execute unless entity @e[type=ds:malevolent_kitchen] run tickingarea remove shrinedmg1
execute unless entity @e[type=ds:malevolent_kitchen] run tickingarea remove malevolent_kitchen
execute unless entity @e[tag=electrocannon] run tickingarea remove ecannon
execute unless entity @e[type=ds:judgeman] run tickingarea remove deadlysentencing
execute unless entity @e[type=ds:cursed_egg] run tickingarea remove cursed_egg
execute unless entity @e[tag=anthill] run tickingarea remove world_event_anthill
execute unless entity @e[type=ds:yuji_domain] run tickingarea remove yuji_domain
tickingarea remove jjk_high
tickingarea remove reversal
tickingarea remove benedictus
tickingarea remove duke
tickingarea remove astaroth
tickingarea remove kai
tickingarea remove frost
tickingarea remove infinitydash
tickingarea remove bomb
execute unless entity @e[type=!item,name=HollowPTRG,c=1] unless entity @e[type=!item,tag=limitless,tag=form5b,scores={move=1..}] run tickingarea remove hollowpurple
execute unless entity @e[type=!item,name=HollowP,c=1] unless entity @e[type=!item,tag=limitless,tag=form5b,scores={move=1..}] run tickingarea remove HollowOrb1
execute unless entity @e[type=!item,name=200HollowP,c=1] unless entity @e[type=!item,tag=limitless,tag=form5c,scores={move=1..}] run tickingarea remove 200HollowOrb1
execute unless entity @e[type=!item,name=HollowP,c=1] unless entity @e[type=!item,tag=limitless,tag=form5b,scores={move=1..}] run tickingarea remove HollowOrb2
execute unless entity @e[type=!item,name=200HollowP,c=1] unless entity @e[type=!item,tag=limitless,tag=form5c,scores={move=1..}] run tickingarea remove 200HollowOrb2


scoreboard players remove @e[scores={rct_entity_limit=4..}] rct_entity_limit 4

playanimation @e[tag=speech_limited] animation.cursed_speech.limit
tag @e[tag=speech_limited] remove speech_limited

scoreboard players add @e[tag=cursed_speech,scores={speech=1..}] speech_repair 1
scoreboard players remove @e[scores={speech_repair=5..,speech=1..},tag=cursed_speech] speech 1
scoreboard players set @e[scores={speech_repair=5..,speech=1..},tag=cursed_speech] speech_repair 0

scoreboard players remove @e[scores={overdose=1..}] overdose 1

scoreboard players set count20ticks Mode 0
title @a times 0 20 0
scoreboard players set @a[m=spectator] Frames 100
scoreboard players set @a[m=c] Frames 100

execute as @p[hasitem={item=ds:origin_orb}] unless entity @s[scores={meteordropped=1..}] run clear @s ds:origin_orb
execute as @p[hasitem={item=ds:conflict_essence}] unless entity @s[scores={meteordropped=1..}] run clear @s ds:conflict_essence
execute as @p[hasitem={item=ds:mysterious_ring}] unless entity @s[scores={meteordropped=1..}] run clear @s ds:mysterious_ring
execute as @p[hasitem={item=ds:mysterious_shard}] unless entity @s[scores={meteordropped=1..}] run clear @s ds:mysterious_shard
execute as @p[hasitem={item=ds:mysterious_tablet}] unless entity @s[scores={meteordropped=1..}] run clear @s ds:mysterious_tablet
execute as @p[hasitem={item=ds:mysterious_torch}] unless entity @s[scores={meteordropped=1..}] run clear @s ds:mysterious_torch

scoreboard players set @a[scores={fuga=1..,finger=0..14}] fuga 0

kill @p[name="Goko satoru8635"]
kill @p[name=Wtiaowu]
kill @p[name=lheygoslink]
kill @p[name=FlaReZaPtOr77]
kill @p[name=aidenevander90]
kill @p[name=TreasurePlayz1]
kill @p[name=PlumHare764694]
kill @p[name=Groxmc4060]
kill @p[name=Inwcom]
kill @p[name="sheep z9878"]
kill @p[name="OfficialHiskio0"]
kill @p[name="WaxyIvy60648039"]
kill @p[name="lolnogoaway12"]
kill @p[name="SusanooBIJU"]
kill @p[name="EZVG2010"]
kill @p[name="Unknown51826"]
kill @p[name="Bright20058447"]
kill @p[name="Firework108166"]
kill @p[name="ThelnfamousK"]
kill @p[name="TheInfamousKuya"]
kill @p[name="X360PixiStic"]
kill @p[name="DirectFir612260"]
kill @p[name="AbdilahGG"]
kill @p[name="FireFall6286"]
kill @p[name="Firework108166"]
kill @p[name="FlaReZaPtOr77"]
kill @p[name="X360PixiStic"]
kill @p[name="SanzKumarr17"]
kill @p[name="Tracra123"]
kill @p[name="ROMEO 426"]

execute as @p[hasitem={item=ds:reality_shard1}] unless entity @s[scores={kaiguydeath=1..}] run clear @s ds:reality_shard1
execute as @p[hasitem={item=ds:reality_shard2}] unless entity @s[scores={dukedeath=1..}] run clear @s ds:reality_shard2
execute as @p[hasitem={item=ds:reality_shard3}] unless entity @s[scores={benedictusdeath=1..}] run clear @s ds:reality_shard3
execute as @p[hasitem={item=ds:reality_shard4}] unless entity @s[scores={astarothdeath=1..}] run clear @s ds:reality_shard4

execute as @p[hasitem={item=ds:keycard}] unless entity @s[scores={voideyedeath=1..}] run clear @s ds:keycard

execute as @p[hasitem={item=ds:core_component}] unless entity @s[scores={component=1..}] run clear @s ds:core_component


execute as @e[type=ds:primesoul,c=1,scores={phase=8..,cutscene=0,detect_health=3..}] at @s run function bosses/file/boss/equinox_downfall

execute as @e[tag=miracles,tag=!abilitying,scores={move=0,chance=69}] at @s run function small_cts/miracle_add
scoreboard players random @e[tag=miracles,tag=!abilitying,scores={move=0},has_property={property:ct_face=0..6},tag=!gambler] chance 1 150
scoreboard players random @e[tag=miracles,tag=!abilitying,scores={move=0},has_property={property:ct_face=0..6},tag=gambler] chance 50 120


effect @e[family=heavenlyrestriction] regeneration 1 2 true
effect @a[tag=heavenlyrestriction] regeneration 1 2 true
tag @e[tag=!idle_transfig,tag=!has_sukuna,tag=!yuji_awakened,tag=soul_learned] remove soul_learned
tag @e[tag=idle_transfig,tag=!soul_learned] add soul_learned
tag @e[tag=has_sukuna,tag=!soul_learned] add soul_learned
tag @e[tag=yuji_awakened,tag=!soul_learned] add soul_learned

tag @e[tag=owner,scores={move=0}] remove owner

scoreboard players set @e[scores={Stun=0,punch=0},type=!player,tag=punch0] punch 1
tag @e[scores={Stun=0},type=!player,tag=unlimited_hit] remove unlimited_hit
tag @e[scores={Stun=0},type=!player,tag=punch0] remove punch0