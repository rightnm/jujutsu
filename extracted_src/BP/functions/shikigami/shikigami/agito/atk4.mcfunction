playanimation @s[scores={chance=4,move=70}] animation.agito.punch_combo

execute as @s[scores={chance=4,move=67..68}] at @s  run function damages/blunt_damage
execute as @s[scores={chance=4,move=47..48}] at @s  run function damages/blunt_damage
execute as @s[scores={chance=4,move=27..28}] at @s  run function damages/blunt_damage
execute as @s[scores={chance=4,move=67..68}] at @s  run particle ds:agito_dash1 ~~-1~
execute as @s[scores={chance=4,move=67..68}] at @s  run particle ds:agito_dash2
execute as @s[scores={chance=4,move=60..65}] at @s run tp @s ~~~ facing @e[tag=!Frames,c=1,family=!shikigami,family=!projectile,family=!damage,type=!ds:projectile,family=!damage,type=!item,type=!xp_orb,tag=!shikigami,type=!ds:knockback,family=!damage,family=!projectile,family=!damage,type=!ds:projectile,r=40]
execute as @s[scores={chance=4,move=68}] at @s run execute as @e[tag=!Frames,c=1,family=!shikigami,family=!projectile,family=!damage,type=!ds:projectile,family=!damage,type=!item,type=!xp_orb,tag=!shikigami,type=!ds:knockback,family=!damage,family=!projectile,family=!damage,type=!ds:projectile,r=40] at @s run tp @e[type=ds:agito,scores={chance=4},c=1] ^^^4.5facing @s
execute as @s[scores={chance=4,move=64}] at @s positioned ^^1^0.5 run playsound mob.wither.shoot @a ~~~  100000 0.87 100000
execute as @s[scores={chance=4,move=64}] at @s positioned ^^1^0.5 run playsound mob.witch.throw @a ~~~  100000 0.73 100000
execute as @s[scores={chance=4,move=64}] at @s positioned ^^^4.5 run execute as @e[type=!item,tag=!Frames,tag=!shikigami,r=4.499,tag=!Big,family=!shikigami,family=!projectile,family=!damage,type=!ds:projectile,family=!damage] at @s run tp @s ~~~ facing @e[type=ds:agito,c=1]
execute as @s[scores={chance=4,move=63..64}] at @s positioned ^^^4.5 run execute as @e[type=!item,tag=!Frames,tag=!shikigami,r=4.499,tag=!Big,family=!shikigami,family=!projectile,family=!damage,type=!ds:projectile,family=!damage] at @s run summon ds:knockback ^^^1
execute as @s[scores={chance=4,move=64}] at @s positioned ^^^4.5 run scoreboard players add @e[type=!item,tag=!Frames,tag=!shikigami,r=4.499,tag=!Big,family=!shikigami,family=!projectile,family=!damage,type=!ds:projectile,family=!damage,type=!ds:knockback] Hit 3
execute as @s[scores={chance=4,move=64}] at @s positioned ^^^4.5 run damage @e[type=!item,tag=!Frames,tag=!shikigami,r=4.499,tag=!Big,family=!shikigami,family=!projectile,family=!damage,type=!ds:projectile,family=!damage,type=!ds:knockback] 6 entity_attack entity @s
execute as @s[scores={chance=4,move=64}] at @s positioned ^^^4.5 run scoreboard players add @e[type=!item,tag=!Frames,tag=!shikigami,r=4.499,tag=!Big,family=!shikigami,family=!projectile,family=!damage,type=!ds:projectile,family=!damage,type=!ds:knockback] Stun 12
execute as @s[scores={chance=4,move=64}] at @s positioned ^^^4.5 run scoreboard players add @e[type=!item,tag=!Frames,tag=!shikigami,r=4.499,tag=!Big,family=!shikigami,family=!projectile,family=!damage,type=!ds:projectile,family=!damage,type=!ds:knockback] Evade 9

execute as @s[scores={chance=4,move=47..48}] at @s  run particle ds:agito_dash1 ~~-1~
execute as @s[scores={chance=4,move=47..48}] at @s  run particle ds:agito_dash2
execute as @s[scores={chance=4,move=40..45}] at @s run tp @s ~~~ facing @e[tag=!Frames,c=1,family=!shikigami,family=!projectile,family=!damage,type=!ds:projectile,family=!damage,type=!item,type=!xp_orb,tag=!shikigami,type=!ds:knockback,family=!damage,family=!projectile,family=!damage,type=!ds:projectile,r=40]
execute as @s[scores={chance=4,move=48}] at @s run execute as @e[tag=!Frames,c=1,family=!shikigami,family=!projectile,family=!damage,type=!ds:projectile,family=!damage,type=!item,type=!xp_orb,tag=!shikigami,type=!ds:knockback,family=!damage,family=!projectile,family=!damage,type=!ds:projectile,r=40] at @s run tp @e[type=ds:agito,scores={chance=4},c=1] ^^^4.5facing @s
execute as @s[scores={chance=4,move=44}] at @s positioned ^^1^0.5 run playsound mob.wither.shoot @a ~~~  100000 0.8 100000
execute as @s[scores={chance=4,move=44}] at @s positioned ^^1^0.5 run playsound mob.witch.throw @a ~~~  100000 0.5 100000
execute as @s[scores={chance=4,move=44}] at @s positioned ^^^4.5 run execute as @e[type=!item,tag=!Frames,tag=!shikigami,r=4.499,tag=!Big,family=!shikigami,family=!projectile,family=!damage,type=!ds:projectile,family=!damage] at @s run tp @s ~~~ facing @e[type=ds:agito,c=1]
execute as @s[scores={chance=4,move=43..44}] at @s positioned ^^^4.5 run execute as @e[type=!item,tag=!Frames,tag=!shikigami,r=4.499,tag=!Big,family=!shikigami,family=!projectile,family=!damage,type=!ds:projectile,family=!damage] at @s run summon ds:knockback ^^^1
execute as @s[scores={chance=4,move=44}] at @s positioned ^^^4.5 run scoreboard players add @e[type=!item,tag=!Frames,tag=!shikigami,r=4.499,tag=!Big,family=!shikigami,family=!projectile,family=!damage,type=!ds:projectile,family=!damage,type=!ds:knockback] Hit 3
execute as @s[scores={chance=4,move=44}] at @s positioned ^^^4.5 run damage @e[type=!item,tag=!Frames,tag=!shikigami,r=4.499,tag=!Big,family=!shikigami,family=!projectile,family=!damage,type=!ds:projectile,family=!damage,type=!ds:knockback] 6 entity_attack entity @s
execute as @s[scores={chance=4,move=44}] at @s positioned ^^^4.5 run scoreboard players add @e[type=!item,tag=!Frames,tag=!shikigami,r=4.499,tag=!Big,family=!shikigami,family=!projectile,family=!damage,type=!ds:projectile,family=!damage,type=!ds:knockback] Stun 12
execute as @s[scores={chance=4,move=54}] at @s positioned ^^^4.5 run scoreboard players add @e[type=!item,tag=!Frames,tag=!shikigami,r=4.499,tag=!Big,family=!shikigami,family=!projectile,family=!damage,type=!ds:projectile,family=!damage,type=!ds:knockback] Evade 9

execute as @s[scores={chance=4,move=37..39}] at @s  run particle ds:agito_dash1 ~~-1~
execute as @s[scores={chance=4,move=37..39}] at @s  run particle ds:agito_dash2
execute as @s[scores={chance=4,move=34..39}] at @s run execute as @e[tag=!Frames,c=1,family=!shikigami,family=!projectile,family=!damage,type=!ds:projectile,family=!damage,type=!item,type=!xp_orb,tag=!shikigami,type=!ds:knockback,family=!damage,family=!projectile,family=!damage,type=!ds:projectile,r=60] at @s run tp @e[type=ds:agito,scores={chance=4},c=1] ~~3~
execute as @s[scores={chance=4,move=25..39}] at @s unless block ~~-1.5~ air run scoreboard players set @s move 24
execute as @s[scores={chance=4,move=1..24}] at @s run tp @s ~~~
execute as @s[scores={chance=4,move=24}] at @s run tp @s ~~-1~

execute as @s[scores={chance=4,move=20}] at @s  run tp @s ~~~
execute as @s[scores={chance=4,move=20}] at @s  run playsound mob.wither.shoot @a ~~~  100000 0.95 100000
execute as @s[scores={chance=4,move=20}] at @s  run playsound mob.wither.break_block @a ~~~  100000 0.45 100000
execute as @s[scores={chance=4,move=20}] at @s  run playsound random.explode @a ~~~  100000 0.5 100000
execute as @s[scores={chance=4,move=20}] at @s  run playsound random.explode @a ~~~  100000 0.25 100000
execute as @s[scores={chance=4,move=20}] at @s  run playsound random.explode @a ~~~  100000 0.45 100000
execute as @s[scores={chance=4,move=20}] at @s  run particle ds:dirt4 ~~~
execute as @s[scores={chance=4,move=20}] at @s  run particle ds:ground_slam1
execute as @s[scores={chance=4,move=20}] at @s  run particle ds:ground_slam2
execute as @s[scores={chance=4,move=20}] at @s  run particle ds:ground_slam3
execute as @s[scores={chance=4,move=20}] at @s  run particle ds:ground_slam4
execute as @s[scores={chance=4,move=20}] at @s  run particle ds:leap
execute as @s[scores={chance=4,move=20}] at @s  run particle ds:rubble3
execute as @s[scores={chance=4,move=20}] at @s  run particle ds:rubble3
execute as @s[scores={chance=4,move=20}] at @s  run particle ds:crater3
execute as @s[scores={chance=4,move=19..25}] at @s  run effect @s resistance 1 10 true
execute as @s[scores={chance=4,move=19}] at @s unless block ~~-1~ air run summon ds:projectile NueBolt ~~-1~
execute as @s[scores={chance=4,move=19..20}] at @s  run execute as @e[type=!item,tag=!Frames,tag=!shikigami,r=8,family=!shikigami,family=!projectile,family=!damage,type=!ds:projectile,family=!damage] at @s run tp @s ~~~ facing @e[type=ds:agito,c=1]
execute as @s[scores={chance=4,move=19..20}] at @s  run execute as @e[type=!item,tag=!Frames,tag=!shikigami,r=8,family=!shikigami,family=!projectile,family=!damage,type=!ds:projectile,family=!damage] at @s run summon ds:knockback ^^^1
execute as @s[scores={chance=4,move=20}] at @s  run scoreboard players add @e[type=!item,tag=!Frames,tag=!shikigami,r=8,family=!shikigami,family=!projectile,family=!damage,type=!ds:projectile,family=!damage,type=!ds:knockback] Hit 6
execute as @s[scores={chance=4,move=20}] at @s  run damage @e[type=!item,tag=!Frames,tag=!shikigami,r=8,family=!shikigami,family=!projectile,family=!damage,type=!ds:projectile,family=!damage,type=!ds:knockback] 35 entity_attack entity @s
execute as @s[scores={chance=4,move=20}] at @s  run scoreboard players add @e[type=!item,tag=!Frames,tag=!shikigami,r=8,family=!shikigami,family=!projectile,family=!damage,type=!ds:projectile,family=!damage,type=!ds:knockback] Stun 15
execute as @s[scores={chance=4,move=20}] at @s  run scoreboard players add @e[type=!item,tag=!Frames,tag=!shikigami,r=8,family=!shikigami,family=!projectile,family=!damage,type=!ds:projectile,family=!damage,type=!ds:knockback] Evade 35
execute as @s[scores={chance=4,move=20}] at @s  run camerashake add @a[r=20] 4 0.15