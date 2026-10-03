

playanimation @s[scores={Deleter=30}] animation.maxelephant.stomp


execute as @s[scores={Deleter=1..}] at @s run tp @s ~~~ facing ^^^20
execute as @s[scores={Deleter=10}] at @s positioned ^^^0.5 run playsound random.explode @a ~~~ 1000000 0.5 1000000
execute as @s[scores={Deleter=10}] at @s positioned ^^^0.5 run playsound random.explode @a ~~~ 1000000 0.75 1000000
execute as @s[scores={Deleter=10}] at @s positioned ^^^0.5 run playsound random.explode @a ~~~ 1000000 1 1000000
execute as @s[scores={Deleter=10}] at @s positioned ^^^0.5 run playsound random.explode @a ~~~ 1000000 0.35 1000000
execute as @s[scores={Deleter=10}] at @s positioned ^^^0.5 run camerashake add @a[r=40] 4 0.25
execute as @s[scores={Deleter=10}] at @s positioned ^^^2.5 run scoreboard players add @e[type=!item,tag=!Frames,tag=!elephant_tame,r=8.5,family=!shikigami] Hit 20
execute as @s[scores={Deleter=10}] at @s positioned ^^^2.5 run damage @e[type=!item,tag=!Frames,tag=!elephant_tame,r=8.5,family=!shikigami] 20 entity_attack entity @s
execute as @s[scores={Deleter=10}] at @s positioned ^^^2.5 run scoreboard players add @e[type=!item,tag=!Frames,tag=!elephant_tame,r=8.5,family=!shikigami] Stun 40
execute as @s[scores={Deleter=10}] at @s positioned ^^^2.5 run scoreboard players add @e[type=!item,tag=!Frames,tag=!elephant_tame,r=8.5,family=!shikigami] knock 40
execute as @s[scores={Deleter=10}] at @s positioned ^^^1.5 run particle ds:large_slam1
execute as @s[scores={Deleter=10}] at @s positioned ^^^1.5 run particle ds:large_slam2
execute as @s[scores={Deleter=10}] at @s positioned ^^^1.5 run particle ds:large_slam3
execute as @s[scores={Deleter=10}] at @s positioned ^^^1.5 run particle ds:dirt4
execute as @s[scores={Deleter=10}] at @s positioned ^^^1.5 run particle ds:leap
execute as @s[scores={Deleter=10}] at @s positioned ^^^1.5 run particle ds:impact
execute as @s[scores={Deleter=10}] at @s positioned ^^^1.5 run particle ds:crater3
execute as @s[scores={Deleter=10}] at @s positioned ^^^1.5  if entity @e[family=mahoraga,r=35] run function damages/explosion_damage

execute as @s[scores={Deleter=10}] at @s positioned ^^^2.5 run scoreboard players add @e[type=!item,tag=!Frames,tag=!elephant_tame,rm=8.5,r=15,family=!shikigami] Hit 10
execute as @s[scores={Deleter=10}] at @s positioned ^^^2.5 run damage @e[type=!item,tag=!Frames,tag=!elephant_tame,rm=8.5,r=15,family=!shikigami] 10 entity_attack entity @s
execute as @s[scores={Deleter=10}] at @s positioned ^^^2.5 run scoreboard players add @e[type=!item,tag=!Frames,tag=!elephant_tame,rm=8.5,r=15,family=!shikigami] Stun 40
execute as @s[scores={Deleter=10}] at @s positioned ^^^2.5 run effect @e[type=!item,tag=!Frames,tag=!elephant_tame,rm=8.5,r=15,family=!shikigami] levitation 1 30 true
execute as @s[scores={Deleter=10}] at @s positioned ^^^2.5 run scoreboard players add @e[type=!item,tag=!Frames,tag=!elephant_tame,r=8.5,family=!shikigami] Evade 20

