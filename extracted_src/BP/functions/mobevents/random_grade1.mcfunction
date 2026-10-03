summon ds:projectile randomgrade1
scoreboard players random @e[type=ds:projectile,name=randomgrade1,r=1,c=1] chance 1 10
spreadplayers ~ ~ 45 50 @e[type=ds:projectile,name=randomgrade1,r=1,c=1]
execute as @e[type=ds:projectile,name=randomgrade1,c=1] at @s[scores={chance=1..5}] run summon ds:centipede_grade1
execute as @e[type=ds:projectile,name=randomgrade1,c=1] at @s[scores={chance=6..}] run summon ds:azureflames_curse

execute at @e[type=ds:projectile,name=randomgrade1,c=1] run damage @e[family=grade1,r=1,c=1] 0 entity_attack entity @s[tag=!unselect]
playsound random.explode @a ~~~ 9999 0.25 9999
kill @e[type=ds:projectile,name=randomgrade1,c=1]