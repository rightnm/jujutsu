playanimation @s[scores={move=100..101}] animation.mahito.body_ab5

execute as @s[scores={move=97..100}] at @s run playsound random.disfigure @a[r=33] ~~1~ 99999 1.2 99999
execute as @s[scores={move=95}] at @s run particle ds:curses_energy_hit1_big ~~1~
execute as @s[scores={move=95}] at @s run particle ds:curses_energy_hit2_big ~~1~
execute as @s[scores={move=95}] at @s run particle ds:curses_energy_hit3_big ~~1~
execute as @s[scores={move=95}] at @s run particle ds:large_impact1 ~~1~
execute as @s[scores={move=95}] at @s run playsound random.explode @a[r=33] ~~1~ 99999 5 99999
execute as @s[scores={move=95}] at @s run camerashake add @a[r=33] 2 0.25
execute as @s[scores={move=95}] at @s run effect @s invisibility 3 10 true
execute as @s[scores={move=95}] at @s run summon ds:mahito_clump ^^1.25^1
execute as @s[scores={move=95}] at @s run summon ds:mahito_clump ^1^1.35^
execute as @s[scores={move=95}] at @s run summon ds:mahito_clump ^-1^1.35^
execute as @s[scores={move=95}] at @s run summon ds:mahito_clump ^2^1.25^
execute as @s[scores={move=95}] at @s run summon ds:mahito_clump ^-2^1.25^
execute as @s[scores={move=95}] at @s run summon ds:mahito_clump ~~~
execute as @s[scores={move=93}] at @s run tag @e[type=ds:mahito_clump,c=1] add mahito_clump_real
execute as @s[scores={move=93}] at @s run tag @e[type=ds:mahito_clump,c=1,tag=!mahito_clump_real] add mahito_clump_trick
execute as @s[scores={move=92}] at @s run summon ds:knockback ~~1~

execute as @s[scores={move=95..}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=95..}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=95..}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=95..}] at @s if block ~~-0.5~ air run tp @s ~~-0.5~
execute as @s[scores={move=95..}] at @s if block ~~-0.5~ air run tp @s ~~-0.5~
execute as @s[scores={move=95..}] at @s if block ~~-0.25~ air run tp @s ~~-0.25~

execute as @s[scores={move=20..93}] at @s run tp @e[tag=mahito_clump_real,c=1] ~~~ facing ^^^10
execute as @s[scores={move=20..93}] at @s if entity @e[tag=mahito_clump_real,c=1,r=10] run playanimation @s animation.invisible
execute as @s[scores={move=20..93}] at @s unless entity @e[tag=mahito_clump_real,c=1,r=10] run effect @s clear invisibility

scoreboard players set @s[scores={move=95}] Frames 20

damage @s[scores={move=96}] 33

execute as @s[scores={move=5..65}] at @s run execute as @e[type=ds:mahito_clump,tag=!mahito_clump_trick,tag=!mahito_clump_real] at @s run tp @s ^^^0.65 facing @e[tag=idle_transfig,scores={move=5..65}]
execute as @s[scores={move=5..65}] at @s run execute as @e[type=ds:mahito_clump,tag=!mahito_clump_trick,tag=!mahito_clump_real] at @s unless block ~~0.1~ air run tp @s ~~1.2~
execute as @s[scores={move=5..65}] at @s run execute as @e[type=ds:mahito_clump,tag=!mahito_clump_trick,tag=!mahito_clump_real] at @s if block ~~-0.9~ air run tp @s ~~-0.9~

execute as @s[scores={move=5..65}] at @s run execute as @e[type=ds:mahito_clump,r=2,tag=!mahito_clump_real] at @s run effect @e[tag=idle_transfig,scores={move=5..65}] instant_health 1 1 true
execute as @s[scores={move=5..65}] at @s run execute as @e[type=ds:mahito_clump,r=2,tag=!mahito_clump_real] at @s run playsound random.disfigure @a[r=33] ~~~ 99999 1.5 99999
execute as @s[scores={move=5..65}] at @s run execute as @e[type=ds:mahito_clump,r=2,tag=!mahito_clump_real] at @s run particle ds:curses_energy_hit1 ~~0.33~
execute as @s[scores={move=5..65}] at @s run execute as @e[type=ds:mahito_clump,r=2,tag=!mahito_clump_real] at @s run event entity @s ds:disappear

execute as @s[scores={move=88..90}] at @s run damage @e[family=!purecurse,tag=!idle_transfig,r=50] 0 entity_attack entity @e[tag=mahito_clump_trick,c=1]

execute as @s[scores={move=0..80}] at @s run execute as @e[tag=mahito_clump_trick] at @s if entity @e[tag=!idle_transfig,scores={atk=1..},r=2.5] run kill @s

execute as @s[scores={move=20..40}] at @s run execute as @e[type=ds:mahito_clump,r=2,tag=mahito_clump_real] at @s run effect @e[tag=idle_transfig,scores={move=20..40}] clear invisibility
execute as @s[scores={move=20..40}] at @s run execute as @e[type=ds:mahito_clump,r=2,tag=mahito_clump_real] at @s run playanimation @e[tag=idle_transfig,scores={move=20..40}] animation.mahito.reform
execute as @s[scores={move=20..40}] at @s run execute as @e[type=ds:mahito_clump,r=2,tag=mahito_clump_real] at @s run effect @e[tag=idle_transfig,scores={move=20..40}] instant_health 1 1 true
execute as @s[scores={move=20..40}] at @s run execute as @e[type=ds:mahito_clump,r=2,tag=mahito_clump_real] at @s run scoreboard players add @e[tag=idle_transfig,scores={move=20..40}] Evade 15
execute as @s[scores={move=20..40}] at @s run execute as @e[type=ds:mahito_clump,r=2,tag=mahito_clump_real] at @s run playsound random.disfigure @a[r=33] ~~~ 99999 1.5 99999
execute as @s[scores={move=20..40}] at @s run execute as @e[type=ds:mahito_clump,r=2,tag=mahito_clump_real] at @s run particle ds:curses_energy_hit1 ~~0.33~
execute as @s[scores={move=20..40}] at @s run execute as @e[type=ds:mahito_clump,r=2,tag=mahito_clump_real] at @s run event entity @s ds:disappear

execute as @s[scores={move=20..21}] at @s run particle ds:flashstep1
execute as @s[scores={move=20..21}] at @s run particle ds:flashstep2
execute as @s[scores={move=20..21}] at @s run tp @s @e[family=human,rm=12,r=50,scores={strength=30..}]


execute as @s[scores={move=3..4}] at @s run execute as @e[type=ds:mahito_clump,r=80] at @s run damage @e[tag=idle_transfig,c=1,scores={move=3..4}] 15 override
execute as @s[scores={move=3..4}] at @s run execute as @e[type=ds:mahito_clump,r=80] at @s run event entity @s ds:disappear

execute as @e[tag=mahito_clump_trick,c=1] at @s run particle ds:curses_energy_hand1 ~~0.33~
execute as @e[tag=mahito_clump_trick,c=1] at @s run tp @s ~~~  facing @e[family=!purecurse,tag=!idle_transfig,type=!item,type=!xp_orb,r=33]
execute as @e[tag=mahito_clump_trick,c=1] at @s run tp @s ^^^0.25
execute as @e[tag=mahito_clump_trick,c=1] at @s unless block ~~0.1~ air run tp @s ~~1.2~
execute as @e[tag=mahito_clump_trick,c=1] at @s if block ~~-0.9~ air run tp @s ~~-0.9~
execute as @e[tag=mahito_clump_trick,c=1] at @s if block ~~-0.1~ air run tp @s ~~-0.1~

tag @s[scores={move=0..3}] remove form7
