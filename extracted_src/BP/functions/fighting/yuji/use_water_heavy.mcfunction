

tag @s[tag=itemUse:ds:water_fists,hasitem={item=ds:water_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,wep1=0,detect_jump=0}] add wep1
execute as @s[tag=itemUse:ds:water_fists,hasitem={item=ds:water_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,wep1=1..,Sneaking=0,detect_jump=0}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=itemUse:ds:water_fists,hasitem={item=ds:water_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,wep1=1..,Sneaking=0,detect_jump=0}] at @s run tellraw @s {"rawtext":[{"text":"§cRushing Current is on cooldown: §e"},{"score":{"name": "@p","objective": "wep1"}},{"text":"§c."}]}
scoreboard players set @s[tag=itemUse:ds:water_fists,hasitem={item=ds:water_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep1=0,Sneaking=0,detect_jump=0}] move 26
scoreboard players set @s[tag=itemUse:ds:water_fists,hasitem={item=ds:water_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep1=0,Sneaking=0,detect_jump=0}] wep1 80


tag @s[tag=itemUse:ds:water_fists,hasitem={item=ds:water_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,wep2=0,detect_jump=0}] add wep2
execute as @s[tag=itemUse:ds:water_fists,hasitem={item=ds:water_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,wep2=1..,Sneaking=1..,detect_jump=0}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=itemUse:ds:water_fists,hasitem={item=ds:water_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,wep2=1..,Sneaking=1..,detect_jump=0}] at @s run tellraw @s {"rawtext":[{"text":"§cFlowing Stream is on cooldown: §e"},{"score":{"name": "@p","objective": "wep2"}},{"text":"§c."}]}
scoreboard players set @s[tag=itemUse:ds:water_fists,hasitem={item=ds:water_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep2=0,Sneaking=1..,detect_jump=0}] move 36
scoreboard players set @s[tag=itemUse:ds:water_fists,hasitem={item=ds:water_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep2=0,Sneaking=1..,detect_jump=0}] wep2 140


tag @s[tag=itemUse:ds:water_fists,hasitem={item=ds:water_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,wep3=0,detect_jump=1}] add wep3
execute as @s[tag=itemUse:ds:water_fists,hasitem={item=ds:water_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep3=1..,Sneaking=0,detect_jump=1}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=itemUse:ds:water_fists,hasitem={item=ds:water_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep3=1..,Sneaking=0,detect_jump=1}] at @s run tellraw @s {"rawtext":[{"text":"§cCrushing Basin is on cooldown: §e"},{"score":{"name": "@p","objective": "wep3"}},{"text":"§c."}]}
scoreboard players set @s[tag=itemUse:ds:water_fists,hasitem={item=ds:water_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep3=0,Sneaking=0,detect_jump=1}] move 41
scoreboard players set @s[tag=itemUse:ds:water_fists,hasitem={item=ds:water_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep3=0,Sneaking=0,detect_jump=1}] wep3 100



tag @s[tag=itemUse:ds:water_fists,hasitem={item=ds:water_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,wep4=0,detect_jump=1}] add wep4
execute as @s[tag=itemUse:ds:water_fists,hasitem={item=ds:water_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep4=1..,Sneaking=1..,detect_jump=1}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=itemUse:ds:water_fists,hasitem={item=ds:water_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep4=1..,Sneaking=1..,detect_jump=1}] at @s run tellraw @s {"rawtext":[{"text":"§cTyphoon Fang Strike is on cooldown: §e"},{"score":{"name": "@p","objective": "wep4"}},{"text":"§c."}]}
scoreboard players set @s[tag=itemUse:ds:water_fists,hasitem={item=ds:water_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep4=0,Sneaking=1..,detect_jump=1}] move 56
scoreboard players set @s[tag=itemUse:ds:water_fists,hasitem={item=ds:water_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep4=0,Sneaking=1..,detect_jump=1}] wep4 600


tag @s[hasitem={item=ds:water_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,wep3=0,detect_jump=1..,punch=1}] add wep6
execute as @s[hasitem={item=ds:water_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep3=1..,Sneaking=0,detect_jump=1..,punch=1}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[hasitem={item=ds:water_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep3=1..,Sneaking=0,detect_jump=1..,punch=1}] at @s run tellraw @s {"rawtext":[{"text":"§cPreys Peril is on cooldown: §e"},{"score":{"name": "@p","objective": "wep5"}},{"text":"§c."}]}
scoreboard players set @s[hasitem={item=ds:water_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep3=0,Sneaking=0,detect_jump=1..,punch=1}] move 71
scoreboard players set @s[hasitem={item=ds:water_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep3=0,Sneaking=0,detect_jump=1..,punch=1}] wep3 200


tag @s[hasitem={item=ds:water_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,wep5=0,detect_jump=0,punch=1}] add wep5
execute as @s[hasitem={item=ds:water_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep5=1..,Sneaking=1..,detect_jump=0,punch=1}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[hasitem={item=ds:water_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep5=1..,Sneaking=1..,detect_jump=0,punch=1}] at @s run tellraw @s {"rawtext":[{"text":"§bFinal Strike§c is on cooldown: §e"},{"score":{"name": "@p","objective": "wep5"}},{"text":"§c."}]}
scoreboard players set @s[hasitem={item=ds:water_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep5=0,Sneaking=1..,detect_jump=0,punch=1}] move 26
scoreboard players set @s[hasitem={item=ds:water_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep5=0,Sneaking=1..,detect_jump=0,punch=1}] wep5 2400