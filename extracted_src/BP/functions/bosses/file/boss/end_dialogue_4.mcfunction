scoreboard objectives add amt dummy
scoreboard players add @s[tag=arenaboss,r=200] amt 1
execute if entity @s[tag=arenaboss,r=200,scores={amt=5..}] run function bosses/file/boss/end_dialogue_full


execute unless entity @s[tag=arenaboss,r=200,scores={amt=5..}] run tellraw @s[tag=arenaboss,r=300] {"rawtext":[{"text":"\n§r§f< §o§f§lThe Architect §r§f> §fYou want to know about me? What's so important about me? I'm not even here, I'm sitting at home being lazy right now, you're just talking to another projection of me I put into this world. But other than that I'm the guy who created this all... ok well I don't create the realities but I'm responsible for the modifications added to all these realities or 'worlds'. In other words, Im similar to you, a player. You have the ability to do the same things I do if you try hard enough."}]}
execute unless entity @s[tag=arenaboss,r=200,scores={amt=5..}] run playsound random.click