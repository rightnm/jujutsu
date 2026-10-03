execute as @s[scores={Sneaking=5,move=0}]  at @s run playsound mob.cursed_energy @a[r=20] ~~~ 0.25 1.35
execute as @s[scores={Sneaking=5,move=0}]  at @s run playsound mob.wither.hurt @a[r=20] ~~~ 0.1 0.8
execute as @s[scores={Sneaking=5,move=0}]  at @s run particle ds:impact_vfx ~~1~
execute as @s[scores={Sneaking=5,move=0}]  at @s run camerashake add @a[r=5] 0.25 0.25 rotational
execute as @s[scores={Sneaking=5,move=0},tag=!roughce,tag=!curse,tag=!lightning,tag=!sukuna] at @s run particle ds:energy_refill_vfx ~~1~
execute as @s[scores={Sneaking=5,move=0},tag=!roughce,tag=curse,tag=!lightning,tag=!sukuna] at @s run particle ds:energy_refill_purple_vfx ~~1~
execute as @s[scores={Sneaking=5,move=0},tag=roughce,tag=!curse,tag=!lightning,tag=!sukuna] at @s run particle ds:energy_refill_rough_vfx ~~1~
execute as @s[scores={Sneaking=5,move=0},tag=!curse,tag=lightning] at @s run particle ds:energy_refill_lightning_vfx ~~1~
execute as @s[scores={Sneaking=5,move=0},tag=!lightning,tag=sukuna] at @s run particle ds:energy_refill_red_vfx ~~1~


execute as @s[scores={Sneaking=5..,move=0},tag=!roughce,tag=!curse,tag=!lightning,tag=!sukuna] at @s run particle ds:energy_refill1 ~~0.73~
execute as @s[scores={Sneaking=5..,move=0},tag=!roughce,tag=!curse,tag=!lightning,tag=!sukuna] at @s run particle ds:energy_refill3 ~~0.23~


execute as @s[scores={Sneaking=5..,move=0},tag=!roughce,tag=curse,tag=!lightning,tag=!sukuna] at @s run particle ds:purple_energy_refill1 ~~0.73~
execute as @s[scores={Sneaking=5..,move=0},tag=!roughce,tag=curse,tag=!lightning,tag=!sukuna] at @s run particle ds:purple_energy_refill2 ~~0.23~


execute as @s[scores={Sneaking=5..,move=0},tag=roughce,tag=!curse,tag=!lightning,tag=!sukuna] at @s run particle ds:roughenergy_refill1 ~~0.73~
execute as @s[scores={Sneaking=5..,move=0},tag=roughce,tag=!curse,tag=!lightning,tag=!sukuna] at @s run particle ds:roughenergy_refill3 ~~0.23~

execute as @s[scores={Sneaking=5..,move=0},tag=!curse,tag=lightning] at @s run particle ds:lightningenergy_refill1 ~~0.73~
execute as @s[scores={Sneaking=5..,move=0},tag=!curse,tag=lightning] at @s run particle ds:lightningenergy_refill2 ~~1~
execute as @s[scores={Sneaking=5..,move=0},tag=!curse,tag=lightning] at @s run particle ds:lightningenergy_refill3 ~~~
execute as @s[scores={Sneaking=5..,move=0},tag=!curse,tag=lightning] at @s run particle ds:energy_refill3 ~~0.23~
execute as @s[scores={Sneaking=5,move=0},tag=!curse,tag=lightning] at @s run playsound mob.electricity @a ~~~ 0.05 0.86

execute as @s[scores={Sneaking=5..,move=0},tag=!lightning,tag=sukuna] at @s run particle ds:energy_refill1_red ~~0.73~
execute as @s[scores={Sneaking=5..,move=0},tag=!lightning,tag=sukuna] at @s run particle ds:energy_refill3_red ~~0.23~



scoreboard players add @s[scores={Sneaking=5..,move=0},tag=fasterce] Energy 2
scoreboard players add @s[scores={Sneaking=5..,move=0}] Energy 1
scoreboard players add @s[scores={Sneaking=5..,EnergyCap=150..,move=0}] Energy 1
scoreboard players add @s[scores={Sneaking=5..,EnergyCap=250..,move=0}] Energy 1
scoreboard players add @s[scores={Sneaking=5..,EnergyCap=500..,move=0}] Energy 2
scoreboard players add @s[scores={Sneaking=5..,EnergyCap=1000..,move=0}] Energy 3


execute as @s[hasitem={item=ds:shikigami1,location=slot.weapon.mainhand},scores={ability1=1..,punch=1},tag=rabbit_tame] at @s if entity @e[type=ds:rabbitescape,r=50] run scoreboard players set @e[type=ds:rabbitescape,r=50] Deleter 4
execute as @s[hasitem={item=ds:shikigami1,location=slot.weapon.mainhand},scores={ability1=1..,punch=1},tag=rabbit_tame] at @s if entity @e[type=ds:rabbitescape,r=50] run scoreboard players set @s ability1 2
execute as @s[hasitem={item=ds:shikigami1,location=slot.weapon.mainhand},scores={ability1=1..,punch=1},tag=rabbit_tame] at @s if entity @e[type=ds:rabbitescape,r=50] run tellraw @s {"rawtext":[{"text":"§7Rabbit Escape Shikigami have been called back..."}]}

execute as @s[hasitem={item=ds:shikigami2,location=slot.weapon.mainhand},scores={ability2=1..,punch=1},tag=toad_tame] at @s if entity @e[type=ds:toad,r=50] run scoreboard players set @e[type=ds:toad,r=50] Deleter 4
execute as @s[hasitem={item=ds:shikigami2,location=slot.weapon.mainhand},scores={ability2=1..,punch=1},tag=toad_tame] at @s if entity @e[type=ds:toad,r=50] run scoreboard players set @s ability2 2
execute as @s[hasitem={item=ds:shikigami2,location=slot.weapon.mainhand},scores={ability2=1..,punch=1},tag=toad_tame] at @s if entity @e[type=ds:toad,r=50] run tellraw @s {"rawtext":[{"text":"§7Toad Shikigami has been called back..."}]}

execute as @s[hasitem={item=ds:shikigami3,location=slot.weapon.mainhand},scores={ability3=1..,punch=1},tag=dog_tame] at @s if entity @e[tag=divinedog,r=50] run scoreboard players set @e[type=ds:white_wolf,r=50,c=1] Deleter 13
execute as @s[hasitem={item=ds:shikigami3,location=slot.weapon.mainhand},scores={ability3=1..,punch=1},tag=dog_tame] at @s if entity @e[tag=divinedog,r=50] run scoreboard players set @e[type=ds:black_wolf,r=50,c=1] Deleter 13
execute as @s[hasitem={item=ds:shikigami3,location=slot.weapon.mainhand},scores={ability3=1..,punch=1},tag=dog_tame] at @s if entity @e[type=ds:totality,r=50] run scoreboard players set @e[type=ds:totality,r=50,c=1] Deleter 13
execute as @s[hasitem={item=ds:shikigami3,location=slot.weapon.mainhand},scores={ability3=1..,punch=1},tag=dog_tame] at @s if entity @e[tag=divinedog,r=50] run scoreboard players set @s ability3 2
execute as @s[hasitem={item=ds:shikigami3,location=slot.weapon.mainhand},scores={ability3=1..,punch=1},tag=dog_tame] at @s if entity @e[tag=divinedog,r=50] run tellraw @s {"rawtext":[{"text":"§7Divine Dogs Shikigami have been called back..."}]}

execute as @s[hasitem={item=ds:shikigami5,location=slot.weapon.mainhand},scores={ability5=1..,punch=1},tag=serpent_tame] at @s if entity @e[type=ds:serpent,r=50] run scoreboard players set @e[type=ds:serpent,r=50,c=1] Deleter 4
execute as @s[hasitem={item=ds:shikigami5,location=slot.weapon.mainhand},scores={ability5=1..,punch=1},tag=serpent_tame] at @s if entity @e[type=ds:serpent,r=50] run scoreboard players set @s ability5 2
execute as @s[hasitem={item=ds:shikigami5,location=slot.weapon.mainhand},scores={ability5=1..,punch=1},tag=serpent_tame] at @s if entity @e[type=ds:serpent,r=50] run tellraw @s {"rawtext":[{"text":"§7Great Serpent Shikigami has been called back..."}]}

execute as @s[hasitem={item=ds:shikigami7,location=slot.weapon.mainhand},scores={ability7=1..,punch=1},tag=elephant_tame] at @s if entity @e[type=ds:maxelephant,r=70] run scoreboard players set @e[type=ds:maxelephant,r=70,c=1] Deleter 4
execute as @s[hasitem={item=ds:shikigami7,location=slot.weapon.mainhand},scores={ability7=1..,punch=1},tag=elephant_tame] at @s if entity @e[type=ds:maxelephant,r=70] run scoreboard players set @s ability7 2
execute as @s[hasitem={item=ds:shikigami7,location=slot.weapon.mainhand},scores={ability7=1..,punch=1},tag=elephant_tame] at @s if entity @e[type=ds:maxelephant,r=70] run tellraw @s {"rawtext":[{"text":"§7Max Elephant Shikigami has been called back..."}]}

execute as @s[hasitem={item=ds:shikigami8,location=slot.weapon.mainhand},scores={ability8=1..,punch=1},tag=deer_tame] at @s if entity @e[type=ds:rounddeer,r=80] run scoreboard players set @e[type=ds:rounddeer,r=80,c=1] Deleter 6
execute as @s[hasitem={item=ds:shikigami8,location=slot.weapon.mainhand},scores={ability8=1..,punch=1},tag=deer_tame] at @s if entity @e[type=ds:rounddeer,r=80] run scoreboard players set @s ability8 2
execute as @s[hasitem={item=ds:shikigami8,location=slot.weapon.mainhand},scores={ability8=1..,punch=1},tag=deer_tame] at @s if entity @e[type=ds:rounddeer,r=80] run tellraw @s {"rawtext":[{"text":"§8Round Deer Shikigami has been called back..."}]}

execute as @s[hasitem={item=ds:shikigami11,location=slot.weapon.mainhand},scores={ability10=1..,punch=1}] at @s if entity @e[type=ds:agito,r=80] run scoreboard players set @e[type=ds:agito,r=80] Deleter 9
execute as @s[hasitem={item=ds:shikigami11,location=slot.weapon.mainhand},scores={ability10=1..,punch=1}] at @s if entity @e[type=ds:agito,r=80] run tellraw @s {"rawtext":[{"text":"§8Merged Beast: Agito has been called back..."}]}
execute as @s[hasitem={item=ds:shikigami11,location=slot.weapon.mainhand},scores={ability10=1..,punch=1}] at @s if entity @e[type=ds:agito,r=80] run scoreboard players set @s ability10 2

execute as @s[hasitem={item=ds:shikigami10,location=slot.weapon.mainhand},scores={punch=1},tag=mahoraga_tame] at @s if entity @e[type=ds:mahoragatamed,r=80] run scoreboard players set @e[type=ds:mahoragatamed,r=80,c=1] Deleter 6
execute as @s[hasitem={item=ds:shikigami10,location=slot.weapon.mainhand},scores={punch=1},tag=mahoraga_tame] at @s if entity @e[type=ds:mahoragatamed,r=80] run tellraw @s {"rawtext":[{"text":"§8Divine General Mahoraga has been called back..."}]}
execute as @s[hasitem={item=ds:shikigami10,location=slot.weapon.mainhand},scores={punch=1},tag=mahoraga_tame] at @s if entity @e[type=ds:mahoragatamed,r=80] run scoreboard players set @s ability11 2