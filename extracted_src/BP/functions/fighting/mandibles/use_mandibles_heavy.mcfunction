

tag @s[tag=wepclick,hasitem={item=ds:beru_daggers,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,wep1=0,detect_jump=0,agility=10..}] add wep1
execute as @s[tag=wepclick,hasitem={item=ds:beru_daggers,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep1=1..,Sneaking=0,detect_jump=0,agility=10..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=wepclick,hasitem={item=ds:beru_daggers,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep1=1..,Sneaking=0,detect_jump=0,agility=10..}] at @s run tellraw @s {"rawtext":[{"text":"§cEviscerate is on cooldown: §e"},{"score":{"name": "@p","objective": "wep1"}},{"text":"§c."}]}
scoreboard players set @s[tag=wepclick,hasitem={item=ds:beru_daggers,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep1=0,Sneaking=0,detect_jump=0,agility=10..}] move 26
scoreboard players set @s[tag=wepclick,hasitem={item=ds:beru_daggers,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep1=0,Sneaking=0,detect_jump=0,agility=10..}] wep1 110


tag @s[tag=wepclick,hasitem={item=ds:beru_daggers,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep2=0,Sneaking=0,detect_jump=1..,agility=25..}] add wep2
execute as @s[tag=wepclick,hasitem={item=ds:beru_daggers,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep2=1..,Sneaking=0,detect_jump=1..,agility=25..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=wepclick,hasitem={item=ds:beru_daggers,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep2=1..,Sneaking=0,detect_jump=1..,agility=25..}] at @s run tellraw @s {"rawtext":[{"text":"§cMutilation is on cooldown: §e"},{"score":{"name": "@p","objective": "wep2"}},{"text":"§c."}]}
scoreboard players set @s[tag=wepclick,hasitem={item=ds:beru_daggers,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep2=0,Sneaking=0,detect_jump=1..,agility=25..}] move 26
scoreboard players set @s[tag=wepclick,hasitem={item=ds:beru_daggers,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep2=0,Sneaking=0,detect_jump=1..,agility=25..}] wep2 300


tag @s[tag=wepclick,hasitem={item=ds:beru_daggers,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep3=0,Sneaking=1..,detect_jump=0,agility=35..}] add wep3
execute as @s[tag=wepclick,hasitem={item=ds:beru_daggers,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,wep3=1..,detect_jump=0,agility=35..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=wepclick,hasitem={item=ds:beru_daggers,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,wep3=1..,detect_jump=0,agility=35..}] at @s run tellraw @s {"rawtext":[{"text":"§cDagger Blitz is on cooldown: §e"},{"score":{"name": "@p","objective": "wep3"}},{"text":"§c."}]}
scoreboard players set @s[tag=wepclick,hasitem={item=ds:beru_daggers,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep3=0,Sneaking=1..,detect_jump=0,agility=35..}] move 26
scoreboard players set @s[tag=wepclick,hasitem={item=ds:beru_daggers,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep3=0,Sneaking=1..,detect_jump=0,agility=35..}] wep3 120


tag @s[tag=wepclick,hasitem={item=ds:beru_daggers,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep4=0,Sneaking=1..,detect_jump=1..,agility=50..,strength=50..}] add wep4
execute as @s[tag=wepclick,hasitem={item=ds:beru_daggers,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,wep4=1..,detect_jump=1..,agility=50..,strength=50..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=wepclick,hasitem={item=ds:beru_daggers,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,wep4=1..,detect_jump=1..,agility=50..,strength=50..}] at @s run tellraw @s {"rawtext":[{"text":"§cVanishing Fangs is on cooldown: §e"},{"score":{"name": "@p","objective": "wep4"}},{"text":"§c."}]}
scoreboard players set @s[tag=wepclick,hasitem={item=ds:beru_daggers,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep4=0,Sneaking=1..,detect_jump=1..,agility=50..,strength=50..}] move 21
scoreboard players set @s[tag=wepclick,hasitem={item=ds:beru_daggers,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep4=0,Sneaking=1..,detect_jump=1..,agility=50..,strength=50..}] wep4 400


tag @s remove wepclick