playanimation @s[scores={move=70}] animation.thunder_cloak.activate

scoreboard players set @s[scores={move=3..}] Move 5
scoreboard players set @s[scores={move=23..}] Camera 5


tag @s[scores={move=1..3},tag=form2] remove form2

execute as @s[type=!player,scores={move=1..}] at @s run tp @s @s

execute as @s[scores={move=66..}] at @s run tp @s @s
execute as @s[scores={move=65},type=player] at @s anchored eyes run camera @s set minecraft:free pos ^^-0.25^10 rot ~-8 ~180
execute as @s[scores={move=63},type=player] at @s anchored eyes run camera @s set minecraft:free ease 1.5 in_out_circ pos ^^-0.25^7 rot ~-4 ~180

execute as @s[scores={move=22}] at @s run particle ds:lightning_shockwave1 ~~1~

execute as @s[scores={move=22..26}] at @s unless entity @s[scores={ltncloak=0..}] run scoreboard objectives add ltncloak dummy
execute as @s[scores={move=22..65}] at @s run particle ds:lightning_cloak_charge1 ~~~
execute as @s[scores={move=22..65}] at @s run particle ds:lightning_cloak_charge2 ~~~
execute as @s[scores={move=22..65}] at @s run particle ds:lightning_cloak_charge3 ~~~
execute as @s[scores={move=22..65}] at @s run particle ds:lightning_cloak_charge4 ~~~
execute as @s[scores={move=22..65}] at @s run particle ds:lightning_cloak_charge5 ~~~
execute as @s[scores={move=22}] at @s run scoreboard players set @s ltncloak 300
execute as @s[scores={move=22}] at @s run scoreboard players operation @s ltncloak += @s Energy
execute as @s[scores={move=69}] at @s run playsound mob.kashimoscream @a[r=100] ~~~ 99999 1 99999
execute as @s[scores={move=22..65}] at @s run camerashake add @a[r=50] 1.5 0.15
execute as @s[scores={move=42..65}] at @s run playsound mob.electricity @a[r=100] ~~~ 0.35 1 99999
execute as @s[scores={move=65}] at @s run playsound mob.shocked3 @a[r=100] ~~~ 0.35 0.8 99999
execute as @s[scores={move=25}] at @s run particle ds:impact1 ~~1~
execute as @s[scores={move=25}] at @s run particle ds:dirt4
execute as @s[scores={move=25}] at @s run particle ds:dirt0
execute as @s[scores={move=25}] at @s run particle mcdp_v:knockback_roar_particle_2 ~~1~