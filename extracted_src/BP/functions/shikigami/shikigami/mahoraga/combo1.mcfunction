playanimation @s[scores={move=30}] animation.mahoraga.combo_start

execute as @s[scores={move=1..3}] at @s run tag @e remove RagaCombo1

execute as @s[scores={move=15..30}] at @s run tp @s ~~~
execute as @s[scores={move=15}] at @s positioned ^^^4 run tag @e[c=1,r=3.99,tag=!Frames,tag=!mahoraga_tame] add RagaCombo1
execute as @s[scores={move=15}] at @s positioned ^^^4 run scoreboard players add @e[c=1,r=3.99,tag=!Frames,tag=!mahoraga_tame] Stun 30
execute as @s[scores={move=15}] at @s run summon ds:mahoraga_knockback1
execute as @s[scores={move=15}] at @s positioned ^^^4 run effect @e[c=1,r=3.99,tag=!Frames,tag=!mahoraga_tame] levitation 1 30 true
execute as @s[scores={move=15}] at @s positioned ^^^4 run effect @e[c=1,r=3.99,tag=!Frames,tag=!mahoraga_tame] slow_falling 5 2 true
execute as @s[scores={move=15}] at @s positioned ^^^4 run scoreboard players add @e[c=1,r=3.99,tag=!Frames,tag=!mahoraga_tame] Evade 16
execute as @s[scores={move=15}] at @s positioned ^^^4 run scoreboard players add @e[c=1,r=3.99,tag=!Frames,tag=!mahoraga_tame] Hit 8
execute as @s[scores={move=15}] at @s positioned ^^^4 run damage @e[c=1,r=3.99,tag=!Frames,tag=!mahoraga_tame] 12 entity_attack entity @s
execute as @s[scores={move=15}] at @s positioned ^^^4 run playsound random.explode @a[r=90] ~~~ 90 1.85 90
execute as @s[scores={move=15}] at @s positioned ^^^4 run playsound mob.wither.shoot @a[r=90] ~~~ 90 0.5 90
execute as @s[scores={move=15}] at @s positioned ^^^4 run playsound mob.wither.shoot @a[r=90] ~~~ 90 0.75 90
execute as @s[scores={move=15}] at @s positioned ^^^4 run camerashake add @a[r=30] 2 0.25
execute as @s[scores={move=15}] at @s run particle ds:ground_slam2 ^^1^2
execute as @s[scores={move=11..14}] at @s if entity @e[tag=RagaCombo1,c=1] run scoreboard players set @s move 1001
execute as @s[scores={move=11..13}] at @s unless entity @e[tag=RagaCombo1,c=1] run scoreboard players set @s move 2


playanimation @s[scores={move=1000..}] animation.mahoraga.combo1

execute as @s[scores={move=978..982}] at @s run particle ds:agito_dash1
execute as @s[scores={move=978..982}] at @s run particle ds:agito_dash2

execute as @s[scores={move=979..990}] at @s run execute as @e[tag=RagaCombo1,c=1] at @s run tp @s @s
execute as @s[scores={move=977..985}] at @s run tp @s @e[tag=RagaCombo1,c=1]


execute as @s[scores={move=978}] at @s positioned ^^^4 run scoreboard players add @e[tag=RagaCombo1,c=1,tag=!mahoraga_tame] Stun 30
execute as @s[scores={move=978}] at @s positioned ^^^4 run scoreboard players add @e[tag=RagaCombo1,c=1,tag=!mahoraga_tame] knockdown 95
execute as @s[scores={move=978}] at @s positioned ^^^4 run effect @e[tag=RagaCombo1,c=1,tag=!mahoraga_tame] slow_falling 2 2 true
execute as @s[scores={move=978}] at @s positioned ^^^4 run scoreboard players add @e[tag=RagaCombo1,c=1,tag=!mahoraga_tame] Evade 16
execute as @s[scores={move=978}] at @s positioned ^^^4 run scoreboard players add @e[tag=RagaCombo1,c=1,tag=!mahoraga_tame] Hit 8
execute as @s[scores={move=978}] at @s positioned ^^^4 run damage @e[tag=RagaCombo1,c=1,tag=!mahoraga_tame] 5 entity_attack entity @s
execute as @s[scores={move=978}] at @s positioned ^^^4 run playsound random.explode @a[r=90] ~~~ 90 1.85 90
execute as @s[scores={move=978}] at @s positioned ^^^4 run playsound mob.wither.shoot @a[r=90] ~~~ 90 0.5 90
execute as @s[scores={move=978}] at @s positioned ^^^4 run playsound mob.wither.shoot @a[r=90] ~~~ 90 0.75 90
execute as @s[scores={move=978}] at @s positioned ^^^4 run camerashake add @a[r=30] 2 0.25
execute as @s[scores={move=977}] at @s positioned ^^^4 run tp @e[tag=RagaCombo1,c=1,tag=!mahoraga_tame] ~~10~

execute as @s[scores={move=958..962}] at @s run particle ds:agito_dash1
execute as @s[scores={move=958..962}] at @s run particle ds:agito_dash2

execute as @s[scores={move=960..970}] at @s run execute as @e[tag=RagaCombo1,c=1] at @s run tp @s @s 
execute as @s[scores={move=957..966}] at @s run tp @s @e[tag=RagaCombo1,c=1]

execute as @s[scores={move=935..956}] at @s run playsound mob.blaze.shoot @a[r=50] ~~~ 9999 1.7 9999
execute as @s[scores={move=935..956}] at @s run playsound mob.witch.throw @a[r=50] ~~~ 9999 1.7 9999
execute as @s[scores={move=956}] at @s run particle ds:dirt2 ~~~
execute as @s[scores={move=956}] at @s run particle ds:dirt0 ~~~
execute as @s[scores={move=946}] at @s run particle ds:dirt0 ~~~
execute as @s[scores={move=936}] at @s run particle ds:dirt0 ~~~
execute as @s[scores={move=936}] at @s run particle ds:dirt0 ~~~
execute as @s[scores={move=935..956}] at @s run tp @s ~ ~ ~ ~45
execute as @s[scores={move=935..956}] at @s run tp @e[tag=RagaCombo1,c=1] ^^2^3 facing @s
execute as @s[scores={move=939..956}] at @s run scoreboard players set @e[tag=RagaCombo1,c=1] Camera 5
execute as @s[scores={move=956}] at @s run camera @p[tag=RagaCombo1,c=1] set minecraft:free pos ^ ^5 ^15 facing ~~2~
execute as @s[scores={move=935}] at @s run summon ds:mahoraga_knockback1 
execute as @s[scores={move=935}] at @s run summon ds:mahoraga_knockback1 

execute as @s[scores={move=930}] at @s run scoreboard players set @s move 3