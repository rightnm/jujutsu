scoreboard objectives add simpledomainown dummy
scoreboard players add @a simpledomainown 0
tellraw @s[tag=!sorcerer,tag=!heavenlyrestriction] {"rawtext":[{"text":"§f< §gKusakabe §f> Yeah right, you're not even affiliated with us, why would I teach you anything when you haven't even passed the Sorcerer Exam?"}]}

tellraw @s[tag=sorcerer,scores={simpledomainown=1..},tag=!heavenlyrestriction] {"rawtext":[{"text":"§f< §gKusakabe §f> Uh, I've already taught you?"}]}


execute as @s[hasitem={item=ds:cursed_object_v4},tag=simpledomainquest1,tag=!heavenlyrestriction] at @s run function simple_domain_learn


tellraw @s[tag=sorcerer,scores={simpledomainown=0},tag=!heavenlyrestriction] {"rawtext":[{"text":"§f< §gKusakabe §f> If you want me to teach you my §bSimple Domain §ftechnique I'm afraid it's not gona come cheap, go out and bring me a §dSuperior Cursed Remnant§r§f, and I shall teach you the ways of §bSimple Domain§f."}]}
tag @s[tag=sorcerer,scores={simpledomainown=0},tag=!heavenlyrestriction] add simpledomainquest1