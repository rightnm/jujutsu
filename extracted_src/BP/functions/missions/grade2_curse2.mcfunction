scoreboard players random @s chance 1 11
execute as @s[scores={chance=1..}] at @s if block ~~-1~ water run scoreboard players set @s chance 9
execute as @s[scores={chance=1..3}] at @s run summon ds:lizard_curse ~~~
execute as @s[scores={chance=2..6}] at @s run summon ds:grasshopper_curse ~~~
execute as @s[scores={chance=7..8}] at @s run summon ds:brute4 ~~~
execute as @s[scores={chance=9}] at @s run summon ds:sharko ~~~
execute as @s[scores={chance=7..8}] at @s run effect @e[type=ds:brute4,c=1] resistance 999999 1 true
execute as @s[scores={chance=10}] at @s run summon ds:azureflames_curse
execute as @s[scores={chance=11}] at @s run summon ds:centipede_grade1

execute as @s[scores={chance=1..9}] at @s run tellraw @a[tag=killquest_grade2_curse,r=40] {"rawtext":[{"text":"§e- Eliminate the §r§6Grade 2§r§a Curse to complete your assigned mision!"}]} 
execute as @s[scores={chance=10..11}] at @s run tellraw @a[tag=killquest_grade2_curse,r=40] {"rawtext":[{"text":"§e- It appears we misjudged the situation! That curse is stronger than we anticipated! We estimate it's around §gGrade 1§r§e to §5Special Grade§r§e! If you somehow manage to defeat it, we will reward you nicely! Good luck and do not be afraid to run!"}]} 

execute as @s at @s run playsound mob.wither.shoot @a[r=100] ~~~ 99999 0.2 99999
camerashake add @a[r=40] 0.5 2
tickingarea remove grade2_curse_quest
kill @s