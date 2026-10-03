execute as @s[name=ChimeraBarrier] at @s run particle ds:domain_barrierv1 ~~~
scoreboard players remove @e[type=!item,name=ChimeraBarrier,scores={Energy=1..}] Energy 1
execute as @s[name=ChimeraBarrier,scores={Energy=0}] at @s run execute as @e[type=!item,r=41,rm=37] at @s run tp @s ^^^ facing @e[type=!item,name=ChimeraBarrier,c=1]
execute as @s[name=ChimeraBarrier,scores={Energy=0}] at @s run execute as @e[type=!item,r=41,rm=37] at @s run tp @s ^^^-1 facing @e[type=!item,name=ChimeraBarrier,c=1]
execute as @s[name=ChimeraBarrier,scores={Energy=0}] at @s run execute as @e[type=!item,r=41,rm=37] at @s run tp @s ^^^-1 facing @e[type=!item,name=ChimeraBarrier,c=1]