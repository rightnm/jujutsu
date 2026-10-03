playanimation @s[scores={chance=2,move=30}] animation.agito.kick

effect @s[scores={chance=1,move=13}] instant_health 1 2 true
execute as @s[scores={chance=2,move=1..15}] at @s run kill @e[type=item,r=15]
execute as @s[scores={chance=2,move=1..15}] at @s run tp @s  @s
execute as @s[scores={chance=2,move=12..15}] at @s run tp @s ^^^1
execute as @s[scores={chance=2,move=12..15}] at @s run tp @s ^^^1
execute as @s[scores={chance=2,move=12..15}] at @s unless block ~~~ air run tp @s ~~1~

execute as @s[scores={chance=2,move=12..15}] at @s run function damages/blunt_damage
execute as @s[scores={chance=2,move=12..15}] at @s run function damages/electric_damage
execute as @s[scores={chance=2,move=12..15}] at @s positioned ^^^1 unless block ~~~ air run summon ds:lapse_explode ~~~
execute as @s[scores={chance=2,move=12..15}] at @s positioned ^^^1 unless block ~~1~ air run summon ds:lapse_explode ~~1~
execute as @s[scores={chance=2,move=16..11}] at @s run tp @s ~~~ facing @e[c=1,family=!shikigami,family=!projectile,family=!damage,type=!ds:projectile,family=!damage,type=!item,type=!xp_orb,tag=!shikigami,type=!ds:knockback,family=!damage,family=!projectile,family=!damage,type=!ds:projectile,r=20]
execute as @s[scores={chance=2,move=12..15}] at @s positioned ^^1^0.5 run playsound mob.wither.shoot @a ~~~  100000 0.3 100000
execute as @s[scores={chance=2,move=12..15}] at @s positioned ^^1^0.5 run playsound mob.witch.throw @a ~~~  100000 0.3 100000
execute as @s[scores={chance=2,move=5..15}] at @s positioned ^^1^0.5 run playsound mob.electricity @a ~~~  100000 1.25 100000
execute as @s[scores={chance=2,move=12..15}] at @s positioned ^^3^3 run particle ds:shock_punch1
execute as @s[scores={chance=2,move=12..15}] at @s positioned ^^^3 run execute as @e[type=!item,tag=!Frames,tag=!shikigami,r=2.99,tag=!Big,family=!shikigami,family=!projectile,family=!damage,type=!ds:projectile,family=!damage] at @s run tp @s ~~~ facing @e[type=ds:agito,c=1]
execute as @s[scores={chance=2,move=12..15}] at @s positioned ^^^3 run execute as @e[type=!item,tag=!Frames,tag=!shikigami,r=2.99,tag=!Big,family=!shikigami,family=!projectile,family=!damage,type=!ds:projectile,family=!damage] at @s run summon ds:knockback ^^^1
execute as @s[scores={chance=2,move=12..15}] at @s positioned ^^^3 run scoreboard players add @e[type=!item,tag=!Frames,tag=!shikigami,r=2.99,tag=!Big,family=!shikigami,family=!projectile,family=!damage,type=!ds:projectile,family=!damage,type=!ds:knockback] Hit 3
execute as @s[scores={chance=2,move=12..15}] at @s positioned ^^^3 run damage @e[type=!item,tag=!Frames,tag=!shikigami,r=2.99,tag=!Big,family=!shikigami,family=!projectile,family=!damage,type=!ds:projectile,family=!damage,type=!ds:knockback] 14 entity_attack entity @s
execute as @s[scores={chance=2,move=12..15}] at @s positioned ^^^3 run scoreboard players add @e[type=!item,tag=!Frames,tag=!shikigami,r=2.99,tag=!Big,family=!shikigami,family=!projectile,family=!damage,type=!ds:projectile,family=!damage,type=!ds:knockback] shocked 15
execute as @s[scores={chance=2,move=12..15}] at @s positioned ^^^3 run scoreboard players add @e[type=!item,tag=!Frames,tag=!shikigami,r=2.99,tag=!Big,family=!shikigami,family=!projectile,family=!damage,type=!ds:projectile,family=!damage,type=!ds:knockback] Stun 15
execute as @s[scores={chance=2,move=12..15}] at @s positioned ^^^3 run scoreboard players add @e[type=!item,tag=!Frames,tag=!shikigami,r=2.99,tag=!Big,family=!shikigami,family=!projectile,family=!damage,type=!ds:projectile,family=!damage,type=!ds:knockback] Evade 10

execute as @s[scores={chance=2,move=12..15}] at @s positioned ^^^5 run execute as @e[type=!item,tag=!Frames,tag=!shikigami,r=4.99,tag=Big,family=!shikigami,family=!projectile,family=!damage,type=!ds:projectile,family=!damage] at @s run tp @s ~~~ facing @e[type=ds:agito,c=1]
execute as @s[scores={chance=2,move=12..15}] at @s positioned ^^^5 run execute as @e[type=!item,tag=!Frames,tag=!shikigami,r=4.99,tag=Big,family=!shikigami,family=!projectile,family=!damage,type=!ds:projectile,family=!damage] at @s run summon ds:knockback ^^^1
execute as @s[scores={chance=2,move=12..15}] at @s positioned ^^^5 run scoreboard players add @e[type=!item,tag=!Frames,tag=!shikigami,r=4.99,tag=Big,family=!shikigami,family=!projectile,family=!damage,type=!ds:projectile,family=!damage,type=!ds:knockback] Hit 3
execute as @s[scores={chance=2,move=12..15}] at @s positioned ^^^5 run damage @e[type=!item,tag=!Frames,tag=!shikigami,r=4.99,tag=Big,family=!shikigami,family=!projectile,family=!damage,type=!ds:projectile,family=!damage,type=!ds:knockback] 14 entity_attack entity @s
execute as @s[scores={chance=2,move=12..15}] at @s positioned ^^^5 run scoreboard players add @e[type=!item,tag=!Frames,tag=!shikigami,r=4.99,tag=Big,family=!shikigami,family=!projectile,family=!damage,type=!ds:projectile,family=!damage,type=!ds:knockback] shocked 15
execute as @s[scores={chance=2,move=12..15}] at @s positioned ^^^5 run scoreboard players add @e[type=!item,tag=!Frames,tag=!shikigami,r=4.99,tag=Big,family=!shikigami,family=!projectile,family=!damage,type=!ds:projectile,family=!damage,type=!ds:knockback] Stun 15
execute as @s[scores={chance=2,move=12..15}] at @s positioned ^^^5 run scoreboard players add @e[type=!item,tag=!Frames,tag=!shikigami,r=4.99,tag=Big,family=!shikigami,family=!projectile,family=!damage,type=!ds:projectile,family=!damage,type=!ds:knockback] Evade 10
execute as @s[scores={chance=2,move=14}] at @s positioned ^^^3 run camerashake add @a[r=20] 2 0.15