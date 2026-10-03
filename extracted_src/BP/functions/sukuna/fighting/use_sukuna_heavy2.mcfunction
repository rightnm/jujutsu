

tag @s[tag=wepclick,hasitem={item=ds:cleave_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,sukuna_wep1=0,detect_jump=0}] add wep1s2
execute as @s[tag=wepclick,hasitem={item=ds:cleave_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,sukuna_wep1=1..,Sneaking=0,detect_jump=0}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=wepclick,hasitem={item=ds:cleave_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,sukuna_wep1=1..,Sneaking=0,detect_jump=0}] at @s run tellraw @s {"rawtext":[{"text":"§cCarve is on cooldown: §e"},{"score":{"name": "@p","objective": "sukuna_wep1"}},{"text":"§c."}]}
scoreboard players set @s[tag=wepclick,hasitem={item=ds:cleave_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_wep1=0,Sneaking=0,detect_jump=0}] move 19
scoreboard players set @s[tag=wepclick,hasitem={item=ds:cleave_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_wep1=0,Sneaking=0,detect_jump=0}] sukuna_wep1 120



tag @s[tag=wepclick,hasitem={item=ds:cleave_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_wep2=0,Sneaking=1..,detect_jump=0}] add wep2s2
execute as @s[tag=wepclick,hasitem={item=ds:cleave_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_wep2=1..,Sneaking=1..,detect_jump=0}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=wepclick,hasitem={item=ds:cleave_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_wep2=1..,Sneaking=1..,detect_jump=0}] at @s run tellraw @s {"rawtext":[{"text":"§cRushing Cleave is on cooldown: §e"},{"score":{"name": "@p","objective": "sukuna_wep2"}},{"text":"§c."}]}
scoreboard players set @s[tag=wepclick,hasitem={item=ds:cleave_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_wep2=0,Sneaking=1..,detect_jump=0}] move 26
scoreboard players set @s[tag=wepclick,hasitem={item=ds:cleave_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_wep2=0,Sneaking=1..,detect_jump=0}] sukuna_wep2 225


tag @s[tag=wepclick,hasitem={item=ds:cleave_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,sukuna_wep3=0,detect_jump=1..}] add wep3s2
execute as @s[tag=wepclick,hasitem={item=ds:cleave_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_wep3=1..,Sneaking=0,detect_jump=1..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=wepclick,hasitem={item=ds:cleave_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_wep3=1..,Sneaking=0,detect_jump=1..}] at @s run tellraw @s {"rawtext":[{"text":"§cDual Slice is on cooldown: §e"},{"score":{"name": "@p","objective": "sukuna_wep3"}},{"text":"§c."}]}
scoreboard players set @s[tag=wepclick,hasitem={item=ds:cleave_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_wep3=0,Sneaking=0,detect_jump=1..}] move 26
scoreboard players set @s[tag=wepclick,hasitem={item=ds:cleave_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_wep3=0,Sneaking=0,detect_jump=1..}] sukuna_wep3 200


tag @s[tag=wepclick,hasitem={item=ds:cleave_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_wep5=0,Sneaking=1..,detect_jump=1..}] add wep5s2
execute as @s[tag=wepclick,hasitem={item=ds:cleave_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_wep5=1..,Sneaking=1..,detect_jump=1..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=wepclick,hasitem={item=ds:cleave_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_wep5=1..,Sneaking=1..,detect_jump=1..}] at @s run tellraw @s {"rawtext":[{"text":"§cCleaving Combo is on cooldown: §e"},{"score":{"name": "@p","objective": "sukuna_wep5"}},{"text":"§c."}]}
scoreboard players set @s[tag=wepclick,hasitem={item=ds:cleave_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_wep5=0,Sneaking=1..,detect_jump=1..}] move 76
scoreboard players set @s[tag=wepclick,hasitem={item=ds:cleave_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,sukuna_wep5=0,Sneaking=1..,detect_jump=1..}] sukuna_wep5 800
tag @s[tag=wepclick,hasitem={item=ds:cleave_fists,location=slot.weapon.mainhand}] remove wepclick