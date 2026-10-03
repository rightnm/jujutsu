

execute as @s if entity @p unless entity @a[scores={primesoul=1..}] run function nostopcheating

execute as @s at @s unless entity @s[scores={legitdamage=0..}] run scoreboard objectives add legitdamage dummy
execute as @s at @s unless entity @s[scores={legitdamage=0..}] run scoreboard players add @s legitdamage 0
execute as @s at @s unless entity @s[scores={repeat=0..}] run scoreboard objectives add repeat dummy
execute as @s at @s unless entity @s[scores={repeat=0..}] run scoreboard players set @s repeat 1
execute as @s at @s unless entity @s[scores={cycle=0..}] run scoreboard objectives add cycle dummy
execute as @s at @s unless entity @s[scores={cycle=0..}] run scoreboard players set @s cycle 1
execute as @s at @s unless entity @s[scores={phase=0..}] run scoreboard objectives add phase dummy
execute as @s at @s unless entity @s[scores={phase=0..}] run scoreboard players set @s phase 1

event entity @e[type=ds:rift_prison] ds:disappear

execute as @s at @s unless entity @s[scores={invest=0..}] run scoreboard players set @s invest 1




tag @s[scores={detect_health=0..5,move=0,cutscene=0,legitdamage=1..,move=0}] add final_cutscene
scoreboard players set @s[scores={detect_health=0..5,move=0,cutscene=0,legitdamage=1..,move=0}] cutscene 10021
scoreboard players set @s[tag=final_cutscene] Energy 100
scoreboard players set @s[tag=final_cutscene] Stun 100

execute as @s[scores={cutscene=1..},tag=final_cutscene] at @s run function bosses/file/boss/final_cutscene

execute as @s[scores={phase=8..,cutscene=0}] at @s run playsound mob.glitch @a[r=200] ~~-30~ 999999 1 999999




execute unless entity @s[scores={countdown3=1..}] run scoreboard objectives add countdown3 dummy



execute unless entity @s[scores={countdown3=1..}] at @s[scores={phase=0..4,cutscene=0}] run execute as @a[r=300,tag=arenaboss] at @s run playsound music.ultra1 @s ~~~ 99999 1 99999
execute unless entity @s[scores={countdown3=1..}] at @s[scores={phase=5..,cutscene=0}] run execute as @a[r=300,tag=arenaboss] at @s run playsound music.ultra2 @s ~~~ 99999 1 99999

execute as @s[scores={countdown3=0,phase=2..,cutscene=0}] at @s run function bosses/file/boss/rage_dialogue

execute unless entity @s[scores={countdown3=1..}] at @s[scores={cutscene=0}] run scoreboard players set @s countdown3 3400




execute unless entity @s[scores={repeat_ranged=0..}] run scoreboard objectives add repeat_ranged dummy
execute unless entity @s[scores={repeat_ranged=0..}] run scoreboard players set @s repeat_ranged 1

execute as @s[scores={phase=5..7},tag=!final_cutscene] at @s run particle ds:corrupt1 ~~1~
execute as @s[scores={phase=5..},tag=!final_cutscene] at @s run camerashake add @a[r=10] 0.1 0.08

execute as @s[scores={phase=8..},tag=!final_cutscene] at @s run particle ds:corrupt1 ~~3~
execute as @s[scores={phase=8..},tag=!final_cutscene] at @s run particle ds:corrupt2 ~~3~
execute as @s[scores={phase=8..},tag=!final_cutscene] at @s run particle ds:rift_unstable1 ~~3~


execute as @s at @s unless entity @s[scores={Energy=0..}] unless entity @e[type=ds:primesoul,tag=respawned] run tag @s add awaken
execute as @s at @s unless entity @s[scores={Energy=0..}] unless entity @e[type=ds:primesoul,tag=respawned] run scoreboard players set @s cutscene 1202

execute as @s at @s unless entity @s[scores={Energy=0..}] run event entity @e[type=ds:primesoul,tag=respawned] ds:disappear

execute as @s at @s unless entity @s[scores={Energy=0..}] run scoreboard players add @s cutscene 0
execute as @s at @s unless entity @s[scores={Energy=0..}] run scoreboard players set @s move 0
execute as @s at @s unless entity @s[scores={Energy=0..}] run scoreboard players set @s Stun 0
execute as @s at @s unless entity @s[scores={Energy=0..}] run scoreboard players set @s Disabled2 0
execute as @s at @s unless entity @s[scores={Energy=0..}] run scoreboard players set @s Disabled 0
execute as @s at @s unless entity @s[scores={Energy=0..}] run scoreboard players set @s Energy 1201
scoreboard players set @s[scores={move=0,cutscene=0,Energy=200..}] Energy 20

gamemode a @a[m=!a,name=!iiTestAlt,r=200]
scoreboard players set @a[scores={nocts=0..5},r=200] nocts 600
execute as @s[scores={Energy=0}] run effect @a[r=200] weakness 11 20 true

scoreboard players set @s[scores={cycle=0}] cycle 1
scoreboard players set @s[scores={repeat=0}] repeat 1
scoreboard players set @s[scores={repeat_ranged=0}] repeat_ranged 1

execute as @s[scores={cutscene=1..},tag=awaken] at @s run function bosses/file/boss/primesoul_awaken

execute as @s[scores={detect_health=0..4,legitdamage=0}] at @s run function bosses/file/boss/respawn
scoreboard players set @s[scores={detect_health=5..100}] legitdamage 1

scoreboard players remove @s[scores={Energy=3..,move=0,phase=5..}] Energy 3
scoreboard players remove @s[scores={Energy=1..,move=0}] Energy 1
execute as @s[scores={Energy=1..5,move=0}] at @s run tp @s ~~~ facing @p[m=!c]
execute as @s[scores={Energy=1..,move=0,cutscene=0}] at @s run particle ds:thezone2


#-------------------switch weapon----------------


tag @s[scores={invest=4..,move=0,Energy=0,phase=2..7}] add switchingwep
scoreboard players set @s[scores={invest=4..,move=0,Energy=0,phase=2..7}] move 61
execute as @s[tag=switchingwep,scores={move=1..}] at @s run function bosses/file/boss/switch_weapon

#---Awakenings---

execute as @s[scores={detect_health=10..9000,phase=0..1}] at @s run function bosses/file/boss/phase2


scoreboard players set @s[tag=finalphase,scores={cutscene=1..}] Energy 20
tag @s[scores={detect_health=6000..7000,phase=0..2,cutscene=0,move=0}] add phase3
scoreboard players set @s[scores={detect_health=6000..7000,phase=0..2,cutscene=0,move=0}] cutscene 201
execute as @s[scores={cutscene=1..},tag=phase3] at @s run function bosses/file/boss/phase3


scoreboard players set @s[tag=phase3,scores={cutscene=1..}] Energy 20
tag @s[scores={detect_health=4000..5000,phase=0..4,cutscene=0,move=0}] add finalphase
scoreboard players set @s[scores={detect_health=4000..5000,phase=0..4,cutscene=0,move=0}] cutscene 1201
execute as @s[scores={cutscene=1..},tag=finalphase] at @s run function bosses/file/boss/final_phase

execute as @s[tag=minion_phase] at @s run function bosses/file/boss/minion_phase


scoreboard players set @s[tag=phase5,scores={cutscene=1..}] Energy 20
tag @s[scores={detect_health=2000..3000,phase=0..5,cutscene=0,move=0}] add phase5
scoreboard players set @s[scores={detect_health=2000..3000,phase=0..5,cutscene=0,move=0}] cutscene 601
execute as @s[scores={cutscene=1..},tag=phase5] at @s run function bosses/file/boss/phase5


scoreboard players set @s[tag=phase6,scores={cutscene=1..}] Energy 20
tag @s[scores={detect_health=600..1000,phase=0..6,cutscene=0,move=0}] add phase6
scoreboard players set @s[scores={detect_health=600..1000,phase=0..6,cutscene=0,move=0}] cutscene 201
execute as @s[scores={cutscene=1..},tag=phase6] at @s run function bosses/file/boss/phase6

#-------------------3-4 combos-------------------

scoreboard players set @s[scores={phase=8..,repeat=0..3}] repeat 4
scoreboard players random @s[scores={move=0,Energy=0,repeat=0..3}] chance 1 4

#SCYTHE
tag @s[scores={Energy=0,cycle=1..3,move=0,repeat=0..3,chance=1},has_property={property:weapon=1}] add scythecombo1
scoreboard players add @s[scores={Energy=0,cycle=1..3,move=0,repeat=0..3,chance=1},has_property={property:weapon=1}] move 91
scoreboard players add @s[scores={Energy=0,cycle=1..3,repeat=0..3,chance=1,move=91..},has_property={property:weapon=1}] repeat 1

execute as @s[scores={move=1..,chance=1},has_property={property:weapon=1},tag=scythecombo1] at @s run function bosses/file/boss/scythe/combo1


tag @s[scores={Energy=0,cycle=1..3,move=0,repeat=0..3,chance=2,phase=2..},has_property={property:weapon=1}] add scythecombo1_fast
scoreboard players add @s[scores={Energy=0,cycle=1..3,move=0,repeat=0..3,chance=2,phase=2..},has_property={property:weapon=1}] move 51
scoreboard players add @s[scores={Energy=0,cycle=1..3,repeat=0..3,chance=2,phase=2..,move=51..},has_property={property:weapon=1}] repeat 1

execute as @s[scores={move=1..,chance=2},has_property={property:weapon=1},tag=scythecombo1_fast] at @s run function bosses/file/boss/scythe/combo1_fast


tag @s[scores={Energy=0,cycle=1..3,move=0,repeat=0..3,chance=3,phase=3..},has_property={property:weapon=1}] add scythecombo2
scoreboard players add @s[scores={Energy=0,cycle=1..3,move=0,repeat=0..3,chance=3,phase=3..},has_property={property:weapon=1}] move 81
scoreboard players add @s[scores={Energy=0,cycle=1..3,repeat=0..3,chance=3,phase=3..,move=81..},has_property={property:weapon=1}] repeat 1

execute as @s[scores={move=1..,chance=3},has_property={property:weapon=1},tag=scythecombo2] at @s run function bosses/file/boss/scythe/combo2

#BLADE
tag @s[scores={Energy=0,cycle=1..3,move=0,repeat=0..3,chance=1},has_property={property:weapon=2}] add bladecombo1
scoreboard players add @s[scores={Energy=0,cycle=1..3,move=0,repeat=0..3,chance=1},has_property={property:weapon=2}] move 91
scoreboard players add @s[scores={Energy=0,cycle=1..3,repeat=0..3,chance=1,move=91..},has_property={property:weapon=2}] repeat 1

execute as @s[scores={move=1..,chance=1},has_property={property:weapon=2},tag=bladecombo1] at @s run function bosses/file/boss/blade/combo1


tag @s[scores={Energy=0,cycle=1..3,move=0,repeat=0..3,chance=2},has_property={property:weapon=2}] add bladecombo2
scoreboard players add @s[scores={Energy=0,cycle=1..3,move=0,repeat=0..3,chance=2},has_property={property:weapon=2}] move 31
scoreboard players add @s[scores={Energy=0,cycle=1..3,repeat=0..3,chance=2,move=31..},has_property={property:weapon=2}] repeat 1

execute as @s[scores={move=1..,chance=2},has_property={property:weapon=2},tag=bladecombo2] at @s run function bosses/file/boss/blade/combo2


#SPEAR
tag @s[scores={Energy=0,cycle=1..3,move=0,repeat=0..3,chance=1},has_property={property:weapon=3}] add spearcombo1
scoreboard players add @s[scores={Energy=0,cycle=1..3,move=0,repeat=0..3,chance=1},has_property={property:weapon=3}] move 31
scoreboard players add @s[scores={Energy=0,cycle=1..3,repeat=0..3,chance=1,move=31..},has_property={property:weapon=3}] repeat 1

execute as @s[scores={move=1..,chance=1},has_property={property:weapon=3},tag=spearcombo1] at @s run function bosses/file/boss/spear/combo1


#KATANA
tag @s[scores={Energy=0,cycle=1..3,move=0,repeat=0..3,chance=1},has_property={property:weapon=4}] add katanacombo1
scoreboard players add @s[scores={Energy=0,cycle=1..3,move=0,repeat=0..3,chance=1},has_property={property:weapon=4}] move 36
scoreboard players add @s[scores={Energy=0,cycle=1..3,repeat=0..3,chance=1,move=31..},has_property={property:weapon=4}] repeat 1

execute as @s[scores={move=1..,chance=1},has_property={property:weapon=4},tag=katanacombo1] at @s run function bosses/file/boss/katana/combo1


tag @s[scores={Energy=0,cycle=1..3,move=0,repeat=0..3,chance=2},has_property={property:weapon=4}] add katanacombo2
scoreboard players add @s[scores={Energy=0,cycle=1..3,move=0,repeat=0..3,chance=2},has_property={property:weapon=4}] move 31
scoreboard players add @s[scores={Energy=0,cycle=1..3,repeat=0..3,chance=2,move=31..},has_property={property:weapon=4}] repeat 1

execute as @s[scores={move=1..,chance=2},has_property={property:weapon=4},tag=katanacombo2] at @s run function bosses/file/boss/katana/combo2


execute as @s[scores={Energy=1..,move=0,cutscene=0},tag=!minion_phase] at @s run tp @s ~ 240 ~ facing @p[m=!c]
execute as @s[scores={Energy=1..,move=0,cutscene=0},tag=!minion_phase] unless entity @p[r=2] at @s run tp @s ^^^0.1








#faster combos added will be used later on
#-------------------1-2 ranged moves-------------------
#or return back to 3-4 combos

#SCYTHE

scoreboard players random @s[scores={move=0,Energy=0,repeat=4..5,repeat_ranged=1..3}] chance 1 6

tag @s[scores={Energy=0,cycle=1..3,move=0,repeat_ranged=1..3,chance=1,repeat=4..6},has_property={property:weapon=1}] add scytheranged1
scoreboard players add @s[scores={Energy=0,cycle=1..3,move=0,repeat_ranged=1..3,chance=1,repeat=4..6},has_property={property:weapon=1}] move 41

execute as @s[scores={move=1..},has_property={property:weapon=1},tag=scytheranged1] at @s run function bosses/file/boss/scythe/ranged1



tag @s[scores={Energy=0,cycle=1..3,move=0,repeat_ranged=1..3,chance=2,repeat=4..6},has_property={property:weapon=1}] add scytheranged2
scoreboard players add @s[scores={Energy=0,cycle=1..3,move=0,repeat_ranged=1..3,chance=2,repeat=4..6},has_property={property:weapon=1}] move 76

execute as @s[scores={move=1..},has_property={property:weapon=1},tag=scytheranged2] at @s run function bosses/file/boss/scythe/ranged2


#BLADE

tag @s[scores={Energy=0,cycle=1..3,move=0,repeat_ranged=1..3,chance=1,repeat=4..6},has_property={property:weapon=2}] add bladeranged1
scoreboard players add @s[scores={Energy=0,cycle=1..3,move=0,repeat_ranged=1..3,chance=1,repeat=4..6},has_property={property:weapon=2}] move 91

execute as @s[scores={move=1..},has_property={property:weapon=2},tag=bladeranged1] at @s run function bosses/file/boss/blade/ranged1



tag @s[scores={Energy=0,cycle=1..3,move=0,repeat_ranged=1..3,chance=2,repeat=4..6},has_property={property:weapon=2}] add bladeranged2
scoreboard players add @s[scores={Energy=0,cycle=1..3,move=0,repeat_ranged=1..3,chance=2,repeat=4..6},has_property={property:weapon=2}] move 66

execute as @s[scores={move=1..},has_property={property:weapon=2},tag=bladeranged2] at @s run function bosses/file/boss/blade/ranged2


#SPEAR

tag @s[scores={Energy=0,cycle=1..3,move=0,repeat_ranged=1..3,chance=1,repeat=4..6},has_property={property:weapon=3}] add spearranged1
scoreboard players add @s[scores={Energy=0,cycle=1..3,move=0,repeat_ranged=1..3,chance=1,repeat=4..6},has_property={property:weapon=3}] move 51

execute as @s[scores={move=1..},has_property={property:weapon=3},tag=spearranged1] at @s run function bosses/file/boss/spear/ranged1


tag @s[scores={Energy=0,cycle=1..3,move=0,repeat_ranged=1..3,chance=2,repeat=4..6},has_property={property:weapon=3}] add spearranged2
scoreboard players add @s[scores={Energy=0,cycle=1..3,move=0,repeat_ranged=1..3,chance=2,repeat=4..6},has_property={property:weapon=3}] move 76

execute as @s[scores={move=1..},has_property={property:weapon=3},tag=spearranged2] at @s run function bosses/file/boss/spear/ranged2

#KATANA
tag @s[scores={Energy=0,cycle=1..3,move=0,repeat_ranged=1..3,chance=1,repeat=4..6},has_property={property:weapon=4}] add katanaranged1
scoreboard players add @s[scores={Energy=0,cycle=1..3,move=0,repeat_ranged=1..3,chance=1,repeat=4..6},has_property={property:weapon=4}] move 46

execute as @s[scores={move=1..},has_property={property:weapon=4},tag=katanaranged1] at @s run function bosses/file/boss/katana/ranged1

tag @s[scores={Energy=0,cycle=1..3,move=0,repeat_ranged=1..3,chance=2,repeat=4..6},has_property={property:weapon=4}] add katanaranged2
scoreboard players add @s[scores={Energy=0,cycle=1..3,move=0,repeat_ranged=1..3,chance=2,repeat=4..6},has_property={property:weapon=4}] move 46

execute as @s[scores={move=1..},has_property={property:weapon=4},tag=katanaranged2] at @s run function bosses/file/boss/katana/ranged2

#MISC
tag @s[scores={Energy=0,cycle=1..3,move=0,repeat_ranged=1..3,repeat=4..6,chance=3}] add ranged1
scoreboard players add @s[scores={Energy=0,cycle=1..3,move=0,repeat_ranged=1..3,repeat=4..6,chance=3}] move 31

execute as @s[scores={move=1..},tag=ranged1] at @s run function bosses/file/boss/summon_orbs


tag @s[scores={Energy=0,cycle=1..3,move=0,repeat_ranged=1..3,repeat=4..6,chance=4,phase=5..}] add ranged2
scoreboard players add @s[scores={Energy=0,cycle=1..3,move=0,repeat_ranged=1..3,repeat=4..6,chance=4,phase=5..}] move 51

execute as @s[scores={move=1..},tag=ranged2] at @s run function bosses/file/boss/roar


tag @s[scores={Energy=0,cycle=1..3,move=0,repeat_ranged=1..3,repeat=4..6,chance=5,phase=5..}] add ranged3
scoreboard players add @s[scores={Energy=0,cycle=1..3,move=0,repeat_ranged=1..3,repeat=4..6,chance=5,phase=5..}] move 21

execute as @s[scores={move=1..},tag=ranged3] at @s run function bosses/file/boss/cero


tag @s[scores={Energy=0,cycle=1..3,move=0,repeat_ranged=1..3,repeat=4..6,chance=6,phase=5..}] add ranged4
scoreboard players add @s[scores={Energy=0,cycle=1..3,move=0,repeat_ranged=1..3,repeat=4..6,chance=6,phase=5..}] move 51

execute as @s[scores={move=1..},tag=ranged4] at @s run function bosses/file/boss/airhorn


scoreboard players add @s[scores={cycle=1..3,chance=1..,move=4,repeat=4..5}] repeat_ranged 1

#-------------------ultimate moves-------------------

scoreboard players random @s[scores={Energy=0,cycle=4,phase=0..7}] chance 1 3

tag @s[scores={Energy=0,cycle=4,move=0,phase=8..}] add final_cero
scoreboard players add @s[scores={Energy=0,cycle=4,move=0,phase=8..}] move 91

execute as @s[scores={move=1..},tag=final_cero] at @s run function bosses/file/boss/final_cero



#SCYTHE
tag @s[scores={Energy=0,cycle=4,move=0,chance=1},has_property={property:weapon=1}] add scytheult1
scoreboard players add @s[scores={Energy=0,cycle=4,move=0,chance=1},has_property={property:weapon=1}] move 46

execute as @s[scores={move=1..},has_property={property:weapon=1},tag=scytheult1] at @s run function bosses/file/boss/scythe/ult1

tag @s[scores={Energy=0,cycle=4,move=0,chance=2},has_property={property:weapon=1}] add scytheult2
scoreboard players add @s[scores={Energy=0,cycle=4,move=0,chance=2},has_property={property:weapon=1}] move 56

execute as @s[scores={move=1..},has_property={property:weapon=1},tag=scytheult2] at @s run function bosses/file/boss/scythe/ult2

tag @s[scores={Energy=0,cycle=4,move=0,chance=3},has_property={property:weapon=1}] add scytheult3
scoreboard players add @s[scores={Energy=0,cycle=4,move=0,chance=3},has_property={property:weapon=1}] move 146

execute as @s[scores={move=1..},has_property={property:weapon=1},tag=scytheult3] at @s run function bosses/file/boss/scythe/ult3


#BLADE
tag @s[scores={Energy=0,cycle=4,move=0,chance=1},has_property={property:weapon=2}] add bladeult1
scoreboard players add @s[scores={Energy=0,cycle=4,move=0,chance=1},has_property={property:weapon=2}] move 76

execute as @s[scores={move=1..},has_property={property:weapon=2},tag=bladeult1] at @s run function bosses/file/boss/blade/ult1


tag @s[scores={Energy=0,cycle=4,move=0,chance=2},has_property={property:weapon=2}] add bladeult2
scoreboard players add @s[scores={Energy=0,cycle=4,move=0,chance=2},has_property={property:weapon=2}] move 76

execute as @s[scores={move=1..},has_property={property:weapon=2},tag=bladeult2] at @s run function bosses/file/boss/blade/ult2

#SPEAR
tag @s[scores={Energy=0,cycle=4,move=0,chance=1},has_property={property:weapon=3}] add spearult1
scoreboard players add @s[scores={Energy=0,cycle=4,move=0,chance=1},has_property={property:weapon=3}] move 111

execute as @s[scores={move=1..},has_property={property:weapon=3},tag=spearult1] at @s run function bosses/file/boss/spear/ult1


tag @s[scores={Energy=0,cycle=4,move=0,chance=2},has_property={property:weapon=3}] add spearult2
scoreboard players add @s[scores={Energy=0,cycle=4,move=0,chance=2},has_property={property:weapon=3}] move 61

execute as @s[scores={move=1..},has_property={property:weapon=3},tag=spearult2] at @s run function bosses/file/boss/spear/ult2


#KATANA
tag @s[scores={Energy=0,cycle=4,move=0,chance=1},has_property={property:weapon=4}] add katanault1
scoreboard players add @s[scores={Energy=0,cycle=4,move=0,chance=1},has_property={property:weapon=4}] move 31

execute as @s[scores={move=1..},has_property={property:weapon=4},tag=katanault1] at @s run function bosses/file/boss/katana/ult1


tag @s[scores={Energy=0,cycle=4,move=0,chance=2},has_property={property:weapon=4}] add katanault2
scoreboard players add @s[scores={Energy=0,cycle=4,move=0,chance=2},has_property={property:weapon=4}] move 71

execute as @s[scores={move=1..},has_property={property:weapon=4},tag=katanault2] at @s run function bosses/file/boss/katana/ult2


#-------------------reset-------------------


execute as @s[scores={phase=8..,cutscene=0,Energy=0,move=0}] at @s run execute as @p[r=200] at @s run spreadplayers ~ ~ 10 45 @e[type=ds:primesoul,scores={phase=8..},c=1]

scoreboard players add @s[scores={cycle=4,move=1..2}] invest 1
scoreboard players set @s[scores={cycle=4,move=1..2}] cycle 1


execute as @s[scores={move=0,repeat_ranged=4..,cycle=1..3}] at @s run function bosses/file/boss/resetstage


scoreboard players set @s[scores={move=0,Energy=0,repeat_ranged=3..,cycle=4..}] repeat 1
scoreboard players set @s[scores={move=0,Energy=0,repeat_ranged=3..,cycle=4..}] repeat_ranged 1


scoreboard players set @s[scores={move=1..,Energy=0..1,phase=0..1}] Energy 20
scoreboard players set @s[scores={move=1..,Energy=0..1,phase=2}] Energy 13
scoreboard players set @s[scores={move=1..,Energy=0..1,phase=3}] Energy 10

#all projectiles
execute as @e[name=realityfangs,type=ds:projectile,c=1] at @s run function bosses/file/boss/scythe/realityfangs
execute as @e[name=realityfangs2,type=ds:projectile,c=3] at @s run function bosses/file/boss/blade/realityfangs
execute as @e[type=ds:projectile,name=equinox_orb] at @s run function bosses/file/equinox_balls
execute as @e[type=ds:projectile,name=equinox_downfall] at @s run function bosses/file/boss/downfall


execute as @s[scores={phase=1..4}] run playsound music.ultra1 @a[tag=!arenaboss,r=200]
execute as @s[scores={phase=5..}] run playsound music.ultra2 @a[tag=!arenaboss,r=200]
execute positioned -59936 250 -59936 run tag @a[r=200,tag=!arenaboss] add arenaboss


