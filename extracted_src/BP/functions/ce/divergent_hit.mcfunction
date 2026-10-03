playsound random.explode @a[r=40] ~~~ 99999 2.2 99999
playsound random.explode @a[r=40] ~~~ 99999 1.25 99999
playsound random.explode @a[r=40] ~~~ 99999 1.5 99999
playsound random.explode @a[r=40] ~~~ 99999 1.4 99999
playsound random.explode @a[r=40] ~~~ 99999 2.2 99999
playsound mob.stomp @a[r=40] ~~~ 99999 0.5 99999
effect @a[r=4] night_vision 1 1 true
camerashake add @a[r=20] 3 0.2 positional
execute as @e[scores={divergent=1..},c=1,rm=0.5] at @s run function damages/blunt_damage
particle ds:punch1 ~~~
particle ds:punch2 ~~~
particle ds:punch3 ~~~
particle ds:punch4 ~~~
particle ds:heavy_impact1 ~~~
particle ds:heavy_impact5 ~~~
particle ds:blood ~~0.1~
particle ds:divergent_ac1
particle ds:divergent_ac2
particle ds:divergent_ac3
particle ds:divergent_ac4
particle ds:divergent_ac5
particle ds:divergent_ac6


