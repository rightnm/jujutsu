playsound note.pling @a ~~~ 0.1 1.75

scoreboard objectives add activemission dummy
scoreboard players add @s activemission 0
scoreboard objectives add random_mission dummy
scoreboard objectives add missiontimer dummy
scoreboard objectives add calling dummy
scoreboard objectives add callingrandom dummy

scoreboard players random @s callingrandom 1 20

execute as @s[scores={callingrandom=1..19}] at @s run playsound mob.phone @a ~~1~ 0.25 1.15
execute as @s[scores={callingrandom=20}] at @s run playsound mob.phone2 @a ~~1~ 1 1.15

scoreboard players random @s random_mission 1 20
scoreboard players set @s missionsCD 1200

tag @s add calling
