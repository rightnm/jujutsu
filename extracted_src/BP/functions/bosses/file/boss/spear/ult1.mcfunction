playanimation @s[scores={move=110..}] animation.primesoul.spear_ult1

execute as @s[scores={move=15..}] run tp @s ~ 260 ~ facing @p[m=!c]
execute as @s[scores={move=11..14}] run tp @s ~ 240 ~ facing @p[m=!c]

execute as @s[scores={move=81}] run playsound music.sekiro @a[r=200]
execute as @s[scores={move=81}] run particle ds:unparrymarker ~~1~

execute as @s[scores={move=57}] run playsound music.sekiro @a[r=200]
execute as @s[scores={move=57}] run particle ds:unparrymarker ~~1~

execute as @s[scores={move=34}] run playsound music.sekiro @a[r=200]
execute as @s[scores={move=34}] run particle ds:unparrymarker ~~1~

execute as @s[scores={move=79}] run particle ds:large_impact1 ^^1.5^1
execute as @s[scores={move=79}] run particle ds:storm_spear_ex1 ^^1.5^1
execute as @s[scores={move=79}] run particle ds:storm_spear_ex2 ^^1.5^1
execute as @s[scores={move=79}] run particle ds:storm_spear_ex3 ^^1.5^1
execute as @s[scores={move=79}] run particle ds:storm_spear_ex5 ^^1.5^1
execute as @s[scores={move=79}] run particle ds:invert ^^1.5^6
execute as @s[scores={move=79}] run summon gg:impact_frame ~ 240 ~
execute as @s[scores={move=79}] run camerashake add @a[r=200] 2 0.15 rotational
execute as @s[scores={move=79}] run playsound mob.shock1 @a[r=100] ~~~ 9999 2 9999
execute as @s[scores={move=79}] run playsound mob.wither.shoot @a[r=100] ~~~ 9999 2 9999
execute as @s[scores={move=79}] run summon ds:projectile ^^1^1 facing @p[m=!c] none spearult1
execute as @s[scores={move=79}] run execute as @p[m=!c,c=1,r=200] at @s run summon ds:projectile spearult1trg


execute as @s[scores={move=55}] run particle ds:large_impact1 ^^1.5^1
execute as @s[scores={move=55}] run particle ds:storm_spear_ex1 ^^1.5^1
execute as @s[scores={move=55}] run particle ds:storm_spear_ex2 ^^1.5^1
execute as @s[scores={move=55}] run particle ds:storm_spear_ex3 ^^1.5^1
execute as @s[scores={move=55}] run particle ds:storm_spear_ex5 ^^1.5^1
execute as @s[scores={move=55}] run particle ds:invert ^^1.5^6
execute as @s[scores={move=55}] run summon gg:impact_frame ~ 240 ~
execute as @s[scores={move=55}] run camerashake add @a[r=200] 2 0.15 rotational
execute as @s[scores={move=55}] run playsound mob.shock1 @a[r=100] ~~~ 9999 2 9999
execute as @s[scores={move=55}] run playsound mob.wither.shoot @a[r=100] ~~~ 9999 2 9999
execute as @s[scores={move=55}] run summon ds:projectile ^^1^1 facing @p[m=!c] none spearult1b
execute as @s[scores={move=55}] run execute as @p[m=!c,c=1,r=200] at @s run summon ds:projectile spearult1trg2


execute as @s[scores={move=32}] run particle ds:large_impact1 ^^1.5^1
execute as @s[scores={move=32}] run particle ds:storm_spear_ex1 ^^1.5^1
execute as @s[scores={move=32}] run particle ds:storm_spear_ex2 ^^1.5^1
execute as @s[scores={move=32}] run particle ds:storm_spear_ex3 ^^1.5^1
execute as @s[scores={move=32}] run particle ds:storm_spear_ex5 ^^1.5^1
execute as @s[scores={move=32}] run particle ds:invert ^^1.5^6
execute as @s[scores={move=32}] run summon gg:impact_frame ~ 240 ~
execute as @s[scores={move=32}] run camerashake add @a[r=200] 2 0.15 rotational
execute as @s[scores={move=32}] run playsound mob.shock1 @a[r=100] ~~~ 9999 2 9999
execute as @s[scores={move=32}] run playsound mob.wither.shoot @a[r=100] ~~~ 9999 2 9999
execute as @s[scores={move=32}] run summon ds:projectile ^^1^1 facing @p[m=!c] none spearult1c
execute as @s[scores={move=32}] run execute as @p[m=!c,c=1,r=200] at @s run summon ds:projectile spearult1trg3



tag @s[scores={move=1..3}] remove spearult1

execute as @e[type=ds:projectile,name=spearult1] at @s run function bosses/file/boss/spear/spear_proj
execute as @e[type=ds:projectile,name=spearult1b] at @s run function bosses/file/boss/spear/spear_proj
execute as @e[type=ds:projectile,name=spearult1c] at @s run function bosses/file/boss/spear/spear_proj