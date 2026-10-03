playanimation @s[scores={move=20..21}] animation.kamutoke_ab2

scoreboard players set @s[scores={move=11..,Stun=1..}] move 3




scoreboard players set @s[scores={move=14..15}] Camera 6
execute as @s[scores={move=14..15}] at @s run tp @s @s
execute as @s[scores={move=14}] at @s run camerashake add @a[r=10] 0.5 0.15
execute as @s[scores={move=14}] at @s positioned ^^^2.5 run playsound mob.slash @a[r=25] ~~~ 99999 1.8 99999
execute as @s[scores={move=14}] at @s positioned ^^^2.5 run scoreboard players set @e[tag=!Frames,r=2.49] Stun 8
execute as @s[scores={move=14}] at @s positioned ^^^2.5 run scoreboard players add @e[tag=!Frames,r=2.49] Evade 3
execute as @s[scores={move=14}] at @s positioned ^^^2.5 run scoreboard players add @e[tag=!Frames,r=2.49] Hit 3
execute as @s[scores={move=14}] at @s positioned ^^^2.5 run damage @e[tag=!Frames,r=2.49] 4 override
execute as @s[scores={move=14}] at @s positioned ^^^2.5 run scoreboard players operation @e[tag=!Frames,r=2.49] damagehalf += @s damageadd
execute as @s[scores={move=14}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=2.49] at @s run playsound mob.sword @s ~~~ 99999 1.5 99999

execute as @s[scores={move=15}] at @s positioned ^^1.5^0.1 run summon ds:projectile ^^^ facing ^^^10 none stormslice
execute as @s[scores={move=14..15}] at @s run scoreboard players set @e[name=stormslice,c=1] Deleter 16
playanimation @e[name=stormslice,scores={Deleter=14..15}] animation.kamutoke_ab2b
execute as @e[name=stormslice,scores={Deleter=1..}] at @s run tp @s ~~~

execute as @s[scores={move=4}] at @s run execute as  @e[name=stormslice,c=1] at @s positioned ^^-1.5^1.5 run camerashake add @a[r=30] 4 0.15
execute as @s[scores={move=4}] at @s run execute as  @e[name=stormslice,c=1] at @s positioned ^^-1.5^1.5 run playsound beacon.power @a[r=25] ~~~ 99999 3 99999
execute as @s[scores={move=4}] at @s run execute as  @e[name=stormslice,c=1] at @s positioned ^^-1.5^1.5 run playsound mob.slash @a[r=25] ~~~ 99999 3 99999
execute as @s[scores={move=4}] at @s run execute as  @e[name=stormslice,c=1] at @s positioned ^^-1.5^1.5 run playsound mob.electricity @a[r=25] ~~~ 99999 4 99999
execute as @s[scores={move=4}] at @s run execute as  @e[name=stormslice,c=1] at @s positioned ^^-1.5^1.5 run playsound mob.electricity @a[r=25] ~~~ 99999 2 99999

scoreboard players set @s[scores={move=4..5}] Frames 5
execute as @s[scores={move=4}] at @s run execute as  @e[name=stormslice,c=1] at @s positioned ^^-1.5^1.5 run tag @e[tag=!Frames,r=5] add hltn
execute as @s[scores={move=4}] at @s run execute as  @e[name=stormslice,c=1] at @s positioned ^^-1.5^1.5 run scoreboard players set @e[tag=!Frames,r=5] Stun 8
execute as @s[scores={move=4}] at @s run execute as  @e[name=stormslice,c=1] at @s positioned ^^-1.5^1.5 run scoreboard players add @e[tag=!Frames,r=5] Evade 3
execute as @s[scores={move=4}] at @s run execute as  @e[name=stormslice,c=1] at @s positioned ^^-1.5^1.5 run scoreboard players add @e[tag=!Frames,r=5] Hit 3
execute as @s[scores={move=4}] at @s run execute as  @e[name=stormslice,c=1] at @s positioned ^^-1.5^1.5 run scoreboard players add @e[tag=!Frames,r=5] shocked 50
execute as @s[scores={move=4}] at @s run execute as  @e[name=stormslice,c=1] at @s positioned ^^-1.5^1.5 run damage @e[tag=!Frames,r=5] 15 override
execute as @s[scores={move=4}] at @s run execute as  @e[name=stormslice,c=1] at @s positioned ^^-1.5^1.5 run execute as @e[tag=!Frames,r=5] at @s run playsound mob.sword @s ~~~ 99999 1.5 99999
execute as @s[scores={move=4}] at @s run execute as  @e[name=stormslice,c=1] at @s positioned ^^-1.5^1.5 run particle ds:kamutoke_counter1 ~~1~
execute as @s[scores={move=4}] at @s run execute as  @e[name=stormslice,c=1] at @s positioned ^^-1.5^1.5 run particle ds:kamutoke_counter2 ~~1~
execute as @s[scores={move=4}] at @s run execute as  @e[name=stormslice,c=1] at @s positioned ^^-1.5^1.5 run particle ds:kamutoke_counter3 ~~1~
execute as @s[scores={move=4}] at @s run execute as  @e[name=stormslice,c=1] at @s positioned ^^-1.5^1.5 run particle ds:kamutoke_counter4 ~~1~

execute as @s[scores={move=4}] at @s run execute as  @e[name=stormslice,c=1] at @s positioned ^^-1.5^1.5 run  function damages/slash_damage
execute as @s[scores={move=4}] at @s run execute as  @e[name=stormslice,c=1] at @s positioned ^^-1.5^1.5 run  function damages/electric_damage
execute as @s[scores={move=3..4}] at @s run tp @e[name=stormslice,c=1] ~~-100~
execute as @s[scores={move=3..4}] at @s run kill @e[name=stormslice,c=1] 

tag @s[scores={move=1..2}] remove wep2