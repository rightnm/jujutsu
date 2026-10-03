execute if entity @a[tag=arenaboss,r=200,scores={amt=4..}] run tellraw @a[tag=arenaboss,r=300] {"rawtext":[{"text":"§r§f< §o§f§lThe Architect §r§f> §fWell uh... See you later!"}]}
execute if entity @a[tag=arenaboss,r=200,scores={amt=4..}] run playsound random.click
scoreboard objectives add completedbossfight dummy
scoreboard players add @a[r=200] completedbossfight 1
camera @a[r=200] fade time 0 2 1 color 255 255 255
execute as @a at @s run function rat2