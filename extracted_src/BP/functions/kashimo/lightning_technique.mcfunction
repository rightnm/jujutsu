
scoreboard objectives add amberbeast dummy
scoreboard players add @s amberbeast 0

execute as @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!lightning] at @s run function clear_skills
execute as @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!lightning] at @s run function remove_ct

tellraw @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=lightning] {"rawtext":[{"text":"§cYou are already using Thunder God / Mythical Beast Amber Technique you bozo!"}]}
camera @s[r=0.2,scores={Stun=0,Disabled=0},tag=!curse,tag=!lightning] fade time 0.15 0.33 0.15 color 0 0 0
camera @s[r=0.2,scores={Stun=0,Disabled=0},tag=!curse,tag=lightning] fade time 0.15 0.33 0.15 color 0 0 0
tellraw @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!lightning] {"rawtext":[{"text":"\n§b\n"},{"text":"§b║ §eYou are now using the:         §f§b- \n§b║§d Thunder God Technique        §f§b\n"},{"text":"§b"}]}
scoreboard players set @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!lightning,m=!c] forms 1
scoreboard players set @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!lightning,m=c] forms 6
give @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!lightning] ds:lightning1 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
give @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!lightning,m=c] ds:lightning2 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
give @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!lightning,m=c] ds:lightning3 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
give @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!lightning,m=c] ds:lightning4 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
give @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!lightning,m=c] ds:lightning7 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}

tellraw @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!lightning,m=c] {"rawtext":[{"text":"§aGranted all forms to Creative User."}]}
execute as @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!lightning] at @s run playsound mob.wither.hurt @a ~~~ 100000 0.25 100000
execute as @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!lightning] at @s run playsound random.levelup @a ~~~ 100000 0.85 100000
tag @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!lightning] add lightning

execute as @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=1..},tag=!curse,tag=lightning] at @s run function clear_skills


execute as @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=1..6,invest=10..},tag=!curse,tag=lightning,tag=!cantupgrade] at @s run scoreboard players add @s forms 1
execute as @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=1..6,invest=10..},tag=!curse,tag=lightning,tag=!cantupgrade] at @s run playsound random.orb @a ~~~ 100000 0.5 100000
execute as @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=1..6,invest=10..},tag=!curse,tag=lightning,tag=!cantupgrade] at @s run playsound mob.wither.hurt @a ~~~ 100000 2 100000

give @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=1..},tag=!curse,tag=lightning] ds:lightning1 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}

tellraw @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=2,invest=10..},tag=!curse,tag=lightning,tag=!cantupgrade] {"rawtext":[{"text":"§bThunder God / Mythical Beast Amber Technique 2nd Skillset: §gRanged Lightning §b!\n§e[Unlocked]"}]}
give @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=2..},tag=!curse,tag=lightning] ds:lightning2 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}

tellraw @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=3,invest=10..},tag=!curse,tag=lightning,tag=!cantupgrade] {"rawtext":[{"text":"§bThunder God / Mythical Beast Amber Technique 3rd Skill: §bSupport Lightning §b!\n§e[Unlocked]"}]}
give @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=3..},tag=!curse,tag=lightning] ds:lightning3 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}

tellraw @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=4,invest=10..},tag=!curse,tag=lightning,tag=!cantupgrade] {"rawtext":[{"text":"§bThunder God / Mythical Beast Amber Technique 4th Skill: §dMythical Beast Amber §b!\n§e[Unlocked]"}]}
give @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=4..},tag=!curse,tag=lightning] ds:lightning4 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}

tellraw @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=5,invest=10..},tag=!curse,tag=lightning,tag=!cantupgrade] {"rawtext":[{"text":"§bThunder God / Mythical Beast Amber Technique 5th Skill: §d§lDomain Expansion: Unforgiving Tempest §r§b!\n§e[Unlocked]"}]}
give @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=5..},tag=!curse,tag=lightning] ds:lightning7 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}

tellraw @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=5..,invest=10..},tag=!curse,tag=lightning]  {"rawtext":[{"text":"§cYou have already Mastered the Thunder God / Mythical Beast Amber Technique / Mythical Beast Amber Technique, you have nothing else to advance."}]}

scoreboard players remove @a[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=1..5,invest=10..},tag=!curse,tag=lightning,tag=!cantupgrade] invest 10
tag @s remove cantupgrade

scoreboard objectives add fever dummy
scoreboard players add @a[tag=lightning] fever 0
