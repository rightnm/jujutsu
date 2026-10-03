
scoreboard players random @s chance 1 11

tellraw @s[scores={chance=1}] {"rawtext":[{"text":"§r§f< §cRyomen Sukuna §r§f> §oShut up, I'm trying to sleep here."}]}
execute as @s[scores={chance=2..4}] at @s run playsound music.brat2 @s 
tellraw @s[scores={chance=2..4}] {"rawtext":[{"text":"§r§f< §cRyomen Sukuna §r§f> §oYou're such an annoying brat"}]}
execute as @s[scores={chance=5..6}] at @s run playsound music.brat @s ~~~ 1 0.98
tellraw @s[scores={chance=5..6}] {"rawtext":[{"text":"§r§f< §cRyomen Sukuna §r§f> §oShut up, brat."}]}
tellraw @s[scores={chance=7}] {"rawtext":[{"text":"§r§f< §cRyomen Sukuna §r§f> §oI'm not helping you."}]}
tellraw @s[scores={chance=8}] {"rawtext":[{"text":"§r§f< §cRyomen Sukuna §r§f> §oYou're so pathetic."}]}
tellraw @s[scores={chance=9}] {"rawtext":[{"text":"§r§f< §cRyomen Sukuna §r§f> §oWeak."}]}
tellraw @s[scores={chance=10}] {"rawtext":[{"text":"§r§f< §cRyomen Sukuna §r§f> §oI don't care."}]}
execute as @s[scores={chance=11}] at @s run playsound music.knowyourplace @s ~~~ 1 0.98
tellraw @s[scores={chance=11}] {"rawtext":[{"text":"§r§f< §cRyomen Sukuna §r§f> §oKnow your place, fool."}]}

tellraw @s {"rawtext":[{"text":"§4Sukuna is on cooldown: §e"},{"score":{"name": "@p","objective": "sukunaCD"}},{"text":" §4Ticks left."}]}


damage @s 5 override
effect @s blindness 5 1 true
scoreboard players add @s Stun 70
scoreboard players add @s Hit 20
particle ds:heavy_impact3 ~~1~
particle ds:heavy_impact2 ~~1~
playsound mob.sword @a[r=50] ~~~ 9999 2 9999
playsound mob.slice2 @a[r=50] ~~~ 9999 1.5 9999

scoreboard players set @s chance 0




