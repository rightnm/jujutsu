

tag @a[tag=wepclick,hasitem={item=ds:nyoi_staff,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,wep1=0,Sneaking=0,detect_jump=0}] add wep1
execute as @a[tag=wepclick,hasitem={item=ds:nyoi_staff,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,wep1=1..,Sneaking=0,detect_jump=0}] at @s run playsound note.pling @a ~~~ 0.05 0.4
execute as @a[tag=wepclick,hasitem={item=ds:nyoi_staff,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,wep1=1..,Sneaking=0,detect_jump=0}] at @s run tellraw @s {"rawtext":[{"text":"§cLow-Blow is on cooldown: §e"},{"score":{"name": "@p","objective": "wep1"}},{"text":"§c."}]}
scoreboard players set @a[tag=wepclick,hasitem={item=ds:nyoi_staff,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep1=0,Sneaking=0,detect_jump=0}] move 21
scoreboard players set @a[tag=wepclick,hasitem={item=ds:nyoi_staff,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep1=0,Sneaking=0,detect_jump=0}] wep1 160

tag @a[tag=wepclick,hasitem={item=ds:nyoi_staff,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,wep2=0,Sneaking=1..,detect_jump=0}] add wep2
execute as @a[tag=wepclick,hasitem={item=ds:nyoi_staff,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,wep2=1..,Sneaking=1..,detect_jump=0}] at @s run playsound note.pling @a ~~~ 0.05 0.4
execute as @a[tag=wepclick,hasitem={item=ds:nyoi_staff,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,wep2=1..,Sneaking=1..,detect_jump=0}] at @s run tellraw @s {"rawtext":[{"text":"§cPole Strike is on cooldown: §e"},{"score":{"name": "@p","objective": "wep2"}},{"text":"§c."}]}
scoreboard players set @a[tag=wepclick,hasitem={item=ds:nyoi_staff,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep2=0,Sneaking=1..,detect_jump=0}] move 16
scoreboard players set @a[tag=wepclick,hasitem={item=ds:nyoi_staff,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep2=0,Sneaking=1..,detect_jump=0}] wep2 200

tag @a[tag=wepclick,hasitem={item=ds:nyoi_staff,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,wep4=0,Sneaking=0,detect_jump=1..},tag=lightning] add wep4
execute as @a[tag=wepclick,hasitem={item=ds:nyoi_staff,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,wep4=1..,Sneaking=0,detect_jump=1..},tag=lightning] at @s run playsound note.pling @a ~~~ 0.05 0.4
execute as @a[tag=wepclick,hasitem={item=ds:nyoi_staff,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,wep4=1..,Sneaking=0,detect_jump=1..},tag=lightning] at @s run tellraw @s {"rawtext":[{"text":"§cShocking Strike is on cooldown: §e"},{"score":{"name": "@p","objective": "wep4"}},{"text":"§c."}]}
scoreboard players set @a[tag=wepclick,hasitem={item=ds:nyoi_staff,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep4=0,Sneaking=0,detect_jump=1..},tag=lightning] move 51
scoreboard players set @a[tag=wepclick,hasitem={item=ds:nyoi_staff,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep4=0,Sneaking=0,detect_jump=1..},tag=lightning] wep4 400


tag @a[tag=wepclick,hasitem={item=ds:nyoi_staff,location=slot.weapon.mainhand}] remove wepclick
tag @a[tag=wepclick,hasitem={item=ds:nyoi_staff,location=slot.weapon.mainhand}] remove nyoistaffclick