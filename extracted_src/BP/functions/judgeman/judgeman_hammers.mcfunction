execute as @s[hasitem={item=ds:gavel1,location=slot.weapon.mainhand}] at @s run function judgeman/gavel1_m1s
execute as @s[hasitem={item=ds:gavel2,location=slot.weapon.mainhand}] at @s run function judgeman/gavel2_m1s
execute as @s[hasitem={item=ds:gavel3,location=slot.weapon.mainhand}] at @s run function judgeman/gavel3_m1s

execute if entity @s[hasitem={item=ds:gavel1}] run clear @s[hasitem={item=ds:gavel2}] ds:gavel2
execute if entity @s[hasitem={item=ds:gavel1}] run clear @s[hasitem={item=ds:gavel3}] ds:gavel3