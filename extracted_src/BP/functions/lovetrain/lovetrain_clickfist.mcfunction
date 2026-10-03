
tag @s[tag=lovetrainclickfist,hasitem={item=ds:lovetrain_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,wep1=0,Sneaking=0,detect_jump=0,Energy=50..}] add wep1
execute as @s[tag=lovetrainclickfist,hasitem={item=ds:lovetrain_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,wep1=0,Sneaking=0,detect_jump=0,Energy=0..49}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=lovetrainclickfist,hasitem={item=ds:lovetrain_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,wep1=1..,Sneaking=0,detect_jump=0,Energy=50..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=lovetrainclickfist,hasitem={item=ds:lovetrain_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,wep1=1..,Sneaking=0,detect_jump=0,Energy=50..}] at @s run tellraw @s {"rawtext":[{"text":"§cLucky Fist is on cooldown: §e"},{"score":{"name": "@p","objective": "wep1"}},{"text":"§c."}]}
scoreboard players set @s[tag=lovetrainclickfist,hasitem={item=ds:lovetrain_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep1=0,Sneaking=0,detect_jump=0,Energy=50..}] move 31
scoreboard players set @s[tag=lovetrainclickfist,hasitem={item=ds:lovetrain_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep1=0,Sneaking=0,detect_jump=0,Energy=50..}] wep1 200
scoreboard players remove @s[tag=lovetrainclickfist,hasitem={item=ds:lovetrain_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=0,detect_jump=0,Energy=50..,move=31}] Energy 50

tag @s[tag=lovetrainclickfist,hasitem={item=ds:lovetrain_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep2=0,Sneaking=1..,detect_jump=0,Energy=80..}] add wep2
execute as @s[tag=lovetrainclickfist,hasitem={item=ds:lovetrain_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep2=0,Sneaking=1..,detect_jump=0,Energy=0..79}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[tag=lovetrainclickfist,hasitem={item=ds:lovetrain_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep2=1..,Sneaking=1..,detect_jump=0,Energy=80..}] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[tag=lovetrainclickfist,hasitem={item=ds:lovetrain_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep2=1..,Sneaking=1..,detect_jump=0,Energy=80..}] at @s run tellraw @s {"rawtext":[{"text":"§cFever Combo is on cooldown: §e"},{"score":{"name": "@p","objective": "wep2"}},{"text":"§c."}]}
scoreboard players set @s[tag=lovetrainclickfist,hasitem={item=ds:lovetrain_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep2=0,Sneaking=1..,detect_jump=0,Energy=80..}] move 111
scoreboard players set @s[tag=lovetrainclickfist,hasitem={item=ds:lovetrain_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep2=0,Sneaking=1..,detect_jump=0,Energy=80..}] wep2 600
scoreboard players remove @s[tag=lovetrainclickfist,hasitem={item=ds:lovetrain_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,detect_jump=0,Energy=80..,move=111}] Energy 80
tag @s remove lovetrainclickfist
