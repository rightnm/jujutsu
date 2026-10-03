playanimation @s[scores={move=40}] animation.rct_self

playanimation @s[scores={move=35..,Stun=1..},tag=!noStunnedAnim] animation.stunned
scoreboard players set @s[scores={move=35..,Stun=1..}] move 2
tag @s[scores={move=1..2},tag=rctself] remove rctself

tag @s[tag=dying] remove dying
scoreboard players set @s[scores={dying=1..}] dying 0

execute as @s[scores={move=35},tag=!rctmaster,type=player] unless entity @s[scores={rctuses=-9999..}] run scoreboard players set @s rctuses 3
execute as @s[scores={move=35},tag=rctmaster,type=player] unless entity @s[scores={rctuses=-9999..}] run scoreboard players set @s rctuses 5
execute as @s[scores={move=35},type=!player] unless entity @s[scores={rctuses=-9999..}] run scoreboard players set @s rctuses 0


scoreboard players set @s[scores={move=35,rctuses=!0},family=purecurse,tag=!curse] rctuses 0
damage @s[scores={move=35},family=purecurse,tag=!curse] 50 suicide
scoreboard players set @s[scores={move=35,rctuses=!0},tag=curse] rctuses 0
damage @s[scores={move=35},tag=curse] 50 suicide

scoreboard players set @s[scores={rctuses=4..},tag=!rctmaster,type=player] rctuses 3
scoreboard players set @s[scores={rctuses=6..},tag=rctmaster,type=player] rctuses 5


#rct usage damage
execute as @s[scores={move=34,rctuses=-9999..0}] unless entity @s[type=!player,family=!purecurse,tag=!curse] run effect @s blindness 7 1 true
execute as @s[scores={move=34,rctuses=-9999..0}] unless entity @s[type=!player,family=!purecurse,tag=!curse] run scoreboard players set @s Hit 25
execute as @s[scores={move=34,rctuses=-9999..0}] unless entity @s[type=!player,family=!purecurse,tag=!curse] run scoreboard players set @s Stun 45
execute as @s[scores={move=34,rctuses=-9999..0}] unless entity @s[type=!player,family=!purecurse,tag=!curse] run damage @s 33 suicide
execute as @s[scores={move=34,rctuses=-9999..0}] unless entity @s[type=!player,family=!purecurse,tag=!curse] at @s run playsound mob.zombie.remedy @a[r=5] ~~~ 0.5 0.8
execute as @s[scores={move=34,rctuses=-9999..0}] unless entity @s[type=!player,family=!purecurse,tag=!curse] run playanimation @s animation.braindamage
execute as @s[scores={move=34,rctuses=-9999..0}] unless entity @s[type=!player,family=!purecurse,tag=!curse] at @s run particle ds:blood ~~1~
execute as @s[scores={move=34,rctuses=-9999..0}] unless entity @s[type=!player,family=!purecurse,tag=!curse] at @s run particle ds:blood1 ~~1~
execute as @s[scores={move=34,rctuses=-9999..0}] unless entity @s[type=!player,family=!purecurse,tag=!curse] at @s run particle ds:blood2 ~~1~
execute as @s[scores={move=34,rctuses=-9999..0}] unless entity @s[type=!player,family=!purecurse,tag=!curse] run scoreboard players set @s move 3

execute as @s[scores={move=34},type=!player,family=!purecurse,tag=!curse] unless entity @s[scores={rctuses=..599},family=grade1] unless entity @s[scores={rctuses=..799},family=special_grade] run effect @s blindness 7 1 true
execute as @s[scores={move=34},type=!player,family=!purecurse,tag=!curse] unless entity @s[scores={rctuses=..599},family=grade1] unless entity @s[scores={rctuses=..799},family=special_grade] run scoreboard players set @s Hit 25
execute as @s[scores={move=34},type=!player,family=!purecurse,tag=!curse] unless entity @s[scores={rctuses=..599},family=grade1] unless entity @s[scores={rctuses=..799},family=special_grade] run scoreboard players set @s Stun 45
execute as @s[scores={move=34},type=!player,family=!purecurse,tag=!curse] unless entity @s[scores={rctuses=..599},family=grade1] unless entity @s[scores={rctuses=..799},family=special_grade] run damage @s 33 suicide
execute as @s[scores={move=34},type=!player,family=!purecurse,tag=!curse] unless entity @s[scores={rctuses=..599},family=grade1] unless entity @s[scores={rctuses=..799},family=special_grade] run playsound mob.zombie.remedy @a[r=5] ~~~ 0.5 0.8
execute as @s[scores={move=34},type=!player,family=!purecurse,tag=!curse] unless entity @s[scores={rctuses=..599},family=grade1] unless entity @s[scores={rctuses=..799},family=special_grade] run playanimation @s animation.braindamage
execute as @s[scores={move=34},type=!player,family=!purecurse,tag=!curse] unless entity @s[scores={rctuses=..599},family=grade1] unless entity @s[scores={rctuses=..799},family=special_grade] run particle ds:blood ~~1~
execute as @s[scores={move=34},type=!player,family=!purecurse,tag=!curse] unless entity @s[scores={rctuses=..599},family=grade1] unless entity @s[scores={rctuses=..799},family=special_grade] run particle ds:blood1 ~~1~
execute as @s[scores={move=34},type=!player,family=!purecurse,tag=!curse] unless entity @s[scores={rctuses=..599},family=grade1] unless entity @s[scores={rctuses=..799},family=special_grade] run particle ds:blood2 ~~1~
execute as @s[scores={move=34},type=!player,family=!purecurse,tag=!curse] unless entity @s[scores={rctuses=..599},family=grade1] unless entity @s[scores={rctuses=..799},family=special_grade] run scoreboard players set @s move 3


#apply rct
execute as @s[scores={move=34}] at @s run playsound beacon.power @a[r=50] ~~~ 99999 2 99999
execute as @s[scores={move=25}] at @s run playsound beacon.ambient @a[r=50] ~~~ 99999 3 99999



execute as @s[scores={move=25}] at @s run playsound mob.wither.shoot @a[r=50] ~~~ 99999 0.7 99999
execute as @s[scores={move=5}] at @s run playsound beacon.deactivate @a[r=50] ~~~ 99999 1.5 99999


scoreboard players remove @s[scores={move=20,rctuses=1..}] rctuses 1

scoreboard players set @s[scores={move=5..25}] Move 4
scoreboard players remove @s[scores={move=5..25}] Energy 5

scoreboard players add @s[scores={move=25}] rct 50
scoreboard players remove @s[scores={move=25,speech=1..}] speech 30
scoreboard players set @s[scores={move=24..25,speech=-9999..-1}] speech 0
scoreboard players operation @s[scores={move=24}] rct += @s Energy
scoreboard players operation @s[scores={move=24}] rct /= nine endurance


tag @s[scores={move=1..2},tag=mob_rct] remove mob_rct
