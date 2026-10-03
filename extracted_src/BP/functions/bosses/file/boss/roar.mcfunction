playanimation @s[scores={move=50..}] animation.primesoul.roar

tp @s ~ 240 ~

execute as @s[scores={move=40}] at @s run particle ds:unparrymarker ~~1~
execute as @s[scores={move=40}] at @s run  playsound music.sekiro @a[r=200]

execute as @s[scores={move=10..25}] at @s run camerashake add @a[r=50] 3 0.2
execute as @s[scores={move=26}] at @s run execute as @a[r=300] at @s run playsound music.soul @s ~~~ 99999 1.25 99999
execute as @s[scores={move=10..25}] at @s run damage @a[r=25] 1 suicide
execute as @s[scores={move=10..25}] at @s run scoreboard players set @a[r=25] Stun 25
execute as @s[scores={move=10..25}] at @s run scoreboard players set @a[r=25] Hit 2
execute as @s[scores={move=42..50}] at @s run particle ds:primesoul_trg2
execute as @s[scores={move=10..25}] at @s run particle ds:primeroar1 ~~1.4~
execute as @s[scores={move=10..25}] at @s run particle ds:primeroar2 ~~1.4~

tag @s[scores={move=1..3}] remove ranged2


