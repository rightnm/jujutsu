playanimation @s[scores={move=30}] animation.sharko.roar

execute as @s[scores={move=22}] at @s run effect @e[r=50,family=!purecurse] slowness 9 3

execute as @s[scores={move=24}] at @s run particle ds:sharko_roar ~~5~
execute as @s[scores={move=22}] at @s run particle ds:sharko_roar ~~5~
execute as @s[scores={move=19}] at @s run particle ds:sharko_roar ~~5~
execute as @s[scores={move=30}] at @s run playsound mob.sharko @a[r=150] ~~~ 99999 1 99999
execute as @s[scores={move=22}] at @s run camerashake add @a[r=150] 2 0.25