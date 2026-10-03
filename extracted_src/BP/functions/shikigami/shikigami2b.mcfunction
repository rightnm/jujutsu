playanimation @s[scores={move=21}] animation.toad_spawn2

tag @s[scores={move=1..2}] remove form2b

tag @s[scores={move=19..,Stun=1..}] remove form2b
scoreboard players set @s[scores={move=9..,Stun=1..}] move 0

execute as @s[scores={move=17..19}] at @s run tp @s ~~~
effect @s[scores={move=9}] speed 1 20 true
effect @s[scores={move=6}] speed 0 30
execute as @s[scores={move=17..19}] at @s positioned ^^1^14 if block ~~1~ air run particle ds:shikigami_appear2 ~~~
execute as @s[scores={move=18}] at @s positioned ^^1^14 if block ~~1~ air run summon ds:tounge_coil ~ ~ ~
execute as @s[scores={move=18}] at @s positioned ^^1^14 if block ~~1~ air run scoreboard players set @e[type=ds:tounge_coil,c=1] Deleter 17
execute as @s[scores={move=12..14}] at @s positioned ^^1^14 run playanimation @e[type=ds:tounge_coil,c=1] animation.toad.tounge2
execute as @s[scores={move=7}] at @s positioned ^^1^14 if block ~~1~ air run tp @s @e[type=ds:tounge_coil,c=1]

execute as @e[type=ds:tounge_coil] at @s run tp @s ~~~ facing @p[tag=shikigami,scores={move=1..}]