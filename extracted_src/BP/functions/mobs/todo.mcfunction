execute unless entity @s[scores={Energy=0..}] run scoreboard players add @s Energy 0
scoreboard players add @s[scores={Energy=0}] guilty_score 0
scoreboard players add @s[scores={Energy=0}] chance 0
scoreboard players add @s[scores={Energy=0}] hitCD 0
scoreboard players add @s[scores={Energy=0}] Stun 0
scoreboard players add @s[scores={Energy=0}] move 0
scoreboard players add @s[scores={Energy=0}] Move 0
scoreboard players add @s[scores={Energy=0}] Camera 0
scoreboard players add @s[scores={Energy=0}] Disabled 0
scoreboard players add @s[scores={Energy=0}] endurance 0
scoreboard players add @s[scores={Energy=0}] cutscene 0
scoreboard players add @s[scores={Energy=0}] ability1 0
scoreboard players add @s[scores={Energy=0}] ability2 0
scoreboard players add @s[scores={Energy=0}] ability3 0
scoreboard players add @s[scores={Energy=0}] simpledomainCD 0
scoreboard players add @s[scores={Energy=0}] simpledomainown 1
scoreboard players set @s[scores={Energy=0}] damageadd 6
scoreboard players set @s[scores={Energy=0}] punch 1
scoreboard players set @s[scores={Energy=0}] strength 38
tag @s[scores={Energy=0}] add yujis_friend
tag @s[scores={Energy=0}] add yuji_preshibuya_brother
tag @s[scores={Energy=0}] add delusional_trait
execute unless entity @s[scores={blackflashlearn=1..}] run scoreboard players set @s[scores={Energy=0}] blackflashlearn 1
scoreboard players set @s[scores={Energy=0}] Energy 1200

effect @s resistance 1 1 true

execute as @s[scores={Hit=1..2,cutscene=0,Stun=0..20,move=0}] at @s run function _hitdodge

execute as @s[scores={Stun=0,move=0,cutscene=0,Disabled2=0}] at @s if entity @e[scores={atk=1..2},r=6,family=!yuji] at @s run scoreboard players set @s Frames 7
execute as @s[scores={Stun=0,move=0,cutscene=0,Disabled2=0}] at @s if entity @e[scores={atk=1..2},r=6,family=!yuji] at @s run function boogie_woogie/instant_clap


execute as @s[type=ds:todo,scores={Disabled=0,move=0,cutscene=0,combat=1..},tag=!hit,tag=!delusional] at @s if entity @e[tag=!Frames,family=!yuji,type=!ds:todo,r=9.9,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,c=1] run scoreboard players random @s chance 3 18

execute as @s[type=ds:todo,scores={Disabled=0,move=0,cutscene=0,combat=1..},tag=!hit,tag=delusional] at @s if entity @e[tag=!Frames,family=!yuji,type=!ds:todo,r=9.9,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,c=1] run scoreboard players random @s chance -5 18



execute as @s[type=ds:todo,scores={Disabled=0,move=0,cutscene=0,combat=1..},tag=!hit] at @s unless entity @e[tag=!Frames,family=!yuji,type=!ds:todo,r=20,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,c=1] if entity @e[tag=!Frames,family=!yuji,type=!ds:todo,rm=20,r=90,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,c=1] run scoreboard players random @s chance 20 22

execute as @s[scores={chance=20..}] at @s run execute as @e[family=yuji,r=40,scores={move=0}] at @s if entity @e[family=!yuji,r=4.5] run scoreboard players random @e[type=ds:todo,c=1,scores={chance=20..21}] chance 33 35

tag @s[tag=hit] remove hit
execute as @s[scores={hitCD=0,Stun=0,Disabled=6..,move=0,cutscene=0,chance=0,combat=1..}] if entity @e[type=!ds:todo,r=2.25,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,c=1] run scoreboard players random @s chance 1 2
execute as @s[scores={hitCD=0,Stun=0,Disabled=6..,move=0,cutscene=0,combat=1..}] if entity @e[type=!ds:todo,r=2.25,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,c=1] run tag @s add hit

playanimation @s[scores={chance=1},tag=hit] animation.finger_bearer.hit1
playanimation @s[scores={chance=2},tag=hit] animation.finger_bearer.hit2
scoreboard players random @s[tag=hit] hitCD 2 5
execute as @s[tag=hit,scores={chance=1..2}] run function m1

execute as @s[scores={atk=1..2}] at @s positioned ^^^2 run scoreboard players set @e[family=yuji,r=5] Frames 5
execute as @s[scores={atk=1..2}] at @s positioned ^^^2 run tag @e[family=yuji,r=5,tag=!Frames,scores={Frames=1..}] add Frames

execute as @s[scores={chance=-5..-1}] at @s run scoreboard players set @e[family=yuji,r=5] Frames 7

execute as @s[tag=delusional_trait,tag=!delusional,scores={move=0,cutscene=0,Stun=0,Disabled2=0,Disabled=0,detect_health=0..120},tag=!delusional_cutscene] unless entity @e[tag=delusional_cutscene,scores={move=1..},c=1] run tag @s add delusional_cutscene
execute as @s[tag=delusional_trait,tag=!delusional,scores={move=0,cutscene=0,Stun=0,Disabled2=0,Disabled=0,detect_health=0..120}] unless entity @e[tag=delusional_cutscene,scores={move=1..},c=1] run scoreboard players set @s move 201
scoreboard players set @s[tag=delusional_cutscene,scores={chance=1..}] chance 0
execute as @s[tag=delusional_cutscene] at @s run tp @s ~~~~ 0

execute as @s[tag=delusional_trait,tag=delusional,scores={move=0,cutscene=0}] at @s run tp @e[type=ds:takada_chan,c=1] ^-1^0.05^ facing ^^^5

execute as @s[tag=delusional_trait,tag=delusional] at @s run tag @e[type=ds:takada_chan,r=10,tag=!temp_mark] add temp_mark
execute as @s[tag=delusional_trait,tag=delusional] at @s unless entity @e[type=ds:takada_chan,r=10,tag=temp_mark] run summon ds:takada_chan ^-1^^
execute as @s[tag=delusional_trait,tag=delusional] at @s run tag @e[type=ds:takada_chan,r=10,tag=temp_mark] remove temp_mark



scoreboard players add @s[tag=delusional_trait,tag=delusional,tag=!infinite_delusional] delusional_timer 1
execute as @s[tag=delusional_trait,scores={delusional_timer=3800..,move=0,cutscene=0}] at @s run function remove_delusional




execute as @s[scores={simpledomainCD=0,move=0},tag=!domainimmune,tag=!simpledomain] at @s unless entity @e[type=ds:simple_domain,r=20] if entity @e[tag=domainactive,r=55] run tag @s add simpledomain
execute as @s[scores={simpledomainCD=0,move=0},tag=!domainimmune,tag=simpledomain] at @s unless entity @e[type=ds:simple_domain,r=20] if entity @e[tag=domainactive,r=55] run scoreboard players set @s move 61

execute as @s[tag=simpledomain,scores={move=1..}] at @s run function ce/simpledomain
execute as @s[tag=simpledomain,scores={move=1..}] at @s run tp @s ~~~

execute as @s at @s if entity @e[tag=domainactive,r=50] if entity @e[type=ds:simple_domain,r=20] unless block ~~-1~ air run tp @s ~~~
execute as @s at @s if entity @e[type=ds:simple_domain,r=20] run effect @s slowness 1 5 true



#Delusional Moves


scoreboard players set @s[type=ds:todo,scores={chance=-1,Stun=0,move=0}] move 41
scoreboard players set @s[scores={chance=-1,Stun=0,move=1..}] Disabled 60
execute as @s[scores={chance=-1,move=1..}] at @s run function delusional/ab1

scoreboard players set @s[type=ds:todo,scores={chance=-2,Stun=0,move=0}] move 41
scoreboard players set @s[scores={chance=-2,Stun=0,move=1..}] Disabled 60
execute as @s[scores={chance=-2,move=1..}] at @s run function delusional/ab2

scoreboard players set @s[type=ds:todo,scores={chance=-3,Stun=0,move=0}] move 61
scoreboard players set @s[scores={chance=-3,Stun=0,move=1..}] Disabled 60
execute as @s[scores={chance=-3,move=1..}] at @s run function delusional/ab3

scoreboard players set @s[type=ds:todo,scores={chance=-4,Stun=0,move=0,ability1=0}] move 61
scoreboard players set @s[scores={chance=-4,Stun=0,move=1..}] Disabled 60
scoreboard players set @s[scores={chance=-4,Stun=0,move=1..}] ability1 400
execute as @s[scores={chance=-4,move=1..}] at @s run function delusional/ab4

scoreboard players set @s[type=ds:todo,scores={chance=-5,Stun=0,move=0,ability2=0},tag=!nocts] move 101
scoreboard players set @s[scores={chance=-5,Stun=0,move=1..}] Disabled 60
scoreboard players set @s[scores={chance=-5,Stun=0,move=1..}] ability2 400
execute as @s[scores={chance=-5,move=1..}] at @s run function delusional/ab5



scoreboard players set @s[type=ds:todo,scores={chance=3,Stun=0,move=0}] move 31
scoreboard players set @s[scores={chance=3,Stun=0,move=1..}] Disabled 60
execute as @s[scores={chance=3,move=1..}] at @s run function boogie_woogie/combat1

scoreboard players set @s[type=ds:todo,scores={chance=4,Stun=0,move=0}] move 26
scoreboard players set @s[scores={chance=4,Stun=0,move=1..}] Disabled 60
execute as @s[scores={chance=4,move=1..}] at @s run function boogie_woogie/combat2

scoreboard players set @s[type=ds:todo,scores={chance=5,Stun=0,move=0}] move 36
scoreboard players set @s[scores={chance=5,Stun=0,move=1..}] Disabled 80
execute as @s[scores={chance=5,move=1..}] at @s run function boogie_woogie/combat3

scoreboard players set @s[type=ds:todo,scores={chance=6,Stun=0,move=0}] move 31
scoreboard players set @s[scores={chance=6,Stun=0,move=1..}] Disabled 5
execute as @s[scores={chance=6,move=1..}] at @s run function boogie_woogie/combat4

scoreboard players set @s[type=ds:todo,scores={chance=7,Stun=0,move=0}] move 21
scoreboard players set @s[scores={chance=7,Stun=0,move=1..}] Disabled 10
execute as @s[scores={chance=7,move=1..}] at @s run function fighting/basic/strong_punch

scoreboard players set @s[type=ds:todo,scores={chance=8,Stun=0,move=0}] move 26
scoreboard players set @s[scores={chance=8,Stun=0,move=1..}] Disabled 5
execute as @s[scores={chance=8,move=1..}] at @s run function fighting/hr/deadly_strike

scoreboard players set @s[type=ds:todo,scores={chance=9,Stun=0,move=0}] move 17
scoreboard players set @s[scores={chance=9,Stun=0,move=1..}] Disabled 5
execute as @s[scores={chance=9,move=1..}] at @s run function fighting/hr/hr9

scoreboard players random @s[scores={chance=10..13},tag=cant_summon_yuji] chance 1 9

scoreboard players set @s[type=ds:todo,scores={chance=10,Stun=0,move=0},tag=!nocts] move 12
scoreboard players set @s[scores={chance=10,Stun=0,move=1..}] Disabled 40
execute as @s[scores={chance=10,move=1..}] at @s run function boogie_woogie/boogie_bc2

scoreboard players set @s[type=ds:todo,scores={chance=11,Stun=0,move=0},tag=!nocts] move 31
scoreboard players set @s[scores={chance=11,Stun=0,move=1..}] Disabled 40
execute as @s[scores={chance=11,move=1..}] at @s run function boogie_woogie/boogie_bc3

scoreboard players set @s[type=ds:todo,scores={chance=12,Stun=0,move=0},tag=!nocts] move 22
scoreboard players set @s[scores={chance=12,Stun=0,move=1..}] Disabled 40
execute as @s[scores={chance=12,move=1..}] at @s run function boogie_woogie/boogie_bc4

scoreboard players set @s[type=ds:todo,scores={chance=13..15,Stun=0,move=0},tag=!nocts] move 9
scoreboard players set @s[scores={chance=13..15,Stun=0,move=1..}] Disabled 3
execute as @s[scores={chance=13..15,move=1..}] at @s run function boogie_woogie/boogie_bc1

scoreboard players set @s[type=ds:todo,scores={chance=16..18,Stun=0,move=0},tag=!nocts] move 9
scoreboard players set @s[scores={chance=16..18,Stun=0,move=1..}] Disabled 3
execute as @s[scores={chance=16..18,move=1..}] at @s run function boogie_woogie/boogie1

execute as @e[type=ds:pebble,c=1,r=50] at @s run tp @s @e[type=!ds:pebble,tag=!Frames,family=!yuji,type=!ds:todo,r=8,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,c=1]

execute as @s[scores={chance=20..,move=0}] at @s run tp @s ~~~ facing @e[tag=!Frames,family=!yuji,type=!ds:todo,rm=20,r=90,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,c=1]

scoreboard players set @s[type=ds:todo,scores={chance=19,Stun=0,move=0,ability3=0},tag=!nocts] move 91
scoreboard players set @s[scores={chance=19,Stun=0,move=1..,ability3=0}] Disabled 30
scoreboard players set @s[scores={chance=19,Stun=0,move=1..,ability3=0}] ability3 9999
execute as @s[scores={chance=19,move=1..}] at @s run function boogie_woogie/plus_ultra


scoreboard players set @s[type=ds:todo,scores={chance=20..21,Stun=0,move=0},tag=!nocts] move 9
scoreboard players set @s[scores={chance=20..21,Stun=0,move=1..}] Disabled 4
execute as @s[scores={chance=20..21,move=1..}] at @s run function boogie_woogie/boogie1

scoreboard players set @s[type=ds:todo,scores={chance=22,Stun=0,move=0},tag=!nocts] move 35
scoreboard players set @s[scores={chance=22,Stun=0,move=1..}] Disabled 20
execute as @s[scores={chance=22,move=1..}] at @s run function boogie_woogie/boogie4

scoreboard players set @s[type=ds:todo,scores={chance=33..34,Stun=0,move=0},tag=!nocts] move 9
scoreboard players set @s[scores={chance=33..34,Stun=0,move=1..}] Disabled 12
execute as @s[scores={chance=33..34,move=1..}] at @s run function boogie_woogie/boogie_bc1

execute as @s[scores={move=0},tag=delusional] at @s unless entity @e[tag=delusional,scores={move=1..},r=34] run event entity @e[type=ds:takada_background,r=33] ds:disappear

tag @s[scores={move=0..4},tag=simpledomain] remove simpledomain
scoreboard players set @s[scores={move=1..2,endurance=1..}] endurance 0
scoreboard players set @s[scores={move=1..2,chance=1..}] chance 0
scoreboard players set @s[scores={move=1..2,chance=-999..-1}] chance 0

