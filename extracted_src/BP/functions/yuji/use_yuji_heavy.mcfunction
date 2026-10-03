

tag @s[scores={Stun=0,Disabled2=0,Sneaking=0,wep1v2=0,detect_jump=0}] add wep1v2
execute as @s[scores={Stun=0,Disabled2=0,Sneaking=0,wep1v2=1..,Sneaking=0,detect_jump=0}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[scores={Stun=0,Disabled2=0,Sneaking=0,wep1v2=1..,Sneaking=0,detect_jump=0}] at @s run tellraw @s {"rawtext":[{"text":"§cFierce Strikes is on cooldown: §e"},{"score":{"name": "@p","objective": "wep1v2"}},{"text":"§c."}]}
scoreboard players set @s[scores={Stun=0,Disabled2=0,wep1v2=0,Sneaking=0,detect_jump=0}] move 36
scoreboard players set @s[scores={Stun=0,Disabled2=0,wep1v2=0,Sneaking=0,detect_jump=0}] wep1v2 200


tag @s[scores={Stun=0,Disabled2=0,wep2v2=0,Sneaking=1..,detect_jump=0}] add wep2v2
execute as @s[scores={Stun=0,Disabled2=0,wep2v2=1..,Sneaking=1..,detect_jump=0}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[scores={Stun=0,Disabled2=0,wep2v2=1..,Sneaking=1..,detect_jump=0}] at @s run tellraw @s {"rawtext":[{"text":"§cTwin Kicks is on cooldown: §e"},{"score":{"name": "@p","objective": "wep2v2"}},{"text":"§c."}]}
scoreboard players set @s[scores={Stun=0,Disabled2=0,wep2v2=0,Sneaking=1..,detect_jump=0}] move 43
scoreboard players set @s[scores={Stun=0,Disabled2=0,wep2v2=0,Sneaking=1..,detect_jump=0}] wep2v2 300


tag @s[scores={Stun=0,Disabled2=0,Sneaking=0,wep3v2=0,detect_jump=1..}] add wep3v2
execute as @s[scores={Stun=0,Disabled2=0,wep3v2=1..,Sneaking=0,detect_jump=1..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[scores={Stun=0,Disabled2=0,wep3v2=1..,Sneaking=0,detect_jump=1..}] at @s run tellraw @s {"rawtext":[{"text":"§cBrutal Quake is on cooldown: §e"},{"score":{"name": "@p","objective": "wep3v2"}},{"text":"§c."}]}
scoreboard players set @s[scores={Stun=0,Disabled2=0,wep3v2=0,Sneaking=0,detect_jump=1..}] move 87
scoreboard players set @s[scores={Stun=0,Disabled2=0,wep3v2=0,Sneaking=0,detect_jump=1..}] wep3v2 420


tag @s[scores={Stun=0,Disabled2=0,wep6v2=0,Sneaking=1..,detect_jump=1..}] add wep6v2
execute as @s[scores={Stun=0,Disabled2=0,wep6v2=1..,Sneaking=1..,detect_jump=1..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[scores={Stun=0,Disabled2=0,wep6v2=1..,Sneaking=1..,detect_jump=1..}] at @s run tellraw @s {"rawtext":[{"text":"§cFinal Flash is on cooldown: §e"},{"score":{"name": "@p","objective": "wep6v2"}},{"text":"§c."}]}
scoreboard players set @s[scores={Stun=0,Disabled2=0,wep6v2=0,Sneaking=1..,detect_jump=1..}] move 16
scoreboard players set @s[scores={Stun=0,Disabled2=0,wep6v2=0,Sneaking=1..,detect_jump=1..}] wep6v2 4200


