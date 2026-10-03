scoreboard players set @s[scores={scroll=!0}] scroll 0
scoreboard players set @s[scores={chance=!0}] chance 0
execute unless entity @e[family=projectile,tag=DomainExpansion,r=50,name=!ChimeraGarden1] unless entity @e[family=damage,family=projectile,family=boss,scores={EnergyCap=0..,Energy=0..,energystat=0..},tag=DomainExpansion,r=200] run scoreboard players random @s chance 1 100
execute as @s[scores={chance=1..100}] at @s if entity @a[tag=capture_point,tag=curse,scores={grade=2..4},r=16] unless entity @a[tag=capture_point,tag=curse,scores={grade=5..},r=16] run scoreboard players operation @s chance += @e[tag=capture_point,tag=curse,scores={grade=2..4},r=16,c=1] grade
execute as @s[scores={chance=1..100}] at @s if entity @a[tag=capture_point,tag=curse,scores={grade=2..4},r=16] unless entity @a[tag=capture_point,tag=curse,scores={grade=5..},r=16] run scoreboard players operation @s chance += @e[tag=capture_point,tag=curse,scores={grade=2..4},r=16,c=1] grade
execute as @s[scores={chance=1..100}] at @s if entity @a[tag=capture_point,tag=curse,scores={grade=2..4},r=16] unless entity @a[tag=capture_point,tag=curse,scores={grade=5..},r=16] run scoreboard players operation @s chance += @e[tag=capture_point,tag=curse,scores={grade=2..4},r=16,c=1] grade
execute as @s[scores={chance=1..100}] at @s if entity @a[tag=capture_point,tag=curse,scores={grade=2..4},r=16] unless entity @a[tag=capture_point,tag=curse,scores={grade=5..},r=16] run scoreboard players operation @s chance += @e[tag=capture_point,tag=curse,scores={grade=2..4},r=16,c=1] grade
execute as @s[scores={chance=1..100}] at @s if entity @a[tag=capture_point,tag=curse,scores={grade=5..},r=16] run scoreboard players add @s chance 20
scoreboard players set @s[scores={chance=101..}] chance 100
execute as @s[scores={chance=66..100}] at @s unless entity @a[tag=capture_point,tag=curse,scores={grade=2..},r=16] run scoreboard players random @s chance 1 65
execute as @s[scores={chance=91..100}] at @s unless entity @a[tag=capture_point,tag=curse,scores={grade=3..},r=16] run scoreboard players random @s chance 1 90

scoreboard players random @s[scores={chance=1..65}] chance 101 105
scoreboard players random @s[scores={chance=66..90}] chance 201 205
scoreboard players random @s[scores={chance=91..100}] chance 301 304



execute as @s[scores={chance=101}] at @s positioned ~~12~ run summon ds:sorcerer_male
execute as @s[scores={chance=102}] at @s positioned ~~12~ run summon ds:sorcerer_female
execute as @s[scores={chance=103}] at @s positioned ~~12~ run summon ds:sorcerer_male_grade2
execute as @s[scores={chance=104}] at @s positioned ~~12~ run summon ds:sorcerer_female_grade2



execute as @s[scores={chance=201}] at @s positioned ~~12~ run summon ds:miwa
execute as @s[scores={chance=202}] at @s positioned ~~12~ run summon ds:sorcerer_male_grade1
execute as @s[scores={chance=203}] at @s positioned ~~12~ run summon ds:sorcerer_female_grade1
execute as @s[scores={chance=204}] at @s positioned ~~12~ run summon ds:inumaki



execute as @s[scores={chance=301}] at @s unless entity @e[type=ds:cursed_veil,r=100] positioned ~~12~ run summon ds:cursed_veil
execute as @s[scores={chance=301}] at @s positioned ~~12~ run tag @e[type=ds:cursed_veil,tag=!capture_veil,r=0.15,c=1] add capture_veil
execute as @s[scores={chance=301}] at @s positioned ~~12~ run spreadplayers ~~ 20 30 @e[type=ds:cursed_veil,tag=capture_veil,r=0.15,c=1]
execute as @s[scores={chance=302}] at @s positioned ~~12~ run summon ds:yuji_itadori
execute as @s[scores={chance=303}] at @s positioned ~~12~ run summon ds:kusakabe





execute positioned ~~12~ run damage @e[family=sorcerer,r=0.15,type=!ds:capture_point,family=!grade2,family=!grade1,family=!special_grade] 0 entity_attack entity @s
execute positioned ~~12~ as @e[family=sorcerer,r=0.15,type=!ds:capture_point,family=!grade4,family=!grade3] positioned ~~-12~ run damage @s 0 entity_attack entity @a[tag=capture_point,tag=curse,r=16,c=1]

execute positioned ~~12~ run spreadplayers ~~ 20 30 @e[family=sorcerer,type=!ds:capture_point,r=0.15,c=1]