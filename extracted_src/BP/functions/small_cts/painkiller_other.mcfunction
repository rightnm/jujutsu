playanimation @s[scores={move=20..}] animation.painkiller_other

execute as @s[scores={move=17}] at @s run playsound mob.witch.throw @a[r=10] ~~~ 9999 1.25 9999
execute as @s[scores={move=13}] at @s run playsound mob.witch.throw @a[r=10] ~~~ 9999 1.25 9999
execute as @s[scores={move=10}] at @s run playsound mob.witch.throw @a[r=10] ~~~ 9999 1.25 9999
execute as @s[scores={move=7}] at @s run playsound mob.witch.throw @a[r=10] ~~~ 9999 1.25 9999

execute as @s[scores={move=7}] at @s run playsound mob.zombie.remedy @a[r=10] ~~~ 9999 1.5 9999

execute as @s[scores={move=7}] at @s anchored eyes positioned ^^^3.08 run scoreboard objectives add painkiller dummy
execute as @s[scores={move=7}] at @s anchored eyes positioned ^^^3.08 run scoreboard players operation @e[r=3,tag=!form2] painkiller += @s Energy
execute as @s[scores={move=7}] at @s anchored eyes positioned ^^^3.08 run scoreboard players operation @e[r=3,tag=!form2] painkiller /= seven endurance
execute as @s[scores={move=7}] at @s anchored eyes positioned ^^^3.08 run effect @e[r=3,tag=!form2] regeneration 5 1 true
execute as @s[scores={move=7}] at @s anchored eyes positioned ^^^3.08 run effect @e[r=3,tag=!form2] clear blindness
execute as @s[scores={move=7}] at @s anchored eyes positioned ^^^3.08 run effect @e[r=3,tag=!form2] clear nausea
execute as @s[scores={move=7}] at @s anchored eyes positioned ^^^3.08 run effect @e[r=3,tag=!form2] clear darkness
execute as @s[scores={move=7}] at @s anchored eyes positioned ^^^3.08 run effect @e[r=3,tag=!form2] clear poison
execute as @s[scores={move=7}] at @s anchored eyes positioned ^^^3.08 run effect @e[r=3,tag=!form2] clear fatal_poison
execute as @s[scores={move=7}] at @s anchored eyes positioned ^^^3.08 run effect @e[r=3,tag=!form2] clear wither
execute as @s[scores={move=7}] at @s anchored eyes positioned ^^^3.08 run effect @e[r=3,tag=!form2] clear slowness
execute as @s[scores={move=7}] at @s anchored eyes positioned ^^^3.08 run effect @e[r=3,tag=!form2] clear bad_omen
execute as @s[scores={move=7}] at @s anchored eyes positioned ^^^3.08 run effect @e[r=3,tag=!form2] clear oozing
execute as @s[scores={move=7}] at @s anchored eyes positioned ^^^3.08 run effect @e[r=3,tag=!form2] clear mining_fatigue
execute as @s[scores={move=7}] at @s anchored eyes positioned ^^^3.08 run effect @e[r=3,tag=!form2] clear infested
execute as @s[scores={move=7}] at @s anchored eyes positioned ^^^3.08 run effect @e[r=3,tag=!form2] clear hunger
execute as @s[scores={move=7}] at @s anchored eyes positioned ^^^3.08 run effect @e[r=3,tag=!form2] clear weakness
execute as @s[scores={move=7}] at @s anchored eyes positioned ^^^3.08 run effect @e[r=3,tag=!form2] clear wind_charged
execute as @s[scores={move=7}] at @s anchored eyes positioned ^^^3.08 run effect @e[r=3,tag=!form2] clear weaving

tag @s[scores={move=1..3}] remove form2
