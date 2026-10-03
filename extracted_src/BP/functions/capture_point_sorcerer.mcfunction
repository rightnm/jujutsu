

tag @s[tag=!domainunselect] add domainunselect
tag @s[tag=!Frames] add Frames
tp @s ~~~ ~~
execute if block ~~-1~ air run spreadplayers ~ ~ 0 1 @s
execute if block ~~-1~ air run tp @s ~~-1~
execute if block ~~-0.7~ air run tp @s ~~-0.7~
execute if block ~~-0.5~ air run tp @s ~~-0.5~
execute if block ~~-0.2~ air run tp @s ~~-0.2~
execute if block ~~-0.2~ air run tp @s ~~-0.2~
execute if block ~~-0.1~ air run tp @s ~~-0.1~

execute if block ~~~ water run fill ~25~-1~25~-25~~-25 stone [] replace
execute if block ~~-1~ water run fill ~25~-2~25~-25~-1~-25 stone [] replace

execute if entity @p[scores={detect_health=0},tag=capture_point,tag=!curse] run event entity @s ds:disappear
tag @p[scores={detect_health=0},tag=capture_point,tag=!curse] remove capture_point


tag @e[type=ds:haruta,r=16,tag=!rogue_sorcerer] add rogue_sorcerer
tag @e[type=ds:juzo,r=16,tag=!rogue_sorcerer] add rogue_sorcerer


execute unless entity @s[scores={Deleter=0..}] run camerashake add @a[r=100] 2 0.15
execute unless entity @s[scores={Deleter=0..}] run tellraw @a[r=70,tag=!curse] {"rawtext":[{"text":"§aCAPTURE THE POINT AND KEEP ALL ENEMIES OUT!"}]}
execute unless entity @s[scores={Deleter=0..}] run scoreboard players set @s Deleter 12000

execute unless entity @a[tag=capture_point,tag=!curse,r=16] unless entity @e[family=purecurse,r=16] unless entity @e[tag=rogue_sorcerer,r=16] run particle ds:capture_point1
execute if entity @a[tag=capture_point,tag=!curse,r=16] unless entity @e[family=purecurse,r=16] unless entity @e[tag=rogue_sorcerer,r=16] run particle ds:capture_point1b
execute if entity @e[family=purecurse,r=16] run particle ds:capture_point1c
execute unless entity @e[family=purecurse,r=16] if entity @e[tag=rogue_sorcerer,r=16] run particle ds:capture_point1c


execute if entity @a[tag=capture_point,tag=!curse,r=16] unless entity @e[family=purecurse,r=16] unless entity @e[tag=rogue_sorcerer,r=16] run scoreboard players add @s Mode 1
execute unless entity @a[tag=!curse,r=16,scores={grade=2..}] if entity @e[family=purecurse,r=16] run scoreboard players remove @s[scores={Mode=1..}] Mode 1
execute if entity @a[tag=!curse,r=16,scores={grade=2}] unless entity @a[tag=!curse,r=16,scores={grade=3..}] if entity @e[family=purecurse,r=16,family=!grade4] run scoreboard players remove @s[scores={Mode=1..}] Mode 1
execute if entity @a[tag=!curse,r=16,scores={grade=3}] unless entity @a[tag=!curse,r=16,scores={grade=4..}] if entity @e[family=purecurse,r=16,family=!grade4,family=!grade3] run scoreboard players remove @s[scores={Mode=1..}] Mode 1
execute if entity @a[tag=!curse,r=16,scores={grade=4}] unless entity @a[tag=!curse,r=16,scores={grade=5..}] if entity @e[family=purecurse,r=16,family=!grade4,family=!grade3,family=!grade2] run scoreboard players remove @s[scores={Mode=1..}] Mode 1
execute if entity @a[tag=!curse,r=16,scores={grade=5..}] if entity @e[family=purecurse,r=16,family=!grade4,family=!grade3,family=!grade2,family=!grade1] run scoreboard players remove @s[scores={Mode=1..}] Mode 1

execute unless entity @a[tag=!curse,r=16,scores={grade=2..}] unless entity @e[family=purecurse,r=16] if entity @e[tag=rogue_sorcerer,r=16] run scoreboard players remove @s[scores={Mode=1..}] Mode 1
execute if entity @a[tag=!curse,r=16,scores={grade=2}] unless entity @a[tag=!curse,r=16,scores={grade=3..}] unless entity @e[family=purecurse,r=16,family=!grade4] if entity @e[tag=rogue_sorcerer,r=16,family=!grade4] run scoreboard players remove @s[scores={Mode=1..}] Mode 1
execute if entity @a[tag=!curse,r=16,scores={grade=3}] unless entity @a[tag=!curse,r=16,scores={grade=4..}] unless entity @e[family=purecurse,r=16,family=!grade4,family=!grade3] if entity @e[tag=rogue_sorcerer,r=16,family=!grade4,family=!grade3] run scoreboard players remove @s[scores={Mode=1..}] Mode 1
execute if entity @a[tag=!curse,r=16,scores={grade=4}] unless entity @a[tag=!curse,r=16,scores={grade=5..}] unless entity @e[family=purecurse,r=16,family=!grade4,family=!grade3,family=!grade2] if entity @e[tag=rogue_sorcerer,r=16,family=!grade4,family=!grade3,family=!grade2] run scoreboard players remove @s[scores={Mode=1..}] Mode 1
execute if entity @a[tag=!curse,r=16,scores={grade=5..}] unless entity @e[family=purecurse,r=16,family=!grade4,family=!grade3,family=!grade2,family=!grade1] if entity @e[tag=rogue_sorcerer,r=16,family=!grade4,family=!grade3,family=!grade2,family=!grade1] run scoreboard players remove @s[scores={Mode=1..}] Mode 1


execute if entity @s[scores={Mode=100}] run tellraw @a[r=50] {"rawtext":[{"text":"§aCapture Point: 10%"}]}
execute if entity @s[scores={Mode=100}] run playsound random.click @a[r=50] 
execute if entity @s[scores={Mode=200}] run tellraw @a[r=50] {"rawtext":[{"text":"§aCapture Point: 20%"}]}
execute if entity @s[scores={Mode=200}] run playsound random.click @a[r=50] 
execute if entity @s[scores={Mode=300}] run tellraw @a[r=50] {"rawtext":[{"text":"§aCapture Point: 30%"}]}
execute if entity @s[scores={Mode=300}] run playsound random.click @a[r=50] 
execute if entity @s[scores={Mode=400}] run tellraw @a[r=50] {"rawtext":[{"text":"§aCapture Point: 40%"}]}
execute if entity @s[scores={Mode=400}] run playsound random.click @a[r=50] 
execute if entity @s[scores={Mode=500}] run tellraw @a[r=50] {"rawtext":[{"text":"§aCapture Point: 50%"}]}
execute if entity @s[scores={Mode=500}] run playsound random.click @a[r=50] 
execute if entity @s[scores={Mode=600}] run tellraw @a[r=50] {"rawtext":[{"text":"§aCapture Point: 60%"}]}
execute if entity @s[scores={Mode=600}] run playsound random.click @a[r=50] 
execute if entity @s[scores={Mode=700}] run tellraw @a[r=50] {"rawtext":[{"text":"§aCapture Point: 70%"}]}
execute if entity @s[scores={Mode=700}] run playsound random.click @a[r=50] 
execute if entity @s[scores={Mode=800}] run tellraw @a[r=50] {"rawtext":[{"text":"§aCapture Point: 80%"}]}
execute if entity @s[scores={Mode=800}] run playsound random.click @a[r=50] 
execute if entity @s[scores={Mode=900}] run tellraw @a[r=50] {"rawtext":[{"text":"§aCapture Point: 90%"}]}
execute if entity @s[scores={Mode=900}] run playsound random.click @a[r=50] 
execute if entity @s[scores={Mode=1000}] run tellraw @a[r=50] {"rawtext":[{"text":"§l§aCapture Point: 100%"}]}
execute if entity @s[scores={Mode=1000}] run playsound random.click @a[r=50] 


execute if entity @a[tag=capture_point,tag=!curse,r=16] run scoreboard players add @s scroll 1
execute if entity @s[scores={scroll=200..}] if entity @a[tag=capture_point,tag=!curse,r=16] run function capture_point_sorcerer_random_spawn
execute if entity @s[scores={scroll=180..}] if entity @a[tag=capture_point,tag=!curse,r=16,scores={grade=2}] unless entity @a[tag=capture_point,tag=!curse,r=16,scores={grade=3..}] run function capture_point_sorcerer_random_spawn
execute if entity @s[scores={scroll=150..}] if entity @a[tag=capture_point,tag=!curse,r=16,scores={grade=3}] unless entity @a[tag=capture_point,tag=!curse,r=16,scores={grade=4..}] run function capture_point_sorcerer_random_spawn
execute if entity @s[scores={scroll=120..}] if entity @a[tag=capture_point,tag=!curse,r=16,scores={grade=4}] unless entity @a[tag=capture_point,tag=!curse,r=16,scores={grade=5..}] run function capture_point_sorcerer_random_spawn
execute if entity @s[scores={scroll=99..}] if entity @a[tag=capture_point,tag=!curse,r=16,scores={grade=5..}] run function capture_point_sorcerer_random_spawn


execute if entity @s[scores={Mode=1000..}] as @a[tag=capture_point,r=50,tag=!curse] at @s run function missions/rewards/capture_point

execute as @s[scores={Deleter=0..1}] at @s run tellraw @a[r=50,tag=!curse] {"rawtext":[{"text":"§cYou failed to capture the point!"}]}
execute as @s[scores={Deleter=0..1}] at @s as @a[tag=capture_point,r=50,tag=!curse] at @s run function missions/cancel_missions
event entity @s[scores={Deleter=0..1}] ds:disappear
