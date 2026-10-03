
tag @s[tag=boogie_woogieclick,hasitem={item=ds:boogie_woogie1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability1=0,Sneaking=0,detect_jump=0,Energy=20..}] add form1
execute as @s[tag=boogie_woogieclick,hasitem={item=ds:boogie_woogie1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability1=0,Energy=0..19,Sneaking=0,detect_jump=0}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=boogie_woogieclick,hasitem={item=ds:boogie_woogie1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability1=1..,Sneaking=0,detect_jump=0,Energy=20..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=boogie_woogieclick,hasitem={item=ds:boogie_woogie1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability1=1..,Sneaking=0,detect_jump=0,Energy=20..}] at @s run tellraw @s {"rawtext":[{"text":"§cSwap is on cooldown: §e"},{"score":{"name": "@p","objective": "ability1"}},{"text":"§c."}]}
scoreboard players set @s[tag=boogie_woogieclick,hasitem={item=ds:boogie_woogie1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability1=0,Sneaking=0,detect_jump=0,Energy=20..}] move 9
scoreboard players set @s[tag=boogie_woogieclick,hasitem={item=ds:boogie_woogie1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability1=0,Sneaking=0,detect_jump=0,Energy=20..}] ability1 20
scoreboard players remove @s[tag=boogie_woogieclick,hasitem={item=ds:boogie_woogie1,location=slot.weapon.mainhand},scores={Energy=20..,move=9,Sneaking=0,detect_jump=0}] Energy 20



tag @s[tag=boogie_woogieclick,hasitem={item=ds:boogie_woogie1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability2=0,Sneaking=1..,detect_jump=0,Energy=20..}] add form2
execute as @s[tag=boogie_woogieclick,hasitem={item=ds:boogie_woogie1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability2=0,Energy=0..19,Sneaking=1..,detect_jump=0}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=boogie_woogieclick,hasitem={item=ds:boogie_woogie1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability2=1..,Sneaking=1..,detect_jump=0,Energy=20..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=boogie_woogieclick,hasitem={item=ds:boogie_woogie1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability2=1..,Sneaking=1..,detect_jump=0,Energy=20..}] at @s run tellraw @s {"rawtext":[{"text":"§cSwap Others is on cooldown: §e"},{"score":{"name": "@p","objective": "ability2"}},{"text":"§c."}]}
scoreboard players set @s[tag=boogie_woogieclick,hasitem={item=ds:boogie_woogie1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability2=0,Sneaking=1..,detect_jump=0,Energy=20..}] move 9
scoreboard players set @s[tag=boogie_woogieclick,hasitem={item=ds:boogie_woogie1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability2=0,Sneaking=1..,detect_jump=0,Energy=20..}] ability2 30
scoreboard players remove @s[tag=boogie_woogieclick,hasitem={item=ds:boogie_woogie1,location=slot.weapon.mainhand},scores={Energy=20..,move=9,Sneaking=1..,detect_jump=0}] Energy 20


tag @s[tag=boogie_woogieclick,hasitem={item=ds:boogie_woogie1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability3=0,Sneaking=0,detect_jump=1..,Energy=20..}] add form3
execute as @s[tag=boogie_woogieclick,hasitem={item=ds:boogie_woogie1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability3=0,Energy=0..49,Sneaking=0,detect_jump=1..}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=boogie_woogieclick,hasitem={item=ds:boogie_woogie1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability3=1..,Sneaking=0,detect_jump=1..,Energy=50..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=boogie_woogieclick,hasitem={item=ds:boogie_woogie1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability3=1..,Sneaking=0,detect_jump=1..,Energy=50..}] at @s run tellraw @s {"rawtext":[{"text":"§cSwitch Kick is on cooldown: §e"},{"score":{"name": "@p","objective": "ability3"}},{"text":"§c."}]}
scoreboard players set @s[tag=boogie_woogieclick,hasitem={item=ds:boogie_woogie1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability3=0,Sneaking=0,detect_jump=1..,Energy=50..}] move 31
scoreboard players set @s[tag=boogie_woogieclick,hasitem={item=ds:boogie_woogie1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability3=0,Sneaking=0,detect_jump=1..,Energy=50..}] ability3 150
scoreboard players remove @s[tag=boogie_woogieclick,hasitem={item=ds:boogie_woogie1,location=slot.weapon.mainhand},scores={Energy=50..,move=31,Sneaking=0,detect_jump=1..}] Energy 50






tag @s[tag=boogie_woogieclick,hasitem={item=ds:boogie_woogie2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability12=0}] add ask_brother
execute as @s[tag=boogie_woogieclick,hasitem={item=ds:boogie_woogie2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability12=0}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=boogie_woogieclick,hasitem={item=ds:boogie_woogie2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability12=1..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=boogie_woogieclick,hasitem={item=ds:boogie_woogie2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability12=1..}] at @s run tellraw @s {"rawtext":[{"text":"§cPlease wait before doing this again: §e"},{"score":{"name": "@p","objective": "ability12"}},{"text":"§c."}]}
scoreboard players set @s[tag=boogie_woogieclick,hasitem={item=ds:boogie_woogie2,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability12=0}] move 101




tag @s[tag=boogie_woogieclick,hasitem={item=ds:boogie_woogie3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability5=0,Sneaking=0,detect_jump=0,Energy=20..}] add form5
execute as @s[tag=boogie_woogieclick,hasitem={item=ds:boogie_woogie3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability5=0,Energy=0..19,Sneaking=0,detect_jump=0}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=boogie_woogieclick,hasitem={item=ds:boogie_woogie3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability5=1..,Sneaking=0,detect_jump=0,Energy=20..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=boogie_woogieclick,hasitem={item=ds:boogie_woogie3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability5=1..,Sneaking=0,detect_jump=0,Energy=20..}] at @s run tellraw @s {"rawtext":[{"text":"§cBrother Swap is on cooldown: §e"},{"score":{"name": "@p","objective": "ability5"}},{"text":"§c."}]}
scoreboard players set @s[tag=boogie_woogieclick,hasitem={item=ds:boogie_woogie3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability5=0,Sneaking=0,detect_jump=0,Energy=20..}] move 9
scoreboard players set @s[tag=boogie_woogieclick,hasitem={item=ds:boogie_woogie3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability5=0,Sneaking=0,detect_jump=0,Energy=20..}] ability5 20
scoreboard players remove @s[tag=boogie_woogieclick,hasitem={item=ds:boogie_woogie3,location=slot.weapon.mainhand},scores={Energy=20..,move=9,Sneaking=0,detect_jump=0}] Energy 20


tag @s[tag=boogie_woogieclick,hasitem={item=ds:boogie_woogie3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability6=0,Sneaking=1..,detect_jump=0,Energy=200..}] add form6
execute as @s[tag=boogie_woogieclick,hasitem={item=ds:boogie_woogie3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability6=0,Energy=0..199,Sneaking=1..,detect_jump=0}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=boogie_woogieclick,hasitem={item=ds:boogie_woogie3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability6=1..,Sneaking=1..,detect_jump=0,Energy=200..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=boogie_woogieclick,hasitem={item=ds:boogie_woogie3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability6=1..,Sneaking=1..,detect_jump=0,Energy=200..}] at @s run tellraw @s {"rawtext":[{"text":"§cJujutsu Jumping is on cooldown: §e"},{"score":{"name": "@p","objective": "ability6"}},{"text":"§c."}]}
scoreboard players set @s[tag=boogie_woogieclick,hasitem={item=ds:boogie_woogie3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability6=0,Sneaking=1..,detect_jump=0,Energy=200..}] move 11
scoreboard players set @s[tag=boogie_woogieclick,hasitem={item=ds:boogie_woogie3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability6=0,Sneaking=1..,detect_jump=0,Energy=200..}] ability6 500
scoreboard players remove @s[tag=boogie_woogieclick,hasitem={item=ds:boogie_woogie3,location=slot.weapon.mainhand},scores={Energy=200..,move=11,Sneaking=1..,detect_jump=0}] Energy 200


tag @s[tag=boogie_woogieclick,hasitem={item=ds:boogie_woogie3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability7=0,Sneaking=0,detect_jump=1..,Energy=150..}] add form7
execute as @s[tag=boogie_woogieclick,hasitem={item=ds:boogie_woogie3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability7=0,Energy=0..149,Sneaking=0,detect_jump=1..}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=boogie_woogieclick,hasitem={item=ds:boogie_woogie3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability7=1..,Sneaking=0,detect_jump=1..,Energy=150..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=boogie_woogieclick,hasitem={item=ds:boogie_woogie3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability7=1..,Sneaking=0,detect_jump=1..,Energy=150..}] at @s run tellraw @s {"rawtext":[{"text":"§cStylistic Swap is on cooldown: §e"},{"score":{"name": "@p","objective": "ability7"}},{"text":"§c."}]}
scoreboard players set @s[tag=boogie_woogieclick,hasitem={item=ds:boogie_woogie3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability7=0,Sneaking=0,detect_jump=1..,Energy=150..}] move 31
scoreboard players set @s[tag=boogie_woogieclick,hasitem={item=ds:boogie_woogie3,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,ability7=0,Sneaking=0,detect_jump=1..,Energy=150..}] ability7 400
scoreboard players remove @s[tag=boogie_woogieclick,hasitem={item=ds:boogie_woogie3,location=slot.weapon.mainhand},scores={Energy=150..,move=31,Sneaking=0,detect_jump=1..}] Energy 150


tag @s remove boogie_woogieclick
