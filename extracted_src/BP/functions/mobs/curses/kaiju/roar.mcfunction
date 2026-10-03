effect @s[scores={move=150..}] slowness 8 10 true
tp @s ~~~

playanimation @s[scores={move=150..}] animation.kaiju_curse.roar

execute as @s[scores={move=127..128}] at @s run execute as @a[r=500] at @s run playsound music.kaiju @s ~~~ 9999999 0.8 9999999
execute as @s[scores={move=127}] at @s run playsound mob.kaiju @a[rm=500,r=1500] ~~30~ 9999999 0.8 99999999
execute as @s[scores={move=127}] at @s run camerashake add @a[r=500] 0.5 5.5
effect @s resistance 1 4 true


execute as @s[scores={move=25..127}] at @s run damage @e[r=60,tag=!Frames,type=!ds:kaiju_curse] 5 entity_attack entity @s
execute as @s[scores={move=25..127}] at @s run effect @e[r=60,tag=!Frames,type=!ds:kaiju_curse] slowness 3 1 true
