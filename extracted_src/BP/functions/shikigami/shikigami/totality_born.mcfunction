particle ds:dog_combine ~~1~
particle ds:dog_combine1 ~~1~
particle ds:dog_combine2 ~~1~
particle ds:dog_combine3 ~~1~
particle ds:deer_aura1
particle ds:deer_aura2
particle ds:deer_aura3
particle ds:dirt2
camerashake add @a[r=20] 2 0.25
playsound mob.wither.spawn @a ~~~ 1 2
playsound mob.wolf.death @a ~~~ 100000 0.4 100000
kill @e[tag=divinedog] 
summon ds:totality "Divine Dog: Totality"
effect @a[r=20] night_vision 1 1 true
camera @a[r=20] fade time 0 0 0.25 color 0 0 0
playsound mob.wither.shoot @a ~~~ 100000 0.6 100000
effect @e[type=ds:totality] speed 999999999 2 true