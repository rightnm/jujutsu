playanimation @s[scores={chance=1,move=20}] animation.agito.punch

execute as @s[scores={chance=1,move=10}] at @s run function damages/blunt_damage
execute as @s[scores={chance=1,move=10}] at @s run function damages/electric_damage
execute as @s[scores={chance=1,move=4..11}] at @s run tp @s ~~~ facing @e[c=1,family=!shikigami,family=!projectile,family=!damage,type=!ds:projectile,family=!damage,type=!item,type=!xp_orb,tag=!shikigami,type=!ds:knockback,family=!damage,family=!projectile,family=!damage,type=!ds:projectile,r=20]
execute as @s[scores={chance=1,move=11}] at @s positioned ^^1^0.5 run playsound mob.wither.shoot @a ~~~  100000 0.98 100000
execute as @s[scores={chance=1,move=10}] at @s positioned ^^1^0.5 run playsound mob.witch.throw @a ~~~  100000 1 100000
execute as @s[scores={chance=1,move=9..10}] at @s positioned ^^1^0.5 run playsound mob.electricity @a ~~~  100000 1 100000
execute as @s[scores={chance=1,move=10}] at @s positioned ^^3^4 run particle ds:shock_punch1
execute as @s[scores={chance=1,move=9..11}] at @s positioned ^^^4 run execute as @e[type=!item,tag=!Frames,tag=!shikigami,r=3.99,tag=!Big,family=!shikigami,family=!projectile,family=!damage,type=!ds:projectile,family=!damage] at @s run tp @s ~~~ facing @e[type=ds:agito,c=1]
execute as @s[scores={chance=1,move=9..11}] at @s positioned ^^^4 run execute as @e[type=!item,tag=!Frames,tag=!shikigami,r=3.99,tag=!Big,family=!shikigami,family=!projectile,family=!damage,type=!ds:projectile,family=!damage] at @s run summon ds:knockback ^^^1
execute as @s[scores={chance=1,move=10}] at @s positioned ^^^4 run scoreboard players add @e[type=!item,tag=!Frames,tag=!shikigami,r=3.99,tag=!Big,family=!shikigami,family=!projectile,family=!damage,type=!ds:projectile,family=!damage,type=!ds:knockback] Hit 3
execute as @s[scores={chance=1,move=10}] at @s positioned ^^^4 run damage @e[type=!item,tag=!Frames,tag=!shikigami,r=3.99,tag=!Big,family=!shikigami,family=!projectile,family=!damage,type=!ds:projectile,family=!damage,type=!ds:knockback] 10 entity_attack entity @s
execute as @s[scores={chance=1,move=10}] at @s positioned ^^^4 run scoreboard players add @e[type=!item,tag=!Frames,tag=!shikigami,r=3.99,tag=!Big,family=!shikigami,family=!projectile,family=!damage,type=!ds:projectile,family=!damage,type=!ds:knockback] shocked 15
execute as @s[scores={chance=1,move=10}] at @s positioned ^^^4 run scoreboard players add @e[type=!item,tag=!Frames,tag=!shikigami,r=3.99,tag=!Big,family=!shikigami,family=!projectile,family=!damage,type=!ds:projectile,family=!damage,type=!ds:knockback] Stun 15
execute as @s[scores={chance=1,move=10}] at @s positioned ^^^4 run scoreboard players add @e[type=!item,tag=!Frames,tag=!shikigami,r=3.99,tag=!Big,family=!shikigami,family=!projectile,family=!damage,type=!ds:projectile,family=!damage,type=!ds:knockback] Evade 10
execute as @s[scores={chance=1,move=10}] at @s positioned ^^^4 run camerashake add @a[r=20] 2 0.15


execute as @s[scores={chance=1,move=9..11}] at @s positioned ^^^6 run execute as @e[type=!item,tag=!Frames,tag=!shikigami,r=3.99,tag=Big,family=!shikigami,family=!projectile,family=!damage,type=!ds:projectile,family=!damage] at @s run tp @s ~~~ facing @e[type=ds:agito,c=1]
execute as @s[scores={chance=1,move=9..11}] at @s positioned ^^^6 run execute as @e[type=!item,tag=!Frames,tag=!shikigami,r=5.99,tag=Big,family=!shikigami,family=!projectile,family=!damage,type=!ds:projectile,family=!damage] at @s run summon ds:knockback ^^^1
execute as @s[scores={chance=1,move=10}] at @s positioned ^^^6 run scoreboard players add @e[type=!item,tag=!Frames,tag=!shikigami,r=5.99,tag=Big,family=!shikigami,family=!projectile,family=!damage,type=!ds:projectile,family=!damage,type=!ds:knockback] Hit 3
execute as @s[scores={chance=1,move=10}] at @s positioned ^^^6 run damage @e[type=!item,tag=!Frames,tag=!shikigami,r=5.99,tag=Big,family=!shikigami,family=!projectile,family=!damage,type=!ds:projectile,family=!damage,type=!ds:knockback] 14 entity_attack entity @s
execute as @s[scores={chance=1,move=10}] at @s positioned ^^^6 run scoreboard players add @e[type=!item,tag=!Frames,tag=!shikigami,r=5.99,tag=Big,family=!shikigami,family=!projectile,family=!damage,type=!ds:projectile,family=!damage,type=!ds:knockback] shocked 15
execute as @s[scores={chance=1,move=10}] at @s positioned ^^^6 run scoreboard players add @e[type=!item,tag=!Frames,tag=!shikigami,r=5.99,tag=Big,family=!shikigami,family=!projectile,family=!damage,type=!ds:projectile,family=!damage,type=!ds:knockback] Stun 15
execute as @s[scores={chance=1,move=10}] at @s positioned ^^^6 run scoreboard players add @e[type=!item,tag=!Frames,tag=!shikigami,r=5.99,tag=Big,family=!shikigami,family=!projectile,family=!damage,type=!ds:projectile,family=!damage,type=!ds:knockback] Evade 10









