scoreboard objectives add amt dummy
scoreboard players add @s[tag=arenaboss,r=200] amt 1
execute if entity @s[tag=arenaboss,r=200,scores={amt=5..}] run function bosses/file/boss/end_dialogue_full


execute unless entity @s[tag=arenaboss,r=200,scores={amt=5..}] unless entity @p[hasitem={item=ds:core_of_creation}] run tellraw @s[tag=arenaboss,r=300] {"rawtext":[{"text":"\n§r§f< §o§f§lThe Architect §r§f> §fOh right, you did do my chores for me I guess, even after causing this mess.\nFine... I guess I can give you a little something to make up for your efforts.\n\nHere take this object, It's imbued with several creations of mine from the past and present, it should be useful, it'll be random whichever one you get though."}]}

execute unless entity @s[tag=arenaboss,r=200,scores={amt=5..}] if entity @p[hasitem={item=ds:core_of_creation}] run tellraw @s[tag=arenaboss,r=300] {"rawtext":[{"text":"\n§r§f< §o§f§lThe Architect §r§f> §fYou greedy motherf-"}]}
give @s[r=200,tag=arenaboss] ds:core_of_creation
execute unless entity @s[tag=arenaboss,r=200,scores={amt=5..}] run playsound random.click