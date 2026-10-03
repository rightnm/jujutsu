scoreboard players add @s Mode 1
scoreboard players set @s infinity 8
scoreboard players set @s combat 800
tag @s add Frames
scoreboard players random @s scroll 1 3
playanimation @s[scores={scroll=1}] animation.beru.dodge1
playanimation @s[scores={scroll=2}] animation.beru.dodge2
playanimation @s[scores={scroll=3}] animation.beru.dodge3
scriptevent ds:knockback -2
execute as @e[c=1,type=!ds:beru_curse,r=7,type=!player] at @s run scriptevent ds:knockback -2
tp @s ~~~ facing @e[c=1,type=!ds:beru_curse,r=7]
effect @s slowness 2 1 true
scoreboard players set @s scroll 0
