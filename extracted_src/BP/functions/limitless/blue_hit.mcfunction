playsound mob.distort3 @a[r=40] ~~~ 0.85 1
effect @a[r=4] night_vision 1 1 true
camerashake add @a[r=20] 1 0.2 positional
execute as @e[scores={bluefist=1..},c=1,rm=0.5] at @s run function damages/blunt_damage
particle ds:punch1 ~~~
particle ds:punch2 ~~~
particle ds:punch3 ~~~
particle ds:punch4 ~~~
particle ds:heavy_impact1 ~~~
particle ds:heavy_impact5 ~~~
particle ds:blood ~~0.1~
particle ds:lapse_energy3


