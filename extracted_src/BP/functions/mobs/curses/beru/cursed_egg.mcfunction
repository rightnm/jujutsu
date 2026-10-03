tickingarea add ~33~~33~-33~~-33 cursed_egg
tickingarea remove world_event_anthill
particle ds:worldevent_waypoint

execute as @e[type=!ds:cursed_egg,type=!ds:beru_curse,r=1.5]  at @s run scriptevent ds:knockback -1

execute unless entity @s[scores={Deleter=0..}] run fill ~12 70 ~12 ~-12 60 ~-12 packed_mud
execute unless entity @s[scores={Deleter=0..}] run fill ~14 65 ~14 ~-14 60 ~-14 packed_mud
execute unless entity @s[scores={Deleter=0..}] run scoreboard players random @s Deleter 2400 4000

execute as @s[scores={Deleter=3400..3401}] at @s run playsound block.turtle_egg.break @a ~~~ 999999 0.5 9999999
execute as @s[scores={Deleter=3400..3401}] at @s run particle ds:large_impact1 ~~1~
execute as @s[scores={Deleter=3400..3401}] at @s run particle ds:egg_crack1
execute as @s[scores={Deleter=3400..3401}] at @s run particle ds:egg_crack2

execute as @s[scores={Deleter=2400..2401}] at @s run playsound block.turtle_egg.break @a ~~~ 999999 0.5 9999999
execute as @s[scores={Deleter=2400..2401}] at @s run particle ds:large_impact1 ~~1~
execute as @s[scores={Deleter=2400..2401}] at @s run particle ds:egg_crack1
execute as @s[scores={Deleter=2400..2401}] at @s run particle ds:egg_crack2

execute as @s[scores={Deleter=1200..1201}] at @s run playsound block.turtle_egg.break @a ~~~ 999999 0.5 9999999
execute as @s[scores={Deleter=1200..1201}] at @s run particle ds:large_impact1 ~~1~
execute as @s[scores={Deleter=1200..1201}] at @s run particle ds:egg_crack1
execute as @s[scores={Deleter=1200..1201}] at @s run particle ds:egg_crack2

execute as @s[scores={Deleter=600..601}] at @s run playsound block.turtle_egg.break @a ~~~ 999999 0.5 9999999
execute as @s[scores={Deleter=600..601}] at @s run particle ds:large_impact1 ~~1~
execute as @s[scores={Deleter=600..601}] at @s run particle ds:egg_crack1
execute as @s[scores={Deleter=600..601}] at @s run particle ds:egg_crack2

execute as @s[scores={Deleter=300..301}] at @s run playsound block.turtle_egg.break @a ~~~ 999999 0.5 9999999
execute as @s[scores={Deleter=300..301}] at @s run particle ds:large_impact1 ~~1~
execute as @s[scores={Deleter=300..301}] at @s run particle ds:egg_crack1
execute as @s[scores={Deleter=300..301}] at @s run particle ds:egg_crack2

execute as @s[scores={Deleter=100..101}] at @s run playsound block.turtle_egg.break @a ~~~ 999999 0.5 9999999
execute as @s[scores={Deleter=100..101}] at @s run particle ds:large_impact1 ~~1~
execute as @s[scores={Deleter=100..101}] at @s run particle ds:egg_crack1
execute as @s[scores={Deleter=100..101}] at @s run particle ds:egg_crack2

execute as @s[scores={Deleter=40..41}] at @s run playsound block.turtle_egg.break @a ~~~ 999999 0.5 9999999
execute as @s[scores={Deleter=40..41}] at @s run particle ds:large_impact1 ~~1~
execute as @s[scores={Deleter=40..41}] at @s run particle ds:egg_crack1
execute as @s[scores={Deleter=40..41}] at @s run particle ds:egg_crack2

execute as @s[scores={Deleter=4..11}] at @s run playsound block.turtle_egg.break @a ~~~ 999999 0.5 9999999
execute as @s[scores={Deleter=4..11}] at @s run particle ds:large_impact1 ~~1~
execute as @s[scores={Deleter=4..11}] at @s run particle ds:egg_crack1
execute as @s[scores={Deleter=4..11}] at @s run particle ds:egg_crack2

execute as @s[scores={Deleter=0..4}] at @s run particle ds:heian_awaken1
execute as @s[scores={Deleter=0..4}] at @s run playsound mob.wither.spawn @a ~~~ 99999 1.25 99999
execute as @s[scores={Deleter=1}] at @s run summon ds:beru_curse ~~~
execute as @s[scores={Deleter=0}] at @s run tickingarea remove cursed_egg
execute as @s[scores={Deleter=0}] at @s run event entity @s ds:disappear
