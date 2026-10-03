playanimation @s[scores={move=3..,Stun=1..},tag=!noStunnedAnim] animation.stunned
scoreboard players set @s[scores={move=3..,Stun=1..}] move 2

scoreboard players set @s[scores={move=5..}] Move 5
tp @s[scores={move=5..}] ~~~
scoreboard players random @s[scores={move=3..50}] combat 797 800
execute as @s[scores={move=3..50,combat=800}] anchored eyes rotated ~ 0 positioned ^0.435^-0.075^0.275 run summon ds:flyhead ~~~ facing ^^^41
execute as @s[scores={move=3..50,combat=799}] anchored eyes rotated ~ 0 positioned ^0.435^-0.075^0.275 run summon ds:flyhead2 ~~~ facing ^^^41
execute as @s[scores={move=3..50,combat=798}] anchored eyes rotated ~ 0 positioned ^0.435^-0.075^0.275 run summon ds:flyhead3 ~~~ facing ^^^41
execute as @s[scores={move=3..50,combat=797}] anchored eyes rotated ~ 0 positioned ^0.435^-0.075^0.275 run summon ds:flyhead4 ~~~ facing ^^^41

execute as @s[scores={move=3..50,combat=797..800}] anchored eyes rotated ~ 0 positioned ^0.435^-0.075^0.275 run effect @e[family=flyhead,r=0.1,tag=!idk] instant_health 1 0 true
execute as @s[scores={move=3..50,combat=797..800}] anchored eyes rotated ~ 0 positioned ^0.435^-0.075^0.275 run damage @e[family=flyhead,r=0.1,tag=!idk] 0 suicide entity @e[tag=target,tag=!unselect,family=!flyhead,r=41,c=1]
execute as @s[scores={move=3..50,combat=797..800}] anchored eyes rotated ~ 0 positioned ^0.435^-0.075^0.275 run effect @e[family=flyhead,r=0.1,tag=!idk] instant_health 0 1 true
execute as @s[scores={move=3..50,combat=797..800}] anchored eyes rotated ~ 0 positioned ^0.435^-0.075^0.275 run tp @e[family=flyhead,r=0.1,tag=!idk] ^^^0.15 facing ^^^41
execute as @s[scores={move=3..50,combat=797..800}] anchored eyes rotated ~ 0 positioned ^0.435^-0.075^0.425 as @e[family=flyhead,r=0.1,tag=!idk] run scriptevent ds:knockback 3
execute as @s[scores={move=3..50,combat=797..800}] anchored eyes rotated ~ 0 positioned ^0.435^-0.075^0.425 run tag @e[family=flyhead,r=0.1,tag=!idk] add idk

tag @s[scores={move=1..3},tag=invisible,tag=!invisible2] add invisible2





#------------





playanimation @s[scores={move=0,Stun=1..},tag=!noStunnedAnim] animation.stunned
scoreboard players set @s[scores={move=0,Stun=1..,chance=14}] chance 0

scoreboard players random @s[scores={move=0}] combat 797 800
execute as @s[scores={move=0,combat=800}] anchored eyes rotated ~ 0 positioned ^0.435^-0.075^0.275 run summon ds:flyhead ~~~ facing ^^^41
execute as @s[scores={move=0,combat=799}] anchored eyes rotated ~ 0 positioned ^0.435^-0.075^0.275 run summon ds:flyhead2 ~~~ facing ^^^41
execute as @s[scores={move=0,combat=798}] anchored eyes rotated ~ 0 positioned ^0.435^-0.075^0.275 run summon ds:flyhead3 ~~~ facing ^^^41
execute as @s[scores={move=0,combat=797}] anchored eyes rotated ~ 0 positioned ^0.435^-0.075^0.275 run summon ds:flyhead4 ~~~ facing ^^^41

execute as @s[scores={move=0,combat=797..800}] anchored eyes rotated ~ 0 positioned ^0.435^-0.075^0.275 run effect @e[family=flyhead,r=0.1,tag=!idk] instant_health 1 0 true
execute as @s[scores={move=0,combat=797..800}] anchored eyes rotated ~ 0 positioned ^0.435^-0.075^0.275 run damage @e[family=flyhead,r=0.1,tag=!idk] 0 suicide entity @e[tag=target,tag=!unselect,family=!flyhead,r=41,c=1]
execute as @s[scores={move=0,combat=797..800}] anchored eyes rotated ~ 0 positioned ^0.435^-0.075^0.275 run effect @e[family=flyhead,r=0.1,tag=!idk] instant_health 0 1 true
execute as @s[scores={move=0,combat=797..800}] anchored eyes rotated ~ 0 positioned ^0.435^-0.075^0.275 run tp @e[family=flyhead,r=0.1,tag=!idk] ^^^0.15 facing ^^^41
execute as @s[scores={move=0,combat=797..800}] anchored eyes rotated ~ 0 positioned ^0.435^-0.075^0.425 as @e[family=flyhead,r=0.1,tag=!idk] run scriptevent ds:knockback 3
execute as @s[scores={move=0,combat=797..800}] anchored eyes rotated ~ 0 positioned ^0.435^-0.075^0.425 run tag @e[family=flyhead,r=0.1,tag=!idk] add idk

scoreboard players set @s[scores={move=0,chance=!0}] chance 0