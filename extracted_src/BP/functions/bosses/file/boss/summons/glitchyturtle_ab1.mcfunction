playanimation @s[scores={move=35..}] animation.glitchyturtle.ab1

tp @s ~~~ facing @p[m=!c]

execute as @s[scores={move=20}] at @s run playsound random.explode @a[r=200] ~~~ 9999 0.5 9999
execute as @s[scores={move=20}] at @s run particle ds:dirt2
execute as @s[scores={move=20}] at @s run particle ds:ground_slam1
execute as @s[scores={move=20}] at @s run particle ds:ground_slam2
execute as @s[scores={move=20}] at @s run particle ds:crater2
execute as @s[scores={move=20}] at @s run summon ds:projectile ^^^2 facing ^^^20 none "glitchyspikes"
execute as @e[type=ds:projectile,c=1,name="glitchyspikes"] at @s run function bosses/file/boss/summons/glitchyspikes