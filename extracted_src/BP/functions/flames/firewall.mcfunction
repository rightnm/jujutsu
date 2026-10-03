scoreboard players set @s atk 2
execute as @s[scores={Deleter=1..}] at @s if block ~~-1~ air if block ~~-2~ air run tp @s ~~-2~
execute as @s[scores={Deleter=1..}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={Deleter=1..}] at @s if block ~~-0.5~ air run tp @s ~~-0.5~
execute as @s[scores={Deleter=1..}] at @s if block ~~-0.3~ air run tp @s ~~-0.3~
execute as @s[scores={Deleter=1..}] at @s if block ~~-0.1~ air run tp @s ~~-0.1~
execute as @s[scores={Deleter=0..118}] at @s positioned ^^^1 run function flames/firewall2
execute as @s[scores={Deleter=0..115}] at @s positioned ^^^4 run function flames/firewall2
execute as @s[scores={Deleter=0..112}] at @s positioned ^^^7 run function flames/firewall2
execute as @s[scores={Deleter=0..109}] at @s positioned ^^^10 run function flames/firewall2
execute as @s[scores={Deleter=0..106}] at @s positioned ^^^13 run function flames/firewall2
execute as @s[scores={Deleter=0..103}] at @s positioned ^^^16 run function flames/firewall2
execute as @s[scores={Deleter=0..100}] at @s positioned ^^^19 run function flames/firewall2
execute as @s[scores={Deleter=0..97}] at @s positioned ^^^22 run function flames/firewall2
execute as @s[scores={Deleter=0..94}] at @s positioned ^^^25 run function flames/firewall2
execute as @s[scores={Deleter=0..91}] at @s positioned ^^^28 run function flames/firewall2


kill @s[scores={Deleter=0..50}]