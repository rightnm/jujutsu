playanimation @s[scores={move=25}] animation.grasshopper_curse.fly

execute as @s[scores={move=5..20}] at @s run playsound mob.bee.loop @a ~~~ 0.1 1

effect @s[scores={move=20}] speed 1 5 true
effect @s[scores={move=1..4}] speed 0 10 true