tag @s[tag=delusional] remove self_blind

execute as @s[tag=delusional,scores={move=1..}] at @s run event entity @e[type=ds:takada_background,r=5] ds:disappear


execute as @s[tag=form5b] at @s run stopsound @a[r=150] mob.hollow1
execute as @s[tag=form5c] at @s run stopsound @a[r=150] mob.200hollow1
execute as @s[tag=form5c] at @s run stopsound @a[r=150] music.200hollow2
execute as @s[tag=form5d] at @s run stopsound @a[r=150] music.limitlesspurple1
scoreboard players set @s clashnumber 0
tag @s[tag=deadly_attack_priority] remove deadly_attack_priority
fog @s remove Meteor
scoreboard players set @s Camera 2
execute as @s[tag=skyfall] at @s run stopsound @a[r=50] music.skyfall
execute as @s[tag=skyfall] at @s run playanimation @e[r=50,tag=skyfall2,c=1] animation.cancel
execute as @s[tag=skyfall] at @s run tag @e[r=50,tag=skyfall2,c=1] remove skyfall2
tag @s[tag=skyfall] remove skyfall
playanimation @s animation.stunned i 0.2
execute if block ~~-1~ barrier run fill~15~15~15~-15~-15~-15 air [] replace barrier
scoreboard players set @s move 2
scoreboard players set @e[r=10,scores={clash_score=1..}] clash_score 0
scoreboard players set @s[scores={sukunacutscene=1..},tag=!wcs_death_cutscene] sukunacutscene 2
scoreboard players set @s Frames 2
scoreboard players set @e[scores={cutscene=5..},r=5] cutscene 0
hud @s reset
kill @e[family=projectile,r=10,tag=!DomainExpansion]
kill @e[family=damage,r=10,tag=!DomainExpansion]

event entity @s ds:release_seat

tag @s[tag=forced_roles] remove forced_roles
tag @s[tag=blackflash_finisher_gojo] remove blackflash_finisher_gojo
tag @s[tag=blackflash_finisher_gojo2] remove blackflash_finisher_gojo2
tag @s[tag=blackflash1] remove blackflash1
tag @s[tag=blackflash2] remove blackflash2
tag @s[tag=blackflash3] remove blackflash3
tag @s[tag=blackflash4] remove blackflash4
tag @s[tag=sukunadomain1] remove sukunadomain1

tag @s[tag=domain_start] remove domain_start
tag @s[tag=domain_start2] remove domain_start2

tag @s[tag=delusional1] remove delusional1
tag @s[tag=delusional2] remove delusional2
tag @s[tag=delusional3] remove delusional3
tag @s[tag=delusional4] remove delusional4
tag @s[tag=delusional5] remove delusional5
tag @s[tag=charge1] remove charge1
tag @s[tag=charge2] remove charge2
tag @s[tag=charge3] remove charge3
tag @s[tag=charge4] remove charge4
tag @s[tag=wep1] remove wep1
tag @s[tag=wep2] remove wep2
tag @s[tag=wep3] remove wep3
tag @s[tag=wep4] remove wep4
tag @s[tag=wep5] remove wep5
tag @s[tag=wep6] remove wep6

tag @s[tag=wep1m] remove wep1m
tag @s[tag=wep2m] remove wep2m
tag @s[tag=wep3m] remove wep3m
tag @s[tag=wep4m] remove wep4m
tag @s[tag=wep5m] remove wep5m
tag @s[tag=wep6m] remove wep6m

tag @s[tag=wep1v2] remove wep1v2
tag @s[tag=wep2v2] remove wep2v2
tag @s[tag=wep3v2] remove wep3v2
tag @s[tag=wep4v2] remove wep4v2
tag @s[tag=wep5v2] remove wep5v2
tag @s[tag=wep6v2] remove wep6v2
tag @s[tag=wep1s] remove wep1s
tag @s[tag=wep2s] remove wep2s
tag @s[tag=wep3s] remove wep3s
tag @s[tag=wep4s] remove wep4s
tag @s[tag=wep5s] remove wep5s
tag @s[tag=wep6s] remove wep6s
tag @s[tag=wep1s2] remove wep1s2
tag @s[tag=wep2s2] remove wep2s2
tag @s[tag=wep3s2] remove wep3s2
tag @s[tag=wep4s2] remove wep4s2
tag @s[tag=wep5s2] remove wep5s2
tag @s[tag=wep6s2] remove wep6s2
tag @s[tag=wep1s3] remove wep1s3
tag @s[tag=wep2s3] remove wep2s3
tag @s[tag=wep3s3] remove wep3s3
tag @s[tag=wep4s3] remove wep4s3
tag @s[tag=wep5s3] remove wep5s3
tag @s[tag=wep6s3] remove wep6s3
tag @s[tag=gojo_blackflash_finisher] remove gojo_blackflash_finisher
tag @s[tag=form1] remove form1
tag @s[tag=form1b] remove form1b
tag @s[tag=form1c] remove form1c
tag @s[tag=form1e] remove form1e
tag @s[tag=form2] remove form2
tag @s[tag=form2b] remove form2b
tag @s[tag=form2c] remove form2c
tag @s[tag=form2e] remove form2e
tag @s[tag=form3] remove form3
tag @s[tag=form3b] remove form3b
tag @s[tag=form3c] remove form3c
tag @s[tag=form3e] remove form3e
tag @s[tag=form4] remove form4
tag @s[tag=form4b] remove form4b
tag @s[tag=form4c] remove form4c
tag @s[tag=form4e] remove form4e
tag @s[tag=form5] remove form5
tag @s[tag=form5b] remove form5b
tag @s[tag=form5c] remove form5c
tag @s[tag=form5e] remove form5e
tag @s[tag=form6] remove form6
tag @s[tag=form6b] remove form6b
tag @s[tag=form6c] remove form6c
tag @s[tag=form6e] remove form6e
tag @s[tag=form7] remove form7
tag @s[tag=form7b] remove form7b
tag @s[tag=form7c] remove form7c
tag @s[tag=form7e] remove form7e
tag @s[tag=form8] remove form8
tag @s[tag=form8b] remove form8b
tag @s[tag=form8c] remove form8c
tag @s[tag=form8e] remove form8e
tag @s[tag=form9] remove form9
tag @s[tag=form9b] remove form9b
tag @s[tag=form9c] remove form9c
tag @s[tag=form9e] remove form9e
tag @s[tag=form10] remove form10
tag @s[tag=form10b] remove form10b
tag @s[tag=form10c] remove form10c
tag @s[tag=form10e] remove form10e
tag @s[tag=form11] remove form11
tag @s[tag=form11b] remove form11b
tag @s[tag=form11c] remove form11c
tag @s[tag=form11e] remove form11e
tag @s[tag=form12] remove form12
tag @s[tag=form12b] remove form12b
tag @s[tag=form12c] remove form12c
tag @s[tag=form12e] remove form12e



tag @s[tag=form1] remove form1s
tag @s[tag=form1sb] remove form1sb
tag @s[tag=form1sc] remove form1sc
tag @s[tag=form1se] remove form1se
tag @s[tag=form2] remove form2s
tag @s[tag=form2sb] remove form2sb
tag @s[tag=form2sc] remove form2sc
tag @s[tag=form2se] remove form2se
tag @s[tag=form3s] remove form3s
tag @s[tag=form3sb] remove form3sb
tag @s[tag=form3sc] remove form3sc
tag @s[tag=form3se] remove form3se
tag @s[tag=form4s] remove form4s
tag @s[tag=form4sb] remove form4sb
tag @s[tag=form4sc] remove form4sc
tag @s[tag=form4se] remove form4se
tag @s[tag=form5s] remove form5s
tag @s[tag=form5sb] remove form5sb
tag @s[tag=form5sc] remove form5sc
tag @s[tag=form5se] remove form5se
tag @s[tag=form6s] remove form6s
tag @s[tag=form6sb] remove form6sb
tag @s[tag=form6sc] remove form6sc
tag @s[tag=form6se] remove form6se
tag @s[tag=form7s] remove form7s
tag @s[tag=form7sb] remove form7sb
tag @s[tag=form7sc] remove form7sc
tag @s[tag=form7se] remove form7se
tag @s[tag=form8s] remove form8s
tag @s[tag=form8sb] remove form8sb
tag @s[tag=form8sc] remove form8sc
tag @s[tag=form8se] remove form8se
tag @s[tag=form9s] remove form9s
tag @s[tag=form9sb] remove form9sb
tag @s[tag=form9sc] remove form9sc
tag @s[tag=form9se] remove form9se
tag @s[tag=form10s] remove form10s
tag @s[tag=form10sb] remove form10sb
tag @s[tag=form10sc] remove form10sc
tag @s[tag=form10se] remove form10se
tag @s[tag=form11s] remove form11s
tag @s[tag=form11sb] remove form11sb
tag @s[tag=form11sc] remove form11sc
tag @s[tag=form11se] remove form11se
tag @s[tag=form12s] remove form12s
tag @s[tag=form12sb] remove form12sb
tag @s[tag=form12sc] remove form12sc
tag @s[tag=form12se] remove form12se
