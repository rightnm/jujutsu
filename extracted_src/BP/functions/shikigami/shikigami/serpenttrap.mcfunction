playanimation @s[scores={Deleter=98..}] animation.serpent.trap
execute as @s[scores={Deleter=1..}] at @s run particle ds:swamp_puddle1 ~~0.44~
execute as @s[scores={Deleter=1..}] at @s run particle ds:swamp_puddle2 ~~~
execute as @s[scores={Deleter=91..}] at @s run particle ds:swamp_puddle3 ~~~
execute as @s[scores={Deleter=91..}] at @s run particle ds:swamp_puddle4 ~~~
execute as @s[scores={Deleter=1..41}] at @s run particle ds:swamp_puddle3 ~~~
execute as @s[scores={Deleter=1..41}] at @s run particle ds:swamp_puddle4 ~~~

execute as @s[scores={Deleter=1..15}] at @s run tp @s ~ ~-200 ~
tag @s add Frames

execute as @s[scores={Deleter=92..94}] at @s if entity @e[family=mahoraga,r=15] run function damages/poison_damage

execute as @s[scores={Deleter=92..94}] at @s run scoreboard players set @e[r=3,tag=!Frames,family=!megumi] Stun 94
execute as @s[scores={Deleter=92..94}] at @s run scoreboard players set @e[r=3,tag=!Frames,family=!megumi] Hit 3
execute as @s[scores={Deleter=92..94}] at @s run scoreboard players add @e[r=3,tag=!Frames,family=!megumi] Evade 10
execute as @s[scores={Deleter=92..94}] at @s run damage @e[r=3,tag=!Frames,family=!megumi] 10 entity_attack entity @s
execute as @s[scores={Deleter=92..94}] at @s run tp @e[r=3,tag=!Frames,family=!megumi] ~~7~ 

execute as @s[scores={Deleter=22..94}] at @s positioned ~~7~ run tp @e[r=3,tag=!Frames,family=!megumi] ~~~ 
execute as @s[scores={Deleter=22..94}] at @s positioned ~~7~ run scoreboard players add @e[r=3,tag=!Frames,family=!megumi] Evade 5
execute as @s[scores={Deleter=22..94}] at @s positioned ~~7~ run scoreboard players set @e[r=3,tag=!Frames,family=!megumi] Hit 3
execute as @s[scores={Deleter=22..94}] at @s positioned ~~7~ run scoreboard players set @e[r=3,tag=!Frames,family=!megumi] Stun 12
execute as @s[scores={Deleter=22..94}] at @s positioned ~~7~ run damage @e[r=3,tag=!Frames,family=!megumi] 1 entity_attack entity @s
execute as @s[scores={Deleter=22..94}] at @s positioned ~~7~ run effect @e[r=3,tag=!Frames,family=!megumi] poison 3 1
