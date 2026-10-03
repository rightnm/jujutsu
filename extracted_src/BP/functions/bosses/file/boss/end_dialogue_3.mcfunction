scoreboard objectives add amt dummy
scoreboard players add @s[tag=arenaboss,r=200] amt 1
execute if entity @s[tag=arenaboss,r=200,scores={amt=5..}] run function bosses/file/boss/end_dialogue_full


execute unless entity @s[tag=arenaboss,r=200,scores={amt=5..}] run tellraw @s[tag=arenaboss,r=300] {"rawtext":[{"text":"\n§r§f< §o§f§lThe Architect §r§f> §fMy console? I have one in every reality where my authority reaches to control the flow of things, they're usually hidden pretty well but sometimes they can be unstable and allow things to leak into their reality.\nSometimes entities in that reality mess with it, taking components, worshipping it, creating artifacts and a ton of other nonsense allowing situations like this to happen.\nTrust me you're not the first one I've talked to, this has happened several times before, it's kind of a nuisance at this point, however this time things were different as you somehow managed to break him out."}]}
execute unless entity @s[tag=arenaboss,r=200,scores={amt=5..}] run playsound random.click