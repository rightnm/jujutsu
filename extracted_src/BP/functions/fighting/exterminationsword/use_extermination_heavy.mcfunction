
tag @a[tag=wepclick,hasitem={item=ds:extermination_sword,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,wep1=0,Sneaking=0,detect_jump=0}] add wep1
execute as @a[tag=wepclick,hasitem={item=ds:extermination_sword,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,wep1=1..,Sneaking=0,detect_jump=0}] at @s run playsound note.pling @a ~~~ 0.05 0.4
execute as @a[tag=wepclick,hasitem={item=ds:extermination_sword,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,wep1=1..,Sneaking=0,detect_jump=0}] at @s run tellraw @s {"rawtext":[{"text":"§cSevering Slice is on cooldown: §e"},{"score":{"name": "@p","objective": "wep1"}},{"text":"§c."}]}
scoreboard players set @a[tag=wepclick,hasitem={item=ds:extermination_sword,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep1=0,Sneaking=0,detect_jump=0}] move 21
scoreboard players set @a[tag=wepclick,hasitem={item=ds:extermination_sword,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep1=0,Sneaking=0,detect_jump=0}] wep1 220

tag @a[tag=wepclick,hasitem={item=ds:extermination_sword,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,wep2=0,Sneaking=0,detect_jump=1}] add wep2
execute as @a[tag=wepclick,hasitem={item=ds:extermination_sword,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,wep2=1..,Sneaking=0,detect_jump=1}] at @s run playsound note.pling @a ~~~ 0.05 0.4
execute as @a[tag=wepclick,hasitem={item=ds:extermination_sword,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,wep2=1..,Sneaking=0,detect_jump=1}] at @s run tellraw @s {"rawtext":[{"text":"§cPierce Flourish is on cooldown: §e"},{"score":{"name": "@p","objective": "wep2"}},{"text":"§c."}]}
scoreboard players set @a[tag=wepclick,hasitem={item=ds:extermination_sword,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep2=0,Sneaking=0,detect_jump=1}] move 61
scoreboard players set @a[tag=wepclick,hasitem={item=ds:extermination_sword,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep2=0,Sneaking=0,detect_jump=1}] wep2 250

tag @a[tag=wepclick,hasitem={item=ds:extermination_sword,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,wep3=0,Sneaking=1..,detect_jump=0}] add wep3
execute as @a[tag=wepclick,hasitem={item=ds:extermination_sword,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,wep3=1..,Sneaking=1..,detect_jump=0}] at @s run playsound note.pling @a ~~~ 0.05 0.4
execute as @a[tag=wepclick,hasitem={item=ds:extermination_sword,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,wep3=1..,Sneaking=1..,detect_jump=0}] at @s run tellraw @s {"rawtext":[{"text":"§cCurse Exorcism is on cooldown: §e"},{"score":{"name": "@p","objective": "wep3"}},{"text":"§c."}]}
scoreboard players set @a[tag=wepclick,hasitem={item=ds:extermination_sword,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep3=0,Sneaking=1..,detect_jump=0}] move 81
scoreboard players set @a[tag=wepclick,hasitem={item=ds:extermination_sword,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep3=0,Sneaking=1..,detect_jump=0}] wep3 900

tag @a[tag=wepclick,hasitem={item=ds:extermination_sword,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,wep4=0,Sneaking=1..,detect_jump=1},tag=heavenlyrestriction] add wep4
execute as @a[tag=wepclick,hasitem={item=ds:extermination_sword,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,wep4=1..,Sneaking=1..,detect_jump=1},tag=heavenlyrestriction] at @s run playsound note.pling @a ~~~ 0.05 0.4
execute as @a[tag=wepclick,hasitem={item=ds:extermination_sword,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,wep4=1..,Sneaking=1..,detect_jump=1},tag=heavenlyrestriction] at @s run tellraw @s {"rawtext":[{"text":"§cExtermination Combo is on cooldown: §e"},{"score":{"name": "@p","objective": "wep4"}},{"text":"§c."}]}
scoreboard players set @a[tag=wepclick,hasitem={item=ds:extermination_sword,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep4=0,Sneaking=1..,detect_jump=1},tag=heavenlyrestriction] move 61
scoreboard players set @a[tag=wepclick,hasitem={item=ds:extermination_sword,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep4=0,Sneaking=1..,detect_jump=1},tag=heavenlyrestriction] wep4 300
tag @a[tag=wepclick,hasitem={item=ds:extermination_sword,location=slot.weapon.mainhand}] remove wepclick
