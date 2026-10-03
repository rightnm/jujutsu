execute as @s run execute as @e[r=4,rm=0.5,tag=!Frames,scores={Stun=0,Disabled=0}] at @s run tp @s @s
execute as @s run execute as @e[r=4,rm=0.5,tag=!Frames,scores={Stun=0,Disabled=0}] at @s run tp @s ^^^-1
kill @e[type=ds:knockback,r=15,rm=2.5]
kill @e[type=ds:red_reverse,r=15,rm=2.5]
scoreboard players remove @s[scores={scene=1..}] scene 1
effect @e[type=!player,r=20] slowness 1 20 true