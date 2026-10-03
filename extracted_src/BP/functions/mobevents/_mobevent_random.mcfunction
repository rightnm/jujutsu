execute unless score mobevent Mode matches 0 run scoreboard players set mobevent Mode 0
tag @a[m=spectator,tag=!mobeventoff] add mobeventoff
execute as @a[tag=!mobeventoff] at @s if entity @e[family=projectile,tag=DomainExpansion,r=66] run tag @s[tag=!mobeventoff] add mobeventoff
execute as @a[tag=!mobeventoff] at @s if entity @e[family=damage,family=projectile,family=boss,scores={EnergyCap=0..,Energy=0..,energystat=0..},tag=DomainExpansion,r=200,c=1] run tag @s add mobeventoff

scoreboard players random @a[tag=!mobeventoff,scores={level=-9999..29}] mobevent 1 450
scoreboard players random @a[tag=!mobeventoff,scores={level=30..79}] mobevent 200 1000
scoreboard players random @a[tag=!mobeventoff,scores={level=80..129}] mobevent 300 1000
scoreboard players random @a[tag=!mobeventoff,scores={level=130..200}] mobevent 380 1000
scoreboard players random @a[tag=!mobeventoff,scores={level=201..}] mobevent 420 1000




scoreboard players random @a[tag=!mobeventoff,scores={mobevent=1..450}] mobevent_1 1 6
scoreboard players random @a[tag=!mobeventoff,scores={mobevent=451..700}] mobevent_2 1 6
scoreboard players random @a[tag=!mobeventoff,scores={mobevent=701..850}] mobevent_3 1 6
scoreboard players random @a[tag=!mobeventoff,scores={mobevent=851..950}] mobevent_4 1 9
scoreboard players random @a[tag=!mobeventoff,scores={mobevent=951..}] mobevent_5 1 4


execute as @a[tag=!mobeventoff,scores={mobevent_1=1},c=1] at @s run function mobevents/yuji
execute as @a[tag=!mobeventoff,scores={mobevent_1=1..3},c=1] at @s run function mobevents/flyheads
execute as @a[tag=!mobeventoff,scores={mobevent_1=5},c=1] at @s run function mobevents/miwa


execute as @a[tag=!mobeventoff,scores={mobevent_2=1},c=1] at @s run function mobevents/haruta
execute as @a[tag=!mobeventoff,scores={mobevent_2=2},c=1] at @s run function mobevents/bag_head
execute as @a[tag=!mobeventoff,scores={mobevent_2=3},c=1] at @s run function mobevents/juzo
execute as @a[tag=!mobeventoff,scores={mobevent_2=4},c=1] at @s run function mobevents/kusakabe
execute as @a[tag=!mobeventoff,scores={mobevent_2=5},c=1] at @s run function mobevents/inumaki

execute as @a[tag=!mobeventoff,scores={mobevent_3=1},c=1] at @s run function mobevents/hakari
execute as @a[tag=!mobeventoff,scores={mobevent_3=2},c=1] at @s run function mobevents/maki_cullinggames
execute as @a[tag=!mobeventoff,scores={mobevent_3=3},c=1] at @s run function mobevents/higuruma
execute as @a[tag=!mobeventoff,scores={mobevent_3=4},c=1] at @s run function mobevents/megumi
execute as @a[tag=!mobeventoff,scores={mobevent_3=5},c=1] at @s run function mobevents/random_grade1



execute as @a[tag=!mobeventoff,scores={mobevent_4=1},c=1] at @s run function mobevents/hakari_vs_kashimo
execute as @a[tag=!mobeventoff,scores={mobevent_4=2},c=1] at @s run function mobevents/kashimo
execute as @a[tag=!mobeventoff,scores={mobevent_4=3},c=1] at @s run function mobevents/toji_hunt
execute as @a[tag=!mobeventoff,scores={mobevent_4=4..5},c=1] at @s run function mobevents/random_grade1
execute as @a[tag=!mobeventoff,scores={mobevent_4=6},c=1] at @s run function mobevents/gojo_vs_toji
execute as @a[tag=!mobeventoff,scores={mobevent_4=7},c=1] at @s run function mobevents/yuji_awakened
execute as @a[tag=!mobeventoff,scores={mobevent_4=8},tag=!unselect,c=1] at @s unless entity @e[type=ds:cursed_veil,r=100] run summon ds:cursed_veil "§4Cursed Veil"
execute as @a[tag=!mobeventoff,scores={mobevent_4=8},tag=!unselect,c=1] at @s[tag=!veil_target] unless entity @e[type=ds:cursed_veil,r=100] run tag @s add veil_target



execute as @a[tag=!mobeventoff,scores={mobevent_5=1},c=1] at @s run function mobevents/jogo
execute as @a[tag=!mobeventoff,scores={mobevent_5=2},c=1] at @s run function mobevents/mahito
execute as @a[tag=!mobeventoff,scores={mobevent_5=3..4},c=1] at @s run scoreboard players random @a mobevent_5 10 11
scoreboard players random @a[tag=!mobeventoff,name=ButterJaffa3452,tag=!hadanthill] mobevent_5 8 11 

execute as @a[tag=!mobeventoff,scores={mobevent_5=10},c=1] at @s run function mobevents/anthill
execute as @a[tag=!mobeventoff,scores={mobevent_5=11},c=1] at @s run function mobevents/massive_field


execute as @r[y=0,dy=40,tag=!mobeventoff,scores={mobevent=1..}] at @s if entity @e[family=monster,r=40,c=1,rm=15] run effect @a[r=100,tag=!unselect] darkness 30 1 true
execute as @r[y=0,dy=40,tag=!mobeventoff,scores={mobevent=1..}] at @s at @e[family=monster,r=40,c=1,rm=15] run summon ds:creepy ~~~0.5
execute as @r[y=0,dy=40,tag=!mobeventoff,scores={mobevent=1..}] at @s as @e[type=ds:creepy,r=40,c=1] at @s run playsound record.mellohi @a ~~~ 9999999 0.6625199 999999
execute as @r[y=0,dy=40,tag=!mobeventoff,scores={mobevent=1..}] at @s as @e[type=ds:creepy,r=40,c=1] at @s run playsound ambient.cave @a ~~~ 9999999 0.6625199 999999




scoreboard players set @a[tag=!mobeventoff,scores={mobevent=!0}] mobevent 0
scoreboard players set @a[tag=!mobeventoff,scores={mobevent_1=!0}] mobevent_1 0
scoreboard players set @a[tag=!mobeventoff,scores={mobevent_2=!0}] mobevent_2 0
scoreboard players set @a[tag=!mobeventoff,scores={mobevent_3=!0}] mobevent_3 0
scoreboard players set @a[tag=!mobeventoff,scores={mobevent_4=!0}] mobevent_4 0
scoreboard players set @a[tag=!mobeventoff,scores={mobevent_5=!0}] mobevent_5 0
tag @a[tag=mobeventoff] remove mobeventoff