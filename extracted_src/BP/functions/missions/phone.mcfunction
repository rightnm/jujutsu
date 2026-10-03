playanimation @s[tag=!calling] animation.phone.hold
execute as @s[tag=itemUse:ds:phone,tag=!calling,tag=!abilitying,scores={Stun=0}] at @s run scoreboard objectives add activemission dummy
execute as @s[tag=itemUse:ds:phone,tag=!calling,tag=!abilitying,scores={Stun=0}] at @s run scoreboard players add @s activemission 0
execute as @s[tag=itemUse:ds:phone,tag=!calling,tag=!abilitying,scores={Stun=0,missionsCD=0}] at @s run function missions/missions_assign
execute as @s[tag=itemUse:ds:phone,tag=!calling,tag=!abilitying,scores={Stun=0,missionsCD=1..,activemission=0}] at @s run tellraw @s {"rawtext":[{"text":"§cNo missions are currently available for you, please wait: §e"},{"score":{"name": "@p","objective": "missionsCD"}},{"text":"§c."}]}
execute as @s[tag=itemUse:ds:phone,tag=!calling,tag=!abilitying,scores={Stun=0,missionsCD=1..}] at @s run playsound note.pling @s ~~~ 1 0.25
execute as @s[tag=itemUse:ds:phone,tag=!calling,tag=!abilitying,scores={Stun=0,missionsCD=1..,activemission=1..}] at @s run tellraw @s {"rawtext":[{"text":"§o§4You already have an assigned mission, here is your mission:\n- If you want to cancel this mission, sneak and punch with your phone.§r\n\n"}]}
execute as @s[tag=itemUse:ds:phone,tag=!calling,tag=!abilitying,scores={Stun=0,missionsCD=1..,activemission=1..}] at @s run function missions/show_mission

execute as @s[scores={Sneaking=1..,punch=1,activemission=0}] at @s run tellraw @s {"rawtext":[{"text":"§cYou do not have any assigned missions."}]}
execute as @s[scores={Sneaking=1..,punch=1,activemission=1..}] at @s run function missions/cancel_missions


scoreboard players set @s[scores={calling=1..25}] Stun 5
scoreboard players set @a[tag=!calling,scores={calling=1..}] calling 0
scoreboard players add @s[tag=calling] calling 1
playanimation @s[scores={calling=1..48}] animation.phone.call
tag @a[scores={calling=60..}] remove calling

camera @s[scores={calling=24..25}] fade time 0.5 1 0.5 color 0 0 0
execute as @s[scores={calling=50,activemission=0}] at @s run function missions/random_mission
