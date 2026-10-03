execute as @s[name=ImaginaryP,scores={Deleter=0..62},tag=!Stopped] at @s unless entity @e[name=ImaginaryPTRG2,c=1] run tp @s ^^^1.33
execute as @s[name=ImaginaryP,scores={Deleter=0..62},tag=!Stopped] at @s run tp @s ^^^2.33 facing @e[name=ImaginaryPTRG2,c=1]
execute as @s[name=ImaginaryP,scores={Deleter=0..62},tag=!Stopped] at @s unless entity @e[name=ImaginaryPTRG2,c=1] run tp @s ^^^1.33
execute as @s[name=ImaginaryP,scores={Deleter=0..62},tag=!Stopped] at @s run tp @s ^^^2.33 facing @e[name=ImaginaryPTRG2,c=1]
execute as @s[name=ImaginaryP,scores={Deleter=0..62},tag=!Stopped] at @s unless entity @e[name=ImaginaryPTRG2,c=1] run tp @s ^^^1.33
execute as @s[name=ImaginaryP,scores={Deleter=0..62},tag=!Stopped] at @s run tp @s ^^^2.33 facing @e[name=ImaginaryPTRG2,c=1]


tag @s[name=ImaginaryP] add Frames
tag @s[name=ImaginaryPTRG2] add Frames

execute as @s if entity @e[name=fuga_arrow1,r=15] at @s run function hollow_nuked

scoreboard players random @s[name=ImaginaryP,scores={Deleter=0..62}] chance 1 5
execute as @s[name=ImaginaryP,scores={Deleter=0..50,chance=1}] at @s run particle ds:imaginary_purple7 ~~~

execute as @s[name=ImaginaryPTRG2] at @s run tp @s ~~~

execute as @s[name=ImaginaryPTRG2] at @s if entity @e[name=ImaginaryPTRG2,c=1,r=2] run kill @e[type=ds:projectile,r=3]

playanimation @s[name=ImaginaryP] animation.imaginaryp

execute as @s[name=ImaginaryP,scores={Deleter=0..}] at @s  run execute as @e[scores={ab=1..},tag=limitless,c=1] at @s run  function damages/deletion_damage

execute as @s[name=ImaginaryP,scores={Deleter=0..50}] at @s run execute as @e[type=ds:toji,r=5] at @s run function mobs/toji_apple
execute as @s[name=ImaginaryP,scores={Deleter=0..50}] at @s run execute as @e[type=ds:toji,r=5] at @s run kill @s
execute as @s[name=ImaginaryP,scores={Deleter=0..50}] at @s run execute as @e[type=ds:toji_boss,r=5] at @s run function mobs/toji_apple
execute as @s[name=ImaginaryP,scores={Deleter=0..50}] at @s run execute as @e[type=ds:toji_boss,r=5] at @s run kill @s


execute as @s[name=ImaginaryP,scores={Deleter=0..50}] at @s if entity @e[tag=griefable]  positioned ~~2 ~ run function 2x2sphere
execute as @s[name=ImaginaryP,scores={Deleter=0..50}] at @s if entity @e[tag=griefable]  positioned ~~1 ~ run function 2x2sphere
execute as @s[name=ImaginaryP,scores={Deleter=0..50}] at @s if entity @e[tag=griefable]  positioned ~~3 ~ run function 2x2sphere
execute as @s[name=ImaginaryP,scores={Deleter=0..50}] at @s if entity @e[tag=griefable]  positioned ~~2 ~1 run function 2x2sphere
execute as @s[name=ImaginaryP,scores={Deleter=0..50}] at @s if entity @e[tag=griefable]  positioned ~~2 ~-1 run function 2x2sphere
execute as @s[name=ImaginaryP,scores={Deleter=0..50}] at @s if entity @e[tag=griefable]  positioned ~1~2 ~ run function 2x2sphere
execute as @s[name=ImaginaryP,scores={Deleter=0..50}] at @s if entity @e[tag=griefable]  positioned ~-1~2 ~ run function 2x2sphere
execute as @s[name=ImaginaryP,scores={Deleter=0..50}] at @s unless block ~~~ air run camerashake add @a[r=50] 4 0.1
execute as @s[name=ImaginaryP,scores={Deleter=0..50}] at @s unless block ~~~ air run particle ds:imaginary_impact ~~1.84~

execute as @s[name=ImaginaryP,scores={Deleter=0..50}] at @s unless block ~~-0.3~ air run particle ds:rubble3
execute as @s[name=ImaginaryP,scores={Deleter=0..50}] at @s unless block ~~-0.3~ air run particle ds:rubble3


execute as @s[name=ImaginaryP,scores={Deleter=0..50}] at @s unless entity @a[r=70] run particle ds:imaginary_purple1 ~~~
execute as @s[name=ImaginaryP,scores={Deleter=0..50}] at @s unless entity @a[r=70] run particle ds:imaginary_purple2 ~~~
execute as @s[name=ImaginaryP,scores={Deleter=0..50}] at @s unless entity @a[r=70] run particle ds:imaginary_purple3 ~~~
execute as @s[name=ImaginaryP,scores={Deleter=0..50}] at @s unless entity @a[r=70] run particle ds:imaginary_purple4 ~~~
execute as @s[name=ImaginaryP,scores={Deleter=0..50}] at @s unless entity @a[r=70] run particle ds:imaginary_purple5 ~~~
execute as @s[name=ImaginaryP,scores={Deleter=0..50}] at @s unless entity @a[r=70] run particle ds:imaginary_purple6 ~~~

execute as @s[name=ImaginaryP,scores={Deleter=0..50}] at @s run particle ds:imaginary_purple_air2 ~~3~
execute as @s[name=ImaginaryP,scores={Deleter=0..50}] at @s run particle ds:imaginary_purple_air ~~3~
execute as @s[name=ImaginaryP,scores={Deleter=0..60}] at @s run camerashake add @a[r=50] 2.5 0.1
execute as @s[name=ImaginaryP,scores={Deleter=0..62}] at @s run execute as @e[tag=!Frames,r=7] at @s run particle ds:ashes ~~~

execute as @s[name=ImaginaryP,scores={Deleter=0..62}] at @s run scoreboard players set @e[r=40] Stun 8

execute as @s[name=ImaginaryP,scores={Deleter=0..62}] at @s run effect @e[tag=!Frames,r=10,scores={domainamp=1..}] resistance 1 5 true
execute as @s[name=ImaginaryP,scores={Deleter=0..62}] at @s run damage @e[tag=!Frames,r=10,scores={domainamp=1..}] 15
execute as @s[name=ImaginaryP,scores={Deleter=0..62}] at @s run damage @e[tag=!Frames,r=4] 200
execute as @s[name=ImaginaryP,scores={Deleter=0..62}] at @s run damage @e[tag=!Frames,r=4] 3 override

