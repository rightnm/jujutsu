tp @s 2506 91 2505
particle ds:rift8 ~~~
particle ds:rift9 ~~~
execute unless entity @e[type=ds:riftmeteor]  if entity @p[r=4,scores={punch=1},hasitem={item=ds:unobtanium,location=slot.weapon.mainhand}] run particle ds:demons_descent1 ~~~
execute unless entity @e[type=ds:riftmeteor]  if entity @p[r=4,scores={punch=1},hasitem={item=ds:unobtanium,location=slot.weapon.mainhand}] run particle ds:demons_descent2 ~~~
execute unless entity @e[type=ds:riftmeteor]  if entity @p[r=4,scores={punch=1},hasitem={item=ds:unobtanium,location=slot.weapon.mainhand}] run particle ds:demons_descent3 ~~~
execute unless entity @e[type=ds:riftmeteor]  if entity @p[r=4,scores={punch=1},hasitem={item=ds:unobtanium,location=slot.weapon.mainhand}] run particle ds:demons_descent4 ~~~
execute unless entity @e[type=ds:riftmeteor]  if entity @p[r=4,scores={punch=1},hasitem={item=ds:unobtanium,location=slot.weapon.mainhand}] run camerashake add @a[r=100] 4 0.15 rotational
execute unless entity @e[type=ds:riftmeteor]  if entity @p[r=4,scores={punch=1},hasitem={item=ds:unobtanium,location=slot.weapon.mainhand}] run summon gg:impact_frame ~~-10~
execute unless entity @e[type=ds:riftmeteor]  if entity @p[r=4,scores={punch=1},hasitem={item=ds:unobtanium,location=slot.weapon.mainhand}] run particle ds:rift_form1
execute unless entity @e[type=ds:riftmeteor]  if entity @p[r=4,scores={punch=1},hasitem={item=ds:unobtanium,location=slot.weapon.mainhand}] run particle ds:rift_form1
execute unless entity @e[type=ds:riftmeteor]  if entity @p[r=4,scores={punch=1},hasitem={item=ds:unobtanium,location=slot.weapon.mainhand}] run particle ds:rift_form1
execute unless entity @e[type=ds:riftmeteor]  if entity @p[r=4,scores={punch=1},hasitem={item=ds:unobtanium,location=slot.weapon.mainhand}] run particle ds:rift_form1
execute unless entity @e[type=ds:riftmeteor]  if entity @p[r=4,scores={punch=1},hasitem={item=ds:unobtanium,location=slot.weapon.mainhand}] run particle ds:reactor_activate2
execute unless entity @e[type=ds:riftmeteor]  if entity @p[r=4,scores={punch=1},hasitem={item=ds:unobtanium,location=slot.weapon.mainhand}] run playsound mob.distort3 @a ~~~ 99999 0.5 99999
execute unless entity @e[type=ds:riftmeteor]  if entity @p[r=4,scores={punch=1},hasitem={item=ds:unobtanium,location=slot.weapon.mainhand}] run playsound mob.distort2 @a ~~~ 99999 0.85 99999
execute unless entity @e[type=ds:riftmeteor]  if entity @p[r=4,scores={punch=1},hasitem={item=ds:unobtanium,location=slot.weapon.mainhand}] run summon ds:red_reverse
execute unless entity @e[type=ds:riftmeteor]  if entity @p[r=4,scores={punch=1},hasitem={item=ds:unobtanium,location=slot.weapon.mainhand}] run function summonmeteor
execute if entity @e[type=ds:riftmeteor] if entity @p[r=4,scores={punch=1},hasitem={item=ds:unobtanium,location=slot.weapon.mainhand}] run clear @p[r=4,scores={punch=1},hasitem={item=ds:unobtanium,location=slot.weapon.mainhand}] ds:unobtanium 0 1
