
scoreboard players set @e[r=2.5,tag=!pebblethrown] Stun 45
execute if block ~~-1~ air if block ~~-2~ air run scoreboard players set @e[r=2.5,tag=!pebblethrown] aircom 60
particle ds:large_impact1 ~~0.15~

playanimation @e[tag=pebblethrown,c=1] animation.todo.fast_clap
execute as @e[tag=pebblethrown,c=1] at @s run playsound mob.clap @a[r=100] ~~1~ 9999 1 9999
execute as @e[tag=pebblethrown,c=1] at @s run camerashake add @a[r=100] 0.15 0.15
execute as @e[tag=pebblethrown,c=1] at @s run summon gg:impact_frame

execute as @e[tag=pebblethrown,c=1] at @s run summon ds:rift "swapper_location"
execute as @e[tag=pebblethrown,c=1] at @s run particle ds:boogie_woogie_tp1
execute as @e[tag=pebblethrown,c=1] at @s run particle ds:boogie_woogie_tp2
particle ds:boogie_woogie1 ~~~
particle ds:boogie_woogie1 ~~~
particle ds:boogie_woogie2 ~~~
particle ds:boogie_woogie2 ~~~
tp @e[tag=pebblethrown,c=1] ~~~
execute if block ~~-1~ air if block ~~-2~ air run scoreboard players set @e[tag=pebblethrown,c=1] aircom 60
execute as @e[tag=pebblethrown,c=1] at @s run tp @s ~~~~ 0
execute as @e[tag=pebblethrown,c=1] at @s run tp @e[r=2.5,tag=!pebblethrown,type=!ds:pebble] ^^^1.25 facing @s
execute as @e[name=swapper_location,c=1,r=51] at @s run tp @s  ~~~ facing ^^^10
event entity @e[type=ds:rift,name="swapper_location"] ds:disappear
kill @s
particle ds:dirt03
tag @e remove pebblethrown
