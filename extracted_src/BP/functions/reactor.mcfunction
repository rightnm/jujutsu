
































# I RECOMMEND NOT TO SEARCH THROUGH THIS FILE AS IT MAY SPOIL OR RUIN STEPS REQUIRED FOR SECRETS IN THIS MOD. IF YOU WANT TO EXPERIENCE THE SECRETS PLEASE DO IT THE LEGITIMATE WAY AS IT WILL BE MORE INTERESTING AND FUN















































tag @s[tag=!Frames] add Frames
effect @s instant_health 1 5 true
execute positioned 80125 231 75118 run execute as @e[type=ds:void_reactor,rm=30] at @s run event entity @s ds:disappear
tp @s 80125 231 75118
execute run execute as @e[type=!ds:void_reactor,r=1] at @s run tp @s ^^^-0.045

execute as @s[tag=!stabilized,tag=!destabilizing_final] unless block 80125 229 75118 repeating_command_block run function structure_void


execute as @s unless entity @s[scores={Energy=0..}] run event entity @s ds:void_reactor_off
execute as @s unless entity @s[scores={Energy=0..}] run scoreboard players add @s Energy 0

event entity @s[scores={activated=1..},has_property={property:void_reactor=2}] ds:void_reactor
execute as @a run scoreboard players set playercount endurance 0
execute unless entity @a[name=iiTestAlt] unless entity @a[tag=cancelplayerlock] run scoreboard players add playercount endurance 1

execute unless entity @s[scores={move=1..}] unless entity @s[scores={activated=1..}] run playanimation @s animation.void_reactor.idle

execute at @s unless entity @s[scores={activated=1..}] positioned ^^^2 if entity @p[hasitem={item=ds:keycard,location=slot.weapon.mainhand},scores={voideyedeath=1..,punch=1},r=1.99] run tag @s add activation
execute at @s unless entity @s[scores={activated=1..}] positioned ^^^2 if entity @p[hasitem={item=ds:keycard,location=slot.weapon.mainhand},scores={voideyedeath=1..,punch=1},r=1.99] run scoreboard players set @s move 201

execute as @s[tag=activation,scores={move=1..}] run function reactor_activation

playanimation @s[scores={move=0,activated=1..},tag=missingcomponent] animation.void_reactor.active

execute as @s[scores={move=0,activated=1..},tag=missingcomponent] unless entity @e[scores={component=1..}] unless entity @e[type=ds:void_servant] run particle ds:waypoint_white 80100 50 73100
execute as @s[scores={move=0,activated=1..},tag=missingcomponent] unless entity @e[scores={component=1..}] unless entity @e[type=ds:void_servant] positioned 80100 70 73100 run function component_area

execute as @s[scores={move=0,activated=1..},tag=missingcomponent] if entity @p[hasitem={item=ds:core_component,location=slot.weapon.mainhand},scores={component=1..,punch=1},r=1.99] run function reactor_component

execute as @s[scores={move=0,activated=1..},tag=!missingcomponent] unless entity @s[scores={Energy=0..}] run scoreboard players add @s Energy 0
scoreboard players remove @s[scores={Energy=1..},tag=!missingcomponent] Energy 1
playanimation @s[scores={move=0,activated=1..,Energy=0..1},tag=!missingcomponent] animation.void_reactor.complete

playanimation @s[scores={move=0,activated=1..,Energy=0..1,endurance=1},tag=!missingcomponent] animation.void_reactor.error1
playanimation @s[scores={move=0,activated=1..,Energy=0..1,endurance=2},tag=!missingcomponent] animation.void_reactor.error2
playanimation @s[scores={move=0,activated=1..,Energy=0..1,endurance=3},tag=!missingcomponent] animation.void_reactor.error3
playanimation @s[scores={activated=1..,Energy=0..1,endurance=4},tag=!missingcomponent] animation.void_reactor.error4

execute as @s[scores={activated=1..,endurance=3..,Energy=0..1}] run particle ds:large_impact2 ~~1.8~

execute as @s[scores={activated=1..,endurance=4..,Energy=0..1}] run effect @a[r=100] levitation 1 1 true
execute as @s[scores={activated=1..,endurance=4..,Energy=11..12}] run effect @a[r=100] levitation 0 20 true

execute as @s[scores={move=0,activated=1..,endurance=1,Energy=0..1}] run camerashake add @a[r=100] 0.15 3
execute as @s[scores={move=0,activated=1..,endurance=2,Energy=0..1}] run camerashake add @a[r=100] 0.25 2
execute as @s[scores={move=0,activated=1..,endurance=3,Energy=0..1}] run camerashake add @a[r=100] 0.4 1
execute as @s[scores={move=0,activated=1..,endurance=1,Energy=0..1}] run playsound mob.alarm @a ~~1~ 9999999 0.8 999999
execute as @s[scores={move=0,activated=1..,endurance=2,Energy=0..1}] run playsound mob.alarm @a ~~1~ 9999999 0.9 999999
execute as @s[scores={move=0,activated=1..,endurance=3,Energy=0..1}] run playsound mob.alarm @a ~~1~ 9999999 1.2 999999
execute as @s[scores={move=1..,activated=1..,endurance=4,Energy=0..1}] run playsound mob.alarm @a ~~1~ 9999999 0.9 999999

scoreboard players set @s[scores={Energy=0..1,endurance=1},tag=!missingcomponent] Energy 60
scoreboard players set @s[scores={Energy=0..1,endurance=2},tag=!missingcomponent] Energy 39
scoreboard players set @s[scores={Energy=0..1,endurance=3},tag=!missingcomponent] Energy 19
scoreboard players set @s[scores={Energy=0..1,endurance=4..},tag=!missingcomponent] Energy 15
scoreboard players set @s[scores={Energy=0..1},tag=!missingcomponent] Energy 50

event entity @s[scores={endurance=1..,Energy=0..2}] ds:void_reactor_red
event entity @s[scores={endurance=1,Energy=50..52}] ds:void_reactor
event entity @s[scores={endurance=2,Energy=30..32}] ds:void_reactor
event entity @s[scores={endurance=3,Energy=15..17}] ds:void_reactor
event entity @s[scores={endurance=4,Energy=11..12}] ds:void_reactor

execute as @s[scores={move=0,activated=1..}] run playsound beacon.ambient @a[r=100] ~~~ 0.05 0.25

execute as @s[scores={activated=1..,endurance=1..}] run particle ds:destabilizing_aura_shards1 ~~1.8~
execute as @s[scores={activated=1..,endurance=2..}] run particle ds:destabilizing_aura4 ~~1.8~
execute as @s[scores={activated=1..,endurance=3..}] run particle ds:destabilizing_aura1 ~~1.8~


execute as @s[scores={move=0,activated=1..},tag=!missingcomponent,tag=!shardinputted] unless score playercount endurance >= two endurance if entity @p[hasitem={item=ds:reality_shard1,location=slot.weapon.mainhand},scores={component=1..,punch=1},r=4.99] run function reactor_shard1
execute as @s[scores={move=0,activated=1..},tag=!missingcomponent,tag=!shardinputted] unless score playercount endurance >= two endurance  if entity @p[hasitem={item=ds:reality_shard2,location=slot.weapon.mainhand},scores={component=1..,punch=1},r=4.99] run function reactor_shard2
execute as @s[scores={move=0,activated=1..},tag=!missingcomponent,tag=!shardinputted] unless score playercount endurance >= two endurance  if entity @p[hasitem={item=ds:reality_shard3,location=slot.weapon.mainhand},scores={component=1..,punch=1},r=4.99] run function reactor_shard3
execute as @s[scores={move=0,activated=1..},tag=!missingcomponent,tag=!shardinputted] unless score playercount endurance >= two endurance  if entity @p[hasitem={item=ds:reality_shard4,location=slot.weapon.mainhand},scores={component=1..,punch=1},r=4.99] run function reactor_shard4

execute as @s[scores={move=0,activated=1..},tag=!missingcomponent,tag=!shardinputted] if score playercount endurance >= two endurance if entity @p[scores={component=1..,punch=1},r=4.99] run tellraw @a[r=300] {"rawtext":[{"text":"§l§4> ɪɴᴘᴜᴛ ᴄᴀɴ ᴏɴʟʏ ʙᴇ ᴘʀᴏᴄᴇꜱꜱᴇᴅ ʙʏ 1 ᴘʟᴀʏᴇʀ\n\n§r§a(If you think your device is capable of handling this with several players, type /tag @s add cancelplayerlock)"}]}

execute as @s[scores={activated=1..,endurance=0..3,move=1..},tag=!missingcomponent,tag=shardinputted] run function reactor_destabilize

execute as @s[scores={activated=1..,endurance=0..,move=1..},tag=!missingcomponent,tag=stabilized] run function reactor_stabilized

execute as @s[scores={activated=1..,endurance=4..,move=1..},tag=!missingcomponent,tag=destabilizing_final] run function reactor_destabilizing_final

execute as @s[scores={move=0,activated=1..,endurance=0..,scroll=0..1},tag=!missingcomponent,tag=!stabilized] run tag @s add stabilized
execute as @s[scores={move=0,activated=1..,endurance=0..,scroll=0..1},tag=!missingcomponent,tag=stabilized] run scoreboard players set @s move 201

scoreboard players remove @s[scores={scroll=1..}] scroll 1


