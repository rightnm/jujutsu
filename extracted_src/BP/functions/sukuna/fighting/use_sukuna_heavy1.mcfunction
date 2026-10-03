

tag @s[tag=wepclick,hasitem={item=ds:sukuna_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,sukuna_wep1=0,detect_jump=0}] add wep1s
execute as @s[tag=wepclick,hasitem={item=ds:sukuna_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,sukuna_wep1=1..,Sneaking=0,detect_jump=0}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=wepclick,hasitem={item=ds:sukuna_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,sukuna_wep1=1..,Sneaking=0,detect_jump=0}] at @s run tellraw @s {"rawtext":[{"text":"§cDemonic Blows is on cooldown: §e"},{"score":{"name": "@p","objective": "sukuna_wep1"}},{"text":"§c."}]}
scoreboard players set @s[tag=wepclick,hasitem={item=ds:sukuna_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_wep1=0,Sneaking=0,detect_jump=0}] move 31
scoreboard players set @s[tag=wepclick,hasitem={item=ds:sukuna_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_wep1=0,Sneaking=0,detect_jump=0}] sukuna_wep1 120



tag @s[tag=wepclick,hasitem={item=ds:sukuna_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_wep2=0,Sneaking=0,detect_jump=1..,detect_sprint=1..}] add wep2s
execute as @s[tag=wepclick,hasitem={item=ds:sukuna_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_wep2=1..,Sneaking=0,detect_jump=1..,detect_sprint=1..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=wepclick,hasitem={item=ds:sukuna_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_wep2=1..,Sneaking=0,detect_jump=1..,detect_sprint=1..}] at @s run tellraw @s {"rawtext":[{"text":"§cHellish Descent is on cooldown: §e"},{"score":{"name": "@p","objective": "sukuna_wep2"}},{"text":"§c."}]}
scoreboard players set @s[tag=wepclick,hasitem={item=ds:sukuna_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_wep2=0,Sneaking=0,detect_jump=1..,detect_sprint=1..}] move 31
scoreboard players set @s[tag=wepclick,hasitem={item=ds:sukuna_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_wep2=0,Sneaking=0,detect_jump=1..,detect_sprint=1..}] sukuna_wep2 229


tag @s[tag=wepclick,hasitem={item=ds:sukuna_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,sukuna_wep3=0,detect_jump=0,detect_sprint=0}] add wep3s
execute as @s[tag=wepclick,hasitem={item=ds:sukuna_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_wep3=1..,Sneaking=1..,detect_jump=0,detect_sprint=0}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=wepclick,hasitem={item=ds:sukuna_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_wep3=1..,Sneaking=1..,detect_jump=0,detect_sprint=0}] at @s run tellraw @s {"rawtext":[{"text":"§cOpen Space is on cooldown: §e"},{"score":{"name": "@p","objective": "sukuna_wep3"}},{"text":"§c."}]}
scoreboard players set @s[tag=wepclick,hasitem={item=ds:sukuna_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_wep3=0,Sneaking=1..,detect_jump=0,detect_sprint=0}] move 56
scoreboard players set @s[tag=wepclick,hasitem={item=ds:sukuna_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_wep3=0,Sneaking=1..,detect_jump=0,detect_sprint=0}] sukuna_wep3 200



tag @s[tag=wepclick,hasitem={item=ds:sukuna_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_wep4=0,Sneaking=0,detect_jump=1..,detect_sprint=0}] add wep4s
execute as @s[tag=wepclick,hasitem={item=ds:sukuna_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_wep4=1..,Sneaking=0,detect_jump=1..,detect_sprint=0}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=wepclick,hasitem={item=ds:sukuna_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_wep4=1..,Sneaking=0,detect_jump=1..,detect_sprint=0}] at @s run tellraw @s {"rawtext":[{"text":"§cSeismic Step is on cooldown: §e"},{"score":{"name": "@p","objective": "sukuna_wep4"}},{"text":"§c."}]}
scoreboard players set @s[tag=wepclick,hasitem={item=ds:sukuna_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_wep4=0,Sneaking=0,detect_jump=1..,detect_sprint=0}] move 51
scoreboard players set @s[tag=wepclick,hasitem={item=ds:sukuna_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_wep4=0,Sneaking=0,detect_jump=1..,detect_sprint=0}] sukuna_wep4 229


tag @s[tag=wepclick,hasitem={item=ds:sukuna_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_wep6=0,Sneaking=1..,detect_jump=1..,detect_sprint=0}] add wep6s
execute as @s[tag=wepclick,hasitem={item=ds:sukuna_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_wep6=1..,Sneaking=1..,detect_jump=1..,detect_sprint=0}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=wepclick,hasitem={item=ds:sukuna_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_wep6=1..,Sneaking=1..,detect_jump=1..,detect_sprint=0}] at @s run tellraw @s {"rawtext":[{"text":"§cDemonic Blitz is on cooldown: §e"},{"score":{"name": "@p","objective": "sukuna_wep6"}},{"text":"§c."}]}
scoreboard players set @s[tag=wepclick,hasitem={item=ds:sukuna_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_wep6=0,Sneaking=1..,detect_jump=1..,detect_sprint=0}] move 21
scoreboard players set @s[tag=wepclick,hasitem={item=ds:sukuna_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_wep6=0,Sneaking=1..,detect_jump=1..,detect_sprint=0}] sukuna_wep6 1200
tag @s[tag=wepclick,hasitem={item=ds:sukuna_fists,location=slot.weapon.mainhand}] remove wepclick