particle ds:equinox_orb
particle ds:equinox_orb2
particle ds:equinox_orb3
particle ds:equinox_orb4
camerashake add @a[r=100] 0.25 0.08

tp @s ^^^1.5 facing @e[name=equinoxorbtrg,c=1]
execute as @e[name=equinoxorbtrg,c=1] at @s run tp @s @s


execute as @s if entity @e[name=equinoxorbtrg,c=1,r=5] at @s run function equinoxorb_ex