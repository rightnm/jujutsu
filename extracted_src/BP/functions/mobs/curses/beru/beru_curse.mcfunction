execute unless entity @s[scores={Energy=0..}] run scoreboard players add @s Energy 0
execute unless entity @s[scores={guilty_score=200..}] run scoreboard players set @s[scores={Energy=0}] guilty_score 200
scoreboard players add @s[scores={Energy=0}] chance 0
scoreboard players add @s[scores={Energy=0}] hitCD 0
scoreboard players add @s[scores={Energy=0}] Stun 0
scoreboard players add @s[scores={Energy=0}] move 0
scoreboard players add @s[scores={Energy=0}] Disabled 40
scoreboard players add @s[scores={Energy=0}] DashCD 0
scoreboard players add @s[scores={Energy=0}] flashstep 0
scoreboard players add @s[scores={Energy=0}] cutscene 0
scoreboard players set @s[scores={Energy=0}] damageadd 15
scoreboard players set @s[scores={Energy=0}] punch 1
scoreboard players set @s[scores={Energy=0}] strength 50
scoreboard players set @s[scores={Energy=0}] agility 100
scoreboard players set @s[scores={Energy=0}] combat 1200
tag @s[scores={Energy=0}] add Big

playanimation @s[scores={Stun=1..,move=0,cutscene=0},tag=!cruelcombo,tag=!deadlystrikes,tag=!fallingtempest,tag=!vanishingfangs] animation.stunned

tag @s[scores={Energy=0}] add ant_awaken
scoreboard players set @s[scores={Energy=0}] cutscene 341
execute as @s[scores={cutscene=1..},tag=ant_awaken] at @s run function mobs/curses/beru/awaken

tag @s[scores={detect_health=6..350,cutscene=0},has_property={property:awaken=0}] add ant_awakening
scoreboard players set @s[scores={detect_health=6..350,cutscene=0},has_property={property:awaken=0}] cutscene 441
execute as @s[scores={cutscene=1..},tag=ant_awakening] at @s run function mobs/curses/beru/awakening

scoreboard players set @s[scores={Energy=0}] Energy 9999


execute as @s[scores={detect_health=0..4}] at @s run stopsound @a music.tempmusic
execute as @s[scores={detect_health=0..4}] at @s run particle ds:blood_mist ~~1.5~
execute as @s[scores={detect_health=0..4}] at @s run function mobs/curses/beru/death
event entity @s[scores={detect_health=0..4}] ds:disappear

tag @s[tag=hit] remove hit
execute as @s[scores={Disabled=0,move=0,cutscene=0,combat=1..},tag=!hit] at @s if entity @e[type=!ds:beru_curse,tag=!Frames,r=10,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,type=!ds:curse_knockback,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand,family=!purecurse,c=1] run scoreboard players random @s chance 3 10


execute as @s[scores={Disabled=0,move=0,cutscene=0,combat=1..},tag=!hit] at @s  if entity @e[type=!ds:beru_curse,tag=!Frames,rm=10,r=55,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,type=!ds:curse_knockback,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand,family=!purecurse,c=1] run scoreboard players random @s chance 9 12


execute if entity @e[family=!purecurse,r=5] run scoreboard players set @s[scores={combat=0}] combat 50

scoreboard players random @s[scores={move=0,cutscene=0,Frames=0,Move=0,Camera=0,Hit=1..}] DashCD 1 14
execute as @s[scores={move=0,cutscene=0,flashstep=0,Stun=0}] at @s if entity @e[scores={atk=1..2},r=5,rm=0.15] run scoreboard players random @s DashCD 1 14
execute as @s[scores={move=0,cutscene=0,flashstep=0,Stun=0}] at @s if entity @e[family=projectile,r=12,name=!LimitlessP,name=!HollowP,name=!200HollowP,tag=!Frames] run scoreboard players random @s DashCD 1 14
scoreboard players set @s[scores={DashCD=1..9,flashstep=0}] flashstep 6
execute as @s[scores={flashstep=4..,DashCD=0..4}] at @s run scriptevent ds:dashEast
execute as @s[scores={flashstep=4..,DashCD=5..}] at @s run scriptevent ds:dashWest
scoreboard players set @s[scores={flashstep=0..3}] DashCD 0

tag @s[tag=hit] remove hit
execute as @s[scores={hitCD=0,Stun=0,Disabled=6..,move=0,cutscene=0,chance=0,combat=1..}] if entity @e[r=3,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,type=!ds:curse_knockback,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand,family=!purecurse,c=1] run scoreboard players random @s chance 1 2
execute as @s[scores={hitCD=0,Stun=0,Disabled=6..,move=0,cutscene=0,combat=1..}] if entity @e[r=3,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,type=!ds:curse_knockback,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand,family=!purecurse,c=1] run tag @s add hit


playanimation @s[scores={chance=1},tag=hit] animation.beru.hit1
playanimation @s[scores={chance=2},tag=hit] animation.beru.hit2
scoreboard players random @s[tag=hit] hitCD 1 2
execute as @s[tag=hit,scores={chance=1..2}] run function m1

scoreboard players remove @s[scores={detect_health=0..400,Disabled=1..}] Disabled 1
scoreboard players remove @s[scores={detect_health=0..250,Disabled=1..}] Disabled 1
scoreboard players set @s[has_property={property:awaken=1..},scores={Disabled=1..15,move=0,cutscene=0,Stun=0..20}] Disabled 0
execute as @s[has_property={property:awaken=1..},scores={Disabled=16..,move=0,cutscene=0,Stun=0..20}] at @s unless block ~~~ air run tp @s ~~1~
execute as @s[has_property={property:awaken=1..},scores={Disabled=16..,move=0,cutscene=0,Stun=0..20}] at @s unless entity @e[r=3,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,type=!ds:curse_knockback,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand,family=!purecurse,c=1] run tp @s ^^^2 facing @e[r=60,rm=3,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,type=!ds:curse_knockback,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand,family=!purecurse,c=1]

execute as @s[has_property={property:awaken=1..},scores={move=0,cutscene=0,Stun=0..14}] at @s if entity @e[r=2,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,type=!ds:curse_knockback,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand,family=!purecurse,c=1] run playsound mob.slash @a[r=100] ~~~ 9999 1 9999
execute as @s[has_property={property:awaken=1..},scores={move=0,cutscene=0,Stun=0..14}] at @s if entity @e[r=2,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,type=!ds:curse_knockback,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand,family=!purecurse,c=1] run playanimation @s animation.beru.hit2
execute as @s[has_property={property:awaken=1..},scores={move=0,cutscene=0,Stun=0..14}] at @s if entity @e[r=2,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,type=!ds:curse_knockback,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand,family=!purecurse,c=1] run damage @e[type=!ds:beru_curse,r=5] 3 override
execute as @s[has_property={property:awaken=1..},scores={move=0,cutscene=0,Stun=0..14}] at @s if entity @e[r=2,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,type=!ds:curse_knockback,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand,family=!purecurse,c=1] run particle ds:rampage2 ^^^
execute as @s[has_property={property:awaken=1..},scores={move=0,cutscene=0,Stun=0..14}] at @s if entity @e[r=2,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,type=!ds:curse_knockback,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand,family=!purecurse,c=1] run summon ds:curse_knockback
execute as @s[has_property={property:awaken=1..},scores={move=0,cutscene=0,Stun=0..14}] at @s if entity @e[r=2,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,type=!ds:curse_knockback,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand,family=!purecurse,c=1] run scoreboard players random @s chance 10 11



effect @s[has_property={property:awaken=1..}] speed 1 3 true

effect @s[scores={Hit=0,Stun=0,move=0,detect_health=15..}] regeneration 3 1 true
effect @s[scores={detect_health=0..2}] clear regeneration

execute as @s at @s unless entity @e[type=!player,scores={strength=40..},family=!purecurse,r=40,tag=!creative] unless entity @p[scores={agility=45..},r=40,tag=!creative] run execute as @e[type=!ds:beru_curse,r=2,type=!player] at @s run scriptevent ds:knockback -0.7
execute as @s at @s unless entity @e[type=!player,scores={strength=40..},family=!purecurse,r=40,tag=!creative] unless entity @p[scores={agility=45..},r=40,tag=!creative] run effect @e[type=!ds:beru_curse,r=2] slowness 1 2 true

execute as @s[scores={Hit=1..2,cutscene=0,Stun=0..20,hitCD=0},tag=!hit] at @s unless entity @e[type=!player,scores={strength=40..},family=!purecurse,r=10,tag=!creative] unless entity @p[scores={agility=45..},r=10,tag=!creative] run function mobs/curses/beru/dodge
execute as @s[scores={cutscene=0,move=0,hitCD=0},tag=!hit] at @s if entity @e[scores={atk=1..},r=8] unless entity @e[type=!player,scores={strength=40..},family=!purecurse,r=10,tag=!creative] unless entity @p[scores={agility=45..},r=10,tag=!creative] run function mobs/curses/beru/dodge


execute as @s[has_property={property:awaken=1..},scores={cutscene=0}] run particle ds:ant_awakened1

scoreboard players remove @s[scores={Stun=3..10},has_property={property:awaken=1..}] Stun 2

execute as @s[scores={Hit=1..2,cutscene=0,Stun=0..20}] at @s if entity @e[type=!player,scores={strength=40..},family=!purecurse,r=20,tag=!creative] run function _hitdodge
execute as @s[scores={Hit=1..2,cutscene=0,Stun=0..20}] at @s if entity @p[scores={agility=45..},r=20,tag=!creative] run function _hitdodge

scoreboard players set @s[scores={move=1..2}] chance 0

execute as @s[scores={chance=0..,move=0,cutscene=0}] unless entity @e[type=!ds:beru_curse,tag=!Frames,r=35,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,type=!ds:curse_knockback,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand,family=!purecurse,c=1] if entity @e[type=!ds:beru_curse,tag=!Frames,r=60,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,type=!ds:curse_knockback,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand,family=!purecurse,c=1] run scoreboard players random @s chance 12 13

execute as @s[scores={move=0,cutscene=0,Stun=0}] unless entity @p[r=40,tag=!creative,tag=!spectator] if entity @p[r=100,tag=!creative,tag=!spectator] run particle ds:agito_dash1 ~~-2~
execute as @s[scores={move=0,cutscene=0,Stun=0}] unless entity @p[r=40,tag=!creative,tag=!spectator] if entity @p[r=100,tag=!creative,tag=!spectator] run tp @s @p[r=100,tag=!creative,tag=!spectator] 


scoreboard players set @s[scores={chance=4,move=0,Disabled=0}] move 36
scoreboard players set @s[scores={chance=4,move=1..}] Disabled 5
execute as @s[scores={chance=4,move=1..}] at @s run function mobs/curses/beru/punch

scoreboard players set @s[scores={chance=5,move=0,Disabled=0}] move 36
scoreboard players set @s[scores={chance=5,move=1..}] Disabled 5
execute as @s[scores={chance=5,move=1..}] at @s run function mobs/curses/beru/kick

scoreboard players set @s[scores={chance=6,move=0,Disabled=0}] move 21
scoreboard players set @s[scores={chance=6,move=1..}] Disabled 5
execute as @s[scores={chance=6,move=1..}] at @s run function mobs/curses/beru/slice

scoreboard players set @s[scores={chance=7,move=0,Disabled=0}] move 21
scoreboard players set @s[scores={chance=7,move=1..}] Disabled 5
execute as @s[scores={chance=7,move=1..}] at @s run function mobs/curses/beru/slices

scoreboard players set @s[scores={chance=8,move=0,Disabled=0},has_property={property:awaken=1..}] move 51
scoreboard players set @s[scores={chance=8,move=1..},has_property={property:awaken=1..}] Disabled 25
execute as @s[scores={chance=8,move=1..},has_property={property:awaken=1..}] at @s run function mobs/curses/beru/slam_stab


scoreboard players set @s[scores={chance=9,move=0,Disabled=0},has_property={property:awaken=1..}] move 36
scoreboard players set @s[scores={chance=9,move=1..},has_property={property:awaken=1..}] Disabled 15
execute as @s[scores={chance=9,move=1..},has_property={property:awaken=1..}] at @s run function mobs/curses/beru/fly_slam


scoreboard players set @s[scores={chance=10,move=0,Disabled=0}] move 56
scoreboard players set @s[scores={chance=10,move=1..}] Disabled 30
execute as @s[scores={chance=10,move=1..}] at @s run function mobs/curses/beru/speedblitz


scoreboard players set @s[scores={chance=11,move=0,Disabled=0},has_property={property:awaken=1..}] move 65
scoreboard players set @s[scores={chance=11,move=1..},has_property={property:awaken=1..}] Disabled 40
execute as @s[scores={chance=11,move=1..},has_property={property:awaken=1..}] at @s run function mobs/curses/beru/speedblitz2

scoreboard players set @s[scores={chance=13,move=0,Disabled=0}] move 21
scoreboard players set @s[scores={chance=13,move=1..}] Disabled 30
execute as @s[scores={chance=13,move=1..}] at @s run function mobs/curses/beru/takedown

scoreboard players set @s[scores={chance=12,move=0,Disabled=0}] move 41
scoreboard players set @s[scores={chance=12,move=1..}] Disabled 40
execute as @s[scores={chance=12,move=1..}] at @s run function mobs/curses/beru/heart_pierce

#clash and timer stuff
scoreboard players add @s[has_property={property:awaken=1..}] Exp 1
execute as @s[scores={Exp=3600..3601}] at @s run playsound music.tempmusic @a[r=300]
scoreboard players set @s[scores={Exp=800..841,move=0,cutscene=0}] chance 22
scoreboard players set @s[scores={Exp=1720..1761}] chance 22
scoreboard players set @s[scores={Exp=2500..2541}] chance 22
scoreboard players set @s[scores={Exp=3602..}] Exp 0

execute as @s[tag=beru_clash,scores={cutscene=1..}] at @s run function mobs/curses/beru/beru_clashing


scoreboard players set @s[scores={chance=22,move=0,Disabled=0,cutscene=0}] move 51
scoreboard players set @s[scores={chance=22,move=1..,cutscene=0}] Disabled 30
execute as @s[scores={chance=22,move=1..}] at @s run function mobs/curses/beru/clash_start





scoreboard players set @s[scores={move=0,chance=1..}] chance 0