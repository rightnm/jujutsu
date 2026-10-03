playanimation @s[scores={move=20..21}] animation.magroic.ab2
tp @s ~~~ facing @p

scoreboard players set @s[scores={move=22..}] Frames 4


execute as @s[scores={move=19}] at @s run particle ds:mag_tp2 
execute as @s[scores={move=20}] at @s run playsound mob.endermen.portal @a[r=10] ~~~ 1 0.4
execute as @s[scores={move=19}] at @s run particle ds:dirt2

execute as @s[scores={move=4..16}] at @s if entity @s[scores={Stun=1..}] run scoreboard players set @s move 101
execute as @s[scores={move=4..16}] at @s if entity @s[scores={Hit=1..}] run scoreboard players set @s move 101

#damage part

playanimation @s[scores={move=5}] animation.yuji.absorb_kick2

scoreboard players set @s[scores={move=4..5}] atk 2

execute as @s[scores={move=2..6}] at @s run execute as @e[tag=absorb,c=1,r=7] at @s run tp @s @s
execute as @s[scores={move=2..6}] at @s run execute as @e[tag=absorb,c=1,r=7] at @s run tp @e[scores={move=2..6},c=1,tag=wep1,hasitem={item=ds:yuji_fists,location=slot.weapon.mainhand}] ^^0.15^1 facing @s




playanimation @s[scores={move=100..101}] animation.magroic.ab2b

execute as @s[scores={move=100..}] at @s run playsound portal.trigger @a[r=100] ~~1~ 99999 3 99990
execute as @s[scores={move=82..}] at @s run camerashake add @a[r=20] 0.15 0.15
execute as @s[scores={move=82..}] at @s run particle ds:mag_absorb1 ~~1~
execute as @s[scores={move=82..}] at @s run particle ds:mag_absorb2 ~~1~ 
execute as @s[scores={move=82..}] at @s run particle ds:mag_absorb3 ~~1~
execute as @s[scores={move=82..}] at @s run particle ds:mag_absorb4 ~~~

execute as @s[scores={move=85}] at @s run playsound music.sekiro @a[r=200]
execute as @s[scores={move=85}] at @s run particle ds:unparrymarker
execute as @s[scores={move=50..80}] at @s run particle ds:mag_release1 ~~1~
execute as @s[scores={move=50..80}] at @s run particle ds:mag_release2 ~~1~ 
execute as @s[scores={move=50..80}] at @s run particle ds:mag_release3 ~~1~
execute as @s[scores={move=50..80}] at @s run particle ds:mag_absorb4 ~~~
execute as @s[scores={move=50..80}] at @s run camerashake add @a[r=20] 3 0.15
execute as @s[scores={move=60..80}] at @s run playsound mob.wither.shoot @a ~~1~ 0.2 0.3
execute as @s[scores={move=60..80}] at @s run playsound mob.wither.hurt @a ~~1~ 0.2 0.3
execute as @s[scores={move=60..80}] at @s run damage @e[tag=!Frames,r=15] 3 suicide
execute as @s[scores={move=60..80}] at @s run scoreboard players set @e[tag=!Frames,r=15] Stun 25
execute as @s[scores={move=60..80}] at @s run scoreboard players set @e[tag=!Frames,r=15] Hit 3

execute as @s[scores={move=50..58}] at @s run scoreboard players set @s move 3