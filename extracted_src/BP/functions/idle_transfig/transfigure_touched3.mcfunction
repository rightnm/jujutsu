execute as @s[tag=has_sukuna] at @s run function sukuna_warning_cutscene
execute as @s[type=ds:yuji_itadori] at @s run function sukuna_warning_cutscene


# mark low hp
execute if score @s detect_health matches ..40 run tag @s add low_health
particle ds:heavy_impact2 ~~1~

# grade setting
scoreboard players add @s grade 0
scoreboard players set @s[type=!player,family=grade4] grade 1
scoreboard players set @s[type=!player,family=grade3] grade 2
scoreboard players set @s[type=!player,family=grade2] grade 3
scoreboard players set @s[type=!player,family=grade1] grade 4
scoreboard players set @s[type=!player,family=special_grade] grade 5
scoreboard players set @s[scores={grade=0}] grade 1

# auto kill setting
execute if score auto_idle_kill Mode matches 1  unless entity @s[scores={dying=1..}]  unless entity @s[tag=has_sukuna] unless entity @s[type=ds:yuji_itadori] run function idle_transfig/get_transfigured_detonated2

# grade checks
execute as @s if score @s grade matches 0..1 if entity @e[tag=transfiguring,scores={grade=3},c=1] unless entity @s[tag=has_sukuna] unless entity @s[type=ds:yuji_itadori] run function idle_transfig/get_transfigured_detonated2
execute as @s if score @s grade matches 0..2 if entity @e[tag=transfiguring,scores={grade=4},c=1] unless entity @s[tag=has_sukuna] unless entity @s[type=ds:yuji_itadori] run function idle_transfig/get_transfigured_detonated2
execute as @s if score @s grade matches 0..3 if entity @e[tag=transfiguring,scores={grade=5},c=1] unless entity @s[tag=has_sukuna] unless entity @s[type=ds:yuji_itadori] run function idle_transfig/get_transfigured_detonated2

# insant death if low
execute as @s if entity @s[tag=low_health] unless entity @s[scores={dying=1..}]  unless entity @s[tag=has_sukuna] unless entity @s[type=ds:yuji_itadori] run function idle_transfig/get_transfigured_detonated2

tag @s remove low_health

scoreboard players set @s[scores={dying=0}] antiheal 100
damage @s[scores={detect_health=16..}] 15
scoreboard players set @s Stun 40

particle ds:heavy_impact1 ~~1.4~
playsound mob.clap @a[r=50] ~~1.4~ 9999 1.33 9999
camerashake add @a[r=20] 2 0.25



execute as @e[scores={move=15..45},c=1,tag=idle_transfig] at @s run scriptevent ds:knockback 3
playanimation @e[scores={move=15..45},c=1,tag=idle_transfig] animation.mahito.ab3b
scoreboard players set @e[scores={move=15..45},c=1,tag=idle_transfig] move 1001


execute as @e[scores={move=987..1000},c=1,tag=idle_transfig] at @s run scriptevent ds:knockback 3
playanimation @e[scores={move=987..1000},c=1,tag=idle_transfig] animation.mahito.ab3b
scoreboard players set @e[scores={move=987..1000},c=1,tag=idle_transfig] move 2001