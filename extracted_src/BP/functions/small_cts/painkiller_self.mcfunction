playanimation @s[scores={move=20..}] animation.painkiller_self

execute as @s[scores={move=17}] at @s run playsound mob.witch.throw @a[r=10] ~~~ 9999 1.25 9999
execute as @s[scores={move=13}] at @s run playsound mob.witch.throw @a[r=10] ~~~ 9999 1.25 9999
execute as @s[scores={move=10}] at @s run playsound mob.witch.throw @a[r=10] ~~~ 9999 1.25 9999
execute as @s[scores={move=7}] at @s run playsound mob.witch.throw @a[r=10] ~~~ 9999 1.25 9999

execute as @s[scores={move=7}] at @s run playsound mob.zombie.remedy @a[r=10] ~~~ 9999 1.5 9999

execute as @s[scores={move=7}] at @s run scoreboard objectives add painkiller dummy
execute as @s[scores={move=7}] at @s run scoreboard players operation @s painkiller += @s Energy
execute as @s[scores={move=7}] at @s run scoreboard players operation @s painkiller /= seven endurance
execute as @s[scores={move=7}] at @s run effect @s regeneration 5 1 true
execute as @s[scores={move=7}] at @s run effect @s clear blindness
execute as @s[scores={move=7}] at @s run effect @s clear nausea
execute as @s[scores={move=7}] at @s run effect @s clear darkness
execute as @s[scores={move=7}] at @s run effect @s clear poison
execute as @s[scores={move=7}] at @s run effect @s clear fatal_poison
execute as @s[scores={move=7}] at @s run effect @s clear wither
execute as @s[scores={move=7}] at @s run effect @s clear slowness
execute as @s[scores={move=7}] at @s run effect @s clear bad_omen
execute as @s[scores={move=7}] at @s run effect @s clear oozing
execute as @s[scores={move=7}] at @s run effect @s clear mining_fatigue
execute as @s[scores={move=7}] at @s run effect @s clear infested
execute as @s[scores={move=7}] at @s run effect @s clear hunger
execute as @s[scores={move=7}] at @s run effect @s clear weakness
execute as @s[scores={move=7}] at @s run effect @s clear wind_charged
execute as @s[scores={move=7}] at @s run effect @s clear weaving

tag @s[scores={move=1..3}] remove form1