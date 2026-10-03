playanimation @s[scores={move=50}] animation.nyoi_staff.shockwave

tag @e[scores={move=1..2}] remove wep4

scoreboard players set @s[scores={move=4..}] Hyper 4
scoreboard players set @s[scores={move=4..}] Move 4

execute as @s[scores={move=1..}] at @s if block ~~-0.1~ air run tp @s ~~-0.1~
execute as @s[scores={move=1..}] at @s if block ~~-0.3~ air run tp @s ~~-0.3~
execute as @s[scores={move=1..}] at @s if block ~~-0.5~ air run tp @s ~~-0.5~
execute as @s[scores={move=1..}] at @s if block ~~-1~ air run tp @s ~~-1~

execute as @s[scores={move=13..22}] at @s run tp @s ~~~

scoreboard players set @e[scores={move=20..11}] atk 2

execute as @s[scores={move=20}] at @s run function damages/electric_damage

execute as @s[scores={move=30..47,amberbeast=0}] at @s run particle ds:lightningbolt1 ~~2~
execute as @s[scores={move=30..47,amberbeast=0}] at @s run particle ds:lightningbolt2 ~~2~
execute as @s[scores={move=30..47,amberbeast=0}] at @s run particle ds:lightningbolt3 ~~2~

execute as @s[scores={move=30..47,amberbeast=1..}] at @s run particle ds:lightningbolt1a ~~2~
execute as @s[scores={move=30..47,amberbeast=1..}] at @s run particle ds:lightningbolt2a ~~2~
execute as @s[scores={move=30..47,amberbeast=1..}] at @s run particle ds:lightningbolt3a ~~2~

execute as @s[scores={move=30..47,amberbeast=0}] at @s run particle ds:lightning_area2 ~~2~
execute as @s[scores={move=30..47,amberbeast=1..}] at @s run particle ds:lightning_area2a ~~2~

execute as @s[scores={move=30..47}] at @s run playsound mob.witch.throw @a[r=200] ~~~  999999 1  999999
execute as @s[scores={move=30..47}] at @s run playsound mob.electricity @a[r=200] ~~~  999999 2  999999
execute as @s[scores={move=35}] at @s run playsound mob.shocked3 @a[r=200] ~~~  999999 0.85  999999
execute as @s[scores={move=30..47}] at @s run camerashake add @a[r=20] 0.2 0.25
execute as @s[scores={move=47}] at @s run effect @a[r=20] night_vision 1 1 true

execute as @s[scores={move=20}] at @s run effect @a[r=20] night_vision 2 1 true
scoreboard players set @s[scores={move=15..22}] Frames 7
execute as @s[scores={move=20}] at @s run playsound item.trident.throw @a[r=200] ~~~ 999999 0.8 999999
execute as @s[scores={move=20}] at @s run summon ds:red_reverse ~~~
execute as @s[scores={move=20}] at @s  run scoreboard players set @e[tag=!Frames,r=12.99] Stun 35
execute as @s[scores={move=20}] at @s  run scoreboard players add @e[tag=!Frames,r=12.99] Hit 2
execute as @s[scores={move=20}] at @s  run scoreboard players add @e[tag=!Frames,r=12.99] Evade 5
execute as @s[scores={move=20}] at @s  run scoreboard players add @e[tag=!Frames,r=12.99] shocked 40
execute as @s[scores={move=20}] at @s  run damage @e[tag=!Frames,r=12.99] 25 entity_attack entity @s
execute as @s[scores={move=20}] at @s positioned ^^^ run camerashake add @a[r=20] 2 0.15
execute as @s[scores={move=20}] at @s  run particle ds:ground_slam1
execute as @s[scores={move=20}] at @s  run particle ds:ground_slam2 
execute as @s[scores={move=20}] at @s  run particle ds:ground_slam3
execute as @s[scores={move=20}] at @s  run particle ds:ground_slam4
execute as @s[scores={move=20}] at @s  run particle ds:heavy_impact1
execute as @s[scores={move=20}] at @s  run particle ds:heavy_impact2
execute as @s[scores={move=20}] at @s  run particle ds:heavy_impact3
execute as @s[scores={move=17..20,amberbeast=0}] at @s  run particle ds:electro_carve1
execute as @s[scores={move=17..20,amberbeast=0}] at @s  run particle ds:electro_carve2
execute as @s[scores={move=17..20,amberbeast=0}] at @s  run particle ds:electro_carve3
execute as @s[scores={move=17..20,amberbeast=0}] at @s  run particle ds:electro_carve4

execute as @s[scores={move=1..20,amberbeast=0}] at @s  run particle ds:lightning_area1
execute as @s[scores={move=1..20,amberbeast=1..}] at @s  run particle ds:lightning_area1a


execute as @s[scores={move=20}] at @s  run playsound mob.shock1 @a[r=100] ~~~ 9999 1 9999
execute as @s[scores={move=20}] at @s  run playsound mob.shocked2 @a[r=100] ~~~ 9999 0.5 9999
execute as @s[scores={move=20}] at @s  run playsound mob.shocked1 @a[r=100] ~~~ 9999 1 9999

execute as @s[scores={move=17..20,amberbeast=1..}] at @s  run particle ds:electro_carve1
execute as @s[scores={move=17..20,amberbeast=1..}] at @s  run particle ds:electro_carve2
execute as @s[scores={move=17..20,amberbeast=1..}] at @s  run particle ds:electro_carve3
execute as @s[scores={move=17..20,amberbeast=1..}] at @s  run particle ds:electro_carve4