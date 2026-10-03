tp @s ^^^5 
playanimation @s animation.hiten_spear
tag @s[tag=!Frames] add Frames
execute as @s unless entity @s[scores={Deleter=0..}] run scoreboard players set @s Deleter 11

scoreboard players set @e[tag=!Frames,r=7] Hit 5
scoreboard players set @e[tag=!Frames,r=7] Stun 25
scoreboard players add @e[tag=!Frames,r=7] Evade 1
damage @e[tag=!Frames,r=7] 10 override
particle ds:heavenly_wind9
particle ds:impact2


execute as @s[scores={Deleter=1..}] at @s if entity @p[tag=griefable] run function 4x4sphere

execute as @s[scores={Deleter=1..}] at @s run tp @e[tag=!Frames,r=7] ^^^1 



execute as @s[scores={Deleter=3}] at @s if entity @p[tag=griefable] run effect @e[r=30] resistance 1 10 true
execute as @s[scores={Deleter=3}] at @s  if entity @p[tag=griefable] run summon ds:red_reversal ~~1~
execute as @s[scores={Deleter=3}] at @s  if entity @p[tag=griefable] run summon ds:red_reversal ~~1~
execute as @s[scores={Deleter=3}] at @s  if entity @p[tag=griefable] run summon ds:red_reversal ~~1~
execute as @s[scores={Deleter=3}] at @s  if entity @p[tag=griefable] run summon ds:red_reversal ~~1~
execute as @s[scores={Deleter=3}] at @s  if entity @p[tag=griefable] run summon ds:red_reversal ~~1~
execute as @s[scores={Deleter=1}] at @s  if entity @p[tag=griefable] run effect @e[r=30] clear resistance




