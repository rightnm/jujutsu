
tag @a[tag=wepclick,hasitem={item=ds:executioners_sword,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,wep1=0,Sneaking=0,detect_jump=0}] add wep1
execute as @a[tag=wepclick,hasitem={item=ds:executioners_sword,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,wep1=1..,Sneaking=0,detect_jump=0}] at @s run playsound note.pling @a ~~~ 0.05 0.4
execute as @a[tag=wepclick,hasitem={item=ds:executioners_sword,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,wep1=1..,Sneaking=0,detect_jump=0}] at @s run tellraw @s {"rawtext":[{"text":"§cPiercing Strike is on cooldown: §e"},{"score":{"name": "@p","objective": "wep1"}},{"text":"§c."}]}
scoreboard players set @a[tag=wepclick,hasitem={item=ds:executioners_sword,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep1=0,Sneaking=0,detect_jump=0}] move 19
scoreboard players set @a[tag=wepclick,hasitem={item=ds:executioners_sword,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep1=0,Sneaking=0,detect_jump=0}] wep1 100

tag @a[tag=wepclick,hasitem={item=ds:executioners_sword,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,wep2=0,Sneaking=0,detect_jump=1}] add wep2
execute as @a[tag=wepclick,hasitem={item=ds:executioners_sword,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,wep2=1..,Sneaking=0,detect_jump=1}] at @s run playsound note.pling @a ~~~ 0.05 0.4
execute as @a[tag=wepclick,hasitem={item=ds:executioners_sword,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,wep2=1..,Sneaking=0,detect_jump=1}] at @s run tellraw @s {"rawtext":[{"text":"§cFalling Light is on cooldown: §e"},{"score":{"name": "@p","objective": "wep2"}},{"text":"§c."}]}
scoreboard players set @a[tag=wepclick,hasitem={item=ds:executioners_sword,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep2=0,Sneaking=0,detect_jump=1}] move 16
scoreboard players set @a[tag=wepclick,hasitem={item=ds:executioners_sword,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep2=0,Sneaking=0,detect_jump=1}] wep2 140

tag @a[tag=wepclick,hasitem={item=ds:executioners_sword,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,wep3=0,Sneaking=1..,detect_jump=0}] add wep3
execute as @a[tag=wepclick,hasitem={item=ds:executioners_sword,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,wep3=1..,Sneaking=1..,detect_jump=0}] at @s run playsound note.pling @a ~~~ 0.05 0.4
execute as @a[tag=wepclick,hasitem={item=ds:executioners_sword,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,wep3=1..,Sneaking=1..,detect_jump=0}] at @s run tellraw @s {"rawtext":[{"text":"§cFlashing Light is on cooldown: §e"},{"score":{"name": "@p","objective": "wep3"}},{"text":"§c."}]}
scoreboard players set @a[tag=wepclick,hasitem={item=ds:executioners_sword,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep3=0,Sneaking=1..,detect_jump=0}] move 31
scoreboard players set @a[tag=wepclick,hasitem={item=ds:executioners_sword,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep3=0,Sneaking=1..,detect_jump=0}] wep3 280

tag @a[tag=wepclick,hasitem={item=ds:executioners_sword,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,wep4=0,Sneaking=1..,detect_jump=1}] add wep4
execute as @a[tag=wepclick,hasitem={item=ds:executioners_sword,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,wep4=1..,Sneaking=1..,detect_jump=1}] at @s run playsound note.pling @a ~~~ 0.05 0.4
execute as @a[tag=wepclick,hasitem={item=ds:executioners_sword,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,wep4=1..,Sneaking=1..,detect_jump=1}] at @s run tellraw @s {"rawtext":[{"text":"§cSwift Flash is on cooldown: §e"},{"score":{"name": "@p","objective": "wep4"}},{"text":"§c."}]}
scoreboard players set @a[tag=wepclick,hasitem={item=ds:executioners_sword,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep4=0,Sneaking=1..,detect_jump=1}] move 36
scoreboard players set @a[tag=wepclick,hasitem={item=ds:executioners_sword,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep4=0,Sneaking=1..,detect_jump=1}] wep4 460
tag @a[tag=wepclick,hasitem={item=ds:executioners_sword,location=slot.weapon.mainhand}] remove wepclick
