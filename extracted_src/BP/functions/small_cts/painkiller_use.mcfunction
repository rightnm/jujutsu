
execute as @s unless entity @s[scores={painkiller=1..}] run tag @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:painkiller1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability1=0,Sneaking=0,Energy=50..}] add form1
execute as @s unless entity @s[scores={painkiller=1..}] run execute as @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:painkiller1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability1=0,Energy=0..49,Sneaking=0}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s unless entity @s[scores={painkiller=1..}] run execute as @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:painkiller1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability1=1..,Sneaking=0,Energy=50..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s unless entity @s[scores={painkiller=1..}] run execute as @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:painkiller1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability1=1..,Sneaking=0,Energy=50..}] at @s run tellraw @s {"rawtext":[{"text":"§cSelf - Apply is on cooldown: §e"},{"score":{"name": "@p","objective": "ability1"}},{"text":"§c."}]}
execute as @s unless entity @s[scores={painkiller=1..}] run scoreboard players set @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:painkiller1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability1=0,Sneaking=0,Energy=50..}] move 21
execute as @s unless entity @s[scores={painkiller=1..}] run scoreboard players set @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:painkiller1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability1=0,Sneaking=0,Energy=50..}] ability1 300
execute as @s unless entity @s[scores={painkiller=1..}] run scoreboard players remove @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:painkiller1,location=slot.weapon.mainhand},scores={Energy=50..,move=21,Sneaking=0}] Energy 50


tag @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:painkiller1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,ability2=0,Energy=100..}] add form2
execute as @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:painkiller1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability2=0,Energy=0..99,Sneaking=1..}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:painkiller1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,ability2=1..,Energy=100..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:painkiller1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,ability2=1..,Energy=100..}] at @s run tellraw @s {"rawtext":[{"text":"§cOther - Apply is on cooldown: §e"},{"score":{"name": "@p","objective": "ability2"}},{"text":"§c."}]}
scoreboard players set @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:painkiller1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability2=0,Sneaking=1..,Energy=100..}] move 21
scoreboard players set @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:painkiller1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability2=0,Sneaking=1..,Energy=100..}] ability2 300
scoreboard players remove @s[tag=!nocts,tag=!domainamplification,hasitem={item=ds:painkiller1,location=slot.weapon.mainhand},scores={Energy=100..,move=21,Sneaking=1..}] Energy 100









