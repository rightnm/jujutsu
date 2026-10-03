tag @s[scores={bluefist=6..}] add fistenergy
tag @s[scores={bluefist=1..5}] remove fistenergy

effect @s[scores={bluefist=1..}] strength 1 1 true
effect @s[scores={bluefist=1..,strength=30..}] strength 1 2 true
effect @s[scores={bluefist=1..,strength=50..}] strength 1 3 true

scoreboard players add @s bluefistCD 1
scoreboard players remove @s[scores={atk=1..,Energy=4..}] Energy 4
scoreboard players set @s[scores={Energy=-99999..3,bluefist=4..}] bluefist 3

execute as @s[scores={atk=1..}] at @s positioned ^^^3 if entity @e[tag=!Frames,r=2.99] at @s positioned ^^1^1.25 run function limitless/blue_hit

execute as @s[hasitem={item=ds:cursedenergy},tag=itemUse:ds:cursedenergy,scores={scroll=2,move=0,ab=0}] at @s run playsound beacon.deactivate @a ~~~ 1 3
scoreboard players set @s[hasitem={item=ds:cursedenergy},tag=itemUse:ds:cursedenergy,scores={scroll=2,move=0,ab=0}] Stun 5
scoreboard players set @s[hasitem={item=ds:cursedenergy},tag=itemUse:ds:cursedenergy,scores={scroll=2,move=0,ab=0}] bluefist 3

execute as @s[scores={bluefist=4..}] at @s run playsound beacon.ambient @a[r=50] ~~~ 0.05 2

execute as @s[scores={bluefist=-9999..1}] at @s run playsound random.fizz @a ~~~
execute as @s[scores={bluefist=-9999..1}] at @s run particle ds:blue_ac5 
execute as @s[scores={bluefist=-9999..1}] at @s run particle ds:blue_ac6
execute as @s[scores={bluefist=-9999..2}] at @s run scoreboard players operation @s damageadd = @s damageinsurance
execute as @s[scores={bluefist=-9999..1}] at @s run scoreboard players set @s damageinsurance 0
scoreboard players set @a[scores={divfist=1..,bluefist=-9999..2}] divfist 0
clear @s[scores={bluefist=-9999..1}] ds:bluefist

scoreboard players remove @s[scores={bluefist=1..}] bluefist 1