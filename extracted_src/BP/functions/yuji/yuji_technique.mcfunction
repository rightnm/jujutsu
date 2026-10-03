execute unless entity @e[scores={blackflash_amount=0..},c=1] run scoreboard objectives add blackflash_amount dummy
execute unless entity @e[scores={blackflashlearn=0..},c=1] run scoreboard objectives add blackflashlearn dummy
execute unless entity @s[scores={blackflash_amount=0..}] run scoreboard players add @s blackflash_amount 0
execute unless entity @s[scores={blackflashlearn=1..}] run scoreboard players set @s blackflashlearn 1 


execute as @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!yuji_awakened] at @s run function clear_skills
execute as @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!yuji_awakened] at @s run function remove_ct

tellraw @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=yuji_awakened] {"rawtext":[{"text":"§cYou are already using Soul Shrine Technique you bozo!"}]}
camera @s[r=0.2,scores={Stun=0,Disabled=0},tag=!curse,tag=yuji_awakened] fade time 0.15 0.33 0.15 color 0 0 0
camera @s[r=0.2,scores={Stun=0,Disabled=0},tag=!curse,tag=!yuji_awakened] fade time 0.15 0.33 0.15 color 0 0 0
tellraw @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!yuji_awakened] {"rawtext":[{"text":"§cYou are now using the: §5Soul Shrine §cCursed Technique"}]}


scoreboard players set @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!yuji_awakened,m=!c] forms 0
scoreboard players set @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!yuji_awakened,m=c] forms 3

give @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!yuji_awakened,m=c] ds:black_fists 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
give @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!yuji_awakened,m=c] ds:soul_shrine1 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
give @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!yuji_awakened,m=c] ds:soul_shrine2 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
give @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!yuji_awakened,m=c] ds:blood_manipulation 1 0



tellraw @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!yuji_awakened,m=c] {"rawtext":[{"text":"§aGranted all forms to Creative User."}]}
execute as @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!yuji_awakened] at @s run playsound mob.wither.hurt @a ~~~ 100000 0.25 100000
execute as @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!yuji_awakened] at @s run playsound random.levelup @a ~~~ 100000 0.85 100000
tag @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!curse,tag=!yuji_awakened] add yuji_awakened

execute as @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=1..},tag=!curse,tag=yuji_awakened] at @s run function clear_skills

scoreboard players set @s[scores={blackflash_amount=-9999..-1}] blackflash_amount 0
tellraw @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=0..2,blackflash_amount=0..9},tag=!curse,tag=yuji_awakened]  {"rawtext":[{"text":"§cYou need to land 10 Black Flashes on Special Grade enemies to progress this."}]}
execute as @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=0..2,blackflash_amount=10..},tag=!curse,tag=yuji_awakened,tag=!cantupgrade] at @s run playsound mob.wither.hurt @a[r=100] ~~~ 99999 2 99999
execute as @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=0..3,blackflash_amount=10..},tag=!curse,tag=yuji_awakened,tag=!cantupgrade] at @s run scoreboard players add @s forms 1
execute as @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=0..3,blackflash_amount=10..},tag=!curse,tag=yuji_awakened,tag=!cantupgrade] at @s run scoreboard players remove @s blackflash_amount 10

give @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=1..},tag=!curse,tag=yuji_awakened] ds:black_fists 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
give @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=2..},tag=!curse,tag=yuji_awakened] ds:soul_shrine1 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
give @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=3..},tag=!curse,tag=yuji_awakened] ds:soul_shrine2 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
give @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=3..},tag=!curse,tag=yuji_awakened] ds:blood_manipulation
tag @s[tag=cantupgrade] remove cantupgrade
