

tag @s[scores={hollowwickerbasket=3..},tag=!hollowwickerbasket] add hollowwickerbasket
tag @s[scores={hollowwickerbasket=1..2},tag=hollowwickerbasket] remove hollowwickerbasket

scoreboard players add @s hollowwickerbasketCD 1
execute as @s unless entity @e[tag=shadowgardendomain,r=50] unless entity @e[type=ds:malevolent_kitchen,r=50] run scoreboard players set @s domainimmune 5

event entity @s[scores={hollowwickerbasket=5..},has_property={property:hollow_basket=0}] hollow_basket
event entity @s[scores={hollowwickerbasket=1..4}] hollow_basket_off

execute as @s[hasitem={item=ds:cursedenergy},tag=itemUse:ds:cursedenergy,scores={scroll=6,move=0,ab=0}] at @s run playsound beacon.deactivate @a ~~~ 1 3
scoreboard players set @s[hasitem={item=ds:cursedenergy},tag=itemUse:ds:cursedenergy,scores={scroll=6,move=0,ab=0}] Stun 5
scoreboard players set @s[hasitem={item=ds:cursedenergy},tag=itemUse:ds:cursedenergy,scores={scroll=6,move=0,ab=0}] hollowwickerbasket 3

scoreboard players set @s[scores={hollowbasketCD=0}] hollowbasketCD 600

playsound beacon.ambient @a ~~~ 0.005 3
execute as @s[scores={hollowwickerbasket=-9999..1}] at @s run particle ds:divergent_ac6 
execute as @s[scores={hollowwickerbasket=-9999..1}] at @s run particle ds:divergent_ac3 ~~1~
execute as @s[scores={hollowwickerbasket=-9999..1}] at @s run particle ds:divergent_ac2 ~~1~
execute as @s[scores={hollowwickerbasket=-9999..1}] at @s run playsound beacon.deactivate @a ~~~ 1 2

scoreboard players remove @s[scores={hollowwickerbasket=1..}] hollowwickerbasket 1

