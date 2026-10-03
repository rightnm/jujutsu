


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
execute if score auto_idle_kill Mode matches 1  unless entity @s[scores={dying=1..}]  unless entity @s[tag=has_sukuna] unless entity @s[type=ds:yuji_itadori] run function idle_transfig/get_transfigured

# grade checks
execute as @s if score @s grade matches 0..1 if entity @e[tag=transfiguring,scores={grade=3},c=1] unless entity @s[tag=has_sukuna] unless entity @s[type=ds:yuji_itadori] run function idle_transfig/get_transfigured
execute as @s if score @s grade matches 0..2 if entity @e[tag=transfiguring,scores={grade=4},c=1] unless entity @s[tag=has_sukuna] unless entity @s[type=ds:yuji_itadori] run function idle_transfig/get_transfigured
execute as @s if score @s grade matches 0..3 if entity @e[tag=transfiguring,scores={grade=5},c=1] unless entity @s[tag=has_sukuna] unless entity @s[type=ds:yuji_itadori] run function idle_transfig/get_transfigured

# insant death if low
execute as @s if entity @s[tag=low_health] unless entity @s[scores={dying=1..}]  unless entity @s[tag=has_sukuna] unless entity @s[type=ds:yuji_itadori] run function idle_transfig/get_transfigured

tag @s remove low_health

scoreboard players set @s[scores={dying=0}] antiheal 100
