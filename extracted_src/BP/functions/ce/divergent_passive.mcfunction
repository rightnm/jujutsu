tag @s[tag=!fistenergy] add fistenergy

scoreboard players add @s divergentfistCD 1
scoreboard players remove @s[scores={atk=1..,Energy=4..}] Energy 4
scoreboard players set @s[scores={Energy=0,divergent=4..}] divergent 3

execute as @s[scores={atk=1..},tag=!roughce,tag=!sukuna,tag=!curse] at @s positioned ^^^3 if entity @e[tag=!Frames,r=2.99] at @s positioned ^^1^1.25 run function ce/divergent_hit


execute as @s[scores={atk=1..},tag=curse,tag=!roughce,tag=!sukuna] at @s positioned ^^^3 if entity @e[tag=!Frames,r=2.99] at @s positioned ^^1^1.25 run function ce/divergent_hit_purple

execute as @s[scores={atk=1..},tag=roughce,tag=!sukuna] at @s positioned ^^^3 if entity @e[tag=!Frames,r=2.99] at @s positioned ^^1^1.25 run function ce/divergent_hit_green

execute as @s[scores={atk=1..},tag=sukuna] at @s positioned ^^^3 if entity @e[tag=!Frames,r=2.99] at @s positioned ^^1^1.25 run function ce/divergent_hit_red

execute as @s[hasitem={item=ds:cursedenergy},tag=itemUse:ds:cursedenergy,scores={scroll=2,move=0,ab=0}] at @s run playsound beacon.deactivate @a ~~~ 1 3
scoreboard players set @s[hasitem={item=ds:cursedenergy},tag=itemUse:ds:cursedenergy,scores={scroll=2,move=0,ab=0}] Stun 5
scoreboard players set @s[hasitem={item=ds:cursedenergy},tag=itemUse:ds:cursedenergy,scores={scroll=2,move=0,ab=0}] divergent 3


execute as @s[scores={divergent=-9999..1}] at @s run playsound random.fizz @a ~~~
execute as @s[scores={divergent=-9999..1},tag=!roughce,tag=!curse,tag=!sukuna] at @s run particle ds:divergent_ac5 
execute as @s[scores={divergent=-9999..1},tag=!roughce,tag=!curse,tag=!sukuna] at @s run particle ds:divergent_ac6
execute as @s[scores={divergent=-9999..1},tag=curse,tag=!sukuna] at @s run particle ds:divergent_purpleac5 
execute as @s[scores={divergent=-9999..1},tag=curse,tag=!sukuna] at @s run particle ds:divergent_purplac6
execute as @s[scores={divergent=-9999..1},tag=roughce,tag=!curse,tag=!sukuna] at @s run particle ds:divergent_greenac5 
execute as @s[scores={divergent=-9999..1},tag=roughce,tag=!curse,tag=!sukuna] at @s run particle ds:divergent_greenac6
execute as @s[scores={divergent=-9999..1},tag=sukuna] at @s run particle ds:divergent_redac5 
execute as @s[scores={divergent=-9999..1},tag=sukuna] at @s run particle ds:divergent_redac6

execute as @s[scores={divergent=-9999..2}] at @s run scoreboard players operation @s damageadd = @s damageinsurance
execute as @s[scores={divergent=-9999..1}] at @s run scoreboard players set @s damageinsurance 0
scoreboard players set @a[scores={divfist=1..,divergent=-9999..2}] divfist 0
clear @s[scores={divergent=-9999..2},hasitem={item=ds:divergentfists}] ds:divergentfists
clear @s[scores={divergent=-9999..2},hasitem={item=ds:divergentfists_green}] ds:divergentfists_green
clear @s[scores={divergent=-9999..2},hasitem={item=ds:divergentfists_purple}] ds:divergentfists_purple
clear @s[scores={divergent=-9999..2},hasitem={item=ds:divergentfists_red}] ds:divergentfists_red

scoreboard players remove @s[scores={divergent=1..}] divergent 1