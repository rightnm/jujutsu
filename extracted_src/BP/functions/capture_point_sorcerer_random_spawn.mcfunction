scoreboard players set @s[scores={scroll=!0}] scroll 0
scoreboard players set @s[scores={chance=!0}] chance 0
execute unless entity @e[family=projectile,tag=DomainExpansion,r=50,name=!ChimeraGarden1] unless entity @e[family=damage,family=projectile,family=boss,scores={EnergyCap=0..,Energy=0..,energystat=0..},tag=DomainExpansion,r=200] run scoreboard players random @s chance 1 100
execute as @s[scores={chance=1..100}] at @s if entity @a[tag=capture_point,tag=!curse,scores={grade=2..4},r=16] unless entity @a[tag=capture_point,tag=!curse,scores={grade=5..},r=16] run scoreboard players operation @s chance += @e[tag=capture_point,tag=!curse,scores={grade=2..4},r=16,c=1] grade
execute as @s[scores={chance=1..100}] at @s if entity @a[tag=capture_point,tag=!curse,scores={grade=5..},r=16] run scoreboard players add @s chance 5
scoreboard players set @s[scores={chance=101..}] chance 100
execute as @s[scores={chance=76..100}] at @s unless entity @a[tag=capture_point,tag=!curse,scores={grade=2..},r=16] run scoreboard players random @s chance 1 75
execute as @s[scores={chance=96..100}] at @s unless entity @a[tag=capture_point,tag=!curse,scores={grade=3..},r=16] run scoreboard players random @s chance 1 95

scoreboard players random @s[scores={chance=1..75}] chance 101 112
scoreboard players random @s[scores={chance=76..95}] chance 201 208
scoreboard players random @s[scores={chance=96..100}] chance 301 305



execute as @s[scores={chance=101}] at @s positioned ~~12~ run summon ds:flyhead
execute as @s[scores={chance=101}] at @s positioned ~~12~ run summon ds:flyhead2
execute as @s[scores={chance=101}] at @s positioned ~~12~ run summon ds:flyhead3
execute as @s[scores={chance=101}] at @s positioned ~~12~ run summon ds:flyhead4
execute as @s[scores={chance=102}] at @s positioned ~~12~ run summon ds:gremlin_curse1
execute as @s[scores={chance=103}] at @s positioned ~~12~ run summon ds:kiss_fish
execute as @s[scores={chance=104}] at @s positioned ~~12~ run summon ds:snail_curse
execute as @s[scores={chance=105}] at @s positioned ~~12~ run summon ds:ray
execute as @s[scores={chance=106}] at @s positioned ~~12~ run summon ds:centipede_curse
execute as @s[scores={chance=107}] at @s positioned ~~12~ run summon ds:mushroom_curse
execute as @s[scores={chance=108}] at @s positioned ~~12~ run summon ds:mushroom_curse_big
execute as @s[scores={chance=109}] at @s positioned ~~12~ run summon ds:mouth_curse
execute as @s[scores={chance=110}] at @s positioned ~~12~ run summon ds:longshroom_curse
execute as @s[scores={chance=111}] at @s positioned ~~12~ run summon ds:hair_curse



execute as @s[scores={chance=201}] at @s positioned ~~12~ run summon ds:brute
execute as @s[scores={chance=202}] at @s positioned ~~12~ run summon ds:brute2
execute as @s[scores={chance=203}] at @s positioned ~~12~ run summon ds:brute3
execute as @s[scores={chance=204}] at @s positioned ~~12~ run summon ds:brute4
execute as @s[scores={chance=205}] at @s positioned ~~12~ run summon ds:sharko
execute as @s[scores={chance=206}] at @s positioned ~~12~ run summon ds:grasshopper_curse
execute as @s[scores={chance=207}] at @s positioned ~~12~ run summon ds:lizard_curse



execute as @s[scores={chance=301}] at @s positioned ~~12~ run summon ds:juzo
execute as @s[scores={chance=301}] at @s positioned ~~12~ run tag @e[type=ds:juzo,tag=!rogue_sorcerer,r=0.15,c=1] add rogue_sorcerer
execute as @s[scores={chance=302}] at @s positioned ~~12~ run summon ds:haruta
execute as @s[scores={chance=302}] at @s positioned ~~12~ run tag @e[type=ds:haruta,tag=!rogue_sorcerer,r=0.15,c=1] add rogue_sorcerer
execute as @s[scores={chance=303}] at @s positioned ~~12~ run summon ds:azureflames_curse
execute as @s[scores={chance=304}] at @s positioned ~~12~ run summon ds:centipede_grade1





execute positioned ~~12~ run damage @e[family=purecurse,r=0.15,family=!grade2,family=!grade1,family=!special_grade] 0 entity_attack entity @s
execute positioned ~~12~ as @e[family=purecurse,r=0.15,family=!grade4,family=!grade3] positioned ~~-12~ run damage @s 0 entity_attack entity @a[tag=capture_point,tag=!curse,r=16,c=1]
execute positioned ~~12~ run damage @e[tag=rogue_sorcerer,r=0.15,family=!grade2,family=!grade1,family=!special_grade] 0 entity_attack entity @s
execute positioned ~~12~ as @e[tag=rogue_sorcerer,r=0.15,family=!grade4,family=!grade3] positioned ~~-12~ run damage @s 0 entity_attack entity @a[tag=capture_point,tag=!curse,r=16,c=1]

execute positioned ~~12~ run spreadplayers ~~ 20 30 @e[family=purecurse,r=0.15,c=1]
execute positioned ~~12~ run spreadplayers ~~ 20 30 @e[tag=rogue_sorcerer,r=0.15,c=1]