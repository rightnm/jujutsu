execute as @s unless entity @s[scores={Mode=0..}] run scoreboard players set @s Mode 15
scoreboard players remove @s[scores={Mode=1..}] Mode 1
camerashake add @a[r=11] 2 0.15
effect @a[r=30] darkness 5 1 true

execute as @s[scores={Mode=0}] run playsound mob.creepy @a[r=10] ~~~ 99999 1 99999 

scoreboard players set @s[scores={Mode=0}] Mode 16
execute unless entity @e[type=!ds:creepy,r=10,type=!item,type=!xp_orb] run effect @s slowness 1 12 true