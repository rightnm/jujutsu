execute as @s[scores={Deleter=1..60}] at @s run tp @s ^^^2
camerashake add @a[r=100] 0.08 0.08
playsound mob.burn @a[r=100] ~~~ 9999 1 9999
playsound mob.blaze.shoot @a[r=100] ~~~ 9999 0.3 9999

execute as @s unless block ~~1~ air run tp @s ~~1~
execute as @s unless block ~~1~ air run tp @s ~~1~
execute as @s unless block ~~1~ air run tp @s ~~1~
execute as @s[scores={Deleter=1..57}] at @s if entity @a[tag=griefable] run effect @e[r=20] resistance 0 30 true
execute as @s[scores={Deleter=1..58}] at @s positioned ~~~ run function sukuna/attacks/fuga/mugetsu_dmg
execute as @s[scores={Deleter=1..58}] at @s positioned ~~8~ run function sukuna/attacks/fuga/mugetsu_dmg
execute as @s[scores={Deleter=1..58}] at @s positioned ~~16~ run function sukuna/attacks/fuga/mugetsu_dmg
execute as @s[scores={Deleter=1..58}] at @s positioned ~~24~ run function sukuna/attacks/fuga/mugetsu_dmg
execute as @s[scores={Deleter=1..58}] at @s positioned ~~32~ run function sukuna/attacks/fuga/mugetsu_dmg
execute as @s[scores={Deleter=1..58}] at @s positioned ~~40~ run function sukuna/attacks/fuga/mugetsu_dmg
execute as @s[scores={Deleter=1..58}] at @s positioned ~~48~ run function sukuna/attacks/fuga/mugetsu_dmg
execute as @s[scores={Deleter=1..58}] at @s positioned ~~56~ run function sukuna/attacks/fuga/mugetsu_dmg
execute as @s[scores={Deleter=1..58}] at @s positioned ~~64~ run function sukuna/attacks/fuga/mugetsu_dmg
execute as @s[scores={Deleter=1..58}] at @s positioned ~~72~ run function sukuna/attacks/fuga/mugetsu_dmg
execute as @s[scores={Deleter=1..58}] at @s positioned ~~80~ run function sukuna/attacks/fuga/mugetsu_dmg
execute as @s[scores={Deleter=1..57}] at @s if entity @a[tag=griefable] run effect @e[r=20] resistance 1 20 true
execute as @s[scores={Deleter=1..57}] at @s if entity @a[tag=griefable] run summon ds:energy_explosion
execute as @s[scores={Deleter=1..58}] at @s run particle ds:fuga_area
execute as @s[scores={Deleter=1..58}] at @s run particle ds:fuga_mugetsu1