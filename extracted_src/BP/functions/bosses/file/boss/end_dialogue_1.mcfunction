scoreboard objectives add amt dummy
scoreboard players add @s[tag=arenaboss,r=200] amt 1
execute if entity @s[tag=arenaboss,r=200,scores={amt=5..}] run function bosses/file/boss/end_dialogue_full


execute unless entity @s[tag=arenaboss,r=200,scores={amt=5..}] run tellraw @s[tag=arenaboss,r=300] {"rawtext":[{"text":"\n§r§f< §o§f§lThe Architect §r§f> §fThis place? Oh well, when SOMEONE decided to mess with my console, you seemed to have overloaded it with fragments of my creations from past times, basically sucking you and a bunch of random stuff info this pocket dimension.\nHowever when the console tried to divert excess energy to my home reality, it accidently brought in creations from there too, which is how I'm assuming you managed to find my Containment System and release... him.\n\nAs for the reason why your abilities do not work here, well thats most likely because it's been corrupted, the only powers that work here are powers that were brought through the rifts, which is why you obtained random abilities that you used to your advantage to take him down."}]}
execute unless entity @s[tag=arenaboss,r=200,scores={amt=5..}] run playsound random.click